! Auto-generated. DO NOT MODIFY!
module tensor_builder_module
    use, intrinsic :: iso_fortran_env, only : &
            int64, &
            real64, &
            real32, &
            int32, &
            int16, &
            int8
    use :: data_api, only : &
            stream, &
            scratch_buffer, &
            storage_builder
    use :: tensor_package_api, only : &
            tensor, &
            allocate_tensor_object, &
            tensor_datatype_helper

    implicit none
    private

    public :: tensor_builder

    type :: tensor_builder
        type(storage_builder) :: builder
    contains
        generic :: allocate_and_create => &
                allocate_and_create_from_dims, &
                allocate_and_create_from_dims_integer, &
                allocate_and_create_tscalar
        generic :: create => &
                create_from_dims, &
                create_from_dims_integer, &
                create_tscalar
        generic :: allocate_and_create_in_scratch => &
                allocate_and_create_in_scratch_from_dims, &
                allocate_and_create_in_scratch_from_dims_integer, &
                allocate_and_create_tscalar_in_scratch
        generic :: create_in_scratch => &
                create_in_scratch_from_dims, &
                create_in_scratch_from_dims_integer, &
                create_tscalar_in_scratch
        generic :: allocate_and_copy => &
                allocate_and_copy_from_tensor, &
                allocate_and_copy_from_complex128_rank0, &
                allocate_and_copy_from_complex128_rank1, &
                allocate_and_copy_from_complex128_rank2, &
                allocate_and_copy_from_complex128_rank3, &
                allocate_and_copy_from_complex128_rank4, &
                allocate_and_copy_from_complex128_rank5, &
                allocate_and_copy_from_complex64_rank0, &
                allocate_and_copy_from_complex64_rank1, &
                allocate_and_copy_from_complex64_rank2, &
                allocate_and_copy_from_complex64_rank3, &
                allocate_and_copy_from_complex64_rank4, &
                allocate_and_copy_from_complex64_rank5, &
                allocate_and_copy_from_real64_rank0, &
                allocate_and_copy_from_real64_rank1, &
                allocate_and_copy_from_real64_rank2, &
                allocate_and_copy_from_real64_rank3, &
                allocate_and_copy_from_real64_rank4, &
                allocate_and_copy_from_real64_rank5, &
                allocate_and_copy_from_real32_rank0, &
                allocate_and_copy_from_real32_rank1, &
                allocate_and_copy_from_real32_rank2, &
                allocate_and_copy_from_real32_rank3, &
                allocate_and_copy_from_real32_rank4, &
                allocate_and_copy_from_real32_rank5, &
                allocate_and_copy_from_int64_rank0, &
                allocate_and_copy_from_int64_rank1, &
                allocate_and_copy_from_int64_rank2, &
                allocate_and_copy_from_int64_rank3, &
                allocate_and_copy_from_int64_rank4, &
                allocate_and_copy_from_int64_rank5, &
                allocate_and_copy_from_int32_rank0, &
                allocate_and_copy_from_int32_rank1, &
                allocate_and_copy_from_int32_rank2, &
                allocate_and_copy_from_int32_rank3, &
                allocate_and_copy_from_int32_rank4, &
                allocate_and_copy_from_int32_rank5, &
                allocate_and_copy_from_int16_rank0, &
                allocate_and_copy_from_int16_rank1, &
                allocate_and_copy_from_int16_rank2, &
                allocate_and_copy_from_int16_rank3, &
                allocate_and_copy_from_int16_rank4, &
                allocate_and_copy_from_int16_rank5, &
                allocate_and_copy_from_int8_rank0, &
                allocate_and_copy_from_int8_rank1, &
                allocate_and_copy_from_int8_rank2, &
                allocate_and_copy_from_int8_rank3, &
                allocate_and_copy_from_int8_rank4, &
                allocate_and_copy_from_int8_rank5
        generic :: copy => &
                copy_from_tensor, &
                copy_from_complex128_rank0, &
                copy_from_complex128_rank1, &
                copy_from_complex128_rank2, &
                copy_from_complex128_rank3, &
                copy_from_complex128_rank4, &
                copy_from_complex128_rank5, &
                copy_from_complex64_rank0, &
                copy_from_complex64_rank1, &
                copy_from_complex64_rank2, &
                copy_from_complex64_rank3, &
                copy_from_complex64_rank4, &
                copy_from_complex64_rank5, &
                copy_from_real64_rank0, &
                copy_from_real64_rank1, &
                copy_from_real64_rank2, &
                copy_from_real64_rank3, &
                copy_from_real64_rank4, &
                copy_from_real64_rank5, &
                copy_from_real32_rank0, &
                copy_from_real32_rank1, &
                copy_from_real32_rank2, &
                copy_from_real32_rank3, &
                copy_from_real32_rank4, &
                copy_from_real32_rank5, &
                copy_from_int64_rank0, &
                copy_from_int64_rank1, &
                copy_from_int64_rank2, &
                copy_from_int64_rank3, &
                copy_from_int64_rank4, &
                copy_from_int64_rank5, &
                copy_from_int32_rank0, &
                copy_from_int32_rank1, &
                copy_from_int32_rank2, &
                copy_from_int32_rank3, &
                copy_from_int32_rank4, &
                copy_from_int32_rank5, &
                copy_from_int16_rank0, &
                copy_from_int16_rank1, &
                copy_from_int16_rank2, &
                copy_from_int16_rank3, &
                copy_from_int16_rank4, &
                copy_from_int16_rank5, &
                copy_from_int8_rank0, &
                copy_from_int8_rank1, &
                copy_from_int8_rank2, &
                copy_from_int8_rank3, &
                copy_from_int8_rank4, &
                copy_from_int8_rank5
        generic :: allocate_and_copy_to_scratch => &
                allocate_and_copy_to_scratch_from_tensor, &
                allocate_and_copy_to_scratch_from_complex128_rank0, &
                allocate_and_copy_to_scratch_from_complex128_rank1, &
                allocate_and_copy_to_scratch_from_complex128_rank2, &
                allocate_and_copy_to_scratch_from_complex128_rank3, &
                allocate_and_copy_to_scratch_from_complex128_rank4, &
                allocate_and_copy_to_scratch_from_complex128_rank5, &
                allocate_and_copy_to_scratch_from_complex64_rank0, &
                allocate_and_copy_to_scratch_from_complex64_rank1, &
                allocate_and_copy_to_scratch_from_complex64_rank2, &
                allocate_and_copy_to_scratch_from_complex64_rank3, &
                allocate_and_copy_to_scratch_from_complex64_rank4, &
                allocate_and_copy_to_scratch_from_complex64_rank5, &
                allocate_and_copy_to_scratch_from_real64_rank0, &
                allocate_and_copy_to_scratch_from_real64_rank1, &
                allocate_and_copy_to_scratch_from_real64_rank2, &
                allocate_and_copy_to_scratch_from_real64_rank3, &
                allocate_and_copy_to_scratch_from_real64_rank4, &
                allocate_and_copy_to_scratch_from_real64_rank5, &
                allocate_and_copy_to_scratch_from_real32_rank0, &
                allocate_and_copy_to_scratch_from_real32_rank1, &
                allocate_and_copy_to_scratch_from_real32_rank2, &
                allocate_and_copy_to_scratch_from_real32_rank3, &
                allocate_and_copy_to_scratch_from_real32_rank4, &
                allocate_and_copy_to_scratch_from_real32_rank5, &
                allocate_and_copy_to_scratch_from_int64_rank0, &
                allocate_and_copy_to_scratch_from_int64_rank1, &
                allocate_and_copy_to_scratch_from_int64_rank2, &
                allocate_and_copy_to_scratch_from_int64_rank3, &
                allocate_and_copy_to_scratch_from_int64_rank4, &
                allocate_and_copy_to_scratch_from_int64_rank5, &
                allocate_and_copy_to_scratch_from_int32_rank0, &
                allocate_and_copy_to_scratch_from_int32_rank1, &
                allocate_and_copy_to_scratch_from_int32_rank2, &
                allocate_and_copy_to_scratch_from_int32_rank3, &
                allocate_and_copy_to_scratch_from_int32_rank4, &
                allocate_and_copy_to_scratch_from_int32_rank5, &
                allocate_and_copy_to_scratch_from_int16_rank0, &
                allocate_and_copy_to_scratch_from_int16_rank1, &
                allocate_and_copy_to_scratch_from_int16_rank2, &
                allocate_and_copy_to_scratch_from_int16_rank3, &
                allocate_and_copy_to_scratch_from_int16_rank4, &
                allocate_and_copy_to_scratch_from_int16_rank5, &
                allocate_and_copy_to_scratch_from_int8_rank0, &
                allocate_and_copy_to_scratch_from_int8_rank1, &
                allocate_and_copy_to_scratch_from_int8_rank2, &
                allocate_and_copy_to_scratch_from_int8_rank3, &
                allocate_and_copy_to_scratch_from_int8_rank4, &
                allocate_and_copy_to_scratch_from_int8_rank5
        generic :: copy_to_scratch => &
                copy_to_scratch_from_tensor, &
                copy_to_scratch_from_complex128_rank0, &
                copy_to_scratch_from_complex128_rank1, &
                copy_to_scratch_from_complex128_rank2, &
                copy_to_scratch_from_complex128_rank3, &
                copy_to_scratch_from_complex128_rank4, &
                copy_to_scratch_from_complex128_rank5, &
                copy_to_scratch_from_complex64_rank0, &
                copy_to_scratch_from_complex64_rank1, &
                copy_to_scratch_from_complex64_rank2, &
                copy_to_scratch_from_complex64_rank3, &
                copy_to_scratch_from_complex64_rank4, &
                copy_to_scratch_from_complex64_rank5, &
                copy_to_scratch_from_real64_rank0, &
                copy_to_scratch_from_real64_rank1, &
                copy_to_scratch_from_real64_rank2, &
                copy_to_scratch_from_real64_rank3, &
                copy_to_scratch_from_real64_rank4, &
                copy_to_scratch_from_real64_rank5, &
                copy_to_scratch_from_real32_rank0, &
                copy_to_scratch_from_real32_rank1, &
                copy_to_scratch_from_real32_rank2, &
                copy_to_scratch_from_real32_rank3, &
                copy_to_scratch_from_real32_rank4, &
                copy_to_scratch_from_real32_rank5, &
                copy_to_scratch_from_int64_rank0, &
                copy_to_scratch_from_int64_rank1, &
                copy_to_scratch_from_int64_rank2, &
                copy_to_scratch_from_int64_rank3, &
                copy_to_scratch_from_int64_rank4, &
                copy_to_scratch_from_int64_rank5, &
                copy_to_scratch_from_int32_rank0, &
                copy_to_scratch_from_int32_rank1, &
                copy_to_scratch_from_int32_rank2, &
                copy_to_scratch_from_int32_rank3, &
                copy_to_scratch_from_int32_rank4, &
                copy_to_scratch_from_int32_rank5, &
                copy_to_scratch_from_int16_rank0, &
                copy_to_scratch_from_int16_rank1, &
                copy_to_scratch_from_int16_rank2, &
                copy_to_scratch_from_int16_rank3, &
                copy_to_scratch_from_int16_rank4, &
                copy_to_scratch_from_int16_rank5, &
                copy_to_scratch_from_int8_rank0, &
                copy_to_scratch_from_int8_rank1, &
                copy_to_scratch_from_int8_rank2, &
                copy_to_scratch_from_int8_rank3, &
                copy_to_scratch_from_int8_rank4, &
                copy_to_scratch_from_int8_rank5
        generic :: allocate_and_point_to => &
                allocate_and_point_to_from_tensor, &
                allocate_and_point_to_from_complex128_rank0, &
                allocate_and_point_to_from_complex128_rank1, &
                allocate_and_point_to_from_complex128_rank2, &
                allocate_and_point_to_from_complex128_rank3, &
                allocate_and_point_to_from_complex128_rank4, &
                allocate_and_point_to_from_complex128_rank5, &
                allocate_and_point_to_from_complex64_rank0, &
                allocate_and_point_to_from_complex64_rank1, &
                allocate_and_point_to_from_complex64_rank2, &
                allocate_and_point_to_from_complex64_rank3, &
                allocate_and_point_to_from_complex64_rank4, &
                allocate_and_point_to_from_complex64_rank5, &
                allocate_and_point_to_from_real64_rank0, &
                allocate_and_point_to_from_real64_rank1, &
                allocate_and_point_to_from_real64_rank2, &
                allocate_and_point_to_from_real64_rank3, &
                allocate_and_point_to_from_real64_rank4, &
                allocate_and_point_to_from_real64_rank5, &
                allocate_and_point_to_from_real32_rank0, &
                allocate_and_point_to_from_real32_rank1, &
                allocate_and_point_to_from_real32_rank2, &
                allocate_and_point_to_from_real32_rank3, &
                allocate_and_point_to_from_real32_rank4, &
                allocate_and_point_to_from_real32_rank5, &
                allocate_and_point_to_from_int64_rank0, &
                allocate_and_point_to_from_int64_rank1, &
                allocate_and_point_to_from_int64_rank2, &
                allocate_and_point_to_from_int64_rank3, &
                allocate_and_point_to_from_int64_rank4, &
                allocate_and_point_to_from_int64_rank5, &
                allocate_and_point_to_from_int32_rank0, &
                allocate_and_point_to_from_int32_rank1, &
                allocate_and_point_to_from_int32_rank2, &
                allocate_and_point_to_from_int32_rank3, &
                allocate_and_point_to_from_int32_rank4, &
                allocate_and_point_to_from_int32_rank5, &
                allocate_and_point_to_from_int16_rank0, &
                allocate_and_point_to_from_int16_rank1, &
                allocate_and_point_to_from_int16_rank2, &
                allocate_and_point_to_from_int16_rank3, &
                allocate_and_point_to_from_int16_rank4, &
                allocate_and_point_to_from_int16_rank5, &
                allocate_and_point_to_from_int8_rank0, &
                allocate_and_point_to_from_int8_rank1, &
                allocate_and_point_to_from_int8_rank2, &
                allocate_and_point_to_from_int8_rank3, &
                allocate_and_point_to_from_int8_rank4, &
                allocate_and_point_to_from_int8_rank5
        generic :: point_to => &
                point_to_from_tensor, &
                point_to_from_complex128_rank0, &
                point_to_from_complex128_rank1, &
                point_to_from_complex128_rank2, &
                point_to_from_complex128_rank3, &
                point_to_from_complex128_rank4, &
                point_to_from_complex128_rank5, &
                point_to_from_complex64_rank0, &
                point_to_from_complex64_rank1, &
                point_to_from_complex64_rank2, &
                point_to_from_complex64_rank3, &
                point_to_from_complex64_rank4, &
                point_to_from_complex64_rank5, &
                point_to_from_real64_rank0, &
                point_to_from_real64_rank1, &
                point_to_from_real64_rank2, &
                point_to_from_real64_rank3, &
                point_to_from_real64_rank4, &
                point_to_from_real64_rank5, &
                point_to_from_real32_rank0, &
                point_to_from_real32_rank1, &
                point_to_from_real32_rank2, &
                point_to_from_real32_rank3, &
                point_to_from_real32_rank4, &
                point_to_from_real32_rank5, &
                point_to_from_int64_rank0, &
                point_to_from_int64_rank1, &
                point_to_from_int64_rank2, &
                point_to_from_int64_rank3, &
                point_to_from_int64_rank4, &
                point_to_from_int64_rank5, &
                point_to_from_int32_rank0, &
                point_to_from_int32_rank1, &
                point_to_from_int32_rank2, &
                point_to_from_int32_rank3, &
                point_to_from_int32_rank4, &
                point_to_from_int32_rank5, &
                point_to_from_int16_rank0, &
                point_to_from_int16_rank1, &
                point_to_from_int16_rank2, &
                point_to_from_int16_rank3, &
                point_to_from_int16_rank4, &
                point_to_from_int16_rank5, &
                point_to_from_int8_rank0, &
                point_to_from_int8_rank1, &
                point_to_from_int8_rank2, &
                point_to_from_int8_rank3, &
                point_to_from_int8_rank4, &
                point_to_from_int8_rank5
        procedure :: allocate_and_create_from_dims => allocate_and_create_from_dims
        procedure :: allocate_and_create_from_dims_integer => allocate_and_create_from_dims_integer
        procedure :: allocate_and_create_tscalar => allocate_and_create_tscalar
        procedure :: create_from_dims => create_from_dims
        procedure :: create_from_dims_integer => create_from_dims_integer
        procedure :: create_tscalar => create_tscalar
        procedure :: allocate_and_create_in_scratch_from_dims => allocate_and_create_in_scratch_from_dims
        procedure :: allocate_and_create_in_scratch_from_dims_integer => &
                allocate_and_create_in_scratch_from_dims_integer
        procedure :: allocate_and_create_tscalar_in_scratch => allocate_and_create_tscalar_in_scratch
        procedure :: create_in_scratch_from_dims => create_in_scratch_from_dims
        procedure :: create_in_scratch_from_dims_integer => create_in_scratch_from_dims_integer
        procedure :: create_tscalar_in_scratch => create_tscalar_in_scratch
        procedure :: allocate_and_copy_from_tensor => allocate_and_copy_from_tensor
        procedure :: allocate_and_copy_from_complex128_rank0 => allocate_and_copy_from_complex128_rank0
        procedure :: allocate_and_copy_from_complex128_rank1 => allocate_and_copy_from_complex128_rank1
        procedure :: allocate_and_copy_from_complex128_rank2 => allocate_and_copy_from_complex128_rank2
        procedure :: allocate_and_copy_from_complex128_rank3 => allocate_and_copy_from_complex128_rank3
        procedure :: allocate_and_copy_from_complex128_rank4 => allocate_and_copy_from_complex128_rank4
        procedure :: allocate_and_copy_from_complex128_rank5 => allocate_and_copy_from_complex128_rank5
        procedure :: allocate_and_copy_from_complex64_rank0 => allocate_and_copy_from_complex64_rank0
        procedure :: allocate_and_copy_from_complex64_rank1 => allocate_and_copy_from_complex64_rank1
        procedure :: allocate_and_copy_from_complex64_rank2 => allocate_and_copy_from_complex64_rank2
        procedure :: allocate_and_copy_from_complex64_rank3 => allocate_and_copy_from_complex64_rank3
        procedure :: allocate_and_copy_from_complex64_rank4 => allocate_and_copy_from_complex64_rank4
        procedure :: allocate_and_copy_from_complex64_rank5 => allocate_and_copy_from_complex64_rank5
        procedure :: allocate_and_copy_from_real64_rank0 => allocate_and_copy_from_real64_rank0
        procedure :: allocate_and_copy_from_real64_rank1 => allocate_and_copy_from_real64_rank1
        procedure :: allocate_and_copy_from_real64_rank2 => allocate_and_copy_from_real64_rank2
        procedure :: allocate_and_copy_from_real64_rank3 => allocate_and_copy_from_real64_rank3
        procedure :: allocate_and_copy_from_real64_rank4 => allocate_and_copy_from_real64_rank4
        procedure :: allocate_and_copy_from_real64_rank5 => allocate_and_copy_from_real64_rank5
        procedure :: allocate_and_copy_from_real32_rank0 => allocate_and_copy_from_real32_rank0
        procedure :: allocate_and_copy_from_real32_rank1 => allocate_and_copy_from_real32_rank1
        procedure :: allocate_and_copy_from_real32_rank2 => allocate_and_copy_from_real32_rank2
        procedure :: allocate_and_copy_from_real32_rank3 => allocate_and_copy_from_real32_rank3
        procedure :: allocate_and_copy_from_real32_rank4 => allocate_and_copy_from_real32_rank4
        procedure :: allocate_and_copy_from_real32_rank5 => allocate_and_copy_from_real32_rank5
        procedure :: allocate_and_copy_from_int64_rank0 => allocate_and_copy_from_int64_rank0
        procedure :: allocate_and_copy_from_int64_rank1 => allocate_and_copy_from_int64_rank1
        procedure :: allocate_and_copy_from_int64_rank2 => allocate_and_copy_from_int64_rank2
        procedure :: allocate_and_copy_from_int64_rank3 => allocate_and_copy_from_int64_rank3
        procedure :: allocate_and_copy_from_int64_rank4 => allocate_and_copy_from_int64_rank4
        procedure :: allocate_and_copy_from_int64_rank5 => allocate_and_copy_from_int64_rank5
        procedure :: allocate_and_copy_from_int32_rank0 => allocate_and_copy_from_int32_rank0
        procedure :: allocate_and_copy_from_int32_rank1 => allocate_and_copy_from_int32_rank1
        procedure :: allocate_and_copy_from_int32_rank2 => allocate_and_copy_from_int32_rank2
        procedure :: allocate_and_copy_from_int32_rank3 => allocate_and_copy_from_int32_rank3
        procedure :: allocate_and_copy_from_int32_rank4 => allocate_and_copy_from_int32_rank4
        procedure :: allocate_and_copy_from_int32_rank5 => allocate_and_copy_from_int32_rank5
        procedure :: allocate_and_copy_from_int16_rank0 => allocate_and_copy_from_int16_rank0
        procedure :: allocate_and_copy_from_int16_rank1 => allocate_and_copy_from_int16_rank1
        procedure :: allocate_and_copy_from_int16_rank2 => allocate_and_copy_from_int16_rank2
        procedure :: allocate_and_copy_from_int16_rank3 => allocate_and_copy_from_int16_rank3
        procedure :: allocate_and_copy_from_int16_rank4 => allocate_and_copy_from_int16_rank4
        procedure :: allocate_and_copy_from_int16_rank5 => allocate_and_copy_from_int16_rank5
        procedure :: allocate_and_copy_from_int8_rank0 => allocate_and_copy_from_int8_rank0
        procedure :: allocate_and_copy_from_int8_rank1 => allocate_and_copy_from_int8_rank1
        procedure :: allocate_and_copy_from_int8_rank2 => allocate_and_copy_from_int8_rank2
        procedure :: allocate_and_copy_from_int8_rank3 => allocate_and_copy_from_int8_rank3
        procedure :: allocate_and_copy_from_int8_rank4 => allocate_and_copy_from_int8_rank4
        procedure :: allocate_and_copy_from_int8_rank5 => allocate_and_copy_from_int8_rank5
        procedure :: copy_from_tensor => copy_from_tensor
        procedure :: copy_from_complex128_rank0 => copy_from_complex128_rank0
        procedure :: copy_from_complex128_rank1 => copy_from_complex128_rank1
        procedure :: copy_from_complex128_rank2 => copy_from_complex128_rank2
        procedure :: copy_from_complex128_rank3 => copy_from_complex128_rank3
        procedure :: copy_from_complex128_rank4 => copy_from_complex128_rank4
        procedure :: copy_from_complex128_rank5 => copy_from_complex128_rank5
        procedure :: copy_from_complex64_rank0 => copy_from_complex64_rank0
        procedure :: copy_from_complex64_rank1 => copy_from_complex64_rank1
        procedure :: copy_from_complex64_rank2 => copy_from_complex64_rank2
        procedure :: copy_from_complex64_rank3 => copy_from_complex64_rank3
        procedure :: copy_from_complex64_rank4 => copy_from_complex64_rank4
        procedure :: copy_from_complex64_rank5 => copy_from_complex64_rank5
        procedure :: copy_from_real64_rank0 => copy_from_real64_rank0
        procedure :: copy_from_real64_rank1 => copy_from_real64_rank1
        procedure :: copy_from_real64_rank2 => copy_from_real64_rank2
        procedure :: copy_from_real64_rank3 => copy_from_real64_rank3
        procedure :: copy_from_real64_rank4 => copy_from_real64_rank4
        procedure :: copy_from_real64_rank5 => copy_from_real64_rank5
        procedure :: copy_from_real32_rank0 => copy_from_real32_rank0
        procedure :: copy_from_real32_rank1 => copy_from_real32_rank1
        procedure :: copy_from_real32_rank2 => copy_from_real32_rank2
        procedure :: copy_from_real32_rank3 => copy_from_real32_rank3
        procedure :: copy_from_real32_rank4 => copy_from_real32_rank4
        procedure :: copy_from_real32_rank5 => copy_from_real32_rank5
        procedure :: copy_from_int64_rank0 => copy_from_int64_rank0
        procedure :: copy_from_int64_rank1 => copy_from_int64_rank1
        procedure :: copy_from_int64_rank2 => copy_from_int64_rank2
        procedure :: copy_from_int64_rank3 => copy_from_int64_rank3
        procedure :: copy_from_int64_rank4 => copy_from_int64_rank4
        procedure :: copy_from_int64_rank5 => copy_from_int64_rank5
        procedure :: copy_from_int32_rank0 => copy_from_int32_rank0
        procedure :: copy_from_int32_rank1 => copy_from_int32_rank1
        procedure :: copy_from_int32_rank2 => copy_from_int32_rank2
        procedure :: copy_from_int32_rank3 => copy_from_int32_rank3
        procedure :: copy_from_int32_rank4 => copy_from_int32_rank4
        procedure :: copy_from_int32_rank5 => copy_from_int32_rank5
        procedure :: copy_from_int16_rank0 => copy_from_int16_rank0
        procedure :: copy_from_int16_rank1 => copy_from_int16_rank1
        procedure :: copy_from_int16_rank2 => copy_from_int16_rank2
        procedure :: copy_from_int16_rank3 => copy_from_int16_rank3
        procedure :: copy_from_int16_rank4 => copy_from_int16_rank4
        procedure :: copy_from_int16_rank5 => copy_from_int16_rank5
        procedure :: copy_from_int8_rank0 => copy_from_int8_rank0
        procedure :: copy_from_int8_rank1 => copy_from_int8_rank1
        procedure :: copy_from_int8_rank2 => copy_from_int8_rank2
        procedure :: copy_from_int8_rank3 => copy_from_int8_rank3
        procedure :: copy_from_int8_rank4 => copy_from_int8_rank4
        procedure :: copy_from_int8_rank5 => copy_from_int8_rank5
        procedure :: allocate_and_copy_to_scratch_from_tensor => allocate_and_copy_to_scratch_from_tensor
        procedure :: allocate_and_copy_to_scratch_from_complex128_rank0 => &
                allocate_and_copy_to_scratch_from_complex128_rank0
        procedure :: allocate_and_copy_to_scratch_from_complex128_rank1 => &
                allocate_and_copy_to_scratch_from_complex128_rank1
        procedure :: allocate_and_copy_to_scratch_from_complex128_rank2 => &
                allocate_and_copy_to_scratch_from_complex128_rank2
        procedure :: allocate_and_copy_to_scratch_from_complex128_rank3 => &
                allocate_and_copy_to_scratch_from_complex128_rank3
        procedure :: allocate_and_copy_to_scratch_from_complex128_rank4 => &
                allocate_and_copy_to_scratch_from_complex128_rank4
        procedure :: allocate_and_copy_to_scratch_from_complex128_rank5 => &
                allocate_and_copy_to_scratch_from_complex128_rank5
        procedure :: allocate_and_copy_to_scratch_from_complex64_rank0 => &
                allocate_and_copy_to_scratch_from_complex64_rank0
        procedure :: allocate_and_copy_to_scratch_from_complex64_rank1 => &
                allocate_and_copy_to_scratch_from_complex64_rank1
        procedure :: allocate_and_copy_to_scratch_from_complex64_rank2 => &
                allocate_and_copy_to_scratch_from_complex64_rank2
        procedure :: allocate_and_copy_to_scratch_from_complex64_rank3 => &
                allocate_and_copy_to_scratch_from_complex64_rank3
        procedure :: allocate_and_copy_to_scratch_from_complex64_rank4 => &
                allocate_and_copy_to_scratch_from_complex64_rank4
        procedure :: allocate_and_copy_to_scratch_from_complex64_rank5 => &
                allocate_and_copy_to_scratch_from_complex64_rank5
        procedure :: allocate_and_copy_to_scratch_from_real64_rank0 => allocate_and_copy_to_scratch_from_real64_rank0
        procedure :: allocate_and_copy_to_scratch_from_real64_rank1 => allocate_and_copy_to_scratch_from_real64_rank1
        procedure :: allocate_and_copy_to_scratch_from_real64_rank2 => allocate_and_copy_to_scratch_from_real64_rank2
        procedure :: allocate_and_copy_to_scratch_from_real64_rank3 => allocate_and_copy_to_scratch_from_real64_rank3
        procedure :: allocate_and_copy_to_scratch_from_real64_rank4 => allocate_and_copy_to_scratch_from_real64_rank4
        procedure :: allocate_and_copy_to_scratch_from_real64_rank5 => allocate_and_copy_to_scratch_from_real64_rank5
        procedure :: allocate_and_copy_to_scratch_from_real32_rank0 => allocate_and_copy_to_scratch_from_real32_rank0
        procedure :: allocate_and_copy_to_scratch_from_real32_rank1 => allocate_and_copy_to_scratch_from_real32_rank1
        procedure :: allocate_and_copy_to_scratch_from_real32_rank2 => allocate_and_copy_to_scratch_from_real32_rank2
        procedure :: allocate_and_copy_to_scratch_from_real32_rank3 => allocate_and_copy_to_scratch_from_real32_rank3
        procedure :: allocate_and_copy_to_scratch_from_real32_rank4 => allocate_and_copy_to_scratch_from_real32_rank4
        procedure :: allocate_and_copy_to_scratch_from_real32_rank5 => allocate_and_copy_to_scratch_from_real32_rank5
        procedure :: allocate_and_copy_to_scratch_from_int64_rank0 => allocate_and_copy_to_scratch_from_int64_rank0
        procedure :: allocate_and_copy_to_scratch_from_int64_rank1 => allocate_and_copy_to_scratch_from_int64_rank1
        procedure :: allocate_and_copy_to_scratch_from_int64_rank2 => allocate_and_copy_to_scratch_from_int64_rank2
        procedure :: allocate_and_copy_to_scratch_from_int64_rank3 => allocate_and_copy_to_scratch_from_int64_rank3
        procedure :: allocate_and_copy_to_scratch_from_int64_rank4 => allocate_and_copy_to_scratch_from_int64_rank4
        procedure :: allocate_and_copy_to_scratch_from_int64_rank5 => allocate_and_copy_to_scratch_from_int64_rank5
        procedure :: allocate_and_copy_to_scratch_from_int32_rank0 => allocate_and_copy_to_scratch_from_int32_rank0
        procedure :: allocate_and_copy_to_scratch_from_int32_rank1 => allocate_and_copy_to_scratch_from_int32_rank1
        procedure :: allocate_and_copy_to_scratch_from_int32_rank2 => allocate_and_copy_to_scratch_from_int32_rank2
        procedure :: allocate_and_copy_to_scratch_from_int32_rank3 => allocate_and_copy_to_scratch_from_int32_rank3
        procedure :: allocate_and_copy_to_scratch_from_int32_rank4 => allocate_and_copy_to_scratch_from_int32_rank4
        procedure :: allocate_and_copy_to_scratch_from_int32_rank5 => allocate_and_copy_to_scratch_from_int32_rank5
        procedure :: allocate_and_copy_to_scratch_from_int16_rank0 => allocate_and_copy_to_scratch_from_int16_rank0
        procedure :: allocate_and_copy_to_scratch_from_int16_rank1 => allocate_and_copy_to_scratch_from_int16_rank1
        procedure :: allocate_and_copy_to_scratch_from_int16_rank2 => allocate_and_copy_to_scratch_from_int16_rank2
        procedure :: allocate_and_copy_to_scratch_from_int16_rank3 => allocate_and_copy_to_scratch_from_int16_rank3
        procedure :: allocate_and_copy_to_scratch_from_int16_rank4 => allocate_and_copy_to_scratch_from_int16_rank4
        procedure :: allocate_and_copy_to_scratch_from_int16_rank5 => allocate_and_copy_to_scratch_from_int16_rank5
        procedure :: allocate_and_copy_to_scratch_from_int8_rank0 => allocate_and_copy_to_scratch_from_int8_rank0
        procedure :: allocate_and_copy_to_scratch_from_int8_rank1 => allocate_and_copy_to_scratch_from_int8_rank1
        procedure :: allocate_and_copy_to_scratch_from_int8_rank2 => allocate_and_copy_to_scratch_from_int8_rank2
        procedure :: allocate_and_copy_to_scratch_from_int8_rank3 => allocate_and_copy_to_scratch_from_int8_rank3
        procedure :: allocate_and_copy_to_scratch_from_int8_rank4 => allocate_and_copy_to_scratch_from_int8_rank4
        procedure :: allocate_and_copy_to_scratch_from_int8_rank5 => allocate_and_copy_to_scratch_from_int8_rank5
        procedure :: copy_to_scratch_from_tensor => copy_to_scratch_from_tensor
        procedure :: copy_to_scratch_from_complex128_rank0 => copy_to_scratch_from_complex128_rank0
        procedure :: copy_to_scratch_from_complex128_rank1 => copy_to_scratch_from_complex128_rank1
        procedure :: copy_to_scratch_from_complex128_rank2 => copy_to_scratch_from_complex128_rank2
        procedure :: copy_to_scratch_from_complex128_rank3 => copy_to_scratch_from_complex128_rank3
        procedure :: copy_to_scratch_from_complex128_rank4 => copy_to_scratch_from_complex128_rank4
        procedure :: copy_to_scratch_from_complex128_rank5 => copy_to_scratch_from_complex128_rank5
        procedure :: copy_to_scratch_from_complex64_rank0 => copy_to_scratch_from_complex64_rank0
        procedure :: copy_to_scratch_from_complex64_rank1 => copy_to_scratch_from_complex64_rank1
        procedure :: copy_to_scratch_from_complex64_rank2 => copy_to_scratch_from_complex64_rank2
        procedure :: copy_to_scratch_from_complex64_rank3 => copy_to_scratch_from_complex64_rank3
        procedure :: copy_to_scratch_from_complex64_rank4 => copy_to_scratch_from_complex64_rank4
        procedure :: copy_to_scratch_from_complex64_rank5 => copy_to_scratch_from_complex64_rank5
        procedure :: copy_to_scratch_from_real64_rank0 => copy_to_scratch_from_real64_rank0
        procedure :: copy_to_scratch_from_real64_rank1 => copy_to_scratch_from_real64_rank1
        procedure :: copy_to_scratch_from_real64_rank2 => copy_to_scratch_from_real64_rank2
        procedure :: copy_to_scratch_from_real64_rank3 => copy_to_scratch_from_real64_rank3
        procedure :: copy_to_scratch_from_real64_rank4 => copy_to_scratch_from_real64_rank4
        procedure :: copy_to_scratch_from_real64_rank5 => copy_to_scratch_from_real64_rank5
        procedure :: copy_to_scratch_from_real32_rank0 => copy_to_scratch_from_real32_rank0
        procedure :: copy_to_scratch_from_real32_rank1 => copy_to_scratch_from_real32_rank1
        procedure :: copy_to_scratch_from_real32_rank2 => copy_to_scratch_from_real32_rank2
        procedure :: copy_to_scratch_from_real32_rank3 => copy_to_scratch_from_real32_rank3
        procedure :: copy_to_scratch_from_real32_rank4 => copy_to_scratch_from_real32_rank4
        procedure :: copy_to_scratch_from_real32_rank5 => copy_to_scratch_from_real32_rank5
        procedure :: copy_to_scratch_from_int64_rank0 => copy_to_scratch_from_int64_rank0
        procedure :: copy_to_scratch_from_int64_rank1 => copy_to_scratch_from_int64_rank1
        procedure :: copy_to_scratch_from_int64_rank2 => copy_to_scratch_from_int64_rank2
        procedure :: copy_to_scratch_from_int64_rank3 => copy_to_scratch_from_int64_rank3
        procedure :: copy_to_scratch_from_int64_rank4 => copy_to_scratch_from_int64_rank4
        procedure :: copy_to_scratch_from_int64_rank5 => copy_to_scratch_from_int64_rank5
        procedure :: copy_to_scratch_from_int32_rank0 => copy_to_scratch_from_int32_rank0
        procedure :: copy_to_scratch_from_int32_rank1 => copy_to_scratch_from_int32_rank1
        procedure :: copy_to_scratch_from_int32_rank2 => copy_to_scratch_from_int32_rank2
        procedure :: copy_to_scratch_from_int32_rank3 => copy_to_scratch_from_int32_rank3
        procedure :: copy_to_scratch_from_int32_rank4 => copy_to_scratch_from_int32_rank4
        procedure :: copy_to_scratch_from_int32_rank5 => copy_to_scratch_from_int32_rank5
        procedure :: copy_to_scratch_from_int16_rank0 => copy_to_scratch_from_int16_rank0
        procedure :: copy_to_scratch_from_int16_rank1 => copy_to_scratch_from_int16_rank1
        procedure :: copy_to_scratch_from_int16_rank2 => copy_to_scratch_from_int16_rank2
        procedure :: copy_to_scratch_from_int16_rank3 => copy_to_scratch_from_int16_rank3
        procedure :: copy_to_scratch_from_int16_rank4 => copy_to_scratch_from_int16_rank4
        procedure :: copy_to_scratch_from_int16_rank5 => copy_to_scratch_from_int16_rank5
        procedure :: copy_to_scratch_from_int8_rank0 => copy_to_scratch_from_int8_rank0
        procedure :: copy_to_scratch_from_int8_rank1 => copy_to_scratch_from_int8_rank1
        procedure :: copy_to_scratch_from_int8_rank2 => copy_to_scratch_from_int8_rank2
        procedure :: copy_to_scratch_from_int8_rank3 => copy_to_scratch_from_int8_rank3
        procedure :: copy_to_scratch_from_int8_rank4 => copy_to_scratch_from_int8_rank4
        procedure :: copy_to_scratch_from_int8_rank5 => copy_to_scratch_from_int8_rank5
        procedure :: allocate_and_point_to_from_tensor => allocate_and_point_to_from_tensor
        procedure :: allocate_and_point_to_from_complex128_rank0 => allocate_and_point_to_from_complex128_rank0
        procedure :: allocate_and_point_to_from_complex128_rank1 => allocate_and_point_to_from_complex128_rank1
        procedure :: allocate_and_point_to_from_complex128_rank2 => allocate_and_point_to_from_complex128_rank2
        procedure :: allocate_and_point_to_from_complex128_rank3 => allocate_and_point_to_from_complex128_rank3
        procedure :: allocate_and_point_to_from_complex128_rank4 => allocate_and_point_to_from_complex128_rank4
        procedure :: allocate_and_point_to_from_complex128_rank5 => allocate_and_point_to_from_complex128_rank5
        procedure :: allocate_and_point_to_from_complex64_rank0 => allocate_and_point_to_from_complex64_rank0
        procedure :: allocate_and_point_to_from_complex64_rank1 => allocate_and_point_to_from_complex64_rank1
        procedure :: allocate_and_point_to_from_complex64_rank2 => allocate_and_point_to_from_complex64_rank2
        procedure :: allocate_and_point_to_from_complex64_rank3 => allocate_and_point_to_from_complex64_rank3
        procedure :: allocate_and_point_to_from_complex64_rank4 => allocate_and_point_to_from_complex64_rank4
        procedure :: allocate_and_point_to_from_complex64_rank5 => allocate_and_point_to_from_complex64_rank5
        procedure :: allocate_and_point_to_from_real64_rank0 => allocate_and_point_to_from_real64_rank0
        procedure :: allocate_and_point_to_from_real64_rank1 => allocate_and_point_to_from_real64_rank1
        procedure :: allocate_and_point_to_from_real64_rank2 => allocate_and_point_to_from_real64_rank2
        procedure :: allocate_and_point_to_from_real64_rank3 => allocate_and_point_to_from_real64_rank3
        procedure :: allocate_and_point_to_from_real64_rank4 => allocate_and_point_to_from_real64_rank4
        procedure :: allocate_and_point_to_from_real64_rank5 => allocate_and_point_to_from_real64_rank5
        procedure :: allocate_and_point_to_from_real32_rank0 => allocate_and_point_to_from_real32_rank0
        procedure :: allocate_and_point_to_from_real32_rank1 => allocate_and_point_to_from_real32_rank1
        procedure :: allocate_and_point_to_from_real32_rank2 => allocate_and_point_to_from_real32_rank2
        procedure :: allocate_and_point_to_from_real32_rank3 => allocate_and_point_to_from_real32_rank3
        procedure :: allocate_and_point_to_from_real32_rank4 => allocate_and_point_to_from_real32_rank4
        procedure :: allocate_and_point_to_from_real32_rank5 => allocate_and_point_to_from_real32_rank5
        procedure :: allocate_and_point_to_from_int64_rank0 => allocate_and_point_to_from_int64_rank0
        procedure :: allocate_and_point_to_from_int64_rank1 => allocate_and_point_to_from_int64_rank1
        procedure :: allocate_and_point_to_from_int64_rank2 => allocate_and_point_to_from_int64_rank2
        procedure :: allocate_and_point_to_from_int64_rank3 => allocate_and_point_to_from_int64_rank3
        procedure :: allocate_and_point_to_from_int64_rank4 => allocate_and_point_to_from_int64_rank4
        procedure :: allocate_and_point_to_from_int64_rank5 => allocate_and_point_to_from_int64_rank5
        procedure :: allocate_and_point_to_from_int32_rank0 => allocate_and_point_to_from_int32_rank0
        procedure :: allocate_and_point_to_from_int32_rank1 => allocate_and_point_to_from_int32_rank1
        procedure :: allocate_and_point_to_from_int32_rank2 => allocate_and_point_to_from_int32_rank2
        procedure :: allocate_and_point_to_from_int32_rank3 => allocate_and_point_to_from_int32_rank3
        procedure :: allocate_and_point_to_from_int32_rank4 => allocate_and_point_to_from_int32_rank4
        procedure :: allocate_and_point_to_from_int32_rank5 => allocate_and_point_to_from_int32_rank5
        procedure :: allocate_and_point_to_from_int16_rank0 => allocate_and_point_to_from_int16_rank0
        procedure :: allocate_and_point_to_from_int16_rank1 => allocate_and_point_to_from_int16_rank1
        procedure :: allocate_and_point_to_from_int16_rank2 => allocate_and_point_to_from_int16_rank2
        procedure :: allocate_and_point_to_from_int16_rank3 => allocate_and_point_to_from_int16_rank3
        procedure :: allocate_and_point_to_from_int16_rank4 => allocate_and_point_to_from_int16_rank4
        procedure :: allocate_and_point_to_from_int16_rank5 => allocate_and_point_to_from_int16_rank5
        procedure :: allocate_and_point_to_from_int8_rank0 => allocate_and_point_to_from_int8_rank0
        procedure :: allocate_and_point_to_from_int8_rank1 => allocate_and_point_to_from_int8_rank1
        procedure :: allocate_and_point_to_from_int8_rank2 => allocate_and_point_to_from_int8_rank2
        procedure :: allocate_and_point_to_from_int8_rank3 => allocate_and_point_to_from_int8_rank3
        procedure :: allocate_and_point_to_from_int8_rank4 => allocate_and_point_to_from_int8_rank4
        procedure :: allocate_and_point_to_from_int8_rank5 => allocate_and_point_to_from_int8_rank5
        procedure :: point_to_from_tensor => point_to_from_tensor
        procedure :: point_to_from_complex128_rank0 => point_to_from_complex128_rank0
        procedure :: point_to_from_complex128_rank1 => point_to_from_complex128_rank1
        procedure :: point_to_from_complex128_rank2 => point_to_from_complex128_rank2
        procedure :: point_to_from_complex128_rank3 => point_to_from_complex128_rank3
        procedure :: point_to_from_complex128_rank4 => point_to_from_complex128_rank4
        procedure :: point_to_from_complex128_rank5 => point_to_from_complex128_rank5
        procedure :: point_to_from_complex64_rank0 => point_to_from_complex64_rank0
        procedure :: point_to_from_complex64_rank1 => point_to_from_complex64_rank1
        procedure :: point_to_from_complex64_rank2 => point_to_from_complex64_rank2
        procedure :: point_to_from_complex64_rank3 => point_to_from_complex64_rank3
        procedure :: point_to_from_complex64_rank4 => point_to_from_complex64_rank4
        procedure :: point_to_from_complex64_rank5 => point_to_from_complex64_rank5
        procedure :: point_to_from_real64_rank0 => point_to_from_real64_rank0
        procedure :: point_to_from_real64_rank1 => point_to_from_real64_rank1
        procedure :: point_to_from_real64_rank2 => point_to_from_real64_rank2
        procedure :: point_to_from_real64_rank3 => point_to_from_real64_rank3
        procedure :: point_to_from_real64_rank4 => point_to_from_real64_rank4
        procedure :: point_to_from_real64_rank5 => point_to_from_real64_rank5
        procedure :: point_to_from_real32_rank0 => point_to_from_real32_rank0
        procedure :: point_to_from_real32_rank1 => point_to_from_real32_rank1
        procedure :: point_to_from_real32_rank2 => point_to_from_real32_rank2
        procedure :: point_to_from_real32_rank3 => point_to_from_real32_rank3
        procedure :: point_to_from_real32_rank4 => point_to_from_real32_rank4
        procedure :: point_to_from_real32_rank5 => point_to_from_real32_rank5
        procedure :: point_to_from_int64_rank0 => point_to_from_int64_rank0
        procedure :: point_to_from_int64_rank1 => point_to_from_int64_rank1
        procedure :: point_to_from_int64_rank2 => point_to_from_int64_rank2
        procedure :: point_to_from_int64_rank3 => point_to_from_int64_rank3
        procedure :: point_to_from_int64_rank4 => point_to_from_int64_rank4
        procedure :: point_to_from_int64_rank5 => point_to_from_int64_rank5
        procedure :: point_to_from_int32_rank0 => point_to_from_int32_rank0
        procedure :: point_to_from_int32_rank1 => point_to_from_int32_rank1
        procedure :: point_to_from_int32_rank2 => point_to_from_int32_rank2
        procedure :: point_to_from_int32_rank3 => point_to_from_int32_rank3
        procedure :: point_to_from_int32_rank4 => point_to_from_int32_rank4
        procedure :: point_to_from_int32_rank5 => point_to_from_int32_rank5
        procedure :: point_to_from_int16_rank0 => point_to_from_int16_rank0
        procedure :: point_to_from_int16_rank1 => point_to_from_int16_rank1
        procedure :: point_to_from_int16_rank2 => point_to_from_int16_rank2
        procedure :: point_to_from_int16_rank3 => point_to_from_int16_rank3
        procedure :: point_to_from_int16_rank4 => point_to_from_int16_rank4
        procedure :: point_to_from_int16_rank5 => point_to_from_int16_rank5
        procedure :: point_to_from_int8_rank0 => point_to_from_int8_rank0
        procedure :: point_to_from_int8_rank1 => point_to_from_int8_rank1
        procedure :: point_to_from_int8_rank2 => point_to_from_int8_rank2
        procedure :: point_to_from_int8_rank3 => point_to_from_int8_rank3
        procedure :: point_to_from_int8_rank4 => point_to_from_int8_rank4
        procedure :: point_to_from_int8_rank5 => point_to_from_int8_rank5
        procedure :: cleanup => cleanup
        procedure :: clear => clear
    end type tensor_builder

    interface tensor_builder
        module procedure constructor_empty
        module procedure constructor
    end interface tensor_builder
