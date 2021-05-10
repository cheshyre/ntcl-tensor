module tensor_factory_module
    use, intrinsic :: iso_fortran_env, only : int64

    use :: tensor_module, only : tensor
    use :: tscalar_module, only : tscalar
    use :: vector_module, only : vector
    use :: matrix_module, only : matrix
    use :: tensor_rank3_module, only : tensor_rank3
    use :: tensor_rank4_module, only : tensor_rank4
    use :: tensor_rank5_module, only : tensor_rank5
    use :: data_storage_module, only : data_storage

    implicit none
    private

    public :: get_tensor_from_components
    public :: create_tensor_from_components
    public :: allocate_and_create_tensor_from_components
    public :: allocate_tensor_object
contains
    function get_tensor_from_components(storage, datatype, dims) result(atensor)
        class(data_storage), intent(in) :: storage
        integer, intent(in) :: datatype
        integer(int64), dimension(:), intent(in) :: dims
        class(tensor), allocatable :: atensor

        call allocate_and_create_tensor_from_components(atensor, storage, datatype, dims)
    end function get_tensor_from_components

    subroutine create_tensor_from_components(atensor, storage, datatype, dims)
        class(tensor), intent(inout) :: atensor
        class(data_storage), intent(in) :: storage
        integer, intent(in) :: datatype
        integer(int64), dimension(:), intent(in) :: dims

        call atensor%setup(storage, datatype, dims)
    end subroutine create_tensor_from_components

    subroutine allocate_and_create_tensor_from_components(atensor, storage, datatype, dims)
        class(tensor), allocatable, intent(inout) :: atensor
        class(data_storage), intent(in) :: storage
        integer, intent(in) :: datatype
        integer(int64), dimension(:), intent(in) :: dims

        call allocate_tensor_object(atensor, dims)
        call create_tensor_from_components(atensor, storage, datatype, dims)
    end subroutine allocate_and_create_tensor_from_components

    subroutine allocate_tensor_object(atensor, dims)
        class(tensor), allocatable, intent(inout) :: atensor
        integer(int64), dimension(:), intent(in) :: dims

        select case(size(dims))
        case (0)
            atensor = tscalar()
        case (1)
            atensor = vector()
        case (2)
            atensor = matrix()
        case (3)
            atensor = tensor_rank3()
        case (4)
            atensor = tensor_rank4()
        case (5)
            atensor = tensor_rank5()
        case default
            error stop "tensor_factory::allocate_tensor:Not implemented."
        end select
    end subroutine allocate_tensor_object
end module tensor_factory_module
