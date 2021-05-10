module tscalar_test_module
    use, intrinsic :: iso_fortran_env, only : int64
    use :: util_api, only : assert

    use :: memory_api, only : memory_factory
    use :: tensor_api, only : &
        tscalar, &
        dt_r64

    implicit none
    private

    public :: tscalar_test

    type :: tscalar_test
    contains
        procedure :: run => run
        procedure :: cleanup => cleanup
        procedure :: clear => clear
    end type tscalar_test

    interface tscalar_test
        module procedure constructor
    end interface tscalar_test
contains
    function constructor() result(this)
        type(tscalar_test) :: this

        call this%clear()
    end function constructor

    subroutine run(this, assertion)
        class(tscalar_test), intent(in) :: this
        type(assert), intent(inout) :: assertion

        type(tscalar) :: atscalar
        integer(int64), dimension(0) :: empty

        call assertion%equal("tscalar::Test complete", .true.)

        atscalar = tscalar(memory_factory%get_data_storage(8), dt_r64)

        call assertion%equal("tscalar::Allocated storage", allocated(atscalar%storage))
        call assertion%equal("vector::Correct number of bytes", &
                atscalar%storage%number_of_bytes==8)
        call assertion%equal("vector::Correct number of elements", &
                atscalar%get_number_of_elements()==1)
        call assertion%equal("vector::Correct dimensions", &
                all(atscalar%get_dims()==empty))
        call assertion%equal("vector::Correct rank", &
                atscalar%get_rank()==0)
        call assertion%equal("vector::Correct datatype", &
                atscalar%get_datatype()==dt_r64)

    end subroutine run

    subroutine cleanup(this)
        class(tscalar_test), intent(inout) :: this

        call this%clear()
    end subroutine cleanup

    subroutine clear(this)
        class(tscalar_test), intent(inout) :: this
    end subroutine clear
end module tscalar_test_module
