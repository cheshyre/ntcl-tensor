module tap_factory_module
    use :: util_api, only : &
            string, &
            dictionary, &
            dictionary_converter

    use :: tensor_arithmetic_primitives_module, only : tensor_arithmetic_primitives

    implicit none
    private

    public :: tap_factory

    type, abstract :: tap_factory
    contains
        procedure :: get => get
        procedure :: create => create
        procedure(create_interface), deferred :: create_from_key
        procedure(get_available_interface), deferred :: get_available_tap_drivers
    end type tap_factory

    abstract interface
        subroutine create_interface(this, tap, key)
            import :: tap_factory
            import :: tensor_arithmetic_primitives
            import :: string

            class(tap_factory), intent(in) :: this
            class(tensor_arithmetic_primitives), allocatable, intent(inout) :: tap
            type(string), intent(in) :: key
        end subroutine create_interface

        function get_available_interface(this) result(drivers)
            import :: tap_factory
            import :: string

            class(tap_factory), intent(in) :: this
            type(string), dimension(:), allocatable :: drivers
        end function get_available_interface
    end interface

    character(len=*), parameter :: tap_driver_key = "tap_driver"
    character(len=*), parameter :: default_tap_driver = "intrinsic"
contains
    function get(this, driver, options, priorities) result(tap)
        class(tap_factory), intent(in) :: this
        character(len=*), intent(in), optional :: driver
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities
        class(tensor_arithmetic_primitives), allocatable :: tap

        call this%create(tap, driver, options, priorities)
    end function get

    subroutine create(this, tap, driver, options, priorities)
        class(tap_factory), intent(in) :: this
        class(tensor_arithmetic_primitives), allocatable, intent(inout) :: tap
        character(len=*), intent(in), optional :: driver
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(string) :: key
        type(dictionary_converter) :: conv

        if ( present(driver) ) then
            key = driver
        else
            key = conv%to_string(tap_driver_key, options, priorities, default_tap_driver)
        end if
        call this%create_from_key(tap, key)
    end subroutine create
end module tap_factory_module
