module hip_tap_driver_module
    use, intrinsic :: iso_fortran_env, only : &
            int64, &
            real32, &
            real64

    use :: iso_c_binding, only : &
            c_ptr, &
            c_int64_t, &
            c_float, &
            c_double, &
            c_float_complex, &
            c_double_complex, &
            c_null_ptr

    use :: data_api, only : &
            stream

    use :: hip_data_plugin, only : hip_synchronize_wrapper

    use :: tensor_package_api, only : &
            tensor, &
            scalar, &
            dt_r32, dt_r64, dt_c64, dt_c128

    use :: tensor_arithmetic_primitives_module, only : &
            tensor_arithmetic_primitives

    use :: tensor_c_pointer_converter_module, only : &
            tensor_c_pointer_converter

    implicit none
    private

    public :: hip_tap_driver

    type, extends(tensor_arithmetic_primitives) :: hip_tap_driver
        type(tensor_c_pointer_converter) :: converter
    contains
        procedure :: add => add
        procedure :: multiply => multiply
        procedure :: divide => divide

        procedure :: scalar_add => scalar_add
        procedure :: scalar_multiply => scalar_multiply
        procedure :: scalar_inverse => scalar_inverse

        procedure :: cleanup => cleanup
        procedure :: synchronize => synchronize
    end type hip_tap_driver

    interface hip_tap_driver
        module procedure constructor
    end interface hip_tap_driver

    interface
        ! Add
        subroutine hip_tap_add_real32(dst, src, ndim, alpha, stream) &
                bind(C, name="hip_tap_add_real32")
            import :: c_ptr
            import :: c_int64_t
            import :: c_float

            type(c_ptr), value :: dst, src
            integer(c_int64_t), value :: ndim
            real(c_float), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_add_real32

        subroutine hip_tap_add_real64(dst, src, ndim, alpha, stream) &
                bind(C, name="hip_tap_add_real64")
            import :: c_ptr
            import :: c_int64_t
            import :: c_double

            type(c_ptr), value :: dst, src
            integer(c_int64_t), value :: ndim
            real(c_double), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_add_real64

        subroutine hip_tap_add_complex64(dst, src, ndim, alpha, stream) &
                bind(C, name="hip_tap_add_complex64")
            import :: c_ptr
            import :: c_int64_t
            import :: c_float_complex

            type(c_ptr), value :: dst, src
            integer(c_int64_t), value :: ndim
            complex(c_float_complex), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_add_complex64

        subroutine hip_tap_add_complex128(dst, src, ndim, alpha, stream) &
                bind(C, name="hip_tap_add_complex128")
            import :: c_ptr
            import :: c_int64_t
            import :: c_double_complex

            type(c_ptr), value :: dst, src
            integer(c_int64_t), value :: ndim
            complex(c_double_complex), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_add_complex128

        ! Multiply
        subroutine hip_tap_multiply_real32(dst, src, ndim, alpha, stream) &
                bind(C, name="hip_tap_multiply_real32")
            import :: c_ptr
            import :: c_int64_t
            import :: c_float

            type(c_ptr), value :: dst, src
            integer(c_int64_t), value :: ndim
            real(c_float), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_multiply_real32

        subroutine hip_tap_multiply_real64(dst, src, ndim, alpha, stream) &
                bind(C, name="hip_tap_multiply_real64")
            import :: c_ptr
            import :: c_int64_t
            import :: c_double

            type(c_ptr), value :: dst, src
            integer(c_int64_t), value :: ndim
            real(c_double), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_multiply_real64

        subroutine hip_tap_multiply_complex64(dst, src, ndim, alpha, stream) &
                bind(C, name="hip_tap_multiply_complex64")
            import :: c_ptr
            import :: c_int64_t
            import :: c_float_complex

            type(c_ptr), value :: dst, src
            integer(c_int64_t), value :: ndim
            complex(c_float_complex), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_multiply_complex64

        subroutine hip_tap_multiply_complex128(dst, src, ndim, alpha, stream) &
                bind(C, name="hip_tap_multiply_complex128")
            import :: c_ptr
            import :: c_int64_t
            import :: c_double_complex

            type(c_ptr), value :: dst, src
            integer(c_int64_t), value :: ndim
            complex(c_double_complex), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_multiply_complex128

        ! Divide
        subroutine hip_tap_divide_real32(dst, src, ndim, alpha, stream) &
                bind(C, name="hip_tap_divide_real32")
            import :: c_ptr
            import :: c_int64_t
            import :: c_float

            type(c_ptr), value :: dst, src
            integer(c_int64_t), value :: ndim
            real(c_float), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_divide_real32

        subroutine hip_tap_divide_real64(dst, src, ndim, alpha, stream) &
                bind(C, name="hip_tap_divide_real64")
            import :: c_ptr
            import :: c_int64_t
            import :: c_double

            type(c_ptr), value :: dst, src
            integer(c_int64_t), value :: ndim
            real(c_double), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_divide_real64

        subroutine hip_tap_divide_complex64(dst, src, ndim, alpha, stream) &
                bind(C, name="hip_tap_divide_complex64")
            import :: c_ptr
            import :: c_int64_t
            import :: c_float_complex

            type(c_ptr), value :: dst, src
            integer(c_int64_t), value :: ndim
            complex(c_float_complex), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_divide_complex64

        subroutine hip_tap_divide_complex128(dst, src, ndim, alpha, stream) &
                bind(C, name="hip_tap_divide_complex128")
            import :: c_ptr
            import :: c_int64_t
            import :: c_double_complex

            type(c_ptr), value :: dst, src
            integer(c_int64_t), value :: ndim
            complex(c_double_complex), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_divide_complex128

        ! Scalar add
        subroutine hip_tap_scalar_add_real32(dst, ndim, alpha, stream) &
                bind(C, name="hip_tap_scalar_add_real32")
            import :: c_ptr
            import :: c_int64_t
            import :: c_float

            type(c_ptr), value :: dst
            integer(c_int64_t), value :: ndim
            real(c_float), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_scalar_add_real32

        subroutine hip_tap_scalar_add_real64(dst, ndim, alpha, stream) &
                bind(C, name="hip_tap_scalar_add_real64")
            import :: c_ptr
            import :: c_int64_t
            import :: c_double

            type(c_ptr), value :: dst
            integer(c_int64_t), value :: ndim
            real(c_double), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_scalar_add_real64

        subroutine hip_tap_scalar_add_complex64(dst, ndim, alpha, stream) &
                bind(C, name="hip_tap_scalar_add_complex64")
            import :: c_ptr
            import :: c_int64_t
            import :: c_float_complex

            type(c_ptr), value :: dst
            integer(c_int64_t), value :: ndim
            complex(c_float_complex), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_scalar_add_complex64

        subroutine hip_tap_scalar_add_complex128(dst, ndim, alpha, stream) &
                bind(C, name="hip_tap_scalar_add_complex128")
            import :: c_ptr
            import :: c_int64_t
            import :: c_double_complex

            type(c_ptr), value :: dst
            integer(c_int64_t), value :: ndim
            complex(c_double_complex), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_scalar_add_complex128

        ! Scalar multiply
        subroutine hip_tap_scalar_multiply_real32(dst, ndim, alpha, stream) &
                bind(C, name="hip_tap_scalar_multiply_real32")
            import :: c_ptr
            import :: c_int64_t
            import :: c_float

            type(c_ptr), value :: dst
            integer(c_int64_t), value :: ndim
            real(c_float), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_scalar_multiply_real32

        subroutine hip_tap_scalar_multiply_real64(dst, ndim, alpha, stream) &
                bind(C, name="hip_tap_scalar_multiply_real64")
            import :: c_ptr
            import :: c_int64_t
            import :: c_double

            type(c_ptr), value :: dst
            integer(c_int64_t), value :: ndim
            real(c_double), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_scalar_multiply_real64

        subroutine hip_tap_scalar_multiply_complex64(dst, ndim, alpha, stream) &
                bind(C, name="hip_tap_scalar_multiply_complex64")
            import :: c_ptr
            import :: c_int64_t
            import :: c_float_complex

            type(c_ptr), value :: dst
            integer(c_int64_t), value :: ndim
            complex(c_float_complex), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_scalar_multiply_complex64

        subroutine hip_tap_scalar_multiply_complex128(dst, ndim, alpha, stream) &
                bind(C, name="hip_tap_scalar_multiply_complex128")
            import :: c_ptr
            import :: c_int64_t
            import :: c_double_complex

            type(c_ptr), value :: dst
            integer(c_int64_t), value :: ndim
            complex(c_double_complex), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_scalar_multiply_complex128

        ! Scalar inverse
        subroutine hip_tap_scalar_inverse_real32(dst, ndim, alpha, stream) &
                bind(C, name="hip_tap_scalar_inverse_real32")
            import :: c_ptr
            import :: c_int64_t
            import :: c_float

            type(c_ptr), value :: dst
            integer(c_int64_t), value :: ndim
            real(c_float), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_scalar_inverse_real32

        subroutine hip_tap_scalar_inverse_real64(dst, ndim, alpha, stream) &
                bind(C, name="hip_tap_scalar_inverse_real64")
            import :: c_ptr
            import :: c_int64_t
            import :: c_double

            type(c_ptr), value :: dst
            integer(c_int64_t), value :: ndim
            real(c_double), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_scalar_inverse_real64

        subroutine hip_tap_scalar_inverse_complex64(dst, ndim, alpha, stream) &
                bind(C, name="hip_tap_scalar_inverse_complex64")
            import :: c_ptr
            import :: c_int64_t
            import :: c_float_complex

            type(c_ptr), value :: dst
            integer(c_int64_t), value :: ndim
            complex(c_float_complex), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_scalar_inverse_complex64

        subroutine hip_tap_scalar_inverse_complex128(dst, ndim, alpha, stream) &
                bind(C, name="hip_tap_scalar_inverse_complex128")
            import :: c_ptr
            import :: c_int64_t
            import :: c_double_complex

            type(c_ptr), value :: dst
            integer(c_int64_t), value :: ndim
            complex(c_double_complex), value :: alpha
            type(c_ptr), value :: stream
        end subroutine hip_tap_scalar_inverse_complex128
    end interface

