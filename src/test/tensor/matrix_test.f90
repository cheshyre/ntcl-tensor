module matrix_test_module
    use, intrinsic :: iso_fortran_env, only : int64
    use :: util_api, only : assert
    use :: matrix_module, only : matrix

    use :: memory_api, only : memory_factory
    use :: tensor_datatypes, only : dt_r64
    use :: tensor_factory_module, only : &
            get_tensor_from_components, &
            create_tensor_from_components
    use :: tensor_module, only : tensor


    implicit none
    private

    public :: matrix_test

    type :: matrix_test
    contains
        procedure :: run => run
        procedure :: cleanup => cleanup
        procedure :: clear => clear
    end type matrix_test

    interface matrix_test
        module procedure constructor
    end interface matrix_test
contains
    function constructor() result(this)
        type(matrix_test) :: this

        call this%clear()
    end function constructor

    subroutine run(this, assertion)
        class(matrix_test), intent(in) :: this
        type(assert), intent(inout) :: assertion

        type(matrix) :: amatrix
        class(tensor), allocatable :: atensor

        call assertion%equal("matrix::Test complete", .true.)

        amatrix = matrix(memory_factory%get_data_storage(240), dt_r64, 5, 6)

        call assertion%equal("matrix::Allocated storage", allocated(amatrix%storage))
        call assertion%equal("matrix::Correct number of bytes", &
                amatrix%storage%number_of_bytes==240)
        call assertion%equal("matrix::Correct number of elements", &
                amatrix%get_number_of_elements()==30)
        call assertion%equal("matrix::Correct dimensions", &
                all(amatrix%get_dims()==[5_int64, 6_int64]))
        call assertion%equal("matrix::Correct rank", &
                amatrix%get_rank()==2)
        call assertion%equal("matrix::Correct datatype", &
                amatrix%get_datatype()==dt_r64)

        call amatrix%cleanup()

        call create_tensor_from_components(amatrix, memory_factory%get_data_storage(240), dt_r64, [5_int64, 6_int64])
        call assertion%equal("matrix_from_create_tensor_from_components::Correct number of bytes", &
                amatrix%storage%number_of_bytes==240)
        call assertion%equal("matrix_from_create_tensor_from_components::Correct number of elements", &
                amatrix%get_number_of_elements()==30)
        call assertion%equal("matrix_from_create_tensor_from_components::Correct dimensions", &
                all(amatrix%get_dims()==[5_int64, 6_int64]))
        call assertion%equal("matrix_from_create_tensor_from_components::Correct rank", &
                amatrix%get_rank()==2)
        call assertion%equal("matrix_from_create_tensor_from_components::Correct datatype", &
                amatrix%get_datatype()==dt_r64)

        call amatrix%cleanup()

        atensor =get_tensor_from_components(memory_factory%get_data_storage(240), dt_r64, [5_int64, 6_int64])
        call assertion%equal("matrix_from_get_tensor_from_components::Correct number of bytes", &
                atensor%storage%number_of_bytes==240)
        call assertion%equal("matrix_from_get_tensor_from_components::Correct number of elements", &
                atensor%get_number_of_elements()==30)
        call assertion%equal("matrix_from_get_tensor_from_components::Correct dimensions", &
                all(atensor%get_dims()==[5_int64, 6_int64]))
        call assertion%equal("matrix_from_get_tensor_from_components::Correct rank", &
                atensor%get_rank()==2)
        call assertion%equal("matrix_from_get_tensor_from_components::Correct datatype", &
                atensor%get_datatype()==dt_r64)

        call atensor%cleanup()
        deallocate(atensor)
    end subroutine run

    subroutine cleanup(this)
        class(matrix_test), intent(inout) :: this

        call this%clear()
    end subroutine cleanup

    subroutine clear(this)
        class(matrix_test), intent(inout) :: this
    end subroutine clear
end module matrix_test_module
