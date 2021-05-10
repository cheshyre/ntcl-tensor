module tensor_converter_interface
    use, intrinsic :: iso_fortran_env, only : int64

    use :: tensor_package_api, only : &
            tensor, &
            allocate_tensor_object

    implicit none
    private

    public :: allocate_and_reshape_tensor
    public :: reshape_tensor

contains
    subroutine allocate_and_reshape_tensor(dst, src, dims)
        class(tensor), allocatable, intent(inout) :: dst
        class(tensor), intent(in) :: src
        integer(int64), dimension(:), intent(in) :: dims

        call allocate_tensor_object(dst, dims)
        call reshape_tensor(dst, src, dims)
    end subroutine allocate_and_reshape_tensor

    subroutine reshape_tensor(dst, src, dims)
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        integer(int64), dimension(:), intent(in) :: dims

        if ( dst%rank /= size(dims) ) &
                error stop "tensor_converter_interface::reshape_tensor:Error in rank."
        if ( src%number_of_elements /= product(dims) ) &
                error stop "tensor_converter_interface::reshape_tensor:Error in size"

        call dst%setup(src%storage, src%datatype, dims)
    end subroutine reshape_tensor
end module tensor_converter_interface
