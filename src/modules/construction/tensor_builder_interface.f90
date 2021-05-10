! Auto-generated. DO NOT MODIFY!
module tensor_builder_interface
    use, intrinsic :: iso_fortran_env, only : &
            int64, &
            real64, &
            real32, &
            int32, &
            int16, &
            int8
    use :: util_api, only : &
            string, &
            dictionary, &
            dictionary_converter
    use :: data_api, only : &
            scratch_buffer, &
            allocate_and_create_storage
    use :: tensor_package_api, only : &
            tensor, &
            tensor_datatype_helper, &
            allocate_tensor_object
    use :: tensor_builder_factory_module, only : &
            create_tensor_builder
    use :: tensor_builder_module, only : &
            tensor_builder

    implicit none
    private

    public :: allocate_and_create_tensor
    public :: create_tensor
    public :: allocate_and_create_tensor_in_scratch
    public :: create_tensor_in_scratch
    public :: allocate_and_copy_tensor
    public :: copy_tensor
    public :: allocate_and_copy_tensor_to_scratch
    public :: copy_tensor_to_scratch
    public :: allocate_and_point_to_tensor
    public :: point_to_tensor

    interface allocate_and_create_tensor
        module procedure allocate_and_create_from_dims
        module procedure allocate_and_create_from_dims_integer
        module procedure allocate_and_create_tscalar
    end interface allocate_and_create_tensor

    interface create_tensor
        module procedure create_from_dims
        module procedure create_from_dims_integer
        module procedure create_tscalar
    end interface create_tensor

    interface allocate_and_create_tensor_in_scratch
        module procedure allocate_and_create_in_scratch_from_dims
        module procedure allocate_and_create_in_scratch_from_dims_integer
        module procedure allocate_and_create_tscalar_in_scratch
    end interface allocate_and_create_tensor_in_scratch

    interface create_tensor_in_scratch
        module procedure create_in_scratch_from_dims
        module procedure create_in_scratch_from_dims_integer
        module procedure create_tscalar_in_scratch
    end interface create_tensor_in_scratch

    interface allocate_and_copy_tensor
        module procedure allocate_and_copy_from_tensor
        module procedure allocate_and_copy_from_complex128_rank0
        module procedure allocate_and_copy_from_complex128_rank1
        module procedure allocate_and_copy_from_complex128_rank2
        module procedure allocate_and_copy_from_complex128_rank3
        module procedure allocate_and_copy_from_complex128_rank4
        module procedure allocate_and_copy_from_complex128_rank5
        module procedure allocate_and_copy_from_complex64_rank0
        module procedure allocate_and_copy_from_complex64_rank1
        module procedure allocate_and_copy_from_complex64_rank2
        module procedure allocate_and_copy_from_complex64_rank3
        module procedure allocate_and_copy_from_complex64_rank4
        module procedure allocate_and_copy_from_complex64_rank5
        module procedure allocate_and_copy_from_real64_rank0
        module procedure allocate_and_copy_from_real64_rank1
        module procedure allocate_and_copy_from_real64_rank2
        module procedure allocate_and_copy_from_real64_rank3
        module procedure allocate_and_copy_from_real64_rank4
        module procedure allocate_and_copy_from_real64_rank5
        module procedure allocate_and_copy_from_real32_rank0
        module procedure allocate_and_copy_from_real32_rank1
        module procedure allocate_and_copy_from_real32_rank2
        module procedure allocate_and_copy_from_real32_rank3
        module procedure allocate_and_copy_from_real32_rank4
        module procedure allocate_and_copy_from_real32_rank5
        module procedure allocate_and_copy_from_int64_rank0
        module procedure allocate_and_copy_from_int64_rank1
        module procedure allocate_and_copy_from_int64_rank2
        module procedure allocate_and_copy_from_int64_rank3
        module procedure allocate_and_copy_from_int64_rank4
        module procedure allocate_and_copy_from_int64_rank5
        module procedure allocate_and_copy_from_int32_rank0
        module procedure allocate_and_copy_from_int32_rank1
        module procedure allocate_and_copy_from_int32_rank2
        module procedure allocate_and_copy_from_int32_rank3
        module procedure allocate_and_copy_from_int32_rank4
        module procedure allocate_and_copy_from_int32_rank5
        module procedure allocate_and_copy_from_int16_rank0
        module procedure allocate_and_copy_from_int16_rank1
        module procedure allocate_and_copy_from_int16_rank2
        module procedure allocate_and_copy_from_int16_rank3
        module procedure allocate_and_copy_from_int16_rank4
        module procedure allocate_and_copy_from_int16_rank5
        module procedure allocate_and_copy_from_int8_rank0
        module procedure allocate_and_copy_from_int8_rank1
        module procedure allocate_and_copy_from_int8_rank2
        module procedure allocate_and_copy_from_int8_rank3
        module procedure allocate_and_copy_from_int8_rank4
        module procedure allocate_and_copy_from_int8_rank5
    end interface allocate_and_copy_tensor

    interface copy_tensor
        module procedure copy_from_tensor
        module procedure copy_from_complex128_rank0
        module procedure copy_from_complex128_rank1
        module procedure copy_from_complex128_rank2
        module procedure copy_from_complex128_rank3
        module procedure copy_from_complex128_rank4
        module procedure copy_from_complex128_rank5
        module procedure copy_from_complex64_rank0
        module procedure copy_from_complex64_rank1
        module procedure copy_from_complex64_rank2
        module procedure copy_from_complex64_rank3
        module procedure copy_from_complex64_rank4
        module procedure copy_from_complex64_rank5
        module procedure copy_from_real64_rank0
        module procedure copy_from_real64_rank1
        module procedure copy_from_real64_rank2
        module procedure copy_from_real64_rank3
        module procedure copy_from_real64_rank4
        module procedure copy_from_real64_rank5
        module procedure copy_from_real32_rank0
        module procedure copy_from_real32_rank1
        module procedure copy_from_real32_rank2
        module procedure copy_from_real32_rank3
        module procedure copy_from_real32_rank4
        module procedure copy_from_real32_rank5
        module procedure copy_from_int64_rank0
        module procedure copy_from_int64_rank1
        module procedure copy_from_int64_rank2
        module procedure copy_from_int64_rank3
        module procedure copy_from_int64_rank4
        module procedure copy_from_int64_rank5
        module procedure copy_from_int32_rank0
        module procedure copy_from_int32_rank1
        module procedure copy_from_int32_rank2
        module procedure copy_from_int32_rank3
        module procedure copy_from_int32_rank4
        module procedure copy_from_int32_rank5
        module procedure copy_from_int16_rank0
        module procedure copy_from_int16_rank1
        module procedure copy_from_int16_rank2
        module procedure copy_from_int16_rank3
        module procedure copy_from_int16_rank4
        module procedure copy_from_int16_rank5
        module procedure copy_from_int8_rank0
        module procedure copy_from_int8_rank1
        module procedure copy_from_int8_rank2
        module procedure copy_from_int8_rank3
        module procedure copy_from_int8_rank4
        module procedure copy_from_int8_rank5
    end interface copy_tensor

    interface allocate_and_copy_tensor_to_scratch
        module procedure allocate_and_copy_to_scratch_from_tensor
        module procedure allocate_and_copy_to_scratch_from_complex128_rank0
        module procedure allocate_and_copy_to_scratch_from_complex128_rank1
        module procedure allocate_and_copy_to_scratch_from_complex128_rank2
        module procedure allocate_and_copy_to_scratch_from_complex128_rank3
        module procedure allocate_and_copy_to_scratch_from_complex128_rank4
        module procedure allocate_and_copy_to_scratch_from_complex128_rank5
        module procedure allocate_and_copy_to_scratch_from_complex64_rank0
        module procedure allocate_and_copy_to_scratch_from_complex64_rank1
        module procedure allocate_and_copy_to_scratch_from_complex64_rank2
        module procedure allocate_and_copy_to_scratch_from_complex64_rank3
        module procedure allocate_and_copy_to_scratch_from_complex64_rank4
        module procedure allocate_and_copy_to_scratch_from_complex64_rank5
        module procedure allocate_and_copy_to_scratch_from_real64_rank0
        module procedure allocate_and_copy_to_scratch_from_real64_rank1
        module procedure allocate_and_copy_to_scratch_from_real64_rank2
        module procedure allocate_and_copy_to_scratch_from_real64_rank3
        module procedure allocate_and_copy_to_scratch_from_real64_rank4
        module procedure allocate_and_copy_to_scratch_from_real64_rank5
        module procedure allocate_and_copy_to_scratch_from_real32_rank0
        module procedure allocate_and_copy_to_scratch_from_real32_rank1
        module procedure allocate_and_copy_to_scratch_from_real32_rank2
        module procedure allocate_and_copy_to_scratch_from_real32_rank3
        module procedure allocate_and_copy_to_scratch_from_real32_rank4
        module procedure allocate_and_copy_to_scratch_from_real32_rank5
        module procedure allocate_and_copy_to_scratch_from_int64_rank0
        module procedure allocate_and_copy_to_scratch_from_int64_rank1
        module procedure allocate_and_copy_to_scratch_from_int64_rank2
        module procedure allocate_and_copy_to_scratch_from_int64_rank3
        module procedure allocate_and_copy_to_scratch_from_int64_rank4
        module procedure allocate_and_copy_to_scratch_from_int64_rank5
        module procedure allocate_and_copy_to_scratch_from_int32_rank0
        module procedure allocate_and_copy_to_scratch_from_int32_rank1
        module procedure allocate_and_copy_to_scratch_from_int32_rank2
        module procedure allocate_and_copy_to_scratch_from_int32_rank3
        module procedure allocate_and_copy_to_scratch_from_int32_rank4
        module procedure allocate_and_copy_to_scratch_from_int32_rank5
        module procedure allocate_and_copy_to_scratch_from_int16_rank0
        module procedure allocate_and_copy_to_scratch_from_int16_rank1
        module procedure allocate_and_copy_to_scratch_from_int16_rank2
        module procedure allocate_and_copy_to_scratch_from_int16_rank3
        module procedure allocate_and_copy_to_scratch_from_int16_rank4
        module procedure allocate_and_copy_to_scratch_from_int16_rank5
        module procedure allocate_and_copy_to_scratch_from_int8_rank0
        module procedure allocate_and_copy_to_scratch_from_int8_rank1
        module procedure allocate_and_copy_to_scratch_from_int8_rank2
        module procedure allocate_and_copy_to_scratch_from_int8_rank3
        module procedure allocate_and_copy_to_scratch_from_int8_rank4
        module procedure allocate_and_copy_to_scratch_from_int8_rank5
    end interface allocate_and_copy_tensor_to_scratch

    interface copy_tensor_to_scratch
        module procedure copy_to_scratch_from_tensor
        module procedure copy_to_scratch_from_complex128_rank0
        module procedure copy_to_scratch_from_complex128_rank1
        module procedure copy_to_scratch_from_complex128_rank2
        module procedure copy_to_scratch_from_complex128_rank3
        module procedure copy_to_scratch_from_complex128_rank4
        module procedure copy_to_scratch_from_complex128_rank5
        module procedure copy_to_scratch_from_complex64_rank0
        module procedure copy_to_scratch_from_complex64_rank1
        module procedure copy_to_scratch_from_complex64_rank2
        module procedure copy_to_scratch_from_complex64_rank3
        module procedure copy_to_scratch_from_complex64_rank4
        module procedure copy_to_scratch_from_complex64_rank5
        module procedure copy_to_scratch_from_real64_rank0
        module procedure copy_to_scratch_from_real64_rank1
        module procedure copy_to_scratch_from_real64_rank2
        module procedure copy_to_scratch_from_real64_rank3
        module procedure copy_to_scratch_from_real64_rank4
        module procedure copy_to_scratch_from_real64_rank5
        module procedure copy_to_scratch_from_real32_rank0
        module procedure copy_to_scratch_from_real32_rank1
        module procedure copy_to_scratch_from_real32_rank2
        module procedure copy_to_scratch_from_real32_rank3
        module procedure copy_to_scratch_from_real32_rank4
        module procedure copy_to_scratch_from_real32_rank5
        module procedure copy_to_scratch_from_int64_rank0
        module procedure copy_to_scratch_from_int64_rank1
        module procedure copy_to_scratch_from_int64_rank2
        module procedure copy_to_scratch_from_int64_rank3
        module procedure copy_to_scratch_from_int64_rank4
        module procedure copy_to_scratch_from_int64_rank5
        module procedure copy_to_scratch_from_int32_rank0
        module procedure copy_to_scratch_from_int32_rank1
        module procedure copy_to_scratch_from_int32_rank2
        module procedure copy_to_scratch_from_int32_rank3
        module procedure copy_to_scratch_from_int32_rank4
        module procedure copy_to_scratch_from_int32_rank5
        module procedure copy_to_scratch_from_int16_rank0
        module procedure copy_to_scratch_from_int16_rank1
        module procedure copy_to_scratch_from_int16_rank2
        module procedure copy_to_scratch_from_int16_rank3
        module procedure copy_to_scratch_from_int16_rank4
        module procedure copy_to_scratch_from_int16_rank5
        module procedure copy_to_scratch_from_int8_rank0
        module procedure copy_to_scratch_from_int8_rank1
        module procedure copy_to_scratch_from_int8_rank2
        module procedure copy_to_scratch_from_int8_rank3
        module procedure copy_to_scratch_from_int8_rank4
        module procedure copy_to_scratch_from_int8_rank5
    end interface copy_tensor_to_scratch

    interface allocate_and_point_to_tensor
        module procedure allocate_and_point_to_from_tensor
        module procedure allocate_and_point_to_from_complex128_rank0
        module procedure allocate_and_point_to_from_complex128_rank1
        module procedure allocate_and_point_to_from_complex128_rank2
        module procedure allocate_and_point_to_from_complex128_rank3
        module procedure allocate_and_point_to_from_complex128_rank4
        module procedure allocate_and_point_to_from_complex128_rank5
        module procedure allocate_and_point_to_from_complex64_rank0
        module procedure allocate_and_point_to_from_complex64_rank1
        module procedure allocate_and_point_to_from_complex64_rank2
        module procedure allocate_and_point_to_from_complex64_rank3
        module procedure allocate_and_point_to_from_complex64_rank4
        module procedure allocate_and_point_to_from_complex64_rank5
        module procedure allocate_and_point_to_from_real64_rank0
        module procedure allocate_and_point_to_from_real64_rank1
        module procedure allocate_and_point_to_from_real64_rank2
        module procedure allocate_and_point_to_from_real64_rank3
        module procedure allocate_and_point_to_from_real64_rank4
        module procedure allocate_and_point_to_from_real64_rank5
        module procedure allocate_and_point_to_from_real32_rank0
        module procedure allocate_and_point_to_from_real32_rank1
        module procedure allocate_and_point_to_from_real32_rank2
        module procedure allocate_and_point_to_from_real32_rank3
        module procedure allocate_and_point_to_from_real32_rank4
        module procedure allocate_and_point_to_from_real32_rank5
        module procedure allocate_and_point_to_from_int64_rank0
        module procedure allocate_and_point_to_from_int64_rank1
        module procedure allocate_and_point_to_from_int64_rank2
        module procedure allocate_and_point_to_from_int64_rank3
        module procedure allocate_and_point_to_from_int64_rank4
        module procedure allocate_and_point_to_from_int64_rank5
        module procedure allocate_and_point_to_from_int32_rank0
        module procedure allocate_and_point_to_from_int32_rank1
        module procedure allocate_and_point_to_from_int32_rank2
        module procedure allocate_and_point_to_from_int32_rank3
        module procedure allocate_and_point_to_from_int32_rank4
        module procedure allocate_and_point_to_from_int32_rank5
        module procedure allocate_and_point_to_from_int16_rank0
        module procedure allocate_and_point_to_from_int16_rank1
        module procedure allocate_and_point_to_from_int16_rank2
        module procedure allocate_and_point_to_from_int16_rank3
        module procedure allocate_and_point_to_from_int16_rank4
        module procedure allocate_and_point_to_from_int16_rank5
        module procedure allocate_and_point_to_from_int8_rank0
        module procedure allocate_and_point_to_from_int8_rank1
        module procedure allocate_and_point_to_from_int8_rank2
        module procedure allocate_and_point_to_from_int8_rank3
        module procedure allocate_and_point_to_from_int8_rank4
        module procedure allocate_and_point_to_from_int8_rank5
    end interface allocate_and_point_to_tensor

    interface point_to_tensor
        module procedure point_to_from_tensor
        module procedure point_to_from_complex128_rank0
        module procedure point_to_from_complex128_rank1
        module procedure point_to_from_complex128_rank2
        module procedure point_to_from_complex128_rank3
        module procedure point_to_from_complex128_rank4
        module procedure point_to_from_complex128_rank5
        module procedure point_to_from_complex64_rank0
        module procedure point_to_from_complex64_rank1
        module procedure point_to_from_complex64_rank2
        module procedure point_to_from_complex64_rank3
        module procedure point_to_from_complex64_rank4
        module procedure point_to_from_complex64_rank5
        module procedure point_to_from_real64_rank0
        module procedure point_to_from_real64_rank1
        module procedure point_to_from_real64_rank2
        module procedure point_to_from_real64_rank3
        module procedure point_to_from_real64_rank4
        module procedure point_to_from_real64_rank5
        module procedure point_to_from_real32_rank0
        module procedure point_to_from_real32_rank1
        module procedure point_to_from_real32_rank2
        module procedure point_to_from_real32_rank3
        module procedure point_to_from_real32_rank4
        module procedure point_to_from_real32_rank5
        module procedure point_to_from_int64_rank0
        module procedure point_to_from_int64_rank1
        module procedure point_to_from_int64_rank2
        module procedure point_to_from_int64_rank3
        module procedure point_to_from_int64_rank4
        module procedure point_to_from_int64_rank5
        module procedure point_to_from_int32_rank0
        module procedure point_to_from_int32_rank1
        module procedure point_to_from_int32_rank2
        module procedure point_to_from_int32_rank3
        module procedure point_to_from_int32_rank4
        module procedure point_to_from_int32_rank5
        module procedure point_to_from_int16_rank0
        module procedure point_to_from_int16_rank1
        module procedure point_to_from_int16_rank2
        module procedure point_to_from_int16_rank3
        module procedure point_to_from_int16_rank4
        module procedure point_to_from_int16_rank5
        module procedure point_to_from_int8_rank0
        module procedure point_to_from_int8_rank1
        module procedure point_to_from_int8_rank2
        module procedure point_to_from_int8_rank3
        module procedure point_to_from_int8_rank4
        module procedure point_to_from_int8_rank5
    end interface point_to_tensor
