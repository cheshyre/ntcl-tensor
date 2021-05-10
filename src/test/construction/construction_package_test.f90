! Auto-generated -- DO NOT MODIFY
module construction_package_test_module
    use :: util_api, only : &
            selector, &
            assert

    use :: tensor_builder_interface_test_module, only : tensor_builder_interface_test

    implicit none
    private

    public :: construction_package_test

    type :: construction_package_test
        type(selector) :: test_selector
    contains
        procedure :: run => run
        procedure :: cleanup => cleanup
        procedure :: clear => clear
    end type construction_package_test

    interface construction_package_test
        module procedure constructor
    end interface construction_package_test

contains
    function constructor(aselector) result(this)
        type(selector), intent(in) :: aselector
        type(construction_package_test) :: this

        call this%clear()

        this%test_selector = aselector
    end function constructor

    subroutine run(this, assertion)
        class(construction_package_test), intent(in) :: this
        type(assert), intent(inout) :: assertion

        type(tensor_builder_interface_test) :: atensor_builder_interface_test

        call assertion%equal("construction::Package test complete", .true.)

        if ( &
                this%test_selector%is_enabled("tensor_builder_interface") ) then
            atensor_builder_interface_test = tensor_builder_interface_test()
            call atensor_builder_interface_test%run(assertion)
            call atensor_builder_interface_test%cleanup()
        end if

    end subroutine run

    subroutine cleanup(this)
        class(construction_package_test), intent(inout) :: this

        call this%clear()
    end subroutine cleanup

    subroutine clear(this)
        class(construction_package_test), intent(inout) :: this
    end subroutine clear
end module construction_package_test_module
