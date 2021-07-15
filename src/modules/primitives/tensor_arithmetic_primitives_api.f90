module tensor_arithmetic_primitives_api
    use :: tensor_arithmetic_primitives_module, only : tensor_arithmetic_primitives
    use :: tap_factory_module, only : tap_factory

    implicit none
    public

    class(tap_factory), allocatable :: tensor_arithmetic_primitives_factory
contains
    subroutine tap_initialize(factory)
        class(tap_factory), intent(in) :: factory

        tensor_arithmetic_primitives_factory = factory
    end subroutine tap_initialize

    subroutine tap_finalize()

        if ( allocated(tensor_arithmetic_primitives_factory) ) then
            deallocate(tensor_arithmetic_primitives_factory)
        end if
    end subroutine tap_finalize
end module tensor_arithmetic_primitives_api
