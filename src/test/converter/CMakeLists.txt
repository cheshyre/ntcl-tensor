add_library(
    ntcl_tensor_converter_test
    converter_package_test.f90
)
add_library(ntcl_tensor::converter_test ALIAS ntcl_tensor_converter_test)
target_include_directories(
    ntcl_tensor_converter_test
    PUBLIC
    ${CMAKE_CURRENT_BINARY_DIR}
)
target_link_libraries(
    ntcl_tensor_converter_test
    PUBLIC
    ntcl_util::api
)