contains
    subroutine allocate_and_create_tscalar(atensor, &
            datatype, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: atensor
        character(len=*), intent(in), optional :: datatype
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder
        type(dictionary_converter) :: converter
        type(tensor_datatype_helper) :: helper

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_create(atensor, helper%get_datatype(datatype, options, priorities), &
                converter%to_logical("initialize", options, priorities, .true.))

        call builder%cleanup()
    end subroutine allocate_and_create_tscalar

    subroutine create_tscalar(atensor, &
            datatype, memory_type, options, priorities)
        class(tensor), intent(inout) :: atensor
        character(len=*), intent(in), optional :: datatype
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder
        type(dictionary_converter) :: converter
        type(tensor_datatype_helper) :: helper

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%create(atensor, helper%get_datatype(datatype, options, priorities), &
                converter%to_logical("initialize", options, priorities, .true.))

        call builder%cleanup()
    end subroutine create_tscalar

    subroutine allocate_and_create_tscalar_in_scratch(atensor, scratch, &
            datatype, options, priorities)
        class(tensor), allocatable, intent(inout) :: atensor
        type(scratch_buffer), intent(inout) :: scratch
        character(len=*), intent(in), optional :: datatype
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder
        type(tensor_datatype_helper) :: helper

        call builder%allocate_and_create_in_scratch(atensor, scratch, &
                helper%get_datatype(datatype, options, priorities))

        call builder%cleanup()
    end subroutine allocate_and_create_tscalar_in_scratch

    subroutine create_tscalar_in_scratch(atensor, scratch, &
            datatype, options, priorities)
        class(tensor), intent(inout) :: atensor
        type(scratch_buffer), intent(inout) :: scratch
        character(len=*), intent(in), optional :: datatype
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder
        type(tensor_datatype_helper) :: helper

        call builder%create_in_scratch(atensor, scratch, &
                helper%get_datatype(datatype, options, priorities))

        call builder%cleanup()
    end subroutine create_tscalar_in_scratch

    subroutine allocate_and_create_from_dims(atensor, dims, &
            datatype, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: atensor
        integer(int64), dimension(:), intent(in) :: dims
        character(len=*), intent(in), optional :: datatype
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder
        type(dictionary_converter) :: converter
        type(tensor_datatype_helper) :: helper

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_create(atensor, helper%get_datatype(datatype, options, priorities), &
                dims, converter%to_logical("initialize", options, priorities, .true.))

        call builder%cleanup()
    end subroutine allocate_and_create_from_dims

    subroutine allocate_and_create_from_dims_integer(atensor, dims, &
            datatype, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: atensor
        integer, dimension(:), intent(in) :: dims
        character(len=*), intent(in), optional :: datatype
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        call allocate_and_create_tensor(atensor, int(dims, kind=int64), &
                datatype, memory_type, options, priorities)
    end subroutine allocate_and_create_from_dims_integer

    subroutine create_from_dims(atensor, dims, &
            datatype, memory_type, options, priorities)
        class(tensor), intent(inout) :: atensor
        integer(int64), dimension(:), intent(in) :: dims
        character(len=*), intent(in), optional :: datatype
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder
        type(dictionary_converter) :: converter
        type(tensor_datatype_helper) :: helper

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%create(atensor, helper%get_datatype(datatype, options, priorities), &
                dims, converter%to_logical("initialize", options, priorities, .true.))

        call builder%cleanup()
    end subroutine create_from_dims

    subroutine create_from_dims_integer(atensor, dims, &
            datatype, memory_type, options, priorities)
        class(tensor), intent(inout) :: atensor
        integer, dimension(:), intent(in) :: dims
        character(len=*), intent(in), optional :: datatype
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        call create_tensor(atensor, int(dims, kind=int64), &
                datatype, memory_type, options, priorities)
    end subroutine create_from_dims_integer

    subroutine allocate_and_create_in_scratch_from_dims(atensor, scratch, dims, &
            datatype, options, priorities)
        class(tensor), allocatable, intent(inout) :: atensor
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:), intent(in) :: dims
        character(len=*), intent(in), optional :: datatype
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder
        type(tensor_datatype_helper) :: helper

        call builder%allocate_and_create_in_scratch(atensor, scratch, &
                helper%get_datatype(datatype, options, priorities), dims)

        call builder%cleanup()
    end subroutine allocate_and_create_in_scratch_from_dims

    subroutine allocate_and_create_in_scratch_from_dims_integer(atensor, scratch, dims, &
            datatype, options, priorities)
        class(tensor), allocatable, intent(inout) :: atensor
        type(scratch_buffer), intent(inout) :: scratch
        integer, dimension(:), intent(in) :: dims
        character(len=*), intent(in), optional :: datatype
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        call allocate_and_create_tensor_in_scratch(atensor, scratch, int(dims, kind=int64), &
                datatype, options, priorities)
    end subroutine allocate_and_create_in_scratch_from_dims_integer

    subroutine create_in_scratch_from_dims(atensor, scratch, dims, &
            datatype, options, priorities)
        class(tensor), intent(inout) :: atensor
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:), intent(in) :: dims
        character(len=*), intent(in), optional :: datatype
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder
        type(tensor_datatype_helper) :: helper

        call builder%create_in_scratch(atensor, scratch, &
                helper%get_datatype(datatype, options, priorities), dims)

        call builder%cleanup()
    end subroutine create_in_scratch_from_dims

    subroutine create_in_scratch_from_dims_integer(atensor, scratch, dims, &
            datatype, options, priorities)
        class(tensor), intent(inout) :: atensor
        type(scratch_buffer), intent(inout) :: scratch
        integer, dimension(:), intent(in) :: dims
        character(len=*), intent(in), optional :: datatype
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        call create_tensor_in_scratch(atensor, scratch, int(dims, kind=int64), &
                datatype, options, priorities)
    end subroutine create_in_scratch_from_dims_integer

    subroutine allocate_and_copy_from_tensor(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        class(tensor), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_tensor

    subroutine copy_from_tensor(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_tensor

    subroutine allocate_and_copy_from_complex128_rank0(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_complex128_rank0

    subroutine copy_from_complex128_rank0(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real64), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_complex128_rank0

    subroutine allocate_and_copy_from_complex128_rank1(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_complex128_rank1

    subroutine copy_from_complex128_rank1(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real64), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_complex128_rank1

    subroutine allocate_and_copy_from_complex128_rank2(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_complex128_rank2

    subroutine copy_from_complex128_rank2(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real64), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_complex128_rank2

    subroutine allocate_and_copy_from_complex128_rank3(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_complex128_rank3

    subroutine copy_from_complex128_rank3(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real64), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_complex128_rank3

    subroutine allocate_and_copy_from_complex128_rank4(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_complex128_rank4

    subroutine copy_from_complex128_rank4(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real64), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_complex128_rank4

    subroutine allocate_and_copy_from_complex128_rank5(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_complex128_rank5

    subroutine copy_from_complex128_rank5(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real64), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_complex128_rank5

    subroutine allocate_and_copy_from_complex64_rank0(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_complex64_rank0

    subroutine copy_from_complex64_rank0(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real32), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_complex64_rank0

    subroutine allocate_and_copy_from_complex64_rank1(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_complex64_rank1

    subroutine copy_from_complex64_rank1(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real32), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_complex64_rank1

    subroutine allocate_and_copy_from_complex64_rank2(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_complex64_rank2

    subroutine copy_from_complex64_rank2(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real32), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_complex64_rank2

    subroutine allocate_and_copy_from_complex64_rank3(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_complex64_rank3

    subroutine copy_from_complex64_rank3(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real32), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_complex64_rank3

    subroutine allocate_and_copy_from_complex64_rank4(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_complex64_rank4

    subroutine copy_from_complex64_rank4(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real32), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_complex64_rank4

    subroutine allocate_and_copy_from_complex64_rank5(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_complex64_rank5

    subroutine copy_from_complex64_rank5(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real32), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_complex64_rank5

    subroutine allocate_and_copy_from_real64_rank0(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_real64_rank0

    subroutine copy_from_real64_rank0(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real64), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_real64_rank0

    subroutine allocate_and_copy_from_real64_rank1(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_real64_rank1

    subroutine copy_from_real64_rank1(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real64), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_real64_rank1

    subroutine allocate_and_copy_from_real64_rank2(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_real64_rank2

    subroutine copy_from_real64_rank2(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real64), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_real64_rank2

    subroutine allocate_and_copy_from_real64_rank3(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_real64_rank3

    subroutine copy_from_real64_rank3(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real64), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_real64_rank3

    subroutine allocate_and_copy_from_real64_rank4(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_real64_rank4

    subroutine copy_from_real64_rank4(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real64), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_real64_rank4

    subroutine allocate_and_copy_from_real64_rank5(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_real64_rank5

    subroutine copy_from_real64_rank5(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real64), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_real64_rank5

    subroutine allocate_and_copy_from_real32_rank0(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_real32_rank0

    subroutine copy_from_real32_rank0(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real32), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_real32_rank0

    subroutine allocate_and_copy_from_real32_rank1(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_real32_rank1

    subroutine copy_from_real32_rank1(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real32), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_real32_rank1

    subroutine allocate_and_copy_from_real32_rank2(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_real32_rank2

    subroutine copy_from_real32_rank2(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real32), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_real32_rank2

    subroutine allocate_and_copy_from_real32_rank3(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_real32_rank3

    subroutine copy_from_real32_rank3(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real32), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_real32_rank3

    subroutine allocate_and_copy_from_real32_rank4(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_real32_rank4

    subroutine copy_from_real32_rank4(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real32), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_real32_rank4

    subroutine allocate_and_copy_from_real32_rank5(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_real32_rank5

    subroutine copy_from_real32_rank5(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real32), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_real32_rank5

    subroutine allocate_and_copy_from_int64_rank0(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int64_rank0

    subroutine copy_from_int64_rank0(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int64), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int64_rank0

    subroutine allocate_and_copy_from_int64_rank1(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int64_rank1

    subroutine copy_from_int64_rank1(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int64), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int64_rank1

    subroutine allocate_and_copy_from_int64_rank2(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int64_rank2

    subroutine copy_from_int64_rank2(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int64), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int64_rank2

    subroutine allocate_and_copy_from_int64_rank3(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int64_rank3

    subroutine copy_from_int64_rank3(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int64), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int64_rank3

    subroutine allocate_and_copy_from_int64_rank4(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int64_rank4

    subroutine copy_from_int64_rank4(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int64), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int64_rank4

    subroutine allocate_and_copy_from_int64_rank5(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int64_rank5

    subroutine copy_from_int64_rank5(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int64), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int64_rank5

    subroutine allocate_and_copy_from_int32_rank0(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int32_rank0

    subroutine copy_from_int32_rank0(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int32), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int32_rank0

    subroutine allocate_and_copy_from_int32_rank1(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int32_rank1

    subroutine copy_from_int32_rank1(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int32), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int32_rank1

    subroutine allocate_and_copy_from_int32_rank2(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int32_rank2

    subroutine copy_from_int32_rank2(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int32), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int32_rank2

    subroutine allocate_and_copy_from_int32_rank3(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int32_rank3

    subroutine copy_from_int32_rank3(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int32), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int32_rank3

    subroutine allocate_and_copy_from_int32_rank4(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int32_rank4

    subroutine copy_from_int32_rank4(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int32), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int32_rank4

    subroutine allocate_and_copy_from_int32_rank5(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int32_rank5

    subroutine copy_from_int32_rank5(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int32), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int32_rank5

    subroutine allocate_and_copy_from_int16_rank0(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int16_rank0

    subroutine copy_from_int16_rank0(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int16), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int16_rank0

    subroutine allocate_and_copy_from_int16_rank1(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int16_rank1

    subroutine copy_from_int16_rank1(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int16), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int16_rank1

    subroutine allocate_and_copy_from_int16_rank2(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int16_rank2

    subroutine copy_from_int16_rank2(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int16), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int16_rank2

    subroutine allocate_and_copy_from_int16_rank3(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int16_rank3

    subroutine copy_from_int16_rank3(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int16), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int16_rank3

    subroutine allocate_and_copy_from_int16_rank4(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int16_rank4

    subroutine copy_from_int16_rank4(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int16), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int16_rank4

    subroutine allocate_and_copy_from_int16_rank5(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int16_rank5

    subroutine copy_from_int16_rank5(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int16), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int16_rank5

    subroutine allocate_and_copy_from_int8_rank0(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int8_rank0

    subroutine copy_from_int8_rank0(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int8), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int8_rank0

    subroutine allocate_and_copy_from_int8_rank1(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int8_rank1

    subroutine copy_from_int8_rank1(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int8), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int8_rank1

    subroutine allocate_and_copy_from_int8_rank2(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int8_rank2

    subroutine copy_from_int8_rank2(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int8), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int8_rank2

    subroutine allocate_and_copy_from_int8_rank3(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int8_rank3

    subroutine copy_from_int8_rank3(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int8), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int8_rank3

    subroutine allocate_and_copy_from_int8_rank4(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int8_rank4

    subroutine copy_from_int8_rank4(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int8), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int8_rank4

    subroutine allocate_and_copy_from_int8_rank5(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_from_int8_rank5

    subroutine copy_from_int8_rank5(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int8), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy(dst, src)

        call builder%cleanup()
    end subroutine copy_from_int8_rank5

    subroutine allocate_and_copy_to_scratch_from_tensor(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        class(tensor), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_tensor

    subroutine copy_to_scratch_from_tensor(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        class(tensor), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_tensor

    subroutine allocate_and_copy_to_scratch_from_complex128_rank0(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_complex128_rank0

    subroutine copy_to_scratch_from_complex128_rank0(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_complex128_rank0

    subroutine allocate_and_copy_to_scratch_from_complex128_rank1(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_complex128_rank1

    subroutine copy_to_scratch_from_complex128_rank1(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_complex128_rank1

    subroutine allocate_and_copy_to_scratch_from_complex128_rank2(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_complex128_rank2

    subroutine copy_to_scratch_from_complex128_rank2(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_complex128_rank2

    subroutine allocate_and_copy_to_scratch_from_complex128_rank3(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_complex128_rank3

    subroutine copy_to_scratch_from_complex128_rank3(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_complex128_rank3

    subroutine allocate_and_copy_to_scratch_from_complex128_rank4(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_complex128_rank4

    subroutine copy_to_scratch_from_complex128_rank4(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_complex128_rank4

    subroutine allocate_and_copy_to_scratch_from_complex128_rank5(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_complex128_rank5

    subroutine copy_to_scratch_from_complex128_rank5(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real64), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_complex128_rank5

    subroutine allocate_and_copy_to_scratch_from_complex64_rank0(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_complex64_rank0

    subroutine copy_to_scratch_from_complex64_rank0(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_complex64_rank0

    subroutine allocate_and_copy_to_scratch_from_complex64_rank1(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_complex64_rank1

    subroutine copy_to_scratch_from_complex64_rank1(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_complex64_rank1

    subroutine allocate_and_copy_to_scratch_from_complex64_rank2(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_complex64_rank2

    subroutine copy_to_scratch_from_complex64_rank2(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_complex64_rank2

    subroutine allocate_and_copy_to_scratch_from_complex64_rank3(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_complex64_rank3

    subroutine copy_to_scratch_from_complex64_rank3(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_complex64_rank3

    subroutine allocate_and_copy_to_scratch_from_complex64_rank4(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_complex64_rank4

    subroutine copy_to_scratch_from_complex64_rank4(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_complex64_rank4

    subroutine allocate_and_copy_to_scratch_from_complex64_rank5(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_complex64_rank5

    subroutine copy_to_scratch_from_complex64_rank5(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        complex(real32), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_complex64_rank5

    subroutine allocate_and_copy_to_scratch_from_real64_rank0(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_real64_rank0

    subroutine copy_to_scratch_from_real64_rank0(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_real64_rank0

    subroutine allocate_and_copy_to_scratch_from_real64_rank1(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_real64_rank1

    subroutine copy_to_scratch_from_real64_rank1(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_real64_rank1

    subroutine allocate_and_copy_to_scratch_from_real64_rank2(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_real64_rank2

    subroutine copy_to_scratch_from_real64_rank2(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_real64_rank2

    subroutine allocate_and_copy_to_scratch_from_real64_rank3(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_real64_rank3

    subroutine copy_to_scratch_from_real64_rank3(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_real64_rank3

    subroutine allocate_and_copy_to_scratch_from_real64_rank4(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_real64_rank4

    subroutine copy_to_scratch_from_real64_rank4(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_real64_rank4

    subroutine allocate_and_copy_to_scratch_from_real64_rank5(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_real64_rank5

    subroutine copy_to_scratch_from_real64_rank5(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real64), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_real64_rank5

    subroutine allocate_and_copy_to_scratch_from_real32_rank0(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_real32_rank0

    subroutine copy_to_scratch_from_real32_rank0(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_real32_rank0

    subroutine allocate_and_copy_to_scratch_from_real32_rank1(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_real32_rank1

    subroutine copy_to_scratch_from_real32_rank1(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_real32_rank1

    subroutine allocate_and_copy_to_scratch_from_real32_rank2(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_real32_rank2

    subroutine copy_to_scratch_from_real32_rank2(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_real32_rank2

    subroutine allocate_and_copy_to_scratch_from_real32_rank3(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_real32_rank3

    subroutine copy_to_scratch_from_real32_rank3(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_real32_rank3

    subroutine allocate_and_copy_to_scratch_from_real32_rank4(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_real32_rank4

    subroutine copy_to_scratch_from_real32_rank4(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_real32_rank4

    subroutine allocate_and_copy_to_scratch_from_real32_rank5(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_real32_rank5

    subroutine copy_to_scratch_from_real32_rank5(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        real(real32), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_real32_rank5

    subroutine allocate_and_copy_to_scratch_from_int64_rank0(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int64_rank0

    subroutine copy_to_scratch_from_int64_rank0(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int64_rank0

    subroutine allocate_and_copy_to_scratch_from_int64_rank1(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int64_rank1

    subroutine copy_to_scratch_from_int64_rank1(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int64_rank1

    subroutine allocate_and_copy_to_scratch_from_int64_rank2(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int64_rank2

    subroutine copy_to_scratch_from_int64_rank2(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int64_rank2

    subroutine allocate_and_copy_to_scratch_from_int64_rank3(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int64_rank3

    subroutine copy_to_scratch_from_int64_rank3(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int64_rank3

    subroutine allocate_and_copy_to_scratch_from_int64_rank4(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int64_rank4

    subroutine copy_to_scratch_from_int64_rank4(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int64_rank4

    subroutine allocate_and_copy_to_scratch_from_int64_rank5(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int64_rank5

    subroutine copy_to_scratch_from_int64_rank5(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int64), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int64_rank5

    subroutine allocate_and_copy_to_scratch_from_int32_rank0(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int32_rank0

    subroutine copy_to_scratch_from_int32_rank0(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int32_rank0

    subroutine allocate_and_copy_to_scratch_from_int32_rank1(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int32_rank1

    subroutine copy_to_scratch_from_int32_rank1(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int32_rank1

    subroutine allocate_and_copy_to_scratch_from_int32_rank2(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int32_rank2

    subroutine copy_to_scratch_from_int32_rank2(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int32_rank2

    subroutine allocate_and_copy_to_scratch_from_int32_rank3(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int32_rank3

    subroutine copy_to_scratch_from_int32_rank3(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int32_rank3

    subroutine allocate_and_copy_to_scratch_from_int32_rank4(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int32_rank4

    subroutine copy_to_scratch_from_int32_rank4(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int32_rank4

    subroutine allocate_and_copy_to_scratch_from_int32_rank5(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int32_rank5

    subroutine copy_to_scratch_from_int32_rank5(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int32), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int32_rank5

    subroutine allocate_and_copy_to_scratch_from_int16_rank0(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int16_rank0

    subroutine copy_to_scratch_from_int16_rank0(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int16_rank0

    subroutine allocate_and_copy_to_scratch_from_int16_rank1(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int16_rank1

    subroutine copy_to_scratch_from_int16_rank1(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int16_rank1

    subroutine allocate_and_copy_to_scratch_from_int16_rank2(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int16_rank2

    subroutine copy_to_scratch_from_int16_rank2(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int16_rank2

    subroutine allocate_and_copy_to_scratch_from_int16_rank3(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int16_rank3

    subroutine copy_to_scratch_from_int16_rank3(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int16_rank3

    subroutine allocate_and_copy_to_scratch_from_int16_rank4(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int16_rank4

    subroutine copy_to_scratch_from_int16_rank4(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int16_rank4

    subroutine allocate_and_copy_to_scratch_from_int16_rank5(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int16_rank5

    subroutine copy_to_scratch_from_int16_rank5(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int16), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int16_rank5

    subroutine allocate_and_copy_to_scratch_from_int8_rank0(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int8_rank0

    subroutine copy_to_scratch_from_int8_rank0(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int8_rank0

    subroutine allocate_and_copy_to_scratch_from_int8_rank1(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int8_rank1

    subroutine copy_to_scratch_from_int8_rank1(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int8_rank1

    subroutine allocate_and_copy_to_scratch_from_int8_rank2(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int8_rank2

    subroutine copy_to_scratch_from_int8_rank2(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int8_rank2

    subroutine allocate_and_copy_to_scratch_from_int8_rank3(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int8_rank3

    subroutine copy_to_scratch_from_int8_rank3(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int8_rank3

    subroutine allocate_and_copy_to_scratch_from_int8_rank4(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int8_rank4

    subroutine copy_to_scratch_from_int8_rank4(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int8_rank4

    subroutine allocate_and_copy_to_scratch_from_int8_rank5(dst, scratch, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine allocate_and_copy_to_scratch_from_int8_rank5

    subroutine copy_to_scratch_from_int8_rank5(dst, scratch, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        type(scratch_buffer), intent(inout) :: scratch
        integer(int8), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%copy_to_scratch(dst, scratch, src)

        call builder%cleanup()
    end subroutine copy_to_scratch_from_int8_rank5

    subroutine allocate_and_point_to_from_tensor(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        class(tensor), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_tensor

    subroutine point_to_from_tensor(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_tensor

    subroutine allocate_and_point_to_from_complex128_rank0(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_complex128_rank0

    subroutine point_to_from_complex128_rank0(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real64), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_complex128_rank0

    subroutine allocate_and_point_to_from_complex128_rank1(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_complex128_rank1

    subroutine point_to_from_complex128_rank1(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real64), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_complex128_rank1

    subroutine allocate_and_point_to_from_complex128_rank2(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_complex128_rank2

    subroutine point_to_from_complex128_rank2(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real64), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_complex128_rank2

    subroutine allocate_and_point_to_from_complex128_rank3(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_complex128_rank3

    subroutine point_to_from_complex128_rank3(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real64), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_complex128_rank3

    subroutine allocate_and_point_to_from_complex128_rank4(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_complex128_rank4

    subroutine point_to_from_complex128_rank4(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real64), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_complex128_rank4

    subroutine allocate_and_point_to_from_complex128_rank5(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real64), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_complex128_rank5

    subroutine point_to_from_complex128_rank5(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real64), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_complex128_rank5

    subroutine allocate_and_point_to_from_complex64_rank0(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_complex64_rank0

    subroutine point_to_from_complex64_rank0(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real32), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_complex64_rank0

    subroutine allocate_and_point_to_from_complex64_rank1(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_complex64_rank1

    subroutine point_to_from_complex64_rank1(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real32), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_complex64_rank1

    subroutine allocate_and_point_to_from_complex64_rank2(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_complex64_rank2

    subroutine point_to_from_complex64_rank2(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real32), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_complex64_rank2

    subroutine allocate_and_point_to_from_complex64_rank3(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_complex64_rank3

    subroutine point_to_from_complex64_rank3(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real32), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_complex64_rank3

    subroutine allocate_and_point_to_from_complex64_rank4(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_complex64_rank4

    subroutine point_to_from_complex64_rank4(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real32), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_complex64_rank4

    subroutine allocate_and_point_to_from_complex64_rank5(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        complex(real32), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_complex64_rank5

    subroutine point_to_from_complex64_rank5(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        complex(real32), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_complex64_rank5

    subroutine allocate_and_point_to_from_real64_rank0(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_real64_rank0

    subroutine point_to_from_real64_rank0(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real64), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_real64_rank0

    subroutine allocate_and_point_to_from_real64_rank1(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_real64_rank1

    subroutine point_to_from_real64_rank1(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real64), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_real64_rank1

    subroutine allocate_and_point_to_from_real64_rank2(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_real64_rank2

    subroutine point_to_from_real64_rank2(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real64), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_real64_rank2

    subroutine allocate_and_point_to_from_real64_rank3(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_real64_rank3

    subroutine point_to_from_real64_rank3(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real64), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_real64_rank3

    subroutine allocate_and_point_to_from_real64_rank4(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_real64_rank4

    subroutine point_to_from_real64_rank4(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real64), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_real64_rank4

    subroutine allocate_and_point_to_from_real64_rank5(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real64), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_real64_rank5

    subroutine point_to_from_real64_rank5(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real64), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_real64_rank5

    subroutine allocate_and_point_to_from_real32_rank0(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_real32_rank0

    subroutine point_to_from_real32_rank0(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real32), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_real32_rank0

    subroutine allocate_and_point_to_from_real32_rank1(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_real32_rank1

    subroutine point_to_from_real32_rank1(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real32), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_real32_rank1

    subroutine allocate_and_point_to_from_real32_rank2(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_real32_rank2

    subroutine point_to_from_real32_rank2(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real32), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_real32_rank2

    subroutine allocate_and_point_to_from_real32_rank3(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_real32_rank3

    subroutine point_to_from_real32_rank3(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real32), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_real32_rank3

    subroutine allocate_and_point_to_from_real32_rank4(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_real32_rank4

    subroutine point_to_from_real32_rank4(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real32), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_real32_rank4

    subroutine allocate_and_point_to_from_real32_rank5(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        real(real32), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_real32_rank5

    subroutine point_to_from_real32_rank5(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        real(real32), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_real32_rank5

    subroutine allocate_and_point_to_from_int64_rank0(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int64_rank0

    subroutine point_to_from_int64_rank0(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int64), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int64_rank0

    subroutine allocate_and_point_to_from_int64_rank1(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int64_rank1

    subroutine point_to_from_int64_rank1(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int64), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int64_rank1

    subroutine allocate_and_point_to_from_int64_rank2(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int64_rank2

    subroutine point_to_from_int64_rank2(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int64), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int64_rank2

    subroutine allocate_and_point_to_from_int64_rank3(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int64_rank3

    subroutine point_to_from_int64_rank3(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int64), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int64_rank3

    subroutine allocate_and_point_to_from_int64_rank4(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int64_rank4

    subroutine point_to_from_int64_rank4(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int64), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int64_rank4

    subroutine allocate_and_point_to_from_int64_rank5(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int64), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int64_rank5

    subroutine point_to_from_int64_rank5(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int64), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int64_rank5

    subroutine allocate_and_point_to_from_int32_rank0(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int32_rank0

    subroutine point_to_from_int32_rank0(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int32), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int32_rank0

    subroutine allocate_and_point_to_from_int32_rank1(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int32_rank1

    subroutine point_to_from_int32_rank1(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int32), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int32_rank1

    subroutine allocate_and_point_to_from_int32_rank2(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int32_rank2

    subroutine point_to_from_int32_rank2(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int32), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int32_rank2

    subroutine allocate_and_point_to_from_int32_rank3(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int32_rank3

    subroutine point_to_from_int32_rank3(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int32), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int32_rank3

    subroutine allocate_and_point_to_from_int32_rank4(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int32_rank4

    subroutine point_to_from_int32_rank4(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int32), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int32_rank4

    subroutine allocate_and_point_to_from_int32_rank5(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int32), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int32_rank5

    subroutine point_to_from_int32_rank5(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int32), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int32_rank5

    subroutine allocate_and_point_to_from_int16_rank0(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int16_rank0

    subroutine point_to_from_int16_rank0(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int16), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int16_rank0

    subroutine allocate_and_point_to_from_int16_rank1(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int16_rank1

    subroutine point_to_from_int16_rank1(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int16), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int16_rank1

    subroutine allocate_and_point_to_from_int16_rank2(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int16_rank2

    subroutine point_to_from_int16_rank2(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int16), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int16_rank2

    subroutine allocate_and_point_to_from_int16_rank3(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int16_rank3

    subroutine point_to_from_int16_rank3(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int16), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int16_rank3

    subroutine allocate_and_point_to_from_int16_rank4(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int16_rank4

    subroutine point_to_from_int16_rank4(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int16), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int16_rank4

    subroutine allocate_and_point_to_from_int16_rank5(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int16), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int16_rank5

    subroutine point_to_from_int16_rank5(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int16), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int16_rank5

    subroutine allocate_and_point_to_from_int8_rank0(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int8_rank0

    subroutine point_to_from_int8_rank0(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int8), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int8_rank0

    subroutine allocate_and_point_to_from_int8_rank1(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int8_rank1

    subroutine point_to_from_int8_rank1(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int8), dimension(:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int8_rank1

    subroutine allocate_and_point_to_from_int8_rank2(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int8_rank2

    subroutine point_to_from_int8_rank2(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int8), dimension(:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int8_rank2

    subroutine allocate_and_point_to_from_int8_rank3(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int8_rank3

    subroutine point_to_from_int8_rank3(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int8), dimension(:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int8_rank3

    subroutine allocate_and_point_to_from_int8_rank4(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int8_rank4

    subroutine point_to_from_int8_rank4(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int8), dimension(:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int8_rank4

    subroutine allocate_and_point_to_from_int8_rank5(dst, src, memory_type, options, priorities)
        class(tensor), allocatable, intent(inout) :: dst
        integer(int8), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%allocate_and_point_to(dst, src)

        call builder%cleanup()
    end subroutine allocate_and_point_to_from_int8_rank5

    subroutine point_to_from_int8_rank5(dst, src, memory_type, options, priorities)
        class(tensor), intent(inout) :: dst
        integer(int8), dimension(:,:,:,:,:), intent(in) :: src
        character(len=*), intent(in), optional :: memory_type
        type(dictionary), intent(in), optional :: options
        type(string), dimension(:), intent(in), optional :: priorities

        type(tensor_builder) :: builder

        call create_tensor_builder(builder, memory_type, options, priorities)
        call builder%point_to(dst, src)

        call builder%cleanup()
    end subroutine point_to_from_int8_rank5
end module tensor_builder_interface
