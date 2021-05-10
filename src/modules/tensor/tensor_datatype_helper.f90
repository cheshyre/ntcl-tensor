module tensor_datatype_helper_module
    use :: util_api, only : &
            string, &
            dictionary, &
            dictionary_converter

    use :: tensor_datatypes, only : &
            dt_null, &
            dt_c128, &
            dt_r64, &
            dt_i64, &
            dt_c64, &
            dt_r32, &
            dt_i32, &
            dt_i16, &
            dt_i8, &
            dt_c_ptr

    implicit none
    private

    public :: tensor_datatype_helper

    type :: tensor_datatype_helper
    contains
        generic :: get_datatype_size => &
                get_datatype_size_from_int, &
                get_datatype_size_from_chars
        procedure, nopass :: get_datatype_size_from_int => get_datatype_size_from_int
        procedure :: get_datatype_size_from_chars => get_datatype_size_from_chars
        procedure :: get_datatype=> get_datatype
    end type tensor_datatype_helper

contains
    integer function get_datatype_size_from_int(dt)
        integer, intent(in) :: dt

        select case (dt)
        case (dt_null)
            get_datatype_size_from_int = 0
        case (dt_c128)
            get_datatype_size_from_int = 16
        case (dt_r64)
            get_datatype_size_from_int = 8
        case (dt_i64)
            get_datatype_size_from_int = 8
        case (dt_c64)
            get_datatype_size_from_int = 8
        case (dt_r32)
            get_datatype_size_from_int = 4
        case (dt_i32)
            get_datatype_size_from_int = 4
        case (dt_i16)
            get_datatype_size_from_int = 2
        case (dt_i8)
            get_datatype_size_from_int = 1
        case (dt_c_ptr)
            get_datatype_size_from_int = 8
        end select
    end function get_datatype_size_from_int

    integer function get_datatype_size_from_chars(this, datatype, options, priorities)
        class(tensor_datatype_helper), intent(in) :: this
        character(len=*), intent(in), optional :: datatype
        type(dictionary), optional, intent(in) :: options
        type(string), dimension(:), optional, intent(in) :: priorities

        get_datatype_size_from_chars = this%get_datatype_size( &
                this%get_datatype(datatype, options, priorities) )
    end function get_datatype_size_from_chars

    integer function get_datatype(this, datatype, options, priorities)
        class(tensor_datatype_helper), intent(in) :: this
        character(len=*), intent(in), optional :: datatype
        type(dictionary), optional, intent(in) :: options
        type(string), dimension(:), optional, intent(in) :: priorities

        type(string) :: key
        type(dictionary_converter) :: converter

        if ( present(datatype) ) then
            key = datatype
        else
            key = converter%to_string("datatype", options, priorities, "real64")
        end if

        get_datatype= dt_null
        select case (key%char_array)
        case ("complex128")
            get_datatype = dt_c128
        case ("real64")
            get_datatype = dt_r64
        case ("int64")
            get_datatype = dt_i64
        case ("complex64")
            get_datatype = dt_c64
        case ("real32")
            get_datatype = dt_r32
        case ("int32")
            get_datatype = dt_i32
        case ("int16")
            get_datatype = dt_i16
        case ("int8")
            get_datatype = dt_i8
        case ("c_ptr")
            get_datatype = dt_c_ptr
        end select
    end function get_datatype
end module tensor_datatype_helper_module
