module tensor_array_element_module
    use :: tensor_module, only : tensor

    implicit none
    private

    public :: tensor_array_element

    type :: tensor_array_element
        class(tensor), allocatable :: element
    contains
        procedure :: cleanup => cleanup
        procedure :: release => release
    end type tensor_array_element

    interface tensor_array_element
        module procedure constructor
    end interface tensor_array_element
contains
    function constructor(element) result(this)
        class(tensor), intent(in) :: element
        type(tensor_array_element) :: this

        this%element = element
    end function constructor

    subroutine cleanup(this)
        class(tensor_array_element), intent(inout) :: this

        if ( allocated(this%element)) then
            call this%element%cleanup()
            deallocate(this%element)
        end if
    end subroutine cleanup

    subroutine release(this)
        class(tensor_array_element), intent(inout) :: this

        if ( allocated(this%element)) then
            call this%element%release()
            deallocate(this%element)
        end if
    end subroutine release
end module tensor_array_element_module
