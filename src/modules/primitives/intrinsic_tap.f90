module intrinsic_tap_module
    use, intrinsic :: iso_fortran_env, only : &
            int64, &
            real32, &
            real64

    use :: data_api, only : &
            stream

    use :: tensor_package_api, only : &
            tensor, &
            scalar, &
            dt_r32, dt_r64, dt_c64, dt_c128

    use :: tensor_fortran_converter_module, only : &
            tensor_fortran_converter

    use :: tensor_arithmetic_primitives_module, only : &
            tensor_arithmetic_primitives

    implicit none
    private

    public :: intrinsic_tap

    type, extends(tensor_arithmetic_primitives) :: intrinsic_tap
        type(tensor_fortran_converter) :: converter
    contains
        procedure :: add => add
        procedure :: multiply => multiply
        procedure :: divide => divide

        procedure :: scalar_add => scalar_add
        procedure :: scalar_multiply => scalar_multiply
        procedure :: scalar_inverse => scalar_inverse

        procedure :: cleanup => cleanup
        procedure :: synchronize => synchronize

        procedure :: add_real32 => add_real32
        procedure :: add_real64 => add_real64
        procedure :: add_complex64 => add_complex64
        procedure :: add_complex128 => add_complex128
        procedure :: multiply_real32 => multiply_real32
        procedure :: multiply_real64 => multiply_real64
        procedure :: multiply_complex64 => multiply_complex64
        procedure :: multiply_complex128 => multiply_complex128
        procedure :: divide_real32 => divide_real32
        procedure :: divide_real64 => divide_real64
        procedure :: divide_complex64 => divide_complex64
        procedure :: divide_complex128 => divide_complex128
        procedure :: scalar_add_real32 => scalar_add_real32
        procedure :: scalar_add_real64 => scalar_add_real64
        procedure :: scalar_add_complex64 => scalar_add_complex64
        procedure :: scalar_add_complex128 => scalar_add_complex128
        procedure :: scalar_multiply_real32 => scalar_multiply_real32
        procedure :: scalar_multiply_real64 => scalar_multiply_real64
        procedure :: scalar_multiply_complex64 => scalar_multiply_complex64
        procedure :: scalar_multiply_complex128 => scalar_multiply_complex128
        procedure :: scalar_inverse_real32 => scalar_inverse_real32
        procedure :: scalar_inverse_real64 => scalar_inverse_real64
        procedure :: scalar_inverse_complex64 => scalar_inverse_complex64
        procedure :: scalar_inverse_complex128 => scalar_inverse_complex128
    end type intrinsic_tap

    interface intrinsic_tap
        module procedure constructor
    end interface intrinsic_tap

