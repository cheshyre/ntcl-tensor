! Auto-generated. DO NOT MODIFY!
module tensor_builder_test_helper_module
    use, intrinsic :: iso_fortran_env, only : &
            int64, &
            real64, &
            real32, &
            int32, &
            int16, &
            int8
    use, intrinsic :: iso_c_binding, only : &
            c_ptr, &
            c_associated, &
            c_loc
    use :: util_api, only : &
            assert, &
            string, &
            dictionary
    use :: data_api, only : &
            memory_factory, &
            scratch_buffer, &
            get_scratch_buffer, &
            allocate_and_copy_storage, &
            storage_helper
    use :: data_dev, only : &
            host_storage
    use :: tensor_api, only : &
            dt_c128, &
            dt_c64, &
            dt_r64, &
            dt_r32, &
            dt_i64, &
            dt_i32, &
            dt_i16, &
            dt_i8, &
            tensor, &
            tscalar, &
            vector, &
            matrix, &
            tensor_rank3, &
            tensor_rank4, &
            tensor_rank5, &
            allocate_and_copy_tensor, &
            copy_tensor, &
            allocate_and_copy_tensor_to_scratch, &
            copy_tensor_to_scratch, &
            allocate_and_point_to_tensor, &
            point_to_tensor

    implicit none
    private

    public :: tensor_builder_test_helper

    type :: tensor_builder_test_helper
    contains
        generic :: check_data_equivalence => &
                check_data_equivalence_for_tensor, &
                check_data_equivalence_for_complex128_rank0, &
                check_data_equivalence_for_complex128_rank1, &
                check_data_equivalence_for_complex128_rank2, &
                check_data_equivalence_for_complex128_rank3, &
                check_data_equivalence_for_complex128_rank4, &
                check_data_equivalence_for_complex128_rank5, &
                check_data_equivalence_for_complex64_rank0, &
                check_data_equivalence_for_complex64_rank1, &
                check_data_equivalence_for_complex64_rank2, &
                check_data_equivalence_for_complex64_rank3, &
                check_data_equivalence_for_complex64_rank4, &
                check_data_equivalence_for_complex64_rank5, &
                check_data_equivalence_for_real64_rank0, &
                check_data_equivalence_for_real64_rank1, &
                check_data_equivalence_for_real64_rank2, &
                check_data_equivalence_for_real64_rank3, &
                check_data_equivalence_for_real64_rank4, &
                check_data_equivalence_for_real64_rank5, &
                check_data_equivalence_for_real32_rank0, &
                check_data_equivalence_for_real32_rank1, &
                check_data_equivalence_for_real32_rank2, &
                check_data_equivalence_for_real32_rank3, &
                check_data_equivalence_for_real32_rank4, &
                check_data_equivalence_for_real32_rank5, &
                check_data_equivalence_for_int64_rank0, &
                check_data_equivalence_for_int64_rank1, &
                check_data_equivalence_for_int64_rank2, &
                check_data_equivalence_for_int64_rank3, &
                check_data_equivalence_for_int64_rank4, &
                check_data_equivalence_for_int64_rank5, &
                check_data_equivalence_for_int32_rank0, &
                check_data_equivalence_for_int32_rank1, &
                check_data_equivalence_for_int32_rank2, &
                check_data_equivalence_for_int32_rank3, &
                check_data_equivalence_for_int32_rank4, &
                check_data_equivalence_for_int32_rank5, &
                check_data_equivalence_for_int16_rank0, &
                check_data_equivalence_for_int16_rank1, &
                check_data_equivalence_for_int16_rank2, &
                check_data_equivalence_for_int16_rank3, &
                check_data_equivalence_for_int16_rank4, &
                check_data_equivalence_for_int16_rank5, &
                check_data_equivalence_for_int8_rank0, &
                check_data_equivalence_for_int8_rank1, &
                check_data_equivalence_for_int8_rank2, &
                check_data_equivalence_for_int8_rank3, &
                check_data_equivalence_for_int8_rank4, &
                check_data_equivalence_for_int8_rank5
        procedure :: check_data_equivalence_for_tensor => check_data_equivalence_for_tensor
        procedure :: check_data_equivalence_for_complex128_rank0 => check_data_equivalence_for_complex128_rank0
        procedure :: check_data_equivalence_for_complex128_rank1 => check_data_equivalence_for_complex128_rank1
        procedure :: check_data_equivalence_for_complex128_rank2 => check_data_equivalence_for_complex128_rank2
        procedure :: check_data_equivalence_for_complex128_rank3 => check_data_equivalence_for_complex128_rank3
        procedure :: check_data_equivalence_for_complex128_rank4 => check_data_equivalence_for_complex128_rank4
        procedure :: check_data_equivalence_for_complex128_rank5 => check_data_equivalence_for_complex128_rank5
        procedure :: check_data_equivalence_for_complex64_rank0 => check_data_equivalence_for_complex64_rank0
        procedure :: check_data_equivalence_for_complex64_rank1 => check_data_equivalence_for_complex64_rank1
        procedure :: check_data_equivalence_for_complex64_rank2 => check_data_equivalence_for_complex64_rank2
        procedure :: check_data_equivalence_for_complex64_rank3 => check_data_equivalence_for_complex64_rank3
        procedure :: check_data_equivalence_for_complex64_rank4 => check_data_equivalence_for_complex64_rank4
        procedure :: check_data_equivalence_for_complex64_rank5 => check_data_equivalence_for_complex64_rank5
        procedure :: check_data_equivalence_for_real64_rank0 => check_data_equivalence_for_real64_rank0
        procedure :: check_data_equivalence_for_real64_rank1 => check_data_equivalence_for_real64_rank1
        procedure :: check_data_equivalence_for_real64_rank2 => check_data_equivalence_for_real64_rank2
        procedure :: check_data_equivalence_for_real64_rank3 => check_data_equivalence_for_real64_rank3
        procedure :: check_data_equivalence_for_real64_rank4 => check_data_equivalence_for_real64_rank4
        procedure :: check_data_equivalence_for_real64_rank5 => check_data_equivalence_for_real64_rank5
        procedure :: check_data_equivalence_for_real32_rank0 => check_data_equivalence_for_real32_rank0
        procedure :: check_data_equivalence_for_real32_rank1 => check_data_equivalence_for_real32_rank1
        procedure :: check_data_equivalence_for_real32_rank2 => check_data_equivalence_for_real32_rank2
        procedure :: check_data_equivalence_for_real32_rank3 => check_data_equivalence_for_real32_rank3
        procedure :: check_data_equivalence_for_real32_rank4 => check_data_equivalence_for_real32_rank4
        procedure :: check_data_equivalence_for_real32_rank5 => check_data_equivalence_for_real32_rank5
        procedure :: check_data_equivalence_for_int64_rank0 => check_data_equivalence_for_int64_rank0
        procedure :: check_data_equivalence_for_int64_rank1 => check_data_equivalence_for_int64_rank1
        procedure :: check_data_equivalence_for_int64_rank2 => check_data_equivalence_for_int64_rank2
        procedure :: check_data_equivalence_for_int64_rank3 => check_data_equivalence_for_int64_rank3
        procedure :: check_data_equivalence_for_int64_rank4 => check_data_equivalence_for_int64_rank4
        procedure :: check_data_equivalence_for_int64_rank5 => check_data_equivalence_for_int64_rank5
        procedure :: check_data_equivalence_for_int32_rank0 => check_data_equivalence_for_int32_rank0
        procedure :: check_data_equivalence_for_int32_rank1 => check_data_equivalence_for_int32_rank1
        procedure :: check_data_equivalence_for_int32_rank2 => check_data_equivalence_for_int32_rank2
        procedure :: check_data_equivalence_for_int32_rank3 => check_data_equivalence_for_int32_rank3
        procedure :: check_data_equivalence_for_int32_rank4 => check_data_equivalence_for_int32_rank4
        procedure :: check_data_equivalence_for_int32_rank5 => check_data_equivalence_for_int32_rank5
        procedure :: check_data_equivalence_for_int16_rank0 => check_data_equivalence_for_int16_rank0
        procedure :: check_data_equivalence_for_int16_rank1 => check_data_equivalence_for_int16_rank1
        procedure :: check_data_equivalence_for_int16_rank2 => check_data_equivalence_for_int16_rank2
        procedure :: check_data_equivalence_for_int16_rank3 => check_data_equivalence_for_int16_rank3
        procedure :: check_data_equivalence_for_int16_rank4 => check_data_equivalence_for_int16_rank4
        procedure :: check_data_equivalence_for_int16_rank5 => check_data_equivalence_for_int16_rank5
        procedure :: check_data_equivalence_for_int8_rank0 => check_data_equivalence_for_int8_rank0
        procedure :: check_data_equivalence_for_int8_rank1 => check_data_equivalence_for_int8_rank1
        procedure :: check_data_equivalence_for_int8_rank2 => check_data_equivalence_for_int8_rank2
        procedure :: check_data_equivalence_for_int8_rank3 => check_data_equivalence_for_int8_rank3
        procedure :: check_data_equivalence_for_int8_rank4 => check_data_equivalence_for_int8_rank4
        procedure :: check_data_equivalence_for_int8_rank5 => check_data_equivalence_for_int8_rank5
        procedure :: run_interface_tests => run_interface_tests
        procedure :: run_interface_tests_for_complex128_rank0 => run_interface_tests_for_complex128_rank0
        procedure :: run_interface_tests_for_complex128_rank1 => run_interface_tests_for_complex128_rank1
        procedure :: run_interface_tests_for_complex128_rank2 => run_interface_tests_for_complex128_rank2
        procedure :: run_interface_tests_for_complex128_rank3 => run_interface_tests_for_complex128_rank3
        procedure :: run_interface_tests_for_complex128_rank4 => run_interface_tests_for_complex128_rank4
        procedure :: run_interface_tests_for_complex128_rank5 => run_interface_tests_for_complex128_rank5
        procedure :: run_interface_tests_for_complex64_rank0 => run_interface_tests_for_complex64_rank0
        procedure :: run_interface_tests_for_complex64_rank1 => run_interface_tests_for_complex64_rank1
        procedure :: run_interface_tests_for_complex64_rank2 => run_interface_tests_for_complex64_rank2
        procedure :: run_interface_tests_for_complex64_rank3 => run_interface_tests_for_complex64_rank3
        procedure :: run_interface_tests_for_complex64_rank4 => run_interface_tests_for_complex64_rank4
        procedure :: run_interface_tests_for_complex64_rank5 => run_interface_tests_for_complex64_rank5
        procedure :: run_interface_tests_for_real64_rank0 => run_interface_tests_for_real64_rank0
        procedure :: run_interface_tests_for_real64_rank1 => run_interface_tests_for_real64_rank1
        procedure :: run_interface_tests_for_real64_rank2 => run_interface_tests_for_real64_rank2
        procedure :: run_interface_tests_for_real64_rank3 => run_interface_tests_for_real64_rank3
        procedure :: run_interface_tests_for_real64_rank4 => run_interface_tests_for_real64_rank4
        procedure :: run_interface_tests_for_real64_rank5 => run_interface_tests_for_real64_rank5
        procedure :: run_interface_tests_for_real32_rank0 => run_interface_tests_for_real32_rank0
        procedure :: run_interface_tests_for_real32_rank1 => run_interface_tests_for_real32_rank1
        procedure :: run_interface_tests_for_real32_rank2 => run_interface_tests_for_real32_rank2
        procedure :: run_interface_tests_for_real32_rank3 => run_interface_tests_for_real32_rank3
        procedure :: run_interface_tests_for_real32_rank4 => run_interface_tests_for_real32_rank4
        procedure :: run_interface_tests_for_real32_rank5 => run_interface_tests_for_real32_rank5
        procedure :: run_interface_tests_for_int64_rank0 => run_interface_tests_for_int64_rank0
        procedure :: run_interface_tests_for_int64_rank1 => run_interface_tests_for_int64_rank1
        procedure :: run_interface_tests_for_int64_rank2 => run_interface_tests_for_int64_rank2
        procedure :: run_interface_tests_for_int64_rank3 => run_interface_tests_for_int64_rank3
        procedure :: run_interface_tests_for_int64_rank4 => run_interface_tests_for_int64_rank4
        procedure :: run_interface_tests_for_int64_rank5 => run_interface_tests_for_int64_rank5
        procedure :: run_interface_tests_for_int32_rank0 => run_interface_tests_for_int32_rank0
        procedure :: run_interface_tests_for_int32_rank1 => run_interface_tests_for_int32_rank1
        procedure :: run_interface_tests_for_int32_rank2 => run_interface_tests_for_int32_rank2
        procedure :: run_interface_tests_for_int32_rank3 => run_interface_tests_for_int32_rank3
        procedure :: run_interface_tests_for_int32_rank4 => run_interface_tests_for_int32_rank4
        procedure :: run_interface_tests_for_int32_rank5 => run_interface_tests_for_int32_rank5
        procedure :: run_interface_tests_for_int16_rank0 => run_interface_tests_for_int16_rank0
        procedure :: run_interface_tests_for_int16_rank1 => run_interface_tests_for_int16_rank1
        procedure :: run_interface_tests_for_int16_rank2 => run_interface_tests_for_int16_rank2
        procedure :: run_interface_tests_for_int16_rank3 => run_interface_tests_for_int16_rank3
        procedure :: run_interface_tests_for_int16_rank4 => run_interface_tests_for_int16_rank4
        procedure :: run_interface_tests_for_int16_rank5 => run_interface_tests_for_int16_rank5
        procedure :: run_interface_tests_for_int8_rank0 => run_interface_tests_for_int8_rank0
        procedure :: run_interface_tests_for_int8_rank1 => run_interface_tests_for_int8_rank1
        procedure :: run_interface_tests_for_int8_rank2 => run_interface_tests_for_int8_rank2
        procedure :: run_interface_tests_for_int8_rank3 => run_interface_tests_for_int8_rank3
        procedure :: run_interface_tests_for_int8_rank4 => run_interface_tests_for_int8_rank4
        procedure :: run_interface_tests_for_int8_rank5 => run_interface_tests_for_int8_rank5
        procedure, nopass :: check_scratch_data => check_scratch_data
        procedure, nopass :: check_pointer_equivalence => check_pointer_equivalence
        procedure, nopass :: check_tensor_equivalence => check_tensor_equivalence
    end type tensor_builder_test_helper

