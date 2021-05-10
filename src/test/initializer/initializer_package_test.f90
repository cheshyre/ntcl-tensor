! Auto-generated -- DO NOT MODIFY
module initializer_package_test_module
    use :: util_api, only : &
            selector, &
            assert

    implicit none
    private

    public :: initializer_package_test

    type :: initializer_package_test
        type(selector) :: test_selector
    contains
        procedure :: run => run
        procedure :: cleanup => cleanup
        procedure :: clear => clear
    end type initializer_package_test

    interface initializer_package_test
        module procedure constructor
    end interface initializer_package_test

contains
    function constructor(aselector) result(this)
        type(selector), intent(in) :: aselector
        type(initializer_package_test) :: this

        call this%clear()

        this%test_selector = aselector
    end function constructor

    subroutine run(this, assertion)
        class(initializer_package_test), intent(in) :: this
        type(assert), intent(inout) :: assertion

        call assertion%equal("initializer::Package test complete", .true.)

    end subroutine run

    subroutine cleanup(this)
        class(initializer_package_test), intent(inout) :: this

        call this%clear()
    end subroutine cleanup

    subroutine clear(this)
        class(initializer_package_test), intent(inout) :: this
    end subroutine clear
end module initializer_package_test_module
