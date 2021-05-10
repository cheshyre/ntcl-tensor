module random_initializer_module
    use, intrinsic :: iso_fortran_env,  only : &
            real32, &
            real64

    use :: tensor_package_api, only : &
            tensor, &
            dt_r32, dt_r64, dt_c64, dt_c128

    use :: tensor_fortran_converter_module, only : &
            secure_fortran_pointer_from_tensor, &
            update_remote_tensor_and_release_pointer

    use :: tensor_initializer_module, only : tensor_initializer

    implicit none
    private

    public :: random_initializer

    type, extends(tensor_initializer) :: random_initializer
    contains
        procedure :: initialize => initialize
        procedure :: init_r32 => init_r32
        procedure :: init_r64 => init_r64
        procedure :: init_c64 => init_c64
        procedure :: init_c128 => init_c128
    end type random_initializer

    interface random_initializer
        module procedure constructor
    end interface random_initializer

contains
    function constructor() result(this)
        type(random_initializer) :: this

    end function constructor

    subroutine initialize(this, atensor)
        class(random_initializer), intent(in) :: this
        class(tensor), intent(inout) :: atensor

        select case (atensor%datatype)
        case (dt_r32)
            call this%init_r32(atensor)
        case (dt_r64)
            call this%init_r64(atensor)
        case (dt_c64)
            call this%init_c64(atensor)
        case (dt_c128)
            call this%init_c128(atensor)
        end select
    end subroutine initialize

    subroutine init_r32(this, atensor)
        class(random_initializer), intent(in) :: this
        class(tensor), intent(inout) :: atensor

        real(real32), dimension(:), pointer, contiguous :: ptr

        call secure_fortran_pointer_from_tensor(ptr, atensor)
        call random_number(ptr)
        call update_remote_tensor_and_release_pointer(ptr, atensor)
    end subroutine init_r32

    subroutine init_r64(this, atensor)
        class(random_initializer), intent(in) :: this
        class(tensor), intent(inout) :: atensor

        real(real64), dimension(:), pointer, contiguous :: ptr

        call secure_fortran_pointer_from_tensor(ptr, atensor)
        call random_number(ptr)
        call update_remote_tensor_and_release_pointer(ptr, atensor)
    end subroutine init_r64

    subroutine init_c64(this, atensor)
        class(random_initializer), intent(in) :: this
        class(tensor), intent(inout) :: atensor

        complex(real32), dimension(:), pointer, contiguous :: ptr
        real(real32), dimension(:), allocatable :: re, im

        call secure_fortran_pointer_from_tensor(ptr, atensor)
        allocate(re(size(ptr)), im(size(ptr)))
        call random_number(re)
        call random_number(im)
        ptr = cmplx(re, im)
        deallocate(re, im)
        call update_remote_tensor_and_release_pointer(ptr, atensor)
    end subroutine init_c64

    subroutine init_c128(this, atensor)
        class(random_initializer), intent(in) :: this
        class(tensor), intent(inout) :: atensor

        complex(real64), dimension(:), pointer, contiguous :: ptr
        real(real64), dimension(:), allocatable :: re, im

        call secure_fortran_pointer_from_tensor(ptr, atensor)
        allocate(re(size(ptr)), im(size(ptr)))
        call random_number(re)
        call random_number(im)
        ptr = cmplx(re, im, kind=real64)
        deallocate(re, im)
        call update_remote_tensor_and_release_pointer(ptr, atensor)
    end subroutine init_c128
end module random_initializer_module
