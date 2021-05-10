module tensor_rank4_test_module
    use, intrinsic :: iso_fortran_env, only : int64
    use :: util_api, only : assert
    use :: tensor_rank4_module, only : tensor_rank4

    use :: memory_api, only : memory_factory
    use :: tensor_datatypes, only : dt_r64
    use :: tensor_factory_module, only : &
            get_tensor_from_components, &
            create_tensor_from_components
    use :: tensor_module, only : tensor

    implicit none
    private

    public :: tensor_rank4_test

    type :: tensor_rank4_test
    contains
        procedure :: run => run
        procedure :: cleanup => cleanup
        procedure :: clear => clear
    end type tensor_rank4_test

    interface tensor_rank4_test
        module procedure constructor
    end interface tensor_rank4_test
contains
    function constructor() result(this)
        type(tensor_rank4_test) :: this

        call this%clear()
    end function constructor

    subroutine run(this, assertion)
        class(tensor_rank4_test), intent(in) :: this
        type(assert), intent(inout) :: assertion

        type(tensor_rank4) :: atensor_rank4
        class(tensor), allocatable :: atensor

        call assertion%equal("tensor_rank4::Test complete", .true.)

        atensor_rank4 = tensor_rank4(memory_factory%get_data_storage(240), dt_r64, 5, 6, 7, 8)

        call assertion%equal("tensor_rank4::Allocated storage", allocated(atensor_rank4%storage))
        call assertion%equal("tensor_rank4::Correct number of bytes", &
                atensor_rank4%storage%number_of_bytes==240)
        call assertion%equal("tensor_rank4::Correct number of elements", &
                atensor_rank4%get_number_of_elements()==1680)
        call assertion%equal("tensor_rank4::Correct dimensions", &
                all(atensor_rank4%get_dims()==[5_int64, 6_int64, 7_int64, 8_int64]))
        call assertion%equal("tensor_rank4::Correct rank", &
                atensor_rank4%get_rank()==4)
        call assertion%equal("tensor_rank4::Correct datatype", &
                atensor_rank4%get_datatype()==dt_r64)

        call atensor_rank4%cleanup()

        call create_tensor_from_components(atensor_rank4, memory_factory%get_data_storage(240), dt_r64, &
                [5_int64, 6_int64, 7_int64, 8_int64])

        call assertion%equal("tensor_rank4_from_create_tensor_from_components::Allocated storage", &
                allocated(atensor_rank4%storage))
        call assertion%equal("tensor_rank4_from_create_tensor_from_components::Correct number of bytes", &
                atensor_rank4%storage%number_of_bytes==240)
        call assertion%equal("tensor_rank4_from_create_tensor_from_components::Correct number of elements", &
                atensor_rank4%get_number_of_elements()==1680)
        call assertion%equal("tensor_rank4_from_create_tensor_from_components::Correct dimensions", &
                all(atensor_rank4%get_dims()==[5_int64, 6_int64, 7_int64, 8_int64]))
        call assertion%equal("tensor_rank4_from_create_tensor_from_components::Correct rank", &
                atensor_rank4%get_rank()==4)
        call assertion%equal("tensor_rank4_from_create_tensor_from_components::Correct datatype", &
                atensor_rank4%get_datatype()==dt_r64)

        call atensor_rank4%cleanup()

        atensor = get_tensor_from_components(memory_factory%get_data_storage(240), dt_r64, [5_int64, 6_int64, 7_int64, 8_int64])

        call assertion%equal("tensor_rank4_from_get_tensor_from_components::Allocated storage", allocated(atensor%storage))
        call assertion%equal("tensor_rank4_from_get_tensor_from_components::Correct number of bytes", &
                atensor%storage%number_of_bytes==240)
        call assertion%equal("tensor_rank4_from_get_tensor_from_components::Correct number of elements", &
                atensor%get_number_of_elements()==1680)
        call assertion%equal("tensor_rank4_from_get_tensor_from_components::Correct dimensions", &
                all(atensor%get_dims()==[5_int64, 6_int64, 7_int64, 8_int64]))
        call assertion%equal("tensor_rank4_from_get_tensor_from_components::Correct rank", &
                atensor%get_rank()==4)
        call assertion%equal("tensor_rank4_from_get_tensor_from_components::Correct datatype", &
                atensor%get_datatype()==dt_r64)

        call atensor%cleanup()
        deallocate(atensor)
    end subroutine run

    subroutine cleanup(this)
        class(tensor_rank4_test), intent(inout) :: this

        call this%clear()
    end subroutine cleanup

    subroutine clear(this)
        class(tensor_rank4_test), intent(inout) :: this
    end subroutine clear
end module tensor_rank4_test_module
