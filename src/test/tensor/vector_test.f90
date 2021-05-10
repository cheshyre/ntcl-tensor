module vector_test_module
    use, intrinsic :: iso_fortran_env, only : int64
    use :: util_api, only : assert
    use :: vector_module, only : vector

    use :: memory_api, only : memory_factory
    use :: tensor_datatypes, only : dt_r64
    use :: tensor_factory_module, only : &
            get_tensor_from_components, &
            create_tensor_from_components
    use :: tensor_module, only : tensor

    implicit none
    private

    public :: vector_test

    type :: vector_test
    contains
        procedure :: run => run
        procedure :: cleanup => cleanup
        procedure :: clear => clear
    end type vector_test

    interface vector_test
        module procedure constructor
    end interface vector_test
contains
    function constructor() result(this)
        type(vector_test) :: this

        call this%clear()
    end function constructor

    subroutine run(this, assertion)
        class(vector_test), intent(in) :: this
        type(assert), intent(inout) :: assertion

        type(vector) :: avector
        class(tensor), allocatable :: atensor

        call assertion%equal("vector::Test complete", .true.)

        avector = vector(memory_factory%get_data_storage(40), dt_r64, 5)

        call assertion%equal("vector::Allocated storage", allocated(avector%storage))
        call assertion%equal("vector::Correct number of bytes", &
                avector%storage%number_of_bytes==40)
        call assertion%equal("vector::Correct number of elements", &
                avector%get_number_of_elements()==5)
        call assertion%equal("vector::Correct dimensions", &
                all(avector%get_dims()==[5_int64]))
        call assertion%equal("vector::Correct rank", &
                avector%get_rank()==1)
        call assertion%equal("vector::Correct datatype", &
                avector%get_datatype()==dt_r64)

        call avector%cleanup()

        call create_tensor_from_components(avector, memory_factory%get_data_storage(40), dt_r64, [5_int64])
        call assertion%equal("vector_from_create_tensor_from_components::Allocated storage", allocated(avector%storage))
        call assertion%equal("vector_from_create_tensor_from_components::Correct number of bytes", &
                avector%storage%number_of_bytes==40)
        call assertion%equal("vector_from_create_tensor_from_components::Correct number of elements", &
                avector%get_number_of_elements()==5)
        call assertion%equal("vector_from_create_tensor_from_components::Correct dimensions", &
                all(avector%get_dims()==[5_int64]))
        call assertion%equal("vector_from_create_tensor_from_components::Correct rank", &
                avector%get_rank()==1)
        call assertion%equal("vector_from_create_tensor_from_components::Correct datatype", &
                avector%get_datatype()==dt_r64)

        call avector%cleanup()

        atensor = get_tensor_from_components(memory_factory%get_data_storage(40), dt_r64, [5_int64])
        call assertion%equal("vector_from_get_tensor_from_components::Allocated storage", allocated(atensor%storage))
        call assertion%equal("vector_from_get_tensor_from_components::Correct number of bytes", &
                atensor%storage%number_of_bytes==40)
        call assertion%equal("vector_from_get_tensor_from_components::Correct number of elements", &
                atensor%get_number_of_elements()==5)
        call assertion%equal("vector_from_get_tensor_from_components::Correct dimensions", &
                all(atensor%get_dims()==[5_int64]))
        call assertion%equal("vector_from_get_tensor_from_components::Correct rank", &
                atensor%get_rank()==1)
        call assertion%equal("vector_from_get_tensor_from_components::Correct datatype", &
                atensor%get_datatype()==dt_r64)

        call atensor%cleanup()
        deallocate(atensor)
    end subroutine run

    subroutine cleanup(this)
        class(vector_test), intent(inout) :: this

        call this%clear()
    end subroutine cleanup

    subroutine clear(this)
        class(vector_test), intent(inout) :: this
    end subroutine clear
end module vector_test_module
