module tensor_builder_interface_test_module
    use, intrinsic :: iso_fortran_env, only : int64
    use :: util_api, only : &
            assert, &
            string, &
            dictionary

    use :: data_api, only : &
            scratch_buffer, &
            get_scratch_buffer, &
            memory_factory

    use :: tensor_api, only : &
            dt_r64, &
            tensor, &
            matrix, &
            allocate_and_create_tensor, &
            create_tensor, &
            allocate_and_create_tensor_in_scratch, &
            create_tensor_in_scratch

    use :: tensor_builder_test_helper_module, only : &
            tensor_builder_test_helper

    implicit none
    private

    public :: tensor_builder_interface_test

    type :: tensor_builder_interface_test
    contains
        procedure :: run => run
        procedure :: cleanup => cleanup
        procedure :: clear => clear
    end type tensor_builder_interface_test

    interface tensor_builder_interface_test
        module procedure constructor
    end interface tensor_builder_interface_test
contains
    function constructor() result(this)
        type(tensor_builder_interface_test) :: this

        call this%clear()
    end function constructor

    subroutine run(this, assertion)
        class(tensor_builder_interface_test), intent(in) :: this
        type(assert), intent(inout) :: assertion

        type(tensor_builder_test_helper) :: helper
        type(string), dimension(:), allocatable :: memory_types
        type(string) :: text
        integer :: idx
        type(dictionary) :: options
        type(string), dimension(1) :: priorities

        call assertion%equal("tensor_builder_interface::Test complete", .true.)

        call run_tensor_tests(assertion, "tensor_builder_interface::")
        call helper%run_interface_tests(assertion, "tensor_builder_interface::")

        memory_types = memory_factory%get_available_memory_types()
        do idx = 1, size(memory_types)
            text = "tensor_builder_interface::memory_type="//memory_types(idx)%char_array//":"
            call run_tensor_tests(assertion, text%char_array, memory_type=memory_types(idx)%char_array)
            call helper%run_interface_tests(assertion, text%char_array, memory_type=memory_types(idx)%char_array)
        end do

        options = dictionary()
        do idx = 1, size(memory_types)
            call options%set_value("memory_type", memory_types(idx)%char_array)
            text = "tensor_builder_interface::options(memory_type)="//memory_types(idx)%char_array//":"
            call run_tensor_tests(assertion, text%char_array, options=options)
            call helper%run_interface_tests(assertion, text%char_array, options=options)
        end do

        priorities(1) = "unittest-"
        do idx = 1, size(memory_types)
            call options%set_value("memory_type", "dummy")
            call options%set_value("unittest-memory_type", memory_types(idx)%char_array)
            text = "tensor_builder_interface::options(unittest-memory_type)="//memory_types(idx)%char_array//":"
            call run_tensor_tests(assertion, text%char_array, options=options, priorities=priorities)
            call helper%run_interface_tests(assertion, text%char_array, options=options, priorities=priorities)
        end do
    end subroutine run

    subroutine run_tensor_tests(assertion, prefix, memory_type, options, priorities)
        type(assert), intent(inout) :: assertion
        character(len=*), intent(in) :: prefix
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        integer(int64) :: number_of_bytes
        class(tensor), allocatable :: atensor
        type(matrix) :: dummy
        type(scratch_buffer) :: scratch
        type(tensor_builder_test_helper) :: helper
        type(string) :: text
        integer(int64) :: dims(2)

        dims = [10,10]
        number_of_bytes = product(dims)*8

        call dummy%setup(dims=dims, datatype=dt_r64)
        call memory_factory%create_data_storage(dummy%storage, number_of_bytes, memory_type, options, priorities)

        text = prefix//"allocate_and_create"
        call allocate_and_create_tensor(atensor, dims, "real64", memory_type, options, priorities)
        call helper%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call helper%check_data_equivalence(assertion, text%char_array, atensor, dummy)
        call atensor%cleanup()

        text = prefix//"create"
        call create_tensor(atensor, dims, "real64", memory_type, options, priorities)
        call helper%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call helper%check_data_equivalence(assertion, text%char_array, atensor, dummy)
        call atensor%cleanup()

        scratch = get_scratch_buffer()
        call scratch%initialize()

        text = prefix//"allocate_and_create_in_scratch"
        call allocate_and_create_tensor_in_scratch(atensor, scratch, dims, "real64", options, priorities)
        call helper%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call helper%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        text = prefix//"create_in_scratch"
        call create_tensor_in_scratch(atensor, scratch, dims, "real64", options, priorities)
        call helper%check_tensor_equivalence(assertion, text%char_array, atensor, dummy)
        call helper%check_scratch_data(assertion, text%char_array, atensor, scratch)
        call scratch%destroy(atensor%storage)
        call scratch%checkpoint()
        call atensor%release()

        call scratch%cleanup()
        call dummy%cleanup()
        deallocate(atensor)
    end subroutine run_tensor_tests

    subroutine cleanup(this)
        class(tensor_builder_interface_test), intent(inout) :: this

        call this%clear()
    end subroutine cleanup

    subroutine clear(this)
        class(tensor_builder_interface_test), intent(inout) :: this
    end subroutine clear
end module tensor_builder_interface_test_module