contains
    function constructor_empty() result(this)
        type(tensor_builder) :: this

        call this%clear()
    end function constructor_empty

    function constructor(builder) result(this)
        class(storage_builder), intent(in) :: builder
        type(tensor_builder) :: this

        this = tensor_builder()
        this%builder = builder
    end function constructor

    subroutine allocate_and_create_tscalar(this, atensor, datatype, initialize)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: atensor
        integer, intent(in) :: datatype
        logical, intent(in) :: initialize

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(atensor, dims)
        call this%create(atensor, datatype, initialize)
    end subroutine allocate_and_create_tscalar

    subroutine create_tscalar(this, atensor, datatype, initialize)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: atensor
        integer, intent(in) :: datatype
        logical, intent(in) :: initialize

        type(tensor_datatype_helper) :: helper
        integer(int64) :: number_of_bytes
        integer(int64), dimension(0) :: dims

        call atensor%cleanup()
        call atensor%setup(datatype=datatype, dims=dims)
        number_of_bytes = atensor%number_of_elements*helper%get_datatype_size(atensor%datatype)
        call this%builder%allocate_and_create(atensor%storage, number_of_bytes, initialize)
    end subroutine create_tscalar

    subroutine allocate_and_create_tscalar_in_scratch(this, atensor, scratch, datatype, initialize)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: atensor
        type(scratch_buffer), intent(inout) :: scratch
        integer, intent(in) :: datatype
        logical, intent(in), optional :: initialize

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(atensor, dims)
        call this%create_in_scratch(atensor, scratch, datatype, initialize)
    end subroutine allocate_and_create_tscalar_in_scratch

    subroutine create_tscalar_in_scratch(this, atensor, scratch, datatype, initialize)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: atensor
        type(scratch_buffer), intent(inout) :: scratch
        integer, intent(in) :: datatype
        logical, intent(in), optional :: initialize

        type(tensor_datatype_helper) :: helper
        integer(int64) :: number_of_bytes
        integer(int64), dimension(0) :: dims

        call atensor%setup(datatype=datatype, dims=dims)
        number_of_bytes = atensor%number_of_elements*helper%get_datatype_size(atensor%datatype)
        call this%builder%allocate_and_create_in_scratch(atensor%storage, scratch, number_of_bytes, initialize)
    end subroutine create_tscalar_in_scratch

    subroutine allocate_and_create_from_dims(this, atensor, datatype, dims, initialize)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: atensor
        integer, intent(in) :: datatype
        integer(int64), dimension(:), intent(in) :: dims
        logical, intent(in) :: initialize

        call allocate_tensor_object(atensor, dims)
        call this%create(atensor, datatype, dims, initialize)
    end subroutine allocate_and_create_from_dims

    subroutine allocate_and_create_from_dims_integer(this, atensor, datatype, dims, initialize)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: atensor
        integer, intent(in) :: datatype
        integer, dimension(:), intent(in) :: dims
        logical, intent(in) :: initialize

        call this%allocate_and_create(atensor, datatype, int(dims, int64), initialize)
    end subroutine allocate_and_create_from_dims_integer

    subroutine create_from_dims(this, atensor, datatype, dims, initialize)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: atensor
        integer, intent(in) :: datatype
        integer(int64), dimension(:), intent(in) :: dims
        logical, intent(in) :: initialize

        type(tensor_datatype_helper) :: helper
        integer(int64) :: number_of_bytes

        call atensor%cleanup()
        call atensor%setup(datatype=datatype, dims=dims)
        number_of_bytes = atensor%number_of_elements*helper%get_datatype_size(atensor%datatype)
        call this%builder%allocate_and_create(atensor%storage, number_of_bytes, initialize)
    end subroutine create_from_dims

    subroutine create_from_dims_integer(this, atensor, datatype, dims, initialize)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: atensor
        integer, intent(in) :: datatype
        integer, dimension(:), intent(in) :: dims
        logical, intent(in) :: initialize

        call this%create(atensor, datatype, int(dims, int64), initialize)
    end subroutine create_from_dims_integer

    subroutine allocate_and_create_in_scratch_from_dims(this, atensor, scratch, datatype, dims, initialize)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: atensor
        type(scratch_buffer), intent(inout) :: scratch
        integer, intent(in) :: datatype
        integer(int64), dimension(:), intent(in) :: dims
        logical, intent(in), optional :: initialize

        call allocate_tensor_object(atensor, dims)
        call this%create_in_scratch(atensor, scratch, datatype, dims, initialize)
    end subroutine allocate_and_create_in_scratch_from_dims

    subroutine allocate_and_create_in_scratch_from_dims_integer(this, atensor, scratch, datatype, dims, initialize)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: atensor
        type(scratch_buffer), intent(inout) :: scratch
        integer, intent(in) :: datatype
        integer, dimension(:), intent(in) :: dims
        logical, intent(in), optional :: initialize

        call this%allocate_and_create_in_scratch(atensor, scratch, datatype, int(dims, int64), initialize)
    end subroutine allocate_and_create_in_scratch_from_dims_integer

    subroutine create_in_scratch_from_dims(this, atensor, scratch, datatype, dims, initialize)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: atensor
        type(scratch_buffer), intent(inout) :: scratch
        integer, intent(in) :: datatype
        integer(int64), dimension(:), intent(in) :: dims
        logical, intent(in), optional :: initialize

        type(tensor_datatype_helper) :: helper
        integer(int64) :: number_of_bytes

        call atensor%setup(datatype=datatype, dims=dims)
        number_of_bytes = atensor%number_of_elements*helper%get_datatype_size(atensor%datatype)
        call this%builder%allocate_and_create_in_scratch(atensor%storage, scratch, number_of_bytes, initialize)
    end subroutine create_in_scratch_from_dims

    subroutine create_in_scratch_from_dims_integer(this, atensor, scratch, datatype, dims, initialize)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: atensor
        type(scratch_buffer), intent(inout) :: scratch
        integer, intent(in) :: datatype
        integer, dimension(:), intent(in) :: dims
        logical, intent(in), optional :: initialize

        call this%create_in_scratch(atensor, scratch, datatype, int(dims, int64), initialize)
    end subroutine create_in_scratch_from_dims_integer

    subroutine allocate_and_copy_from_tensor(this, dst, src, astream)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        class(tensor), intent(in) :: src
        type(stream), intent(in), optional :: astream

        call allocate_tensor_object(dst, src%dims)
        call this%copy(dst, src, astream)
    end subroutine allocate_and_copy_from_tensor

    subroutine copy_from_tensor(this, dst, src, astream)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        type(stream), intent(in), optional :: astream

        call dst%setup(datatype=src%datatype, dims=src%dims)
        call this%builder%allocate_and_copy(dst%storage, src%storage, astream)
    end subroutine copy_from_tensor

    subroutine allocate_and_copy_from_complex128_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_complex128_rank0

    subroutine copy_from_complex128_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real64), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("complex128"), dims=dims)
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_complex128_rank0

    subroutine allocate_and_copy_from_complex128_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_complex128_rank1

    subroutine copy_from_complex128_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real64), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex128"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_complex128_rank1

    subroutine allocate_and_copy_from_complex128_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_complex128_rank2

    subroutine copy_from_complex128_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real64), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex128"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_complex128_rank2

    subroutine allocate_and_copy_from_complex128_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_complex128_rank3

    subroutine copy_from_complex128_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real64), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex128"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_complex128_rank3

    subroutine allocate_and_copy_from_complex128_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_complex128_rank4

    subroutine copy_from_complex128_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real64), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex128"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_complex128_rank4

    subroutine allocate_and_copy_from_complex128_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_complex128_rank5

    subroutine copy_from_complex128_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real64), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex128"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_complex128_rank5

    subroutine allocate_and_copy_from_complex64_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_complex64_rank0

    subroutine copy_from_complex64_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real32), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("complex64"), dims=dims)
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_complex64_rank0

    subroutine allocate_and_copy_from_complex64_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_complex64_rank1

    subroutine copy_from_complex64_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real32), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_complex64_rank1

    subroutine allocate_and_copy_from_complex64_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_complex64_rank2

    subroutine copy_from_complex64_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real32), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_complex64_rank2

    subroutine allocate_and_copy_from_complex64_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_complex64_rank3

    subroutine copy_from_complex64_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real32), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_complex64_rank3

    subroutine allocate_and_copy_from_complex64_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_complex64_rank4

    subroutine copy_from_complex64_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real32), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_complex64_rank4

    subroutine allocate_and_copy_from_complex64_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_complex64_rank5

    subroutine copy_from_complex64_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real32), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_complex64_rank5

    subroutine allocate_and_copy_from_real64_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_real64_rank0

    subroutine copy_from_real64_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real64), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("real64"), dims=dims)
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_real64_rank0

    subroutine allocate_and_copy_from_real64_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_real64_rank1

    subroutine copy_from_real64_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real64), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_real64_rank1

    subroutine allocate_and_copy_from_real64_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_real64_rank2

    subroutine copy_from_real64_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real64), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_real64_rank2

    subroutine allocate_and_copy_from_real64_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_real64_rank3

    subroutine copy_from_real64_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real64), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_real64_rank3

    subroutine allocate_and_copy_from_real64_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_real64_rank4

    subroutine copy_from_real64_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real64), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_real64_rank4

    subroutine allocate_and_copy_from_real64_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_real64_rank5

    subroutine copy_from_real64_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real64), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_real64_rank5

    subroutine allocate_and_copy_from_real32_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_real32_rank0

    subroutine copy_from_real32_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real32), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("real32"), dims=dims)
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_real32_rank0

    subroutine allocate_and_copy_from_real32_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_real32_rank1

    subroutine copy_from_real32_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real32), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_real32_rank1

    subroutine allocate_and_copy_from_real32_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_real32_rank2

    subroutine copy_from_real32_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real32), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_real32_rank2

    subroutine allocate_and_copy_from_real32_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_real32_rank3

    subroutine copy_from_real32_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real32), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_real32_rank3

    subroutine allocate_and_copy_from_real32_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_real32_rank4

    subroutine copy_from_real32_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real32), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_real32_rank4

    subroutine allocate_and_copy_from_real32_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_real32_rank5

    subroutine copy_from_real32_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real32), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_real32_rank5

    subroutine allocate_and_copy_from_int64_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int64_rank0

    subroutine copy_from_int64_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int64), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("int64"), dims=dims)
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int64_rank0

    subroutine allocate_and_copy_from_int64_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int64_rank1

    subroutine copy_from_int64_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int64), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int64_rank1

    subroutine allocate_and_copy_from_int64_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int64_rank2

    subroutine copy_from_int64_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int64), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int64_rank2

    subroutine allocate_and_copy_from_int64_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int64_rank3

    subroutine copy_from_int64_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int64), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int64_rank3

    subroutine allocate_and_copy_from_int64_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int64_rank4

    subroutine copy_from_int64_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int64), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int64_rank4

    subroutine allocate_and_copy_from_int64_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int64_rank5

    subroutine copy_from_int64_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int64), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int64_rank5

    subroutine allocate_and_copy_from_int32_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int32_rank0

    subroutine copy_from_int32_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int32), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("int32"), dims=dims)
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int32_rank0

    subroutine allocate_and_copy_from_int32_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int32_rank1

    subroutine copy_from_int32_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int32), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int32_rank1

    subroutine allocate_and_copy_from_int32_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int32_rank2

    subroutine copy_from_int32_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int32), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int32_rank2

    subroutine allocate_and_copy_from_int32_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int32_rank3

    subroutine copy_from_int32_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int32), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int32_rank3

    subroutine allocate_and_copy_from_int32_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int32_rank4

    subroutine copy_from_int32_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int32), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int32_rank4

    subroutine allocate_and_copy_from_int32_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int32_rank5

    subroutine copy_from_int32_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int32), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int32_rank5

    subroutine allocate_and_copy_from_int16_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int16_rank0

    subroutine copy_from_int16_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int16), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("int16"), dims=dims)
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int16_rank0

    subroutine allocate_and_copy_from_int16_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int16_rank1

    subroutine copy_from_int16_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int16), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int16"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int16_rank1

    subroutine allocate_and_copy_from_int16_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int16_rank2

    subroutine copy_from_int16_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int16), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int16"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int16_rank2

    subroutine allocate_and_copy_from_int16_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int16_rank3

    subroutine copy_from_int16_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int16), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int16"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int16_rank3

    subroutine allocate_and_copy_from_int16_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int16_rank4

    subroutine copy_from_int16_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int16), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int16"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int16_rank4

    subroutine allocate_and_copy_from_int16_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int16_rank5

    subroutine copy_from_int16_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int16), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int16"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int16_rank5

    subroutine allocate_and_copy_from_int8_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int8_rank0

    subroutine copy_from_int8_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int8), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("int8"), dims=dims)
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int8_rank0

    subroutine allocate_and_copy_from_int8_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int8_rank1

    subroutine copy_from_int8_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int8), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int8"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int8_rank1

    subroutine allocate_and_copy_from_int8_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int8_rank2

    subroutine copy_from_int8_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int8), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int8"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int8_rank2

    subroutine allocate_and_copy_from_int8_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int8_rank3

    subroutine copy_from_int8_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int8), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int8"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int8_rank3

    subroutine allocate_and_copy_from_int8_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int8_rank4

    subroutine copy_from_int8_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int8), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int8"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int8_rank4

    subroutine allocate_and_copy_from_int8_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy(dst, src)
    end subroutine allocate_and_copy_from_int8_rank5

    subroutine copy_from_int8_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int8), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int8"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy(dst%storage, src)
    end subroutine copy_from_int8_rank5

    subroutine allocate_and_copy_to_scratch_from_tensor(this, dst, scratch, src, astream)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        class(tensor), intent(in) :: src
        type(stream), intent(in), optional :: astream

        call allocate_tensor_object(dst, src%dims)
        call this%copy_to_scratch(dst, scratch, src, astream)
    end subroutine allocate_and_copy_to_scratch_from_tensor

    subroutine copy_to_scratch_from_tensor(this, dst, scratch, src, astream)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        class(tensor), intent(in) :: src
        type(stream), intent(in), optional :: astream

        call dst%setup(datatype=src%datatype, dims=src%dims)
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src%storage, astream)
    end subroutine copy_to_scratch_from_tensor

    subroutine allocate_and_copy_to_scratch_from_complex128_rank0(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_complex128_rank0

    subroutine copy_to_scratch_from_complex128_rank0(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("complex128"), dims=dims)
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_complex128_rank0

    subroutine allocate_and_copy_to_scratch_from_complex128_rank1(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_complex128_rank1

    subroutine copy_to_scratch_from_complex128_rank1(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex128"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_complex128_rank1

    subroutine allocate_and_copy_to_scratch_from_complex128_rank2(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_complex128_rank2

    subroutine copy_to_scratch_from_complex128_rank2(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex128"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_complex128_rank2

    subroutine allocate_and_copy_to_scratch_from_complex128_rank3(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_complex128_rank3

    subroutine copy_to_scratch_from_complex128_rank3(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex128"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_complex128_rank3

    subroutine allocate_and_copy_to_scratch_from_complex128_rank4(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_complex128_rank4

    subroutine copy_to_scratch_from_complex128_rank4(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex128"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_complex128_rank4

    subroutine allocate_and_copy_to_scratch_from_complex128_rank5(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_complex128_rank5

    subroutine copy_to_scratch_from_complex128_rank5(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex128"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_complex128_rank5

    subroutine allocate_and_copy_to_scratch_from_complex64_rank0(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_complex64_rank0

    subroutine copy_to_scratch_from_complex64_rank0(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("complex64"), dims=dims)
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_complex64_rank0

    subroutine allocate_and_copy_to_scratch_from_complex64_rank1(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_complex64_rank1

    subroutine copy_to_scratch_from_complex64_rank1(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_complex64_rank1

    subroutine allocate_and_copy_to_scratch_from_complex64_rank2(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_complex64_rank2

    subroutine copy_to_scratch_from_complex64_rank2(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_complex64_rank2

    subroutine allocate_and_copy_to_scratch_from_complex64_rank3(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_complex64_rank3

    subroutine copy_to_scratch_from_complex64_rank3(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_complex64_rank3

    subroutine allocate_and_copy_to_scratch_from_complex64_rank4(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_complex64_rank4

    subroutine copy_to_scratch_from_complex64_rank4(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_complex64_rank4

    subroutine allocate_and_copy_to_scratch_from_complex64_rank5(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_complex64_rank5

    subroutine copy_to_scratch_from_complex64_rank5(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_complex64_rank5

    subroutine allocate_and_copy_to_scratch_from_real64_rank0(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_real64_rank0

    subroutine copy_to_scratch_from_real64_rank0(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("real64"), dims=dims)
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_real64_rank0

    subroutine allocate_and_copy_to_scratch_from_real64_rank1(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_real64_rank1

    subroutine copy_to_scratch_from_real64_rank1(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_real64_rank1

    subroutine allocate_and_copy_to_scratch_from_real64_rank2(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_real64_rank2

    subroutine copy_to_scratch_from_real64_rank2(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_real64_rank2

    subroutine allocate_and_copy_to_scratch_from_real64_rank3(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_real64_rank3

    subroutine copy_to_scratch_from_real64_rank3(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_real64_rank3

    subroutine allocate_and_copy_to_scratch_from_real64_rank4(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_real64_rank4

    subroutine copy_to_scratch_from_real64_rank4(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_real64_rank4

    subroutine allocate_and_copy_to_scratch_from_real64_rank5(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_real64_rank5

    subroutine copy_to_scratch_from_real64_rank5(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_real64_rank5

    subroutine allocate_and_copy_to_scratch_from_real32_rank0(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_real32_rank0

    subroutine copy_to_scratch_from_real32_rank0(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("real32"), dims=dims)
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_real32_rank0

    subroutine allocate_and_copy_to_scratch_from_real32_rank1(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_real32_rank1

    subroutine copy_to_scratch_from_real32_rank1(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_real32_rank1

    subroutine allocate_and_copy_to_scratch_from_real32_rank2(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_real32_rank2

    subroutine copy_to_scratch_from_real32_rank2(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_real32_rank2

    subroutine allocate_and_copy_to_scratch_from_real32_rank3(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_real32_rank3

    subroutine copy_to_scratch_from_real32_rank3(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_real32_rank3

    subroutine allocate_and_copy_to_scratch_from_real32_rank4(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_real32_rank4

    subroutine copy_to_scratch_from_real32_rank4(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_real32_rank4

    subroutine allocate_and_copy_to_scratch_from_real32_rank5(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_real32_rank5

    subroutine copy_to_scratch_from_real32_rank5(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_real32_rank5

    subroutine allocate_and_copy_to_scratch_from_int64_rank0(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int64_rank0

    subroutine copy_to_scratch_from_int64_rank0(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("int64"), dims=dims)
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int64_rank0

    subroutine allocate_and_copy_to_scratch_from_int64_rank1(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int64_rank1

    subroutine copy_to_scratch_from_int64_rank1(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int64_rank1

    subroutine allocate_and_copy_to_scratch_from_int64_rank2(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int64_rank2

    subroutine copy_to_scratch_from_int64_rank2(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int64_rank2

    subroutine allocate_and_copy_to_scratch_from_int64_rank3(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int64_rank3

    subroutine copy_to_scratch_from_int64_rank3(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int64_rank3

    subroutine allocate_and_copy_to_scratch_from_int64_rank4(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int64_rank4

    subroutine copy_to_scratch_from_int64_rank4(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int64_rank4

    subroutine allocate_and_copy_to_scratch_from_int64_rank5(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int64_rank5

    subroutine copy_to_scratch_from_int64_rank5(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int64_rank5

    subroutine allocate_and_copy_to_scratch_from_int32_rank0(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int32_rank0

    subroutine copy_to_scratch_from_int32_rank0(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("int32"), dims=dims)
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int32_rank0

    subroutine allocate_and_copy_to_scratch_from_int32_rank1(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int32_rank1

    subroutine copy_to_scratch_from_int32_rank1(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int32_rank1

    subroutine allocate_and_copy_to_scratch_from_int32_rank2(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int32_rank2

    subroutine copy_to_scratch_from_int32_rank2(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int32_rank2

    subroutine allocate_and_copy_to_scratch_from_int32_rank3(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int32_rank3

    subroutine copy_to_scratch_from_int32_rank3(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int32_rank3

    subroutine allocate_and_copy_to_scratch_from_int32_rank4(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int32_rank4

    subroutine copy_to_scratch_from_int32_rank4(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int32_rank4

    subroutine allocate_and_copy_to_scratch_from_int32_rank5(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int32_rank5

    subroutine copy_to_scratch_from_int32_rank5(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int32_rank5

    subroutine allocate_and_copy_to_scratch_from_int16_rank0(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int16_rank0

    subroutine copy_to_scratch_from_int16_rank0(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("int16"), dims=dims)
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int16_rank0

    subroutine allocate_and_copy_to_scratch_from_int16_rank1(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int16_rank1

    subroutine copy_to_scratch_from_int16_rank1(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int16"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int16_rank1

    subroutine allocate_and_copy_to_scratch_from_int16_rank2(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int16_rank2

    subroutine copy_to_scratch_from_int16_rank2(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int16"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int16_rank2

    subroutine allocate_and_copy_to_scratch_from_int16_rank3(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int16_rank3

    subroutine copy_to_scratch_from_int16_rank3(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int16"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int16_rank3

    subroutine allocate_and_copy_to_scratch_from_int16_rank4(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int16_rank4

    subroutine copy_to_scratch_from_int16_rank4(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int16"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int16_rank4

    subroutine allocate_and_copy_to_scratch_from_int16_rank5(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int16_rank5

    subroutine copy_to_scratch_from_int16_rank5(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int16"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int16_rank5

    subroutine allocate_and_copy_to_scratch_from_int8_rank0(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int8_rank0

    subroutine copy_to_scratch_from_int8_rank0(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("int8"), dims=dims)
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int8_rank0

    subroutine allocate_and_copy_to_scratch_from_int8_rank1(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int8_rank1

    subroutine copy_to_scratch_from_int8_rank1(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int8"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int8_rank1

    subroutine allocate_and_copy_to_scratch_from_int8_rank2(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int8_rank2

    subroutine copy_to_scratch_from_int8_rank2(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int8"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int8_rank2

    subroutine allocate_and_copy_to_scratch_from_int8_rank3(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int8_rank3

    subroutine copy_to_scratch_from_int8_rank3(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int8"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int8_rank3

    subroutine allocate_and_copy_to_scratch_from_int8_rank4(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int8_rank4

    subroutine copy_to_scratch_from_int8_rank4(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int8"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int8_rank4

    subroutine allocate_and_copy_to_scratch_from_int8_rank5(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%copy_to_scratch(dst, scratch, src)
    end subroutine allocate_and_copy_to_scratch_from_int8_rank5

    subroutine copy_to_scratch_from_int8_rank5(this, dst, scratch, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int8"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_copy_to_scratch(dst%storage, scratch, src)
    end subroutine copy_to_scratch_from_int8_rank5

    subroutine allocate_and_point_to_from_tensor(this, dst, src, astream)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        class(tensor), intent(in) :: src
        type(stream), intent(in), optional :: astream

        call allocate_tensor_object(dst, src%dims)
        call this%point_to(dst, src, astream)
    end subroutine allocate_and_point_to_from_tensor

    subroutine point_to_from_tensor(this, dst, src, astream)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        type(stream), intent(in), optional :: astream

        call dst%setup(datatype=src%datatype, dims=src%dims)
        call this%builder%allocate_and_point_to(dst%storage, src%storage, astream)
    end subroutine point_to_from_tensor

    subroutine allocate_and_point_to_from_complex128_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_complex128_rank0

    subroutine point_to_from_complex128_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real64), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("complex128"), dims=dims)
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_complex128_rank0

    subroutine allocate_and_point_to_from_complex128_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_complex128_rank1

    subroutine point_to_from_complex128_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real64), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex128"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_complex128_rank1

    subroutine allocate_and_point_to_from_complex128_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_complex128_rank2

    subroutine point_to_from_complex128_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real64), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex128"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_complex128_rank2

    subroutine allocate_and_point_to_from_complex128_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_complex128_rank3

    subroutine point_to_from_complex128_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real64), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex128"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_complex128_rank3

    subroutine allocate_and_point_to_from_complex128_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_complex128_rank4

    subroutine point_to_from_complex128_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real64), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex128"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_complex128_rank4

    subroutine allocate_and_point_to_from_complex128_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_complex128_rank5

    subroutine point_to_from_complex128_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real64), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex128"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_complex128_rank5

    subroutine allocate_and_point_to_from_complex64_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_complex64_rank0

    subroutine point_to_from_complex64_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real32), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("complex64"), dims=dims)
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_complex64_rank0

    subroutine allocate_and_point_to_from_complex64_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_complex64_rank1

    subroutine point_to_from_complex64_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real32), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_complex64_rank1

    subroutine allocate_and_point_to_from_complex64_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_complex64_rank2

    subroutine point_to_from_complex64_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real32), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_complex64_rank2

    subroutine allocate_and_point_to_from_complex64_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_complex64_rank3

    subroutine point_to_from_complex64_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real32), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_complex64_rank3

    subroutine allocate_and_point_to_from_complex64_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_complex64_rank4

    subroutine point_to_from_complex64_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real32), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_complex64_rank4

    subroutine allocate_and_point_to_from_complex64_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_complex64_rank5

    subroutine point_to_from_complex64_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        complex(real32), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("complex64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_complex64_rank5

    subroutine allocate_and_point_to_from_real64_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_real64_rank0

    subroutine point_to_from_real64_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real64), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("real64"), dims=dims)
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_real64_rank0

    subroutine allocate_and_point_to_from_real64_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_real64_rank1

    subroutine point_to_from_real64_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real64), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_real64_rank1

    subroutine allocate_and_point_to_from_real64_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_real64_rank2

    subroutine point_to_from_real64_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real64), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_real64_rank2

    subroutine allocate_and_point_to_from_real64_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_real64_rank3

    subroutine point_to_from_real64_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real64), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_real64_rank3

    subroutine allocate_and_point_to_from_real64_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_real64_rank4

    subroutine point_to_from_real64_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real64), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_real64_rank4

    subroutine allocate_and_point_to_from_real64_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_real64_rank5

    subroutine point_to_from_real64_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real64), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_real64_rank5

    subroutine allocate_and_point_to_from_real32_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_real32_rank0

    subroutine point_to_from_real32_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real32), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("real32"), dims=dims)
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_real32_rank0

    subroutine allocate_and_point_to_from_real32_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_real32_rank1

    subroutine point_to_from_real32_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real32), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_real32_rank1

    subroutine allocate_and_point_to_from_real32_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_real32_rank2

    subroutine point_to_from_real32_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real32), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_real32_rank2

    subroutine allocate_and_point_to_from_real32_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_real32_rank3

    subroutine point_to_from_real32_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real32), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_real32_rank3

    subroutine allocate_and_point_to_from_real32_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_real32_rank4

    subroutine point_to_from_real32_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real32), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_real32_rank4

    subroutine allocate_and_point_to_from_real32_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_real32_rank5

    subroutine point_to_from_real32_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        real(real32), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("real32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_real32_rank5

    subroutine allocate_and_point_to_from_int64_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int64_rank0

    subroutine point_to_from_int64_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int64), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("int64"), dims=dims)
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int64_rank0

    subroutine allocate_and_point_to_from_int64_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int64_rank1

    subroutine point_to_from_int64_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int64), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int64_rank1

    subroutine allocate_and_point_to_from_int64_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int64_rank2

    subroutine point_to_from_int64_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int64), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int64_rank2

    subroutine allocate_and_point_to_from_int64_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int64_rank3

    subroutine point_to_from_int64_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int64), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int64_rank3

    subroutine allocate_and_point_to_from_int64_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int64_rank4

    subroutine point_to_from_int64_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int64), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int64_rank4

    subroutine allocate_and_point_to_from_int64_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int64_rank5

    subroutine point_to_from_int64_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int64), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int64"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int64_rank5

    subroutine allocate_and_point_to_from_int32_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int32_rank0

    subroutine point_to_from_int32_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int32), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("int32"), dims=dims)
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int32_rank0

    subroutine allocate_and_point_to_from_int32_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int32_rank1

    subroutine point_to_from_int32_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int32), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int32_rank1

    subroutine allocate_and_point_to_from_int32_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int32_rank2

    subroutine point_to_from_int32_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int32), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int32_rank2

    subroutine allocate_and_point_to_from_int32_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int32_rank3

    subroutine point_to_from_int32_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int32), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int32_rank3

    subroutine allocate_and_point_to_from_int32_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int32_rank4

    subroutine point_to_from_int32_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int32), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int32_rank4

    subroutine allocate_and_point_to_from_int32_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int32_rank5

    subroutine point_to_from_int32_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int32), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int32"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int32_rank5

    subroutine allocate_and_point_to_from_int16_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int16_rank0

    subroutine point_to_from_int16_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int16), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("int16"), dims=dims)
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int16_rank0

    subroutine allocate_and_point_to_from_int16_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int16_rank1

    subroutine point_to_from_int16_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int16), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int16"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int16_rank1

    subroutine allocate_and_point_to_from_int16_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int16_rank2

    subroutine point_to_from_int16_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int16), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int16"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int16_rank2

    subroutine allocate_and_point_to_from_int16_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int16_rank3

    subroutine point_to_from_int16_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int16), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int16"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int16_rank3

    subroutine allocate_and_point_to_from_int16_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int16_rank4

    subroutine point_to_from_int16_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int16), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int16"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int16_rank4

    subroutine allocate_and_point_to_from_int16_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int16_rank5

    subroutine point_to_from_int16_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int16), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int16"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int16_rank5

    subroutine allocate_and_point_to_from_int8_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), intent(in) :: src

        integer(int64), dimension(0) :: dims

        call allocate_tensor_object(dst, dims)
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int8_rank0

    subroutine point_to_from_int8_rank0(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int8), intent(in) :: src

        type(tensor_datatype_helper) :: helper
        integer(int64), dimension(0) :: dims

        call dst%setup(datatype=helper%get_datatype("int8"), dims=dims)
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int8_rank0

    subroutine allocate_and_point_to_from_int8_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), dimension(:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int8_rank1

    subroutine point_to_from_int8_rank1(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int8), dimension(:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int8"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int8_rank1

    subroutine allocate_and_point_to_from_int8_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), dimension(:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int8_rank2

    subroutine point_to_from_int8_rank2(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int8), dimension(:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int8"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int8_rank2

    subroutine allocate_and_point_to_from_int8_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), dimension(:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int8_rank3

    subroutine point_to_from_int8_rank3(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int8), dimension(:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int8"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int8_rank3

    subroutine allocate_and_point_to_from_int8_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), dimension(:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int8_rank4

    subroutine point_to_from_int8_rank4(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int8), dimension(:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int8"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int8_rank4

    subroutine allocate_and_point_to_from_int8_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), dimension(:,:,:,:,:), intent(in) :: src

        call allocate_tensor_object(dst, shape(src, kind=int64))
        call this%point_to(dst, src)
    end subroutine allocate_and_point_to_from_int8_rank5

    subroutine point_to_from_int8_rank5(this, dst, src)
        class(tensor_builder), intent(in) :: this
        class(tensor), intent(inout) :: dst
        integer(int8), dimension(:,:,:,:,:), intent(in) :: src

        type(tensor_datatype_helper) :: helper

        call dst%setup(datatype=helper%get_datatype("int8"), dims=shape(src, kind=int64))
        call this%builder%allocate_and_point_to(dst%storage, src)
    end subroutine point_to_from_int8_rank5

    subroutine cleanup(this)
        class(tensor_builder), intent(inout) :: this

        call this%builder%cleanup()
        call this%clear()
    end subroutine cleanup

    subroutine clear(this)
        class(tensor_builder), intent(inout) :: this
    end subroutine clear
end module tensor_builder_module
