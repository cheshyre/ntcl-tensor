module tensor_initializer_api
    use :: tensor_initializer_module, only : tensor_initializer

    implicit none
    public

contains
    function get_tensor_initializer(init_type, options, priorities) result(initializer)
        use :: util_api, only : &
                string, &
                dictionary, &
                dictionary_converter

        character(len=*), intent(in), optional :: init_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities
        class(tensor_initializer), allocatable :: initializer

        call create_tensor_initializer(initializer, init_type, options, priorities)
    end function get_tensor_initializer

    subroutine create_tensor_initializer(initializer, init_type, options, priorities)
        use :: util_api, only : &
                string, &
                dictionary, &
                dictionary_converter
        use :: random_initializer_module, only : random_initializer

        class(tensor_initializer), allocatable, intent(inout) :: initializer
        character(len=*), intent(in), optional :: init_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(string) :: key
        type(dictionary_converter) :: converter

        if ( present(init_type) ) then
            key = init_type
        else
            key = converter%to_string("initializer", options, priorities, "random")
        end if

        select case (key%char_array)
        case ("random")
            initializer = random_initializer()
        case default
            error stop "create_tensor_initializer::Unknown initializer."
        end select
    end subroutine create_tensor_initializer
end module tensor_initializer_api
