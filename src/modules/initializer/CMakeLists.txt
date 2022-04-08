add_library(
    ntcl_tensor_initializer
    tensor_initializer.f90
    tensor_initializer_api.f90
    random_initializer.f90
)
add_library(ntcl_tensor::initializer ALIAS ntcl_tensor_initializer)
target_include_directories(
    ntcl_tensor_initializer
    PUBLIC
    ${CMAKE_CURRENT_BINARY_DIR}
)
target_link_libraries(
    ntcl_tensor_initializer
    PUBLIC
    ntcl_tensor_tensor
    ntcl_tensor_converter
)
