module tensor_initializer_module
    use :: tensor_package_api, only : tensor

    implicit none
    private

    public :: tensor_initializer

    type, abstract :: tensor_initializer
    contains
        procedure(init), deferred :: initialize
    end type tensor_initializer

    abstract interface
        subroutine init(this, atensor)
            import :: tensor_initializer
            import :: tensor

            class(tensor_initializer), intent(in) :: this
            class(tensor), intent(inout) :: atensor
        end subroutine init
    end interface
end module tensor_initializer_module
