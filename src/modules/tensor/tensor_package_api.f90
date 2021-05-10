module tensor_package_api
    use :: scalar_module, only : scalar
    use :: tscalar_module, only : tscalar
    use :: tensor_module, only : tensor
    use :: vector_module, only : vector
    use :: matrix_module, only : matrix
    use :: tensor_rank3_module, only : tensor_rank3
    use :: tensor_rank4_module, only : tensor_rank4
    use :: tensor_rank5_module, only : tensor_rank5
    use :: tensor_factory_module, only : &
            get_tensor_from_components, &
            create_tensor_from_components, &
            allocate_and_create_tensor_from_components, &
            allocate_tensor_object
    use :: tensor_datatypes
    use :: tensor_datatype_helper_module, only : tensor_datatype_helper
    use :: tensor_array_element_module, only : tensor_array_element

    implicit none
    public
end module tensor_package_api