contains
    function constructor() result(this)
        type(intrinsic_tap) :: this

        this%converter = tensor_fortran_converter()
    end function constructor

    subroutine add(this, dst, src, alpha, astream)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        type(scalar), intent(in), optional :: alpha
        type(stream), intent(in), optional :: astream

        type(scalar) :: actual_alpha

        call this%check_datatype_and_size(dst, src)

        actual_alpha = this%get_alpha(alpha)

        select case (dst%datatype)
        case (dt_r32)
            call this%add_real32(dst, src, actual_alpha%as_real32())
        case (dt_r64)
            call this%add_real64(dst, src, actual_alpha%as_real64())
        case (dt_c64)
            call this%add_complex64(dst, src, actual_alpha%as_complex64())
        case (dt_c128)
            call this%add_complex128(dst, src, actual_alpha%as_complex128())
        end select
    end subroutine add

    subroutine multiply(this, dst, src, alpha, astream)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        type(scalar), intent(in), optional :: alpha
        type(stream), intent(in), optional :: astream

        type(scalar) :: actual_alpha

        call this%check_datatype_and_size(dst, src)

        actual_alpha = this%get_alpha(alpha)
        select case (dst%datatype)
        case (dt_r32)
            call this%multiply_real32(dst, src, actual_alpha%as_real32())
        case (dt_r64)
            call this%multiply_real64(dst, src, actual_alpha%as_real64())
        case (dt_c64)
            call this%multiply_complex64(dst, src, actual_alpha%as_complex64())
        case (dt_c128)
            call this%multiply_complex128(dst, src, actual_alpha%as_complex128())
        end select
    end subroutine multiply

    subroutine divide(this, dst, src, alpha, astream)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        type(scalar), intent(in), optional :: alpha
        type(stream), intent(in), optional :: astream

        type(scalar) :: actual_alpha

        call this%check_datatype_and_size(dst, src)

        actual_alpha = this%get_alpha(alpha)
        select case (dst%datatype)
        case (dt_r32)
            call this%divide_real32(dst, src, actual_alpha%as_real32())
        case (dt_r64)
            call this%divide_real64(dst, src, actual_alpha%as_real64())
        case (dt_c64)
            call this%divide_complex64(dst, src, actual_alpha%as_complex64())
        case (dt_c128)
            call this%divide_complex128(dst, src, actual_alpha%as_complex128())
        end select
    end subroutine divide

    subroutine scalar_add(this, dst, alpha, astream)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        type(scalar), intent(in), optional :: alpha
        type(stream), intent(in), optional :: astream

        type(scalar) :: actual_alpha

        actual_alpha = this%get_alpha(alpha)

        select case (dst%datatype)
        case (dt_r32)
            call this%scalar_add_real32(dst, actual_alpha%as_real32())
        case (dt_r64)
            call this%scalar_add_real64(dst, actual_alpha%as_real64())
        case (dt_c64)
            call this%scalar_add_complex64(dst, actual_alpha%as_complex64())
        case (dt_c128)
            call this%scalar_add_complex128(dst, actual_alpha%as_complex128())
        end select
    end subroutine scalar_add

    subroutine scalar_multiply(this, dst, alpha, astream)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        type(scalar), intent(in), optional :: alpha
        type(stream), intent(in), optional :: astream

        type(scalar) :: actual_alpha

        actual_alpha = this%get_alpha(alpha)

        select case (dst%datatype)
        case (dt_r32)
            call this%scalar_multiply_real32(dst, actual_alpha%as_real32())
        case (dt_r64)
            call this%scalar_multiply_real64(dst, actual_alpha%as_real64())
        case (dt_c64)
            call this%scalar_multiply_complex64(dst, actual_alpha%as_complex64())
        case (dt_c128)
            call this%scalar_multiply_complex128(dst, actual_alpha%as_complex128())
        end select
    end subroutine scalar_multiply

    subroutine scalar_inverse(this, dst, alpha, astream)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        type(scalar), intent(in), optional :: alpha
        type(stream), intent(in), optional :: astream

        type(scalar) :: actual_alpha

        actual_alpha = this%get_alpha(alpha)

        select case (dst%datatype)
        case (dt_r32)
            call this%scalar_inverse_real32(dst, actual_alpha%as_real32())
        case (dt_r64)
            call this%scalar_inverse_real64(dst, actual_alpha%as_real64())
        case (dt_c64)
            call this%scalar_inverse_complex64(dst, actual_alpha%as_complex64())
        case (dt_c128)
            call this%scalar_inverse_complex128(dst, actual_alpha%as_complex128())
        end select
    end subroutine scalar_inverse

    subroutine cleanup(this)
        class(intrinsic_tap), intent(inout) :: this

        call this%converter%cleanup()
    end subroutine cleanup

    subroutine synchronize(this, astream)
        class(intrinsic_tap), intent(inout) :: this
        type(stream), intent(in), optional :: astream

        ! Nothing to do
        continue
    end subroutine synchronize

    subroutine add_real32(this, dst, src, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        real(real32), intent(in) :: alpha

        real(real32), dimension(:), pointer, contiguous :: d_ptr, s_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)
        call this%converter%secure_fortran_pointer(s_ptr, src)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = d_ptr(idx) + alpha*s_ptr(idx)
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
        call this%converter%release_pointer(s_ptr, src)
    end subroutine add_real32

    subroutine add_real64(this, dst, src, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        real(real64), intent(in) :: alpha

        real(real64), dimension(:), pointer, contiguous :: d_ptr, s_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)
        call this%converter%secure_fortran_pointer(s_ptr, src)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = d_ptr(idx) + alpha*s_ptr(idx)
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
        call this%converter%release_pointer(s_ptr, src)
    end subroutine add_real64

    subroutine add_complex64(this, dst, src, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        complex(real32), intent(in) :: alpha

        complex(real32), dimension(:), pointer, contiguous :: d_ptr, s_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)
        call this%converter%secure_fortran_pointer(s_ptr, src)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = d_ptr(idx) + alpha*s_ptr(idx)
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
        call this%converter%release_pointer(s_ptr, src)
    end subroutine add_complex64

    subroutine add_complex128(this, dst, src, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        complex(real64), intent(in) :: alpha

        complex(real64), dimension(:), pointer, contiguous :: d_ptr, s_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)
        call this%converter%secure_fortran_pointer(s_ptr, src)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = d_ptr(idx) + alpha*s_ptr(idx)
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
        call this%converter%release_pointer(s_ptr, src)
    end subroutine add_complex128

    subroutine multiply_real32(this, dst, src, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        real(real32), intent(in) :: alpha

        real(real32), dimension(:), pointer, contiguous :: d_ptr, s_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)
        call this%converter%secure_fortran_pointer(s_ptr, src)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = d_ptr(idx) * alpha*s_ptr(idx)
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
        call this%converter%release_pointer(s_ptr, src)
    end subroutine multiply_real32

    subroutine multiply_real64(this, dst, src, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        real(real64), intent(in) :: alpha

        real(real64), dimension(:), pointer, contiguous :: d_ptr, s_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)
        call this%converter%secure_fortran_pointer(s_ptr, src)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = d_ptr(idx) * alpha*s_ptr(idx)
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
        call this%converter%release_pointer(s_ptr, src)
    end subroutine multiply_real64

    subroutine multiply_complex64(this, dst, src, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        complex(real32), intent(in) :: alpha

        complex(real32), dimension(:), pointer, contiguous :: d_ptr, s_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)
        call this%converter%secure_fortran_pointer(s_ptr, src)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = d_ptr(idx) * alpha*s_ptr(idx)
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
        call this%converter%release_pointer(s_ptr, src)
    end subroutine multiply_complex64

    subroutine multiply_complex128(this, dst, src, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        complex(real64), intent(in) :: alpha

        complex(real64), dimension(:), pointer, contiguous :: d_ptr, s_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)
        call this%converter%secure_fortran_pointer(s_ptr, src)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = d_ptr(idx) * alpha*s_ptr(idx)
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
        call this%converter%release_pointer(s_ptr, src)
    end subroutine multiply_complex128

    subroutine divide_real32(this, dst, src, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        real(real32), intent(in) :: alpha

        real(real32), dimension(:), pointer, contiguous :: d_ptr, s_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)
        call this%converter%secure_fortran_pointer(s_ptr, src)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = d_ptr(idx) * alpha/s_ptr(idx)
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
        call this%converter%release_pointer(s_ptr, src)
    end subroutine divide_real32

    subroutine divide_real64(this, dst, src, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        real(real64), intent(in) :: alpha

        real(real64), dimension(:), pointer, contiguous :: d_ptr, s_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)
        call this%converter%secure_fortran_pointer(s_ptr, src)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = d_ptr(idx) * alpha/s_ptr(idx)
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
        call this%converter%release_pointer(s_ptr, src)
    end subroutine divide_real64

    subroutine divide_complex64(this, dst, src, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        complex(real32), intent(in) :: alpha

        complex(real32), dimension(:), pointer, contiguous :: d_ptr, s_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)
        call this%converter%secure_fortran_pointer(s_ptr, src)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = d_ptr(idx) * alpha/s_ptr(idx)
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
        call this%converter%release_pointer(s_ptr, src)
    end subroutine divide_complex64

    subroutine divide_complex128(this, dst, src, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        complex(real64), intent(in) :: alpha

        complex(real64), dimension(:), pointer, contiguous :: d_ptr, s_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)
        call this%converter%secure_fortran_pointer(s_ptr, src)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = d_ptr(idx) * alpha/s_ptr(idx)
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
        call this%converter%release_pointer(s_ptr, src)
    end subroutine divide_complex128

    subroutine scalar_add_real32(this, dst, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        real(real32), intent(in) :: alpha

        real(real32), dimension(:), pointer, contiguous :: d_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = d_ptr(idx) + alpha
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
    end subroutine scalar_add_real32

    subroutine scalar_add_real64(this, dst, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        real(real64), intent(in) :: alpha

        real(real64), dimension(:), pointer, contiguous :: d_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = d_ptr(idx) + alpha
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
    end subroutine scalar_add_real64

    subroutine scalar_add_complex64(this, dst, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        complex(real32), intent(in) :: alpha

        complex(real32), dimension(:), pointer, contiguous :: d_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = d_ptr(idx) + alpha
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
    end subroutine scalar_add_complex64

    subroutine scalar_add_complex128(this, dst, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        complex(real64), intent(in) :: alpha

        complex(real64), dimension(:), pointer, contiguous :: d_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = d_ptr(idx) + alpha
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
    end subroutine scalar_add_complex128

    subroutine scalar_multiply_real32(this, dst, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        real(real32), intent(in) :: alpha

        real(real32), dimension(:), pointer, contiguous :: d_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = d_ptr(idx) * alpha
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
    end subroutine scalar_multiply_real32

    subroutine scalar_multiply_real64(this, dst, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        real(real64), intent(in) :: alpha

        real(real64), dimension(:), pointer, contiguous :: d_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = d_ptr(idx) * alpha
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
    end subroutine scalar_multiply_real64

    subroutine scalar_multiply_complex64(this, dst, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        complex(real32), intent(in) :: alpha

        complex(real32), dimension(:), pointer, contiguous :: d_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = d_ptr(idx) * alpha
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
    end subroutine scalar_multiply_complex64

    subroutine scalar_multiply_complex128(this, dst, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        complex(real64), intent(in) :: alpha

        complex(real64), dimension(:), pointer, contiguous :: d_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = d_ptr(idx) * alpha
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
    end subroutine scalar_multiply_complex128

    subroutine scalar_inverse_real32(this, dst, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        real(real32), intent(in) :: alpha

        real(real32), dimension(:), pointer, contiguous :: d_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = alpha/d_ptr(idx)
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
    end subroutine scalar_inverse_real32

    subroutine scalar_inverse_real64(this, dst, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        real(real64), intent(in) :: alpha

        real(real64), dimension(:), pointer, contiguous :: d_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = alpha/d_ptr(idx)
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
    end subroutine scalar_inverse_real64

    subroutine scalar_inverse_complex64(this, dst, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        complex(real32), intent(in) :: alpha

        complex(real32), dimension(:), pointer, contiguous :: d_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = alpha/d_ptr(idx)
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
    end subroutine scalar_inverse_complex64

    subroutine scalar_inverse_complex128(this, dst, alpha)
        class(intrinsic_tap), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        complex(real64), intent(in) :: alpha

        complex(real64), dimension(:), pointer, contiguous :: d_ptr
        integer(int64) :: idx

        call this%converter%secure_fortran_pointer(d_ptr, dst)

        do idx = 1, dst%number_of_elements
            d_ptr(idx) = alpha/d_ptr(idx)
        end do

        call this%converter%update_remote_and_release_pointer(d_ptr, dst)
    end subroutine scalar_inverse_complex128
end module intrinsic_tap_module
