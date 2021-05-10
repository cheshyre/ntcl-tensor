module tensor_converter_factory_module
    use :: util_api, only : string
    use :: data_api, only : &
            memory_factory, &
            fortran_converter_factory

    use :: tensor_c_pointer_converter_module, only : tensor_c_pointer_converter
    use :: tensor_fortran_converter_module, only :tensor_fortran_converter

    implicit none
    private

    public :: tensor_converter_factory

    type :: tensor_converter_factory
    contains
        generic :: get_c_pointer_converter => &
                get_c_pointer_converter_from_string, &
                get_c_pointer_converter_from_chars
        generic :: build_c_pointer_converter => &
                build_c_pointer_converter_from_string, &
                build_c_pointer_converter_from_chars
        generic :: get_fortran_pointer_converter => &
                get_fortran_pointer_converter_from_string, &
                get_fortran_pointer_converter_from_chars
        generic :: build_fortran_pointer_converter => &
                build_fortran_pointer_converter_from_string, &
                build_fortran_pointer_converter_from_chars
        procedure :: get_c_pointer_converter_from_string => get_c_pointer_converter_from_string
        procedure :: get_c_pointer_converter_from_chars => get_c_pointer_converter_from_chars
        procedure :: build_c_pointer_converter_from_string => build_c_pointer_converter_from_string
        procedure :: build_c_pointer_converter_from_chars => build_c_pointer_converter_from_chars
        procedure :: get_fortran_pointer_converter_from_string => get_fortran_pointer_converter_from_string
        procedure :: get_fortran_pointer_converter_from_chars => get_fortran_pointer_converter_from_chars
        procedure :: build_fortran_pointer_converter_from_string => build_fortran_pointer_converter_from_string
        procedure :: build_fortran_pointer_converter_from_chars => build_fortran_pointer_converter_from_chars
    end type tensor_converter_factory

contains
    subroutine build_c_pointer_converter_from_string(this, converter, key)
        class(tensor_converter_factory), intent(in) :: this
        type(tensor_c_pointer_converter), intent(inout) :: converter
        type(string), intent(in) :: key

        call memory_factory%create_data_builder(converter%builder, key)
    end subroutine build_c_pointer_converter_from_string

    subroutine build_fortran_pointer_converter_from_string(this, converter, key)
        class(tensor_converter_factory), intent(in) :: this
        type(tensor_fortran_converter), intent(inout) :: converter
        type(string), intent(in) :: key

        type(fortran_converter_factory) :: factory

        converter = tensor_fortran_converter(factory%get_data_converter(key))
    end subroutine build_fortran_pointer_converter_from_string

    type(tensor_c_pointer_converter) function get_c_pointer_converter_from_string(this, key)
        class(tensor_converter_factory), intent(in) :: this
        type(string), intent(in) :: key

        call this%build_c_pointer_converter(get_c_pointer_converter_from_string, key)
    end function get_c_pointer_converter_from_string

    type(tensor_c_pointer_converter) function get_c_pointer_converter_from_chars(this, key)
        class(tensor_converter_factory), intent(in) :: this
        character(len=*), intent(in) :: key

        call this%build_c_pointer_converter(get_c_pointer_converter_from_chars, string(key))
    end function get_c_pointer_converter_from_chars

    type(tensor_fortran_converter) function get_fortran_pointer_converter_from_string(this, key)
        class(tensor_converter_factory), intent(in) :: this
        type(string), intent(in) :: key

        call this%build_fortran_pointer_converter(get_fortran_pointer_converter_from_string, key)
    end function get_fortran_pointer_converter_from_string

    type(tensor_fortran_converter) function get_fortran_pointer_converter_from_chars(this, key)
        class(tensor_converter_factory), intent(in) :: this
        character(len=*), intent(in) :: key

        call this%build_fortran_pointer_converter(get_fortran_pointer_converter_from_chars, string(key))
    end function get_fortran_pointer_converter_from_chars

    subroutine build_c_pointer_converter_from_chars(this, converter, key)
        class(tensor_converter_factory), intent(in) :: this
        type(tensor_c_pointer_converter), intent(inout) :: converter
        character(len=*), intent(in) :: key

        call this%build_c_pointer_converter(converter, string(key))
    end subroutine build_c_pointer_converter_from_chars

    subroutine build_fortran_pointer_converter_from_chars(this, converter, key)
        class(tensor_converter_factory), intent(in) :: this
        type(tensor_fortran_converter), intent(inout) :: converter
        character(len=*), intent(in) :: key

        call this%build_fortran_pointer_converter(converter, string(key))
    end subroutine build_fortran_pointer_converter_from_chars
end module tensor_converter_factory_module
