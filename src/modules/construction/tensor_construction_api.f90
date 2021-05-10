module tensor_construction_api
    use :: tensor_builder_module, only : tensor_builder
    use :: tensor_builder_factory_module, only : &
            get_tensor_builder, &
            create_tensor_builder
    use :: tensor_builder_interface, only : &
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

    implicit none
    public
end module tensor_construction_api
