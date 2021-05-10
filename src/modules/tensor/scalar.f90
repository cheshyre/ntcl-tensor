module scalar_module
    use, intrinsic :: iso_fortran_env, only : &
            real32, &
            real64, &
            int64, &
            int32


    implicit none
    private

    public :: scalar

    type :: scalar
        complex(real64) :: val
    contains
        procedure :: as_int32 => as_int32
        procedure :: as_int64 => as_int64
        procedure :: as_real32 => as_real32
        procedure :: as_real64 => as_real64
        procedure :: as_complex64 => as_complex64
        procedure :: as_complex128 => as_complex128
    end type scalar

    interface scalar
        module procedure constructor
        module procedure constructor_int32
        module procedure constructor_int64
        module procedure constructor_real32
        module procedure constructor_real64
        module procedure constructor_complex64
        module procedure constructor_complex128
    end interface scalar

contains
    function constructor() result(this)
        type(scalar) :: this

        this%val = 0
    end function constructor

    function constructor_int32(val) result(this)
        integer, intent(in) :: val
        type(scalar) :: this

        this%val = val
    end function constructor_int32

    function constructor_int64(val) result(this)
        integer(int64), intent(in) :: val
        type(scalar) :: this

        this%val = val
    end function constructor_int64

    function constructor_real32(val) result(this)
        real, intent(in) :: val
        type(scalar) :: this

        this%val = val
    end function constructor_real32

    function constructor_real64(val) result(this)
        real(real64), intent(in) :: val
        type(scalar) :: this

        this%val = val
    end function constructor_real64

    function constructor_complex64(val) result(this)
        complex, intent(in) :: val
        type(scalar) :: this

        this%val = val
    end function constructor_complex64

    function constructor_complex128(val) result(this)
        complex(real64), intent(in) :: val
        type(scalar) :: this

        this%val = val
    end function constructor_complex128

    real(real32) function as_real32(this)
        class(scalar), intent(in) :: this

        as_real32 = real(this%val, kind=real32)
    end function as_real32

    real(real64) function as_real64(this)
        class(scalar), intent(in) :: this

        as_real64 = real(this%val, kind=real64)
    end function as_real64

    integer(int32) function as_int32(this)
        class(scalar), intent(in) :: this

        as_int32 = int(this%val, kind=int32)
    end function as_int32

    integer(int64) function as_int64(this)
        class(scalar), intent(in) :: this

        as_int64 = int(this%val, kind=int64)
    end function as_int64

    complex(real32) function as_complex64(this)
        class(scalar), intent(in) :: this

        as_complex64 = cmplx(this%val, kind=real32)
    end function as_complex64

    complex(real64) function as_complex128(this)
        class(scalar), intent(in) :: this

        as_complex128 = cmplx(this%val, kind=real64)
    end function as_complex128
end module scalar_module
