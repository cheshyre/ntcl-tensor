module default_tap_factory_module
    use :: util_api, only : &
            string

    use :: tensor_api, only : &
            tensor_converter_factory

    use :: tensor_arithmetic_primitives_dev, only : &
            tap_factory, &
            tensor_arithmetic_primitives, &
            intrinsic_tap

#ifdef use_cuda
    use :: cuda_tap_plugin, only : &
            cuda_tap_driver
#endif

#ifdef use_hip
    use :: hip_tap_plugin, only : &
            hip_tap_driver
#endif

    implicit none
    private

    public :: default_tap_factory

    type, extends(tap_factory) :: default_tap_factory
    contains
        procedure :: create_from_key => create_from_key
        procedure :: get_available_tap_drivers => get_available_tap_drivers
        procedure, private :: count_available_drivers => count_available_drivers
    end type default_tap_factory

    character(len=*), parameter :: tap_driver_key = "tap_driver"
    character(len=*), parameter :: default_tap_driver = "intrinsic"
contains
    subroutine create_from_key(this, tap, key)
        class(default_tap_factory), intent(in) :: this
        class(tensor_arithmetic_primitives), allocatable, intent(inout) :: tap
        type(string), intent(in) :: key

        type(tensor_converter_factory) :: factory

        select case (key%char_array)
        case ("intrinsic")
            tap = intrinsic_tap()
#ifdef use_cuda
        case ("cuda")
            tap = cuda_tap_driver(factory%get_c_pointer_converter("device"))
#endif
#ifdef use_hip
        case ("hip")
            tap = hip_tap_driver(factory%get_c_pointer_converter("device"))
#endif
        case default
            error stop "default_tap_factory::create_from_key:Not a valid tap driver: "//key%char_array
        end select
    end subroutine create_from_key

    function get_available_tap_drivers(this) result(drivers)
        class(default_tap_factory), intent(in) :: this
        type(string), dimension(:), allocatable :: drivers

        integer :: counter

        allocate(drivers(this%count_available_drivers()))

        counter = 1
        drivers(counter) = "intrinsic"

#ifdef use_cuda
        counter = counter + 1
        drivers(counter) = "cuda"
#endif

#ifdef use_hip
        counter = counter + 1
        drivers(counter) = "hip"
#endif
    end function get_available_tap_drivers

    integer function count_available_drivers(this)
        class(default_tap_factory), intent(in) :: this

        count_available_drivers = 1

#ifdef use_cuda
        count_available_drivers = count_available_drivers + 1
#endif

#ifdef use_hip
        count_available_drivers = count_available_drivers + 1
#endif
    end function count_available_drivers
end module default_tap_factory_module
