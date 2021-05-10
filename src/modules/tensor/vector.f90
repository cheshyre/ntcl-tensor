module vector_module
    use, intrinsic :: iso_fortran_env, only : int64
    use :: data_storage_module, only : data_storage

    ! All public objects in tensor are public here
    use :: tensor_module

    implicit none
    public

    type, extends(tensor) :: vector
    end type vector

    interface vector
        module procedure constructor_empty
        module procedure constructor_int64_array
        module procedure constructor_int64
        module procedure constructor_int
    end interface vector
contains
    function constructor_empty() result(this)
        type(vector) :: this

        call this%clear()
        this%rank = 1
    end function constructor_empty

    function constructor_int64_array(storage, datatype, d1) result(this)
        class(data_storage), intent(in) :: storage
        integer, intent(in) :: datatype
        integer(int64), dimension(1), intent(in) :: d1
        type(vector) :: this

        this = vector()
        call this%setup(storage, datatype, d1)
    end function constructor_int64_array

    function constructor_int64(storage, datatype, d1) result(this)
        class(data_storage), intent(in) :: storage
        integer, intent(in) :: datatype
        integer(int64), intent(in) :: d1
        type(vector) :: this


        this = vector(storage, datatype, [d1])
    end function constructor_int64

    function constructor_int(storage, datatype, d1) result(this)
        class(data_storage), intent(in) :: storage
        integer, intent(in) :: datatype
        integer, intent(in) :: d1
        type(vector) :: this

        this = vector(storage, datatype, int(d1, int64))
    end function constructor_int
end module vector_module
