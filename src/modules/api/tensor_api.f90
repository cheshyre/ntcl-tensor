module tensor_api
    use :: tensor_package_api
    use :: tensor_converter_factory_module, only : &
            tensor_converter_factory
    use :: tensor_c_pointer_converter_module, only : tensor_c_pointer_converter
    use :: tensor_fortran_converter_module, only : &
            tensor_fortran_converter, &
            secure_fortran_pointer_from_tensor, &
            update_remote_tensor_from_pointer, &
            release_pointer_from_remote_tensor, &
            update_remote_tensor_and_release_pointer
    use :: tensor_converter_interface, only : &
            allocate_and_reshape_tensor, &
            reshape_tensor
    use :: tensor_construction_api, only : &
            tensor_builder, &
            get_tensor_builder, &
            create_tensor_builder, &
            allocate_and_create_tensor, &
            create_tensor, &
            allocate_and_create_tensor_in_scratch, &
            create_tensor_in_scratch, &
            allocate_and_copy_tensor, &
            copy_tensor, &
            allocate_and_copy_tensor_to_scratch, &
            copy_tensor_to_scratch, &
            allocate_and_point_to_tensor, &
            point_to_tensor

    use :: tensor_initializer_api

    use :: tensor_arithmetic_primitives_api

    implicit none
    public
end module tensor_api
