module tensor_initializer
    use :: data_initializer, only : &
            data_initialize, &
            data_finalize

    use :: tensor_dev, only : &
            tap_initialize, &
            tap_finalize, &
            default_tap_factory

    implicit none
    public

contains
    subroutine tensor_initialize()

        call data_initialize()

        call tap_initialize(default_tap_factory())
    end subroutine

    subroutine tensor_finalize()

        call tap_finalize()

        call data_finalize()
    end subroutine tensor_finalize
end module tensor_initializer
