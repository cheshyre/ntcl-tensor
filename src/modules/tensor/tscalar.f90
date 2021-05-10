module tscalar_module
    use, intrinsic :: iso_fortran_env, only : int64
    use :: data_storage_module, only : data_storage

    ! All public objects in tensor are public here
    use :: tensor_module

    implicit none
    public

    type, extends(tensor) :: tscalar
    end type tscalar

    interface tscalar
        module procedure constructor_empty
        module procedure constructor
    end interface tscalar
contains
    function constructor_empty() result(this)
        type(tscalar) :: this

        call this%clear()
        this%rank = 0
    end function constructor_empty

    function constructor(storage, datatype) result(this)
        class(data_storage), intent(in) :: storage
        integer, intent(in) :: datatype
        type(tscalar) :: this

        integer(int64), dimension(0) :: empty

        this = tscalar()
        call this%setup(storage, datatype, empty)
    end function constructor
end module tscalar_module
