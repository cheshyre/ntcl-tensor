! Auto-generated -- DO NOT MODIFY
module primitives_package_test_module
    use :: util_api, only : &
            selector, &
            assert

    use :: tensor_arithmetic_primitives_test_module, only : tensor_arithmetic_primitives_test

    implicit none
    private

    public :: primitives_package_test

    type :: primitives_package_test
        type(selector) :: test_selector
    contains
        procedure :: run => run
        procedure :: cleanup => cleanup
        procedure :: clear => clear
    end type primitives_package_test

    interface primitives_package_test
        module procedure constructor
    end interface primitives_package_test

contains
    function constructor(aselector) result(this)
        type(selector), intent(in) :: aselector
        type(primitives_package_test) :: this

        call this%clear()

        this%test_selector = aselector
    end function constructor

    subroutine run(this, assertion)
        class(primitives_package_test), intent(in) :: this
        type(assert), intent(inout) :: assertion

        type(tensor_arithmetic_primitives_test) :: atensor_arithmetic_primitives_test

        call assertion%equal("primitives::Package test complete", .true.)

        if ( &
                this%test_selector%is_enabled("tensor_arithmetic_primitives") ) then
            atensor_arithmetic_primitives_test = tensor_arithmetic_primitives_test()
            call atensor_arithmetic_primitives_test%run(assertion)
            call atensor_arithmetic_primitives_test%cleanup()
        end if

    end subroutine run

    subroutine cleanup(this)
        class(primitives_package_test), intent(inout) :: this

        call this%clear()
    end subroutine cleanup

    subroutine clear(this)
        class(primitives_package_test), intent(inout) :: this
    end subroutine clear
end module primitives_package_test_module
