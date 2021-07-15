module tensor_arithmetic_primitives_test_helper_module
    use, intrinsic :: iso_fortran_env, only : &
            real32, &
            real64

    use :: util_api, only : &
            assert, &
            string, &
            dictionary

    use :: data_api, only : &
            storage_helper, &
            stream_handler, &
            stream, &
            concurrency_factory

    use :: tensor_api, only : &
            scalar, &
            tensor, &
            allocate_and_copy_tensor, &
            tensor_arithmetic_primitives, &
            tensor_arithmetic_primitives_factory

    implicit none
    private

    public :: tensor_arithmetic_primitives_test_helper

    type :: tensor_arithmetic_primitives_test_helper
    contains
        procedure :: run => run
        procedure, nopass :: run_real32 => run_real32
        procedure, nopass :: run_real64 => run_real64
        procedure, nopass :: run_complex64 => run_complex64
        procedure, nopass :: run_complex128 => run_complex128
    end type tensor_arithmetic_primitives_test_helper

    real(real32), parameter :: single = 1.0e-4
    real(real64), parameter :: double = 1.0d-12
contains
    subroutine run(this, assertion, prefix, driver, memory_type, options, priorities)
        class(tensor_arithmetic_primitives_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: driver, memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        call this%run_real32(assertion, prefix//"real32:", driver, memory_type, options, priorities)
        call this%run_real64(assertion, prefix//"real64:", driver, memory_type, options, priorities)
        call this%run_complex64(assertion, prefix//"complex64:", driver, memory_type, options, priorities)
        call this%run_complex128(assertion, prefix//"complex128:", driver, memory_type, options, priorities)
    end subroutine run

    subroutine run_real32(assertion, prefix, driver, memory_type, options, priorities)
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: driver, memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        real(real32) :: alpha
        real(real32), dimension(111) :: original, regression, add
        class(tensor), allocatable :: dst, src
        class(tensor_arithmetic_primitives), allocatable :: tap
        class(stream_handler), allocatable :: handler
        type(stream) :: astream
        type(storage_helper) :: helper
        integer :: idx

        alpha = real(1.1, real32)
        call random_number(original)
        call random_number(add)

        call concurrency_factory%create_default_stream_handler(handler, memory_type, options, priorities)
        call handler%create(astream)
        call tensor_arithmetic_primitives_factory%create(tap, driver, options, priorities)

        call allocate_and_copy_tensor(src, add, memory_type, options, priorities)

        ! Add
        do idx = 1, size(original)
            regression(idx) = original(idx) + alpha*add(idx)
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%add(dst, src, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Add", &
                helper%equal(dst%storage, regression, single))

        call dst%cleanup()
        deallocate(dst)

        ! Multiply
        do idx = 1, size(original)
            regression(idx) = original(idx) * alpha*add(idx)
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%multiply(dst, src, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Multiply", &
                helper%equal(dst%storage, regression, single))

        call dst%cleanup()
        deallocate(dst)

        ! Divide
        do idx = 1, size(original)
            regression(idx) = original(idx) * alpha/add(idx)
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%divide(dst, src, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Divide", &
                helper%equal(dst%storage, regression, single))

        call dst%cleanup()
        deallocate(dst)

        ! Scalar add
        do idx = 1, size(original)
            regression(idx) = original(idx) + alpha
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%scalar_add(dst, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Scalar add", &
                helper%equal(dst%storage, regression, single))

        call dst%cleanup()
        deallocate(dst)

        ! Scalar multiply
        do idx = 1, size(original)
            regression(idx) = original(idx) * alpha
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%scalar_multiply(dst, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Scalar multiply", &
                helper%equal(dst%storage, regression, single))

        call dst%cleanup()
        deallocate(dst)

        ! Scalar inverse
        do idx = 1, size(original)
            regression(idx) = alpha/original(idx)
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%scalar_inverse(dst, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Scalar inverse", &
                helper%equal(dst%storage, regression, single))

        call dst%cleanup()
        deallocate(dst)

        call handler%destroy(astream)
        call tap%cleanup()
        call src%cleanup()
        deallocate(handler, tap, src)
    end subroutine run_real32

    subroutine run_real64(assertion, prefix, driver, memory_type, options, priorities)
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: driver, memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        real(real64) :: alpha
        real(real64), dimension(111) :: original, regression, add
        class(tensor), allocatable :: dst, src
        class(tensor_arithmetic_primitives), allocatable :: tap
        class(stream_handler), allocatable :: handler
        type(stream) :: astream
        type(storage_helper) :: helper
        integer :: idx

        alpha = real(1.1, real64)
        call random_number(original)
        call random_number(add)

        call concurrency_factory%create_default_stream_handler(handler, memory_type, options, priorities)
        call handler%create(astream)
        call tensor_arithmetic_primitives_factory%create(tap, driver, options, priorities)

        call allocate_and_copy_tensor(src, add, memory_type, options, priorities)

        ! Add
        do idx = 1, size(original)
            regression(idx) = original(idx) + alpha*add(idx)
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%add(dst, src, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Add", &
                helper%equal(dst%storage, regression, double))

        call dst%cleanup()
        deallocate(dst)

        ! Multiply
        do idx = 1, size(original)
            regression(idx) = original(idx) * alpha*add(idx)
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%multiply(dst, src, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Multiply", &
                helper%equal(dst%storage, regression, double))

        call dst%cleanup()
        deallocate(dst)

        ! Divide
        do idx = 1, size(original)
            regression(idx) = original(idx) * alpha/add(idx)
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%divide(dst, src, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Divide", &
                helper%equal(dst%storage, regression, double))

        call dst%cleanup()
        deallocate(dst)

        ! Scalar add
        do idx = 1, size(original)
            regression(idx) = original(idx) + alpha
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%scalar_add(dst, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Scalar add", &
                helper%equal(dst%storage, regression, double))

        call dst%cleanup()
        deallocate(dst)

        ! Scalar multiply
        do idx = 1, size(original)
            regression(idx) = original(idx) * alpha
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%scalar_multiply(dst, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Scalar multiply", &
                helper%equal(dst%storage, regression, double))

        call dst%cleanup()
        deallocate(dst)

        ! Scalar inverse
        do idx = 1, size(original)
            regression(idx) = alpha/original(idx)
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%scalar_inverse(dst, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Scalar inverse", &
                helper%equal(dst%storage, regression, double))

        call dst%cleanup()
        deallocate(dst)

        call handler%destroy(astream)
        call tap%cleanup()
        call src%cleanup()
        deallocate(handler, tap, src)
    end subroutine run_real64

    subroutine run_complex64(assertion, prefix, driver, memory_type, options, priorities)
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: driver, memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        complex(real32) :: alpha
        complex(real32), dimension(111) :: original, regression, add
        real(real32), dimension(111) :: r, i
        class(tensor), allocatable :: dst, src
        class(tensor_arithmetic_primitives), allocatable :: tap
        class(stream_handler), allocatable :: handler
        type(stream) :: astream
        type(storage_helper) :: helper
        integer :: idx
        complex(real32) :: tolerance

        alpha = (1.1, 1.1)
        tolerance = (single,single)

        call random_number(r)
        call random_number(i)
        original = cmplx(r, i)
        call random_number(r)
        call random_number(i)
        add = cmplx(r, i)

        call concurrency_factory%create_default_stream_handler(handler, memory_type, options, priorities)
        call handler%create(astream)
        call tensor_arithmetic_primitives_factory%create(tap, driver, options, priorities)

        call allocate_and_copy_tensor(src, add, memory_type, options, priorities)

        ! Add
        do idx = 1, size(original)
            regression(idx) = original(idx) + alpha*add(idx)
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%add(dst, src, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Add", &
                helper%equal(dst%storage, regression, tolerance))

        call dst%cleanup()
        deallocate(dst)

        ! Multiply
        do idx = 1, size(original)
            regression(idx) = original(idx) * alpha*add(idx)
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%multiply(dst, src, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Multiply", &
                helper%equal(dst%storage, regression, tolerance))

        call dst%cleanup()
        deallocate(dst)

        ! Divide
        do idx = 1, size(original)
            regression(idx) = original(idx) * alpha/add(idx)
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%divide(dst, src, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Divide", &
                helper%equal(dst%storage, regression, tolerance))

        call dst%cleanup()
        deallocate(dst)

        ! Scalar add
        do idx = 1, size(original)
            regression(idx) = original(idx) + alpha
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%scalar_add(dst, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Scalar add", &
                helper%equal(dst%storage, regression, tolerance))

        call dst%cleanup()
        deallocate(dst)

        ! Scalar multiply
        do idx = 1, size(original)
            regression(idx) = original(idx) * alpha
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%scalar_multiply(dst, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Scalar multiply", &
                helper%equal(dst%storage, regression, tolerance))

        call dst%cleanup()
        deallocate(dst)

        ! Scalar inverse
        do idx = 1, size(original)
            regression(idx) = alpha/original(idx)
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%scalar_inverse(dst, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Scalar inverse", &
                helper%equal(dst%storage, regression, tolerance))

        call dst%cleanup()
        deallocate(dst)

        call handler%destroy(astream)
        call tap%cleanup()
        call src%cleanup()
        deallocate(handler, tap, src)
    end subroutine run_complex64

    subroutine run_complex128(assertion, prefix, driver, memory_type, options, priorities)
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: driver, memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        complex(real64) :: alpha
        complex(real64), dimension(111) :: original, regression, add
        real(real64), dimension(111) :: r, i
        class(tensor), allocatable :: dst, src
        class(tensor_arithmetic_primitives), allocatable :: tap
        class(stream_handler), allocatable :: handler
        type(stream) :: astream
        type(storage_helper) :: helper
        integer :: idx
        complex(real64) :: tolerance

        alpha = (1.1d0, 1.1d0)
        tolerance = (double,double)

        call random_number(r)
        call random_number(i)
        original = cmplx(r, i, kind=real64)
        call random_number(r)
        call random_number(i)
        add = cmplx(r, i, kind=real64)

        call concurrency_factory%create_default_stream_handler(handler, memory_type, options, priorities)
        call handler%create(astream)
        call tensor_arithmetic_primitives_factory%create(tap, driver, options, priorities)

        call allocate_and_copy_tensor(src, add, memory_type, options, priorities)

        ! Add
        do idx = 1, size(original)
            regression(idx) = original(idx) + alpha*add(idx)
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%add(dst, src, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Add", &
                helper%equal(dst%storage, regression, tolerance))

        call dst%cleanup()
        deallocate(dst)

        ! Multiply
        do idx = 1, size(original)
            regression(idx) = original(idx) * alpha*add(idx)
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%multiply(dst, src, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Multiply", &
                helper%equal(dst%storage, regression, tolerance))

        call dst%cleanup()
        deallocate(dst)

        ! Divide
        do idx = 1, size(original)
            regression(idx) = original(idx) * alpha/add(idx)
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%divide(dst, src, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Divide", &
                helper%equal(dst%storage, regression, tolerance))

        call dst%cleanup()
        deallocate(dst)

        ! Scalar add
        do idx = 1, size(original)
            regression(idx) = original(idx) + alpha
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%scalar_add(dst, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Scalar add", &
                helper%equal(dst%storage, regression, tolerance))

        call dst%cleanup()
        deallocate(dst)

        ! Scalar multiply
        do idx = 1, size(original)
            regression(idx) = original(idx) * alpha
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%scalar_multiply(dst, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Scalar multiply", &
                helper%equal(dst%storage, regression, tolerance))

        call dst%cleanup()
        deallocate(dst)

        ! Scalar inverse
        do idx = 1, size(original)
            regression(idx) = alpha/original(idx)
        end do
        call allocate_and_copy_tensor(dst, original, memory_type, options, priorities)

        call tap%scalar_inverse(dst, scalar(alpha), astream)
        call tap%synchronize(astream)

        call assertion%equal(prefix//"::Scalar inverse", &
                helper%equal(dst%storage, regression, tolerance))

        call dst%cleanup()
        deallocate(dst)

        call handler%destroy(astream)
        call tap%cleanup()
        call src%cleanup()
        deallocate(handler, tap, src)
    end subroutine run_complex128

end module tensor_arithmetic_primitives_test_helper_module
