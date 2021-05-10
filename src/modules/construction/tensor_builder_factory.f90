module tensor_builder_factory_module
    use :: util_api, only : &
        string, &
        dictionary

    use :: data_api, only : create_storage_builder

    use :: tensor_builder_module, only : tensor_builder

    implicit none
    private

    public :: create_tensor_builder
    public :: get_tensor_builder

contains
    function get_tensor_builder(memory_type, options, priorities) result(builder)
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities
        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
    end function get_tensor_builder

    subroutine create_tensor_builder(builder, memory_type, options, priorities)
        type(tensor_builder), intent(inout) :: builder
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        builder = tensor_builder()
        call create_storage_builder(builder%builder, memory_type, options, priorities)
    end subroutine create_tensor_builder
end module tensor_builder_factory_module