contains
    function constructor(converter) result(this)
        type(tensor_c_pointer_converter), intent(in) :: converter
        type(hip_tap_driver) :: this

        this%converter = converter
    end function constructor

    subroutine add(this, dst, src, alpha, astream)
        class(hip_tap_driver), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        type(scalar), intent(in), optional :: alpha
        type(stream), intent(in), optional :: astream

        type(scalar) :: actual_alpha
        type(c_ptr) :: dst_dptr, src_dptr, actual_stream
        integer(int64) :: nelements

        call this%check_datatype_and_size(dst, src)
        actual_alpha = this%get_alpha(alpha)

        actual_stream = c_null_ptr
        if ( present(astream) ) actual_stream = astream%sid

        call this%converter%secure_pointer(src, src_dptr, astream)
        call this%converter%secure_pointer(dst, dst_dptr, astream)
        nelements = dst%number_of_elements

        select case (dst%datatype)
        case (dt_r32)
            call hip_tap_add_real32(dst_dptr, src_dptr, nelements, actual_alpha%as_real32(), actual_stream)
        case (dt_r64)
            call hip_tap_add_real64(dst_dptr, src_dptr, nelements, actual_alpha%as_real64(), actual_stream)
        case (dt_c64)
            call hip_tap_add_complex64(dst_dptr, src_dptr, nelements, actual_alpha%as_complex64(), actual_stream)
        case (dt_c128)
            call hip_tap_add_complex128(dst_dptr, src_dptr, nelements, actual_alpha%as_complex128(), actual_stream)
        end select

        call this%converter%update_and_release(dst, dst_dptr, astream)
        call this%converter%release(src, src_dptr, astream)
    end subroutine add

    subroutine multiply(this, dst, src, alpha, astream)
        class(hip_tap_driver), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        type(scalar), intent(in), optional :: alpha
        type(stream), intent(in), optional :: astream

        type(scalar) :: actual_alpha
        type(c_ptr) :: dst_dptr, src_dptr, actual_stream
        integer(int64) :: nelements

        call this%check_datatype_and_size(dst, src)

        actual_alpha = this%get_alpha(alpha)

        actual_stream = c_null_ptr
        if ( present(astream) ) actual_stream = astream%sid

        call this%converter%secure_pointer(src, src_dptr, astream)
        call this%converter%secure_pointer(dst, dst_dptr, astream)
        nelements = dst%number_of_elements

        select case (dst%datatype)
        case (dt_r32)
            call hip_tap_multiply_real32(dst_dptr, src_dptr, nelements, actual_alpha%as_real32(), actual_stream)
        case (dt_r64)
            call hip_tap_multiply_real64(dst_dptr, src_dptr, nelements, actual_alpha%as_real64(), actual_stream)
        case (dt_c64)
            call hip_tap_multiply_complex64(dst_dptr, src_dptr, nelements, actual_alpha%as_complex64(), actual_stream)
        case (dt_c128)
            call hip_tap_multiply_complex128(dst_dptr, src_dptr, nelements, actual_alpha%as_complex128(), actual_stream)
        end select

        call this%converter%update_and_release(dst, dst_dptr, astream)
        call this%converter%release(src, src_dptr, astream)
    end subroutine multiply

    subroutine divide(this, dst, src, alpha, astream)
        class(hip_tap_driver), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        type(scalar), intent(in), optional :: alpha
        type(stream), intent(in), optional :: astream

        type(scalar) :: actual_alpha
        type(c_ptr) :: dst_dptr, src_dptr, actual_stream
        integer(int64) :: nelements

        call this%check_datatype_and_size(dst, src)

        actual_alpha = this%get_alpha(alpha)

        actual_stream = c_null_ptr
        if ( present(astream) ) actual_stream = astream%sid

        call this%converter%secure_pointer(src, src_dptr, astream)
        call this%converter%secure_pointer(dst, dst_dptr, astream)
        nelements = dst%number_of_elements

        select case (dst%datatype)
        case (dt_r32)
            call hip_tap_divide_real32(dst_dptr, src_dptr, nelements, actual_alpha%as_real32(), actual_stream)
        case (dt_r64)
            call hip_tap_divide_real64(dst_dptr, src_dptr, nelements, actual_alpha%as_real64(), actual_stream)
        case (dt_c64)
            call hip_tap_divide_complex64(dst_dptr, src_dptr, nelements, actual_alpha%as_complex64(), actual_stream)
        case (dt_c128)
            call hip_tap_divide_complex128(dst_dptr, src_dptr, nelements, actual_alpha%as_complex128(), actual_stream)
        end select

        call this%converter%update_and_release(dst, dst_dptr, astream)
        call this%converter%release(src, src_dptr, astream)
    end subroutine divide

    subroutine scalar_add(this, dst, alpha, astream)
        class(hip_tap_driver), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        type(scalar), intent(in), optional :: alpha
        type(stream), intent(in), optional :: astream

        type(scalar) :: actual_alpha
        type(c_ptr) :: dst_dptr, actual_stream
        integer(int64) :: nelements

        actual_alpha = this%get_alpha(alpha)

        actual_stream = c_null_ptr
        if ( present(astream) ) actual_stream = astream%sid

        call this%converter%secure_pointer(dst, dst_dptr, astream)
        nelements = dst%number_of_elements

        select case (dst%datatype)
        case (dt_r32)
            call hip_tap_scalar_add_real32(dst_dptr, nelements, actual_alpha%as_real32(), actual_stream)
        case (dt_r64)
            call hip_tap_scalar_add_real64(dst_dptr, nelements, actual_alpha%as_real64(), actual_stream)
        case (dt_c64)
            call hip_tap_scalar_add_complex64(dst_dptr, nelements, actual_alpha%as_complex64(), actual_stream)
        case (dt_c128)
            call hip_tap_scalar_add_complex128(dst_dptr, nelements, actual_alpha%as_complex128(), actual_stream)
        end select

        call this%converter%update_and_release(dst, dst_dptr, astream)
    end subroutine scalar_add

    subroutine scalar_multiply(this, dst, alpha, astream)
        class(hip_tap_driver), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        type(scalar), intent(in), optional :: alpha
        type(stream), intent(in), optional :: astream

        type(scalar) :: actual_alpha
        type(c_ptr) :: dst_dptr, actual_stream
        integer(int64) :: nelements

        actual_alpha = this%get_alpha(alpha)

        actual_stream = c_null_ptr
        if ( present(astream) ) actual_stream = astream%sid

        call this%converter%secure_pointer(dst, dst_dptr, astream)
        nelements = dst%number_of_elements

        select case (dst%datatype)
        case (dt_r32)
            call hip_tap_scalar_multiply_real32(dst_dptr, nelements, actual_alpha%as_real32(), actual_stream)
        case (dt_r64)
            call hip_tap_scalar_multiply_real64(dst_dptr, nelements, actual_alpha%as_real64(), actual_stream)
        case (dt_c64)
            call hip_tap_scalar_multiply_complex64(dst_dptr, nelements, actual_alpha%as_complex64(), actual_stream)
        case (dt_c128)
            call hip_tap_scalar_multiply_complex128(dst_dptr, nelements, actual_alpha%as_complex128(), actual_stream)
        end select

        call this%converter%update_and_release(dst, dst_dptr, astream)
    end subroutine scalar_multiply

    subroutine scalar_inverse(this, dst, alpha, astream)
        class(hip_tap_driver), intent(inout) :: this
        class(tensor), intent(inout) :: dst
        type(scalar), intent(in), optional :: alpha
        type(stream), intent(in), optional :: astream

        type(scalar) :: actual_alpha
        type(c_ptr) :: dst_dptr, actual_stream
        integer(int64) :: nelements

        actual_alpha = this%get_alpha(alpha)

        actual_stream = c_null_ptr
        if ( present(astream) ) actual_stream = astream%sid

        call this%converter%secure_pointer(dst, dst_dptr, astream)
        nelements = dst%number_of_elements

        select case (dst%datatype)
        case (dt_r32)
            call hip_tap_scalar_inverse_real32(dst_dptr, nelements, actual_alpha%as_real32(), actual_stream)
        case (dt_r64)
            call hip_tap_scalar_inverse_real64(dst_dptr, nelements, actual_alpha%as_real64(), actual_stream)
        case (dt_c64)
            call hip_tap_scalar_inverse_complex64(dst_dptr, nelements, actual_alpha%as_complex64(), actual_stream)
        case (dt_c128)
            call hip_tap_scalar_inverse_complex128(dst_dptr, nelements, actual_alpha%as_complex128(), actual_stream)
        end select

        call this%converter%update_and_release(dst, dst_dptr, astream)
    end subroutine scalar_inverse

    subroutine cleanup(this)
        class(hip_tap_driver), intent(inout) :: this

        call this%converter%cleanup()
    end subroutine cleanup

    subroutine synchronize(this, astream)
        class(hip_tap_driver), intent(inout) :: this
        type(stream), intent(in), optional :: astream

        integer :: error

        error = hip_synchronize_wrapper(astream)
        if ( error /= 0 ) &
                error stop 'hip_tap_driver::synchronize:Error in call to synchronize wrapper.'
    end subroutine synchronize
end module hip_tap_driver_module
