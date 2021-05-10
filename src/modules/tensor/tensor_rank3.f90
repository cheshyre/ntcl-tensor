module tensor_rank3_module
    use, intrinsic :: iso_fortran_env, only : int64
    use :: data_storage_module, only : data_storage

    ! All public objects in tensor are public here
    use :: tensor_module

    implicit none
    public

    type, extends(tensor) :: tensor_rank3
    end type tensor_rank3

    interface tensor_rank3
        module procedure constructor_empty
        module procedure constructor_int64_array
        module procedure constructor_int64
        module procedure constructor_int
    end interface tensor_rank3
contains
    function constructor_empty() result(this)
        type(tensor_rank3) :: this

        call this%clear()
        this%rank = 3
    end function constructor_empty

    function constructor_int64_array(storage, datatype, dims) result(this)
        class(data_storage), intent(in) :: storage
        integer, intent(in) :: datatype
        integer(int64), dimension(3), intent(in) :: dims
        type(tensor_rank3) :: this

        this = tensor_rank3()
        call this%setup(storage, datatype, dims)
    end function constructor_int64_array

    function constructor_int64(storage, datatype, d1, d2, d3) result(this)
        class(data_storage), intent(in) :: storage
        integer, intent(in) :: datatype
        integer(int64), intent(in) :: d1, d2, d3
        type(tensor_rank3) :: this

        this = tensor_rank3(storage, datatype, [d1,d2,d3])
    end function constructor_int64

    function constructor_int(storage, datatype, d1, d2, d3) result(this)
        class(data_storage), intent(in) :: storage
        integer, intent(in) :: datatype
        integer, intent(in) :: d1, d2, d3
        type(tensor_rank3) :: this

        this = tensor_rank3(storage, datatype, int([d1, d2, d3], int64))
    end function constructor_int
end module tensor_rank3_module
