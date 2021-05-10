module tensor_rank5_test_module
    use, intrinsic :: iso_fortran_env, only : int64
    use :: util_api, only : assert
    use :: tensor_rank5_module, only : tensor_rank5

    use :: memory_api, only : memory_factory
    use :: tensor_datatypes, only : dt_r64
    use :: tensor_factory_module, only : &
            get_tensor_from_components, &
            create_tensor_from_components
    use :: tensor_module, only : tensor

    implicit none
    private

    public :: tensor_rank5_test

    type :: tensor_rank5_test
    contains
        procedure :: run => run
        procedure :: cleanup => cleanup
        procedure :: clear => clear
    end type tensor_rank5_test

    interface tensor_rank5_test
        module procedure constructor
    end interface tensor_rank5_test
contains
    function constructor() result(this)
        type(tensor_rank5_test) :: this

        call this%clear()
    end function constructor

    subroutine run(this, assertion)
        class(tensor_rank5_test), intent(in) :: this
        type(assert), intent(inout) :: assertion

        type(tensor_rank5) :: atensor_rank5
        class(tensor), allocatable :: atensor

        call assertion%equal("tensor_rank5::Test complete", .true.)

        atensor_rank5 = tensor_rank5(memory_factory%get_data_storage(240), dt_r64, 5, 6, 7, 8, 9)

        call assertion%equal("tensor_rank5::Allocated storage", allocated(atensor_rank5%storage))
        call assertion%equal("tensor_rank5::Correct number of bytes", &
                atensor_rank5%storage%number_of_bytes==240)
        call assertion%equal("tensor_rank5::Correct number of elements", &
                atensor_rank5%get_number_of_elements()==15120)
        call assertion%equal("tensor_rank5::Correct dimensions", &
                all(atensor_rank5%get_dims()==[5_int64, 6_int64, 7_int64, 8_int64, 9_int64]))
        call assertion%equal("tensor_rank5::Correct rank", &
                atensor_rank5%get_rank()==5)
        call assertion%equal("tensor_rank5::Correct datatype", &
                atensor_rank5%get_datatype()==dt_r64)

        call atensor_rank5%cleanup()


        call create_tensor_from_components(atensor_rank5, memory_factory%get_data_storage(240), dt_r64, &
                [5_int64, 6_int64, 7_int64, 8_int64, 9_int64])
        call assertion%equal("tensor_rank5_from_create_tensor_from_components::Allocated storage", &
                allocated(atensor_rank5%storage))
        call assertion%equal("tensor_rank5_from_create_tensor_from_components::Correct number of bytes", &
                atensor_rank5%storage%number_of_bytes==240)
        call assertion%equal("tensor_rank5_from_create_tensor_from_components::Correct number of elements", &
                atensor_rank5%get_number_of_elements()==15120)
        call assertion%equal("tensor_rank5_from_create_tensor_from_components::Correct dimensions", &
                all(atensor_rank5%get_dims()==[5_int64, 6_int64, 7_int64, 8_int64, 9_int64]))
        call assertion%equal("tensor_rank5_from_create_tensor_from_components::Correct rank", &
                atensor_rank5%get_rank()==5)
        call assertion%equal("tensor_rank5_from_create_tensor_from_components::Correct datatype", &
                atensor_rank5%get_datatype()==dt_r64)

        call atensor_rank5%cleanup()

        atensor = get_tensor_from_components(memory_factory%get_data_storage(240), dt_r64, &
                [5_int64, 6_int64, 7_int64, 8_int64, 9_int64])
        call assertion%equal("tensor_rank5_from_get_tensor_from_components::Allocated storage", allocated(atensor%storage))
        call assertion%equal("tensor_rank5_from_get_tensor_from_components::Correct number of bytes", &
                atensor%storage%number_of_bytes==240)
        call assertion%equal("tensor_rank5_from_get_tensor_from_components::Correct number of elements", &
                atensor%get_number_of_elements()==15120)
        call assertion%equal("tensor_rank5_from_get_tensor_from_components::Correct dimensions", &
                all(atensor%get_dims()==[5_int64, 6_int64, 7_int64, 8_int64, 9_int64]))
        call assertion%equal("tensor_rank5_from_get_tensor_from_components::Correct rank", &
                atensor%get_rank()==5)
        call assertion%equal("tensor_rank5_from_get_tensor_from_components::Correct datatype", &
                atensor%get_datatype()==dt_r64)

        call atensor%cleanup()
        deallocate(atensor)
    end subroutine run

    subroutine cleanup(this)
        class(tensor_rank5_test), intent(inout) :: this

        call this%clear()
    end subroutine cleanup

    subroutine clear(this)
        class(tensor_rank5_test), intent(inout) :: this
    end subroutine clear
end module tensor_rank5_test_module