contains
    subroutine run_interface_tests(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        call this%run_interface_tests_for_complex128_rank0(assertion, prefix//"complex128_rank0:", memory_type, options, priorities)
        call this%run_interface_tests_for_complex128_rank1(assertion, prefix//"complex128_rank1:", memory_type, options, priorities)
        call this%run_interface_tests_for_complex128_rank2(assertion, prefix//"complex128_rank2:", memory_type, options, priorities)
        call this%run_interface_tests_for_complex128_rank3(assertion, prefix//"complex128_rank3:", memory_type, options, priorities)
        call this%run_interface_tests_for_complex128_rank4(assertion, prefix//"complex128_rank4:", memory_type, options, priorities)
        call this%run_interface_tests_for_complex128_rank5(assertion, prefix//"complex128_rank5:", memory_type, options, priorities)
        call this%run_interface_tests_for_complex64_rank0(assertion, prefix//"complex64_rank0:", memory_type, options, priorities)
        call this%run_interface_tests_for_complex64_rank1(assertion, prefix//"complex64_rank1:", memory_type, options, priorities)
        call this%run_interface_tests_for_complex64_rank2(assertion, prefix//"complex64_rank2:", memory_type, options, priorities)
        call this%run_interface_tests_for_complex64_rank3(assertion, prefix//"complex64_rank3:", memory_type, options, priorities)
        call this%run_interface_tests_for_complex64_rank4(assertion, prefix//"complex64_rank4:", memory_type, options, priorities)
        call this%run_interface_tests_for_complex64_rank5(assertion, prefix//"complex64_rank5:", memory_type, options, priorities)
        call this%run_interface_tests_for_real64_rank0(assertion, prefix//"real64_rank0:", memory_type, options, priorities)
        call this%run_interface_tests_for_real64_rank1(assertion, prefix//"real64_rank1:", memory_type, options, priorities)
        call this%run_interface_tests_for_real64_rank2(assertion, prefix//"real64_rank2:", memory_type, options, priorities)
        call this%run_interface_tests_for_real64_rank3(assertion, prefix//"real64_rank3:", memory_type, options, priorities)
        call this%run_interface_tests_for_real64_rank4(assertion, prefix//"real64_rank4:", memory_type, options, priorities)
        call this%run_interface_tests_for_real64_rank5(assertion, prefix//"real64_rank5:", memory_type, options, priorities)
        call this%run_interface_tests_for_real32_rank0(assertion, prefix//"real32_rank0:", memory_type, options, priorities)
        call this%run_interface_tests_for_real32_rank1(assertion, prefix//"real32_rank1:", memory_type, options, priorities)
        call this%run_interface_tests_for_real32_rank2(assertion, prefix//"real32_rank2:", memory_type, options, priorities)
        call this%run_interface_tests_for_real32_rank3(assertion, prefix//"real32_rank3:", memory_type, options, priorities)
        call this%run_interface_tests_for_real32_rank4(assertion, prefix//"real32_rank4:", memory_type, options, priorities)
        call this%run_interface_tests_for_real32_rank5(assertion, prefix//"real32_rank5:", memory_type, options, priorities)
        call this%run_interface_tests_for_int64_rank0(assertion, prefix//"int64_rank0:", memory_type, options, priorities)
        call this%run_interface_tests_for_int64_rank1(assertion, prefix//"int64_rank1:", memory_type, options, priorities)
        call this%run_interface_tests_for_int64_rank2(assertion, prefix//"int64_rank2:", memory_type, options, priorities)
        call this%run_interface_tests_for_int64_rank3(assertion, prefix//"int64_rank3:", memory_type, options, priorities)
        call this%run_interface_tests_for_int64_rank4(assertion, prefix//"int64_rank4:", memory_type, options, priorities)
        call this%run_interface_tests_for_int64_rank5(assertion, prefix//"int64_rank5:", memory_type, options, priorities)
        call this%run_interface_tests_for_int32_rank0(assertion, prefix//"int32_rank0:", memory_type, options, priorities)
        call this%run_interface_tests_for_int32_rank1(assertion, prefix//"int32_rank1:", memory_type, options, priorities)
        call this%run_interface_tests_for_int32_rank2(assertion, prefix//"int32_rank2:", memory_type, options, priorities)
        call this%run_interface_tests_for_int32_rank3(assertion, prefix//"int32_rank3:", memory_type, options, priorities)
        call this%run_interface_tests_for_int32_rank4(assertion, prefix//"int32_rank4:", memory_type, options, priorities)
        call this%run_interface_tests_for_int32_rank5(assertion, prefix//"int32_rank5:", memory_type, options, priorities)
        call this%run_interface_tests_for_int16_rank0(assertion, prefix//"int16_rank0:", memory_type, options, priorities)
        call this%run_interface_tests_for_int16_rank1(assertion, prefix//"int16_rank1:", memory_type, options, priorities)
        call this%run_interface_tests_for_int16_rank2(assertion, prefix//"int16_rank2:", memory_type, options, priorities)
        call this%run_interface_tests_for_int16_rank3(assertion, prefix//"int16_rank3:", memory_type, options, priorities)
        call this%run_interface_tests_for_int16_rank4(assertion, prefix//"int16_rank4:", memory_type, options, priorities)
        call this%run_interface_tests_for_int16_rank5(assertion, prefix//"int16_rank5:", memory_type, options, priorities)
        call this%run_interface_tests_for_int8_rank0(assertion, prefix//"int8_rank0:", memory_type, options, priorities)
        call this%run_interface_tests_for_int8_rank1(assertion, prefix//"int8_rank1:", memory_type, options, priorities)
        call this%run_interface_tests_for_int8_rank2(assertion, prefix//"int8_rank2:", memory_type, options, priorities)
        call this%run_interface_tests_for_int8_rank3(assertion, prefix//"int8_rank3:", memory_type, options, priorities)
        call this%run_interface_tests_for_int8_rank4(assertion, prefix//"int8_rank4:", memory_type, options, priorities)
        call this%run_interface_tests_for_int8_rank5(assertion, prefix//"int8_rank5:", memory_type, options, priorities)

    end subroutine run_interface_tests

    subroutine check_data_equivalence_for_tensor(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        class(tensor), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second%storage))
    end subroutine check_data_equivalence_for_tensor

    subroutine check_data_equivalence_for_complex128_rank0(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        complex(real64), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_complex128_rank0

    subroutine check_data_equivalence_for_complex128_rank1(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        complex(real64), dimension(:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_complex128_rank1

    subroutine check_data_equivalence_for_complex128_rank2(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        complex(real64), dimension(:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_complex128_rank2

    subroutine check_data_equivalence_for_complex128_rank3(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        complex(real64), dimension(:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_complex128_rank3

    subroutine check_data_equivalence_for_complex128_rank4(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        complex(real64), dimension(:,:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_complex128_rank4

    subroutine check_data_equivalence_for_complex128_rank5(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        complex(real64), dimension(:,:,:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_complex128_rank5

    subroutine check_data_equivalence_for_complex64_rank0(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        complex(real32), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_complex64_rank0

    subroutine check_data_equivalence_for_complex64_rank1(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        complex(real32), dimension(:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_complex64_rank1

    subroutine check_data_equivalence_for_complex64_rank2(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        complex(real32), dimension(:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_complex64_rank2

    subroutine check_data_equivalence_for_complex64_rank3(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        complex(real32), dimension(:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_complex64_rank3

    subroutine check_data_equivalence_for_complex64_rank4(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        complex(real32), dimension(:,:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_complex64_rank4

    subroutine check_data_equivalence_for_complex64_rank5(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        complex(real32), dimension(:,:,:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_complex64_rank5

    subroutine check_data_equivalence_for_real64_rank0(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        real(real64), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_real64_rank0

    subroutine check_data_equivalence_for_real64_rank1(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        real(real64), dimension(:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_real64_rank1

    subroutine check_data_equivalence_for_real64_rank2(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        real(real64), dimension(:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_real64_rank2

    subroutine check_data_equivalence_for_real64_rank3(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        real(real64), dimension(:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_real64_rank3

    subroutine check_data_equivalence_for_real64_rank4(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        real(real64), dimension(:,:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_real64_rank4

    subroutine check_data_equivalence_for_real64_rank5(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        real(real64), dimension(:,:,:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_real64_rank5

    subroutine check_data_equivalence_for_real32_rank0(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        real(real32), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_real32_rank0

    subroutine check_data_equivalence_for_real32_rank1(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        real(real32), dimension(:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_real32_rank1

    subroutine check_data_equivalence_for_real32_rank2(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        real(real32), dimension(:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_real32_rank2

    subroutine check_data_equivalence_for_real32_rank3(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        real(real32), dimension(:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_real32_rank3

    subroutine check_data_equivalence_for_real32_rank4(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        real(real32), dimension(:,:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_real32_rank4

    subroutine check_data_equivalence_for_real32_rank5(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        real(real32), dimension(:,:,:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_real32_rank5

    subroutine check_data_equivalence_for_int64_rank0(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int64), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int64_rank0

    subroutine check_data_equivalence_for_int64_rank1(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int64), dimension(:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int64_rank1

    subroutine check_data_equivalence_for_int64_rank2(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int64), dimension(:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int64_rank2

    subroutine check_data_equivalence_for_int64_rank3(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int64), dimension(:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int64_rank3

    subroutine check_data_equivalence_for_int64_rank4(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int64), dimension(:,:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int64_rank4

    subroutine check_data_equivalence_for_int64_rank5(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int64), dimension(:,:,:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int64_rank5

    subroutine check_data_equivalence_for_int32_rank0(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int32), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int32_rank0

    subroutine check_data_equivalence_for_int32_rank1(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int32), dimension(:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int32_rank1

    subroutine check_data_equivalence_for_int32_rank2(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int32), dimension(:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int32_rank2

    subroutine check_data_equivalence_for_int32_rank3(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int32), dimension(:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int32_rank3

    subroutine check_data_equivalence_for_int32_rank4(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int32), dimension(:,:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int32_rank4

    subroutine check_data_equivalence_for_int32_rank5(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int32), dimension(:,:,:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int32_rank5

    subroutine check_data_equivalence_for_int16_rank0(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int16), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int16_rank0

    subroutine check_data_equivalence_for_int16_rank1(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int16), dimension(:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int16_rank1

    subroutine check_data_equivalence_for_int16_rank2(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int16), dimension(:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int16_rank2

    subroutine check_data_equivalence_for_int16_rank3(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int16), dimension(:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int16_rank3

    subroutine check_data_equivalence_for_int16_rank4(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int16), dimension(:,:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int16_rank4

    subroutine check_data_equivalence_for_int16_rank5(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int16), dimension(:,:,:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int16_rank5

    subroutine check_data_equivalence_for_int8_rank0(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int8), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int8_rank0

    subroutine check_data_equivalence_for_int8_rank1(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int8), dimension(:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int8_rank1

    subroutine check_data_equivalence_for_int8_rank2(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int8), dimension(:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int8_rank2

    subroutine check_data_equivalence_for_int8_rank3(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int8), dimension(:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int8_rank3

    subroutine check_data_equivalence_for_int8_rank4(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int8), dimension(:,:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int8_rank4

    subroutine check_data_equivalence_for_int8_rank5(this, assertion, prefix, first, second)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        class(tensor), intent(in) :: first
        integer(int8), dimension(:,:,:,:,:), intent(in) :: second

        type(storage_helper) :: helper

        call assertion%equal(prefix//":Data", helper%equal(first%storage, second))
    end subroutine check_data_equivalence_for_int8_rank5

    subroutine run_interface_tests_for_complex128_rank0(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        complex(real64), target :: array, solid_array
        real :: random_array
        type(tscalar) :: dummy
        integer(int64), dimension(0) :: dims


        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_c128)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_complex128_rank0

    subroutine run_interface_tests_for_complex128_rank1(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        complex(real64), dimension(10), target :: array, solid_array
        real, dimension(10) :: random_array
        type(vector) :: dummy
        integer(int64), dimension(1) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_c128)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_complex128_rank1

    subroutine run_interface_tests_for_complex128_rank2(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        complex(real64), dimension(10,10), target :: array, solid_array
        real, dimension(10,10) :: random_array
        type(matrix) :: dummy
        integer(int64), dimension(2) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_c128)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_complex128_rank2

    subroutine run_interface_tests_for_complex128_rank3(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        complex(real64), dimension(10,10,10), target :: array, solid_array
        real, dimension(10,10,10) :: random_array
        type(tensor_rank3) :: dummy
        integer(int64), dimension(3) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_c128)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_complex128_rank3

    subroutine run_interface_tests_for_complex128_rank4(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        complex(real64), dimension(10,10,10,10), target :: array, solid_array
        real, dimension(10,10,10,10) :: random_array
        type(tensor_rank4) :: dummy
        integer(int64), dimension(4) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_c128)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_complex128_rank4

    subroutine run_interface_tests_for_complex128_rank5(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        complex(real64), dimension(10,10,10,10,10), target :: array, solid_array
        real, dimension(10,10,10,10,10) :: random_array
        type(tensor_rank5) :: dummy
        integer(int64), dimension(5) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_c128)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_complex128_rank5

    subroutine run_interface_tests_for_complex64_rank0(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        complex(real32), target :: array, solid_array
        real :: random_array
        type(tscalar) :: dummy
        integer(int64), dimension(0) :: dims


        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_c64)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_complex64_rank0

    subroutine run_interface_tests_for_complex64_rank1(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        complex(real32), dimension(10), target :: array, solid_array
        real, dimension(10) :: random_array
        type(vector) :: dummy
        integer(int64), dimension(1) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_c64)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_complex64_rank1

    subroutine run_interface_tests_for_complex64_rank2(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        complex(real32), dimension(10,10), target :: array, solid_array
        real, dimension(10,10) :: random_array
        type(matrix) :: dummy
        integer(int64), dimension(2) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_c64)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_complex64_rank2

    subroutine run_interface_tests_for_complex64_rank3(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        complex(real32), dimension(10,10,10), target :: array, solid_array
        real, dimension(10,10,10) :: random_array
        type(tensor_rank3) :: dummy
        integer(int64), dimension(3) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_c64)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_complex64_rank3

    subroutine run_interface_tests_for_complex64_rank4(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        complex(real32), dimension(10,10,10,10), target :: array, solid_array
        real, dimension(10,10,10,10) :: random_array
        type(tensor_rank4) :: dummy
        integer(int64), dimension(4) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_c64)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_complex64_rank4

    subroutine run_interface_tests_for_complex64_rank5(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        complex(real32), dimension(10,10,10,10,10), target :: array, solid_array
        real, dimension(10,10,10,10,10) :: random_array
        type(tensor_rank5) :: dummy
        integer(int64), dimension(5) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_c64)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_complex64_rank5

    subroutine run_interface_tests_for_real64_rank0(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        real(real64), target :: array, solid_array
        real :: random_array
        type(tscalar) :: dummy
        integer(int64), dimension(0) :: dims


        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_r64)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_real64_rank0

    subroutine run_interface_tests_for_real64_rank1(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        real(real64), dimension(10), target :: array, solid_array
        real, dimension(10) :: random_array
        type(vector) :: dummy
        integer(int64), dimension(1) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_r64)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_real64_rank1

    subroutine run_interface_tests_for_real64_rank2(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        real(real64), dimension(10,10), target :: array, solid_array
        real, dimension(10,10) :: random_array
        type(matrix) :: dummy
        integer(int64), dimension(2) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_r64)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_real64_rank2

    subroutine run_interface_tests_for_real64_rank3(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        real(real64), dimension(10,10,10), target :: array, solid_array
        real, dimension(10,10,10) :: random_array
        type(tensor_rank3) :: dummy
        integer(int64), dimension(3) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_r64)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_real64_rank3

    subroutine run_interface_tests_for_real64_rank4(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        real(real64), dimension(10,10,10,10), target :: array, solid_array
        real, dimension(10,10,10,10) :: random_array
        type(tensor_rank4) :: dummy
        integer(int64), dimension(4) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_r64)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_real64_rank4

    subroutine run_interface_tests_for_real64_rank5(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        real(real64), dimension(10,10,10,10,10), target :: array, solid_array
        real, dimension(10,10,10,10,10) :: random_array
        type(tensor_rank5) :: dummy
        integer(int64), dimension(5) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_r64)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_real64_rank5

    subroutine run_interface_tests_for_real32_rank0(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        real(real32), target :: array, solid_array
        real :: random_array
        type(tscalar) :: dummy
        integer(int64), dimension(0) :: dims


        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_r32)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_real32_rank0

    subroutine run_interface_tests_for_real32_rank1(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        real(real32), dimension(10), target :: array, solid_array
        real, dimension(10) :: random_array
        type(vector) :: dummy
        integer(int64), dimension(1) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_r32)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_real32_rank1

    subroutine run_interface_tests_for_real32_rank2(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        real(real32), dimension(10,10), target :: array, solid_array
        real, dimension(10,10) :: random_array
        type(matrix) :: dummy
        integer(int64), dimension(2) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_r32)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_real32_rank2

    subroutine run_interface_tests_for_real32_rank3(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        real(real32), dimension(10,10,10), target :: array, solid_array
        real, dimension(10,10,10) :: random_array
        type(tensor_rank3) :: dummy
        integer(int64), dimension(3) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_r32)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_real32_rank3

    subroutine run_interface_tests_for_real32_rank4(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        real(real32), dimension(10,10,10,10), target :: array, solid_array
        real, dimension(10,10,10,10) :: random_array
        type(tensor_rank4) :: dummy
        integer(int64), dimension(4) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_r32)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_real32_rank4

    subroutine run_interface_tests_for_real32_rank5(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        real(real32), dimension(10,10,10,10,10), target :: array, solid_array
        real, dimension(10,10,10,10,10) :: random_array
        type(tensor_rank5) :: dummy
        integer(int64), dimension(5) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_r32)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_real32_rank5

    subroutine run_interface_tests_for_int64_rank0(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int64), target :: array, solid_array
        real :: random_array
        type(tscalar) :: dummy
        integer(int64), dimension(0) :: dims


        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i64)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int64_rank0

    subroutine run_interface_tests_for_int64_rank1(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int64), dimension(10), target :: array, solid_array
        real, dimension(10) :: random_array
        type(vector) :: dummy
        integer(int64), dimension(1) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i64)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int64_rank1

    subroutine run_interface_tests_for_int64_rank2(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int64), dimension(10,10), target :: array, solid_array
        real, dimension(10,10) :: random_array
        type(matrix) :: dummy
        integer(int64), dimension(2) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i64)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int64_rank2

    subroutine run_interface_tests_for_int64_rank3(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int64), dimension(10,10,10), target :: array, solid_array
        real, dimension(10,10,10) :: random_array
        type(tensor_rank3) :: dummy
        integer(int64), dimension(3) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i64)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int64_rank3

    subroutine run_interface_tests_for_int64_rank4(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int64), dimension(10,10,10,10), target :: array, solid_array
        real, dimension(10,10,10,10) :: random_array
        type(tensor_rank4) :: dummy
        integer(int64), dimension(4) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i64)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int64_rank4

    subroutine run_interface_tests_for_int64_rank5(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int64), dimension(10,10,10,10,10), target :: array, solid_array
        real, dimension(10,10,10,10,10) :: random_array
        type(tensor_rank5) :: dummy
        integer(int64), dimension(5) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i64)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int64_rank5

    subroutine run_interface_tests_for_int32_rank0(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int32), target :: array, solid_array
        real :: random_array
        type(tscalar) :: dummy
        integer(int64), dimension(0) :: dims


        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i32)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int32_rank0

    subroutine run_interface_tests_for_int32_rank1(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int32), dimension(10), target :: array, solid_array
        real, dimension(10) :: random_array
        type(vector) :: dummy
        integer(int64), dimension(1) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i32)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int32_rank1

    subroutine run_interface_tests_for_int32_rank2(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int32), dimension(10,10), target :: array, solid_array
        real, dimension(10,10) :: random_array
        type(matrix) :: dummy
        integer(int64), dimension(2) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i32)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int32_rank2

    subroutine run_interface_tests_for_int32_rank3(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int32), dimension(10,10,10), target :: array, solid_array
        real, dimension(10,10,10) :: random_array
        type(tensor_rank3) :: dummy
        integer(int64), dimension(3) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i32)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int32_rank3

    subroutine run_interface_tests_for_int32_rank4(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int32), dimension(10,10,10,10), target :: array, solid_array
        real, dimension(10,10,10,10) :: random_array
        type(tensor_rank4) :: dummy
        integer(int64), dimension(4) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i32)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int32_rank4

    subroutine run_interface_tests_for_int32_rank5(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int32), dimension(10,10,10,10,10), target :: array, solid_array
        real, dimension(10,10,10,10,10) :: random_array
        type(tensor_rank5) :: dummy
        integer(int64), dimension(5) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i32)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int32_rank5

    subroutine run_interface_tests_for_int16_rank0(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int16), target :: array, solid_array
        real :: random_array
        type(tscalar) :: dummy
        integer(int64), dimension(0) :: dims


        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i16)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int16_rank0

    subroutine run_interface_tests_for_int16_rank1(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int16), dimension(10), target :: array, solid_array
        real, dimension(10) :: random_array
        type(vector) :: dummy
        integer(int64), dimension(1) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i16)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int16_rank1

    subroutine run_interface_tests_for_int16_rank2(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int16), dimension(10,10), target :: array, solid_array
        real, dimension(10,10) :: random_array
        type(matrix) :: dummy
        integer(int64), dimension(2) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i16)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int16_rank2

    subroutine run_interface_tests_for_int16_rank3(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int16), dimension(10,10,10), target :: array, solid_array
        real, dimension(10,10,10) :: random_array
        type(tensor_rank3) :: dummy
        integer(int64), dimension(3) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i16)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int16_rank3

    subroutine run_interface_tests_for_int16_rank4(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int16), dimension(10,10,10,10), target :: array, solid_array
        real, dimension(10,10,10,10) :: random_array
        type(tensor_rank4) :: dummy
        integer(int64), dimension(4) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i16)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int16_rank4

    subroutine run_interface_tests_for_int16_rank5(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int16), dimension(10,10,10,10,10), target :: array, solid_array
        real, dimension(10,10,10,10,10) :: random_array
        type(tensor_rank5) :: dummy
        integer(int64), dimension(5) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i16)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int16_rank5

    subroutine run_interface_tests_for_int8_rank0(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int8), target :: array, solid_array
        real :: random_array
        type(tscalar) :: dummy
        integer(int64), dimension(0) :: dims


        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i8)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int8_rank0

    subroutine run_interface_tests_for_int8_rank1(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int8), dimension(10), target :: array, solid_array
        real, dimension(10) :: random_array
        type(vector) :: dummy
        integer(int64), dimension(1) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i8)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int8_rank1

    subroutine run_interface_tests_for_int8_rank2(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int8), dimension(10,10), target :: array, solid_array
        real, dimension(10,10) :: random_array
        type(matrix) :: dummy
        integer(int64), dimension(2) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i8)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int8_rank2

    subroutine run_interface_tests_for_int8_rank3(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int8), dimension(10,10,10), target :: array, solid_array
        real, dimension(10,10,10) :: random_array
        type(tensor_rank3) :: dummy
        integer(int64), dimension(3) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i8)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int8_rank3

    subroutine run_interface_tests_for_int8_rank4(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int8), dimension(10,10,10,10), target :: array, solid_array
        real, dimension(10,10,10,10) :: random_array
        type(tensor_rank4) :: dummy
        integer(int64), dimension(4) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i8)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int8_rank4

    subroutine run_interface_tests_for_int8_rank5(this, assertion, prefix, memory_type, options, priorities)
        class(tensor_builder_test_helper), intent(in) :: this
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        class(tensor), allocatable :: atensor
        type(scratch_buffer) :: scratch
        type(string) :: text
        logical :: should_be_different
        integer(int8), dimension(10,10,10,10,10), target :: array, solid_array
        real, dimension(10,10,10,10,10) :: random_array
        type(tensor_rank5) :: dummy
        integer(int64), dimension(5) :: dims

        dims = shape(array, kind=int64)

        call random_number(random_array)
        array=1000*random_array
        solid_array = array

        call dummy%setup(dims=dims, datatype=dt_i8)
        call allocate_and_copy_storage(dummy%storage, array, memory_type, options, priorities)
        should_be_different = .true.
        if ( same_type_as(dummy%storage, host_storage()) ) should_be_different = .false.

        text = prefix//"allocate_and_copy"
        call allocate_and_copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()

        text = prefix//"copy"
        call copy_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%cleanup()
        deallocate(atensor)

        scratch = get_scratch_buffer(memory_type, options, priorities)
        call scratch%initialize()

        text = prefix//"allocate_and_copy_to_scratch"
        call allocate_and_copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"copy_to_scratch"
        call copy_tensor_to_scratch(atensor, scratch, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), .true.)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call this%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        deallocate(atensor)

        text = prefix//"allocate_and_point_to"
        call allocate_and_point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        text = prefix//"point_to"
        call point_to_tensor(atensor, array, memory_type, options, priorities)
        call this%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call this%check_pointer_equivalence(assertion, text%char_array, atensor%storage%actual_data, c_loc(array), &
                should_be_different)
        call this%check_data_equivalence(assertion, text%char_array, atensor, solid_array)
        call atensor%release()

        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_interface_tests_for_int8_rank5

    subroutine check_scratch_data(assertion, text, atensor, scratch)
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: text
        class(tensor), intent(in) :: atensor
        type(scratch_buffer), intent(in) :: scratch

        integer :: slot

        slot = scratch%slots%find_slot(atensor%storage%actual_data)
        call assertion%equal(text//":Address", slot > 0)
        if ( slot > 0 ) then
            call assertion%equal(text//":Scratch size", &
                    scratch%slots%slots(slot)%number_of_bytes == atensor%storage%number_of_bytes)
        end if
    end subroutine check_scratch_data

    subroutine check_pointer_equivalence(assertion, text, first, second, inverse)
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: text
        type(c_ptr), intent(in) :: first, second
        logical, intent(in), optional :: inverse

        logical :: res

        res = c_associated(first, second)
        if ( present(inverse) ) then
            if ( inverse ) res = .not. res
        end if

        call assertion%equal(text//":Pointer", res)
    end subroutine check_pointer_equivalence

    subroutine check_tensor_equivalence(assertion, text, first, second)
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: text
        class(tensor), allocatable, intent(in) :: first
        class(tensor), intent(in) :: second

        call assertion%equal(text//":Allocated", allocated(first))
        call assertion%equal(text//":Number of elements", first%number_of_elements==second%number_of_elements)
        call assertion%equal(text//":Datatype", first%datatype==second%datatype)
        call assertion%equal(text//":Dims", all(first%dims==second%dims))
        call assertion%equal(text//":Correct data type", same_type_as(second, first))
    end subroutine check_tensor_equivalence
end module tensor_builder_test_helper_module
