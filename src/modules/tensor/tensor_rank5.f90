module tensor_rank5_module
    use, intrinsic :: iso_fortran_env, only : int64
    use :: data_storage_module, only : data_storage

    ! All public objects in tensor are public here
    use :: tensor_module

    implicit none
    public

    type, extends(tensor) :: tensor_rank5
    end type tensor_rank5

    interface tensor_rank5
        module procedure constructor_empty
        module procedure constructor_int64_array
        module procedure constructor_int64
        module procedure constructor_int
    end interface tensor_rank5
contains
    function constructor_empty() result(this)
        type(tensor_rank5) :: this

        call this%clear()
        this%rank = 5
    end function constructor_empty

    function constructor_int64_array(storage, datatype, dims) result(this)
        class(data_storage), intent(in) :: storage
        integer, intent(in) :: datatype
        integer(int64), dimension(5), intent(in) :: dims
        type(tensor_rank5) :: this

        this = tensor_rank5()
        call this%setup(storage, datatype, dims)
    end function constructor_int64_array

    function constructor_int64(storage, datatype, d1, d2, d3, d4, d5) result(this)
        class(data_storage), intent(in) :: storage
        integer, intent(in) :: datatype
        integer(int64), intent(in) :: d1, d2, d3, d4, d5
        type(tensor_rank5) :: this

        this = tensor_rank5(storage, datatype, [d1,d2,d3,d4,d5])
    end function constructor_int64

    function constructor_int(storage, datatype, d1, d2, d3, d4, d5) result(this)
        class(data_storage), intent(in) :: storage
        integer, intent(in) :: datatype
        integer, intent(in) :: d1, d2, d3, d4, d5
        type(tensor_rank5) :: this

        this = tensor_rank5(storage, datatype, int([d1,d2,d3,d4,d5], int64))
    end function constructor_int
end module tensor_rank5_module
