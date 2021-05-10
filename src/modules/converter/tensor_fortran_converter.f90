! Auto-generated. DO NOT MODIFY!
module tensor_fortran_converter_module
    use, intrinsic :: iso_fortran_env, only : &
            int64, &
            real64, &
            real32, &
            int32, &
            int16, &
            int8
    use :: data_api, only : &
            data_storage, &
            fortran_data_converter, &
            memory_manager, &
            stream
    use :: data_dev, only : &
            host_storage
    use :: tensor_module, only : &
            tensor

    implicit none
    private

    public :: tensor_fortran_converter
    public :: secure_fortran_pointer_from_tensor
    public :: update_remote_tensor_from_pointer
    public :: release_pointer_from_remote_tensor
    public :: update_remote_tensor_and_release_pointer

    type :: tensor_fortran_converter
        type(fortran_data_converter) :: converter
    contains
        generic :: secure_fortran_pointer => &
                secure_fortran_pointer_complex128_rank0, &
                secure_fortran_pointer_complex128_rank1, &
                secure_fortran_pointer_complex128_rank2, &
                secure_fortran_pointer_complex128_rank3, &
                secure_fortran_pointer_complex128_rank4, &
                secure_fortran_pointer_complex128_rank5, &
                secure_fortran_pointer_complex64_rank0, &
                secure_fortran_pointer_complex64_rank1, &
                secure_fortran_pointer_complex64_rank2, &
                secure_fortran_pointer_complex64_rank3, &
                secure_fortran_pointer_complex64_rank4, &
                secure_fortran_pointer_complex64_rank5, &
                secure_fortran_pointer_real64_rank0, &
                secure_fortran_pointer_real64_rank1, &
                secure_fortran_pointer_real64_rank2, &
                secure_fortran_pointer_real64_rank3, &
                secure_fortran_pointer_real64_rank4, &
                secure_fortran_pointer_real64_rank5, &
                secure_fortran_pointer_real32_rank0, &
                secure_fortran_pointer_real32_rank1, &
                secure_fortran_pointer_real32_rank2, &
                secure_fortran_pointer_real32_rank3, &
                secure_fortran_pointer_real32_rank4, &
                secure_fortran_pointer_real32_rank5, &
                secure_fortran_pointer_int64_rank0, &
                secure_fortran_pointer_int64_rank1, &
                secure_fortran_pointer_int64_rank2, &
                secure_fortran_pointer_int64_rank3, &
                secure_fortran_pointer_int64_rank4, &
                secure_fortran_pointer_int64_rank5, &
                secure_fortran_pointer_int32_rank0, &
                secure_fortran_pointer_int32_rank1, &
                secure_fortran_pointer_int32_rank2, &
                secure_fortran_pointer_int32_rank3, &
                secure_fortran_pointer_int32_rank4, &
                secure_fortran_pointer_int32_rank5, &
                secure_fortran_pointer_int16_rank0, &
                secure_fortran_pointer_int16_rank1, &
                secure_fortran_pointer_int16_rank2, &
                secure_fortran_pointer_int16_rank3, &
                secure_fortran_pointer_int16_rank4, &
                secure_fortran_pointer_int16_rank5, &
                secure_fortran_pointer_int8_rank0, &
                secure_fortran_pointer_int8_rank1, &
                secure_fortran_pointer_int8_rank2, &
                secure_fortran_pointer_int8_rank3, &
                secure_fortran_pointer_int8_rank4, &
                secure_fortran_pointer_int8_rank5
        generic :: update_remote => &
                update_remote_complex128_rank0, &
                update_remote_complex128_rank1, &
                update_remote_complex128_rank2, &
                update_remote_complex128_rank3, &
                update_remote_complex128_rank4, &
                update_remote_complex128_rank5, &
                update_remote_complex64_rank0, &
                update_remote_complex64_rank1, &
                update_remote_complex64_rank2, &
                update_remote_complex64_rank3, &
                update_remote_complex64_rank4, &
                update_remote_complex64_rank5, &
                update_remote_real64_rank0, &
                update_remote_real64_rank1, &
                update_remote_real64_rank2, &
                update_remote_real64_rank3, &
                update_remote_real64_rank4, &
                update_remote_real64_rank5, &
                update_remote_real32_rank0, &
                update_remote_real32_rank1, &
                update_remote_real32_rank2, &
                update_remote_real32_rank3, &
                update_remote_real32_rank4, &
                update_remote_real32_rank5, &
                update_remote_int64_rank0, &
                update_remote_int64_rank1, &
                update_remote_int64_rank2, &
                update_remote_int64_rank3, &
                update_remote_int64_rank4, &
                update_remote_int64_rank5, &
                update_remote_int32_rank0, &
                update_remote_int32_rank1, &
                update_remote_int32_rank2, &
                update_remote_int32_rank3, &
                update_remote_int32_rank4, &
                update_remote_int32_rank5, &
                update_remote_int16_rank0, &
                update_remote_int16_rank1, &
                update_remote_int16_rank2, &
                update_remote_int16_rank3, &
                update_remote_int16_rank4, &
                update_remote_int16_rank5, &
                update_remote_int8_rank0, &
                update_remote_int8_rank1, &
                update_remote_int8_rank2, &
                update_remote_int8_rank3, &
                update_remote_int8_rank4, &
                update_remote_int8_rank5
        generic :: release_pointer => &
                release_pointer_complex128_rank0, &
                release_pointer_complex128_rank1, &
                release_pointer_complex128_rank2, &
                release_pointer_complex128_rank3, &
                release_pointer_complex128_rank4, &
                release_pointer_complex128_rank5, &
                release_pointer_complex64_rank0, &
                release_pointer_complex64_rank1, &
                release_pointer_complex64_rank2, &
                release_pointer_complex64_rank3, &
                release_pointer_complex64_rank4, &
                release_pointer_complex64_rank5, &
                release_pointer_real64_rank0, &
                release_pointer_real64_rank1, &
                release_pointer_real64_rank2, &
                release_pointer_real64_rank3, &
                release_pointer_real64_rank4, &
                release_pointer_real64_rank5, &
                release_pointer_real32_rank0, &
                release_pointer_real32_rank1, &
                release_pointer_real32_rank2, &
                release_pointer_real32_rank3, &
                release_pointer_real32_rank4, &
                release_pointer_real32_rank5, &
                release_pointer_int64_rank0, &
                release_pointer_int64_rank1, &
                release_pointer_int64_rank2, &
                release_pointer_int64_rank3, &
                release_pointer_int64_rank4, &
                release_pointer_int64_rank5, &
                release_pointer_int32_rank0, &
                release_pointer_int32_rank1, &
                release_pointer_int32_rank2, &
                release_pointer_int32_rank3, &
                release_pointer_int32_rank4, &
                release_pointer_int32_rank5, &
                release_pointer_int16_rank0, &
                release_pointer_int16_rank1, &
                release_pointer_int16_rank2, &
                release_pointer_int16_rank3, &
                release_pointer_int16_rank4, &
                release_pointer_int16_rank5, &
                release_pointer_int8_rank0, &
                release_pointer_int8_rank1, &
                release_pointer_int8_rank2, &
                release_pointer_int8_rank3, &
                release_pointer_int8_rank4, &
                release_pointer_int8_rank5
        generic :: update_remote_and_release_pointer => &
                update_remote_and_release_pointer_complex128_rank0, &
                update_remote_and_release_pointer_complex128_rank1, &
                update_remote_and_release_pointer_complex128_rank2, &
                update_remote_and_release_pointer_complex128_rank3, &
                update_remote_and_release_pointer_complex128_rank4, &
                update_remote_and_release_pointer_complex128_rank5, &
                update_remote_and_release_pointer_complex64_rank0, &
                update_remote_and_release_pointer_complex64_rank1, &
                update_remote_and_release_pointer_complex64_rank2, &
                update_remote_and_release_pointer_complex64_rank3, &
                update_remote_and_release_pointer_complex64_rank4, &
                update_remote_and_release_pointer_complex64_rank5, &
                update_remote_and_release_pointer_real64_rank0, &
                update_remote_and_release_pointer_real64_rank1, &
                update_remote_and_release_pointer_real64_rank2, &
                update_remote_and_release_pointer_real64_rank3, &
                update_remote_and_release_pointer_real64_rank4, &
                update_remote_and_release_pointer_real64_rank5, &
                update_remote_and_release_pointer_real32_rank0, &
                update_remote_and_release_pointer_real32_rank1, &
                update_remote_and_release_pointer_real32_rank2, &
                update_remote_and_release_pointer_real32_rank3, &
                update_remote_and_release_pointer_real32_rank4, &
                update_remote_and_release_pointer_real32_rank5, &
                update_remote_and_release_pointer_int64_rank0, &
                update_remote_and_release_pointer_int64_rank1, &
                update_remote_and_release_pointer_int64_rank2, &
                update_remote_and_release_pointer_int64_rank3, &
                update_remote_and_release_pointer_int64_rank4, &
                update_remote_and_release_pointer_int64_rank5, &
                update_remote_and_release_pointer_int32_rank0, &
                update_remote_and_release_pointer_int32_rank1, &
                update_remote_and_release_pointer_int32_rank2, &
                update_remote_and_release_pointer_int32_rank3, &
                update_remote_and_release_pointer_int32_rank4, &
                update_remote_and_release_pointer_int32_rank5, &
                update_remote_and_release_pointer_int16_rank0, &
                update_remote_and_release_pointer_int16_rank1, &
                update_remote_and_release_pointer_int16_rank2, &
                update_remote_and_release_pointer_int16_rank3, &
                update_remote_and_release_pointer_int16_rank4, &
                update_remote_and_release_pointer_int16_rank5, &
                update_remote_and_release_pointer_int8_rank0, &
                update_remote_and_release_pointer_int8_rank1, &
                update_remote_and_release_pointer_int8_rank2, &
                update_remote_and_release_pointer_int8_rank3, &
                update_remote_and_release_pointer_int8_rank4, &
                update_remote_and_release_pointer_int8_rank5
        procedure :: secure_fortran_pointer_complex128_rank0 => secure_fortran_pointer_complex128_rank0
        procedure :: secure_fortran_pointer_complex128_rank1 => secure_fortran_pointer_complex128_rank1
        procedure :: secure_fortran_pointer_complex128_rank2 => secure_fortran_pointer_complex128_rank2
        procedure :: secure_fortran_pointer_complex128_rank3 => secure_fortran_pointer_complex128_rank3
        procedure :: secure_fortran_pointer_complex128_rank4 => secure_fortran_pointer_complex128_rank4
        procedure :: secure_fortran_pointer_complex128_rank5 => secure_fortran_pointer_complex128_rank5
        procedure :: secure_fortran_pointer_complex64_rank0 => secure_fortran_pointer_complex64_rank0
        procedure :: secure_fortran_pointer_complex64_rank1 => secure_fortran_pointer_complex64_rank1
        procedure :: secure_fortran_pointer_complex64_rank2 => secure_fortran_pointer_complex64_rank2
        procedure :: secure_fortran_pointer_complex64_rank3 => secure_fortran_pointer_complex64_rank3
        procedure :: secure_fortran_pointer_complex64_rank4 => secure_fortran_pointer_complex64_rank4
        procedure :: secure_fortran_pointer_complex64_rank5 => secure_fortran_pointer_complex64_rank5
        procedure :: secure_fortran_pointer_real64_rank0 => secure_fortran_pointer_real64_rank0
        procedure :: secure_fortran_pointer_real64_rank1 => secure_fortran_pointer_real64_rank1
        procedure :: secure_fortran_pointer_real64_rank2 => secure_fortran_pointer_real64_rank2
        procedure :: secure_fortran_pointer_real64_rank3 => secure_fortran_pointer_real64_rank3
        procedure :: secure_fortran_pointer_real64_rank4 => secure_fortran_pointer_real64_rank4
        procedure :: secure_fortran_pointer_real64_rank5 => secure_fortran_pointer_real64_rank5
        procedure :: secure_fortran_pointer_real32_rank0 => secure_fortran_pointer_real32_rank0
        procedure :: secure_fortran_pointer_real32_rank1 => secure_fortran_pointer_real32_rank1
        procedure :: secure_fortran_pointer_real32_rank2 => secure_fortran_pointer_real32_rank2
        procedure :: secure_fortran_pointer_real32_rank3 => secure_fortran_pointer_real32_rank3
        procedure :: secure_fortran_pointer_real32_rank4 => secure_fortran_pointer_real32_rank4
        procedure :: secure_fortran_pointer_real32_rank5 => secure_fortran_pointer_real32_rank5
        procedure :: secure_fortran_pointer_int64_rank0 => secure_fortran_pointer_int64_rank0
        procedure :: secure_fortran_pointer_int64_rank1 => secure_fortran_pointer_int64_rank1
        procedure :: secure_fortran_pointer_int64_rank2 => secure_fortran_pointer_int64_rank2
        procedure :: secure_fortran_pointer_int64_rank3 => secure_fortran_pointer_int64_rank3
        procedure :: secure_fortran_pointer_int64_rank4 => secure_fortran_pointer_int64_rank4
        procedure :: secure_fortran_pointer_int64_rank5 => secure_fortran_pointer_int64_rank5
        procedure :: secure_fortran_pointer_int32_rank0 => secure_fortran_pointer_int32_rank0
        procedure :: secure_fortran_pointer_int32_rank1 => secure_fortran_pointer_int32_rank1
        procedure :: secure_fortran_pointer_int32_rank2 => secure_fortran_pointer_int32_rank2
        procedure :: secure_fortran_pointer_int32_rank3 => secure_fortran_pointer_int32_rank3
        procedure :: secure_fortran_pointer_int32_rank4 => secure_fortran_pointer_int32_rank4
        procedure :: secure_fortran_pointer_int32_rank5 => secure_fortran_pointer_int32_rank5
        procedure :: secure_fortran_pointer_int16_rank0 => secure_fortran_pointer_int16_rank0
        procedure :: secure_fortran_pointer_int16_rank1 => secure_fortran_pointer_int16_rank1
        procedure :: secure_fortran_pointer_int16_rank2 => secure_fortran_pointer_int16_rank2
        procedure :: secure_fortran_pointer_int16_rank3 => secure_fortran_pointer_int16_rank3
        procedure :: secure_fortran_pointer_int16_rank4 => secure_fortran_pointer_int16_rank4
        procedure :: secure_fortran_pointer_int16_rank5 => secure_fortran_pointer_int16_rank5
        procedure :: secure_fortran_pointer_int8_rank0 => secure_fortran_pointer_int8_rank0
        procedure :: secure_fortran_pointer_int8_rank1 => secure_fortran_pointer_int8_rank1
        procedure :: secure_fortran_pointer_int8_rank2 => secure_fortran_pointer_int8_rank2
        procedure :: secure_fortran_pointer_int8_rank3 => secure_fortran_pointer_int8_rank3
        procedure :: secure_fortran_pointer_int8_rank4 => secure_fortran_pointer_int8_rank4
        procedure :: secure_fortran_pointer_int8_rank5 => secure_fortran_pointer_int8_rank5
        procedure :: update_remote_complex128_rank0 => update_remote_complex128_rank0
        procedure :: update_remote_complex128_rank1 => update_remote_complex128_rank1
        procedure :: update_remote_complex128_rank2 => update_remote_complex128_rank2
        procedure :: update_remote_complex128_rank3 => update_remote_complex128_rank3
        procedure :: update_remote_complex128_rank4 => update_remote_complex128_rank4
        procedure :: update_remote_complex128_rank5 => update_remote_complex128_rank5
        procedure :: update_remote_complex64_rank0 => update_remote_complex64_rank0
        procedure :: update_remote_complex64_rank1 => update_remote_complex64_rank1
        procedure :: update_remote_complex64_rank2 => update_remote_complex64_rank2
        procedure :: update_remote_complex64_rank3 => update_remote_complex64_rank3
        procedure :: update_remote_complex64_rank4 => update_remote_complex64_rank4
        procedure :: update_remote_complex64_rank5 => update_remote_complex64_rank5
        procedure :: update_remote_real64_rank0 => update_remote_real64_rank0
        procedure :: update_remote_real64_rank1 => update_remote_real64_rank1
        procedure :: update_remote_real64_rank2 => update_remote_real64_rank2
        procedure :: update_remote_real64_rank3 => update_remote_real64_rank3
        procedure :: update_remote_real64_rank4 => update_remote_real64_rank4
        procedure :: update_remote_real64_rank5 => update_remote_real64_rank5
        procedure :: update_remote_real32_rank0 => update_remote_real32_rank0
        procedure :: update_remote_real32_rank1 => update_remote_real32_rank1
        procedure :: update_remote_real32_rank2 => update_remote_real32_rank2
        procedure :: update_remote_real32_rank3 => update_remote_real32_rank3
        procedure :: update_remote_real32_rank4 => update_remote_real32_rank4
        procedure :: update_remote_real32_rank5 => update_remote_real32_rank5
        procedure :: update_remote_int64_rank0 => update_remote_int64_rank0
        procedure :: update_remote_int64_rank1 => update_remote_int64_rank1
        procedure :: update_remote_int64_rank2 => update_remote_int64_rank2
        procedure :: update_remote_int64_rank3 => update_remote_int64_rank3
        procedure :: update_remote_int64_rank4 => update_remote_int64_rank4
        procedure :: update_remote_int64_rank5 => update_remote_int64_rank5
        procedure :: update_remote_int32_rank0 => update_remote_int32_rank0
        procedure :: update_remote_int32_rank1 => update_remote_int32_rank1
        procedure :: update_remote_int32_rank2 => update_remote_int32_rank2
        procedure :: update_remote_int32_rank3 => update_remote_int32_rank3
        procedure :: update_remote_int32_rank4 => update_remote_int32_rank4
        procedure :: update_remote_int32_rank5 => update_remote_int32_rank5
        procedure :: update_remote_int16_rank0 => update_remote_int16_rank0
        procedure :: update_remote_int16_rank1 => update_remote_int16_rank1
        procedure :: update_remote_int16_rank2 => update_remote_int16_rank2
        procedure :: update_remote_int16_rank3 => update_remote_int16_rank3
        procedure :: update_remote_int16_rank4 => update_remote_int16_rank4
        procedure :: update_remote_int16_rank5 => update_remote_int16_rank5
        procedure :: update_remote_int8_rank0 => update_remote_int8_rank0
        procedure :: update_remote_int8_rank1 => update_remote_int8_rank1
        procedure :: update_remote_int8_rank2 => update_remote_int8_rank2
        procedure :: update_remote_int8_rank3 => update_remote_int8_rank3
        procedure :: update_remote_int8_rank4 => update_remote_int8_rank4
        procedure :: update_remote_int8_rank5 => update_remote_int8_rank5
        procedure :: release_pointer_complex128_rank0 => release_pointer_complex128_rank0
        procedure :: release_pointer_complex128_rank1 => release_pointer_complex128_rank1
        procedure :: release_pointer_complex128_rank2 => release_pointer_complex128_rank2
        procedure :: release_pointer_complex128_rank3 => release_pointer_complex128_rank3
        procedure :: release_pointer_complex128_rank4 => release_pointer_complex128_rank4
        procedure :: release_pointer_complex128_rank5 => release_pointer_complex128_rank5
        procedure :: release_pointer_complex64_rank0 => release_pointer_complex64_rank0
        procedure :: release_pointer_complex64_rank1 => release_pointer_complex64_rank1
        procedure :: release_pointer_complex64_rank2 => release_pointer_complex64_rank2
        procedure :: release_pointer_complex64_rank3 => release_pointer_complex64_rank3
        procedure :: release_pointer_complex64_rank4 => release_pointer_complex64_rank4
        procedure :: release_pointer_complex64_rank5 => release_pointer_complex64_rank5
        procedure :: release_pointer_real64_rank0 => release_pointer_real64_rank0
        procedure :: release_pointer_real64_rank1 => release_pointer_real64_rank1
        procedure :: release_pointer_real64_rank2 => release_pointer_real64_rank2
        procedure :: release_pointer_real64_rank3 => release_pointer_real64_rank3
        procedure :: release_pointer_real64_rank4 => release_pointer_real64_rank4
        procedure :: release_pointer_real64_rank5 => release_pointer_real64_rank5
        procedure :: release_pointer_real32_rank0 => release_pointer_real32_rank0
        procedure :: release_pointer_real32_rank1 => release_pointer_real32_rank1
        procedure :: release_pointer_real32_rank2 => release_pointer_real32_rank2
        procedure :: release_pointer_real32_rank3 => release_pointer_real32_rank3
        procedure :: release_pointer_real32_rank4 => release_pointer_real32_rank4
        procedure :: release_pointer_real32_rank5 => release_pointer_real32_rank5
        procedure :: release_pointer_int64_rank0 => release_pointer_int64_rank0
        procedure :: release_pointer_int64_rank1 => release_pointer_int64_rank1
        procedure :: release_pointer_int64_rank2 => release_pointer_int64_rank2
        procedure :: release_pointer_int64_rank3 => release_pointer_int64_rank3
        procedure :: release_pointer_int64_rank4 => release_pointer_int64_rank4
        procedure :: release_pointer_int64_rank5 => release_pointer_int64_rank5
        procedure :: release_pointer_int32_rank0 => release_pointer_int32_rank0
        procedure :: release_pointer_int32_rank1 => release_pointer_int32_rank1
        procedure :: release_pointer_int32_rank2 => release_pointer_int32_rank2
        procedure :: release_pointer_int32_rank3 => release_pointer_int32_rank3
        procedure :: release_pointer_int32_rank4 => release_pointer_int32_rank4
        procedure :: release_pointer_int32_rank5 => release_pointer_int32_rank5
        procedure :: release_pointer_int16_rank0 => release_pointer_int16_rank0
        procedure :: release_pointer_int16_rank1 => release_pointer_int16_rank1
        procedure :: release_pointer_int16_rank2 => release_pointer_int16_rank2
        procedure :: release_pointer_int16_rank3 => release_pointer_int16_rank3
        procedure :: release_pointer_int16_rank4 => release_pointer_int16_rank4
        procedure :: release_pointer_int16_rank5 => release_pointer_int16_rank5
        procedure :: release_pointer_int8_rank0 => release_pointer_int8_rank0
        procedure :: release_pointer_int8_rank1 => release_pointer_int8_rank1
        procedure :: release_pointer_int8_rank2 => release_pointer_int8_rank2
        procedure :: release_pointer_int8_rank3 => release_pointer_int8_rank3
        procedure :: release_pointer_int8_rank4 => release_pointer_int8_rank4
        procedure :: release_pointer_int8_rank5 => release_pointer_int8_rank5
        procedure :: update_remote_and_release_pointer_complex128_rank0 => &
                update_remote_and_release_pointer_complex128_rank0
        procedure :: update_remote_and_release_pointer_complex128_rank1 => &
                update_remote_and_release_pointer_complex128_rank1
        procedure :: update_remote_and_release_pointer_complex128_rank2 => &
                update_remote_and_release_pointer_complex128_rank2
        procedure :: update_remote_and_release_pointer_complex128_rank3 => &
                update_remote_and_release_pointer_complex128_rank3
        procedure :: update_remote_and_release_pointer_complex128_rank4 => &
                update_remote_and_release_pointer_complex128_rank4
        procedure :: update_remote_and_release_pointer_complex128_rank5 => &
                update_remote_and_release_pointer_complex128_rank5
        procedure :: update_remote_and_release_pointer_complex64_rank0 => &
                update_remote_and_release_pointer_complex64_rank0
        procedure :: update_remote_and_release_pointer_complex64_rank1 => &
                update_remote_and_release_pointer_complex64_rank1
        procedure :: update_remote_and_release_pointer_complex64_rank2 => &
                update_remote_and_release_pointer_complex64_rank2
        procedure :: update_remote_and_release_pointer_complex64_rank3 => &
                update_remote_and_release_pointer_complex64_rank3
        procedure :: update_remote_and_release_pointer_complex64_rank4 => &
                update_remote_and_release_pointer_complex64_rank4
        procedure :: update_remote_and_release_pointer_complex64_rank5 => &
                update_remote_and_release_pointer_complex64_rank5
        procedure :: update_remote_and_release_pointer_real64_rank0 => update_remote_and_release_pointer_real64_rank0
        procedure :: update_remote_and_release_pointer_real64_rank1 => update_remote_and_release_pointer_real64_rank1
        procedure :: update_remote_and_release_pointer_real64_rank2 => update_remote_and_release_pointer_real64_rank2
        procedure :: update_remote_and_release_pointer_real64_rank3 => update_remote_and_release_pointer_real64_rank3
        procedure :: update_remote_and_release_pointer_real64_rank4 => update_remote_and_release_pointer_real64_rank4
        procedure :: update_remote_and_release_pointer_real64_rank5 => update_remote_and_release_pointer_real64_rank5
        procedure :: update_remote_and_release_pointer_real32_rank0 => update_remote_and_release_pointer_real32_rank0
        procedure :: update_remote_and_release_pointer_real32_rank1 => update_remote_and_release_pointer_real32_rank1
        procedure :: update_remote_and_release_pointer_real32_rank2 => update_remote_and_release_pointer_real32_rank2
        procedure :: update_remote_and_release_pointer_real32_rank3 => update_remote_and_release_pointer_real32_rank3
        procedure :: update_remote_and_release_pointer_real32_rank4 => update_remote_and_release_pointer_real32_rank4
        procedure :: update_remote_and_release_pointer_real32_rank5 => update_remote_and_release_pointer_real32_rank5
        procedure :: update_remote_and_release_pointer_int64_rank0 => update_remote_and_release_pointer_int64_rank0
        procedure :: update_remote_and_release_pointer_int64_rank1 => update_remote_and_release_pointer_int64_rank1
        procedure :: update_remote_and_release_pointer_int64_rank2 => update_remote_and_release_pointer_int64_rank2
        procedure :: update_remote_and_release_pointer_int64_rank3 => update_remote_and_release_pointer_int64_rank3
        procedure :: update_remote_and_release_pointer_int64_rank4 => update_remote_and_release_pointer_int64_rank4
        procedure :: update_remote_and_release_pointer_int64_rank5 => update_remote_and_release_pointer_int64_rank5
        procedure :: update_remote_and_release_pointer_int32_rank0 => update_remote_and_release_pointer_int32_rank0
        procedure :: update_remote_and_release_pointer_int32_rank1 => update_remote_and_release_pointer_int32_rank1
        procedure :: update_remote_and_release_pointer_int32_rank2 => update_remote_and_release_pointer_int32_rank2
        procedure :: update_remote_and_release_pointer_int32_rank3 => update_remote_and_release_pointer_int32_rank3
        procedure :: update_remote_and_release_pointer_int32_rank4 => update_remote_and_release_pointer_int32_rank4
        procedure :: update_remote_and_release_pointer_int32_rank5 => update_remote_and_release_pointer_int32_rank5
        procedure :: update_remote_and_release_pointer_int16_rank0 => update_remote_and_release_pointer_int16_rank0
        procedure :: update_remote_and_release_pointer_int16_rank1 => update_remote_and_release_pointer_int16_rank1
        procedure :: update_remote_and_release_pointer_int16_rank2 => update_remote_and_release_pointer_int16_rank2
        procedure :: update_remote_and_release_pointer_int16_rank3 => update_remote_and_release_pointer_int16_rank3
        procedure :: update_remote_and_release_pointer_int16_rank4 => update_remote_and_release_pointer_int16_rank4
        procedure :: update_remote_and_release_pointer_int16_rank5 => update_remote_and_release_pointer_int16_rank5
        procedure :: update_remote_and_release_pointer_int8_rank0 => update_remote_and_release_pointer_int8_rank0
        procedure :: update_remote_and_release_pointer_int8_rank1 => update_remote_and_release_pointer_int8_rank1
        procedure :: update_remote_and_release_pointer_int8_rank2 => update_remote_and_release_pointer_int8_rank2
        procedure :: update_remote_and_release_pointer_int8_rank3 => update_remote_and_release_pointer_int8_rank3
        procedure :: update_remote_and_release_pointer_int8_rank4 => update_remote_and_release_pointer_int8_rank4
        procedure :: update_remote_and_release_pointer_int8_rank5 => update_remote_and_release_pointer_int8_rank5
        procedure :: cleanup => cleanup
    end type tensor_fortran_converter

    interface secure_fortran_pointer_from_tensor
        module procedure secure_complex128_rank0
        module procedure secure_complex128_rank1
        module procedure secure_complex128_rank2
        module procedure secure_complex128_rank3
        module procedure secure_complex128_rank4
        module procedure secure_complex128_rank5
        module procedure secure_complex64_rank0
        module procedure secure_complex64_rank1
        module procedure secure_complex64_rank2
        module procedure secure_complex64_rank3
        module procedure secure_complex64_rank4
        module procedure secure_complex64_rank5
        module procedure secure_real64_rank0
        module procedure secure_real64_rank1
        module procedure secure_real64_rank2
        module procedure secure_real64_rank3
        module procedure secure_real64_rank4
        module procedure secure_real64_rank5
        module procedure secure_real32_rank0
        module procedure secure_real32_rank1
        module procedure secure_real32_rank2
        module procedure secure_real32_rank3
        module procedure secure_real32_rank4
        module procedure secure_real32_rank5
        module procedure secure_int64_rank0
        module procedure secure_int64_rank1
        module procedure secure_int64_rank2
        module procedure secure_int64_rank3
        module procedure secure_int64_rank4
        module procedure secure_int64_rank5
        module procedure secure_int32_rank0
        module procedure secure_int32_rank1
        module procedure secure_int32_rank2
        module procedure secure_int32_rank3
        module procedure secure_int32_rank4
        module procedure secure_int32_rank5
        module procedure secure_int16_rank0
        module procedure secure_int16_rank1
        module procedure secure_int16_rank2
        module procedure secure_int16_rank3
        module procedure secure_int16_rank4
        module procedure secure_int16_rank5
        module procedure secure_int8_rank0
        module procedure secure_int8_rank1
        module procedure secure_int8_rank2
        module procedure secure_int8_rank3
        module procedure secure_int8_rank4
        module procedure secure_int8_rank5
    end interface secure_fortran_pointer_from_tensor

    interface update_remote_tensor_from_pointer
        module procedure update_complex128_rank0
        module procedure update_complex128_rank1
        module procedure update_complex128_rank2
        module procedure update_complex128_rank3
        module procedure update_complex128_rank4
        module procedure update_complex128_rank5
        module procedure update_complex64_rank0
        module procedure update_complex64_rank1
        module procedure update_complex64_rank2
        module procedure update_complex64_rank3
        module procedure update_complex64_rank4
        module procedure update_complex64_rank5
        module procedure update_real64_rank0
        module procedure update_real64_rank1
        module procedure update_real64_rank2
        module procedure update_real64_rank3
        module procedure update_real64_rank4
        module procedure update_real64_rank5
        module procedure update_real32_rank0
        module procedure update_real32_rank1
        module procedure update_real32_rank2
        module procedure update_real32_rank3
        module procedure update_real32_rank4
        module procedure update_real32_rank5
        module procedure update_int64_rank0
        module procedure update_int64_rank1
        module procedure update_int64_rank2
        module procedure update_int64_rank3
        module procedure update_int64_rank4
        module procedure update_int64_rank5
        module procedure update_int32_rank0
        module procedure update_int32_rank1
        module procedure update_int32_rank2
        module procedure update_int32_rank3
        module procedure update_int32_rank4
        module procedure update_int32_rank5
        module procedure update_int16_rank0
        module procedure update_int16_rank1
        module procedure update_int16_rank2
        module procedure update_int16_rank3
        module procedure update_int16_rank4
        module procedure update_int16_rank5
        module procedure update_int8_rank0
        module procedure update_int8_rank1
        module procedure update_int8_rank2
        module procedure update_int8_rank3
        module procedure update_int8_rank4
        module procedure update_int8_rank5
    end interface update_remote_tensor_from_pointer

    interface release_pointer_from_remote_tensor
        module procedure release_complex128_rank0
        module procedure release_complex128_rank1
        module procedure release_complex128_rank2
        module procedure release_complex128_rank3
        module procedure release_complex128_rank4
        module procedure release_complex128_rank5
        module procedure release_complex64_rank0
        module procedure release_complex64_rank1
        module procedure release_complex64_rank2
        module procedure release_complex64_rank3
        module procedure release_complex64_rank4
        module procedure release_complex64_rank5
        module procedure release_real64_rank0
        module procedure release_real64_rank1
        module procedure release_real64_rank2
        module procedure release_real64_rank3
        module procedure release_real64_rank4
        module procedure release_real64_rank5
        module procedure release_real32_rank0
        module procedure release_real32_rank1
        module procedure release_real32_rank2
        module procedure release_real32_rank3
        module procedure release_real32_rank4
        module procedure release_real32_rank5
        module procedure release_int64_rank0
        module procedure release_int64_rank1
        module procedure release_int64_rank2
        module procedure release_int64_rank3
        module procedure release_int64_rank4
        module procedure release_int64_rank5
        module procedure release_int32_rank0
        module procedure release_int32_rank1
        module procedure release_int32_rank2
        module procedure release_int32_rank3
        module procedure release_int32_rank4
        module procedure release_int32_rank5
        module procedure release_int16_rank0
        module procedure release_int16_rank1
        module procedure release_int16_rank2
        module procedure release_int16_rank3
        module procedure release_int16_rank4
        module procedure release_int16_rank5
        module procedure release_int8_rank0
        module procedure release_int8_rank1
        module procedure release_int8_rank2
        module procedure release_int8_rank3
        module procedure release_int8_rank4
        module procedure release_int8_rank5
    end interface release_pointer_from_remote_tensor

    interface update_remote_tensor_and_release_pointer
        module procedure update_and_release_complex128_rank0
        module procedure update_and_release_complex128_rank1
        module procedure update_and_release_complex128_rank2
        module procedure update_and_release_complex128_rank3
        module procedure update_and_release_complex128_rank4
        module procedure update_and_release_complex128_rank5
        module procedure update_and_release_complex64_rank0
        module procedure update_and_release_complex64_rank1
        module procedure update_and_release_complex64_rank2
        module procedure update_and_release_complex64_rank3
        module procedure update_and_release_complex64_rank4
        module procedure update_and_release_complex64_rank5
        module procedure update_and_release_real64_rank0
        module procedure update_and_release_real64_rank1
        module procedure update_and_release_real64_rank2
        module procedure update_and_release_real64_rank3
        module procedure update_and_release_real64_rank4
        module procedure update_and_release_real64_rank5
        module procedure update_and_release_real32_rank0
        module procedure update_and_release_real32_rank1
        module procedure update_and_release_real32_rank2
        module procedure update_and_release_real32_rank3
        module procedure update_and_release_real32_rank4
        module procedure update_and_release_real32_rank5
        module procedure update_and_release_int64_rank0
        module procedure update_and_release_int64_rank1
        module procedure update_and_release_int64_rank2
        module procedure update_and_release_int64_rank3
        module procedure update_and_release_int64_rank4
        module procedure update_and_release_int64_rank5
        module procedure update_and_release_int32_rank0
        module procedure update_and_release_int32_rank1
        module procedure update_and_release_int32_rank2
        module procedure update_and_release_int32_rank3
        module procedure update_and_release_int32_rank4
        module procedure update_and_release_int32_rank5
        module procedure update_and_release_int16_rank0
        module procedure update_and_release_int16_rank1
        module procedure update_and_release_int16_rank2
        module procedure update_and_release_int16_rank3
        module procedure update_and_release_int16_rank4
        module procedure update_and_release_int16_rank5
        module procedure update_and_release_int8_rank0
        module procedure update_and_release_int8_rank1
        module procedure update_and_release_int8_rank2
        module procedure update_and_release_int8_rank3
        module procedure update_and_release_int8_rank4
        module procedure update_and_release_int8_rank5
    end interface update_remote_tensor_and_release_pointer

    interface tensor_fortran_converter
        module procedure constructor_empty
        module procedure constructor
    end interface tensor_fortran_converter
contains
    function constructor_empty() result(this)
        type(tensor_fortran_converter) :: this
     
        this = tensor_fortran_converter(fortran_data_converter())
    end function constructor_empty
     
    function constructor(converter) result(this)
        type(fortran_data_converter), intent(in) :: converter
        type(tensor_fortran_converter) :: this
     
        this%converter = converter
    end function constructor

    subroutine secure_fortran_pointer_complex128_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, astream)
    end subroutine secure_fortran_pointer_complex128_rank0

    subroutine secure_complex128_rank0(ptr, remote, astream)
        complex(real64), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_complex128_rank0

    subroutine secure_fortran_pointer_complex128_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                [remote%number_of_elements], astream)
    end subroutine secure_fortran_pointer_complex128_rank1

    subroutine secure_complex128_rank1(ptr, remote, astream)
        complex(real64), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_complex128_rank1

    subroutine secure_fortran_pointer_complex128_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_complex128_rank2

    subroutine secure_complex128_rank2(ptr, remote, astream)
        complex(real64), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_complex128_rank2

    subroutine secure_fortran_pointer_complex128_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_complex128_rank3

    subroutine secure_complex128_rank3(ptr, remote, astream)
        complex(real64), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_complex128_rank3

    subroutine secure_fortran_pointer_complex128_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_complex128_rank4

    subroutine secure_complex128_rank4(ptr, remote, astream)
        complex(real64), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_complex128_rank4

    subroutine secure_fortran_pointer_complex128_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_complex128_rank5

    subroutine secure_complex128_rank5(ptr, remote, astream)
        complex(real64), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_complex128_rank5

    subroutine secure_fortran_pointer_complex64_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, astream)
    end subroutine secure_fortran_pointer_complex64_rank0

    subroutine secure_complex64_rank0(ptr, remote, astream)
        complex(real32), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_complex64_rank0

    subroutine secure_fortran_pointer_complex64_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                [remote%number_of_elements], astream)
    end subroutine secure_fortran_pointer_complex64_rank1

    subroutine secure_complex64_rank1(ptr, remote, astream)
        complex(real32), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_complex64_rank1

    subroutine secure_fortran_pointer_complex64_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_complex64_rank2

    subroutine secure_complex64_rank2(ptr, remote, astream)
        complex(real32), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_complex64_rank2

    subroutine secure_fortran_pointer_complex64_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_complex64_rank3

    subroutine secure_complex64_rank3(ptr, remote, astream)
        complex(real32), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_complex64_rank3

    subroutine secure_fortran_pointer_complex64_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_complex64_rank4

    subroutine secure_complex64_rank4(ptr, remote, astream)
        complex(real32), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_complex64_rank4

    subroutine secure_fortran_pointer_complex64_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_complex64_rank5

    subroutine secure_complex64_rank5(ptr, remote, astream)
        complex(real32), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_complex64_rank5

    subroutine secure_fortran_pointer_real64_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, astream)
    end subroutine secure_fortran_pointer_real64_rank0

    subroutine secure_real64_rank0(ptr, remote, astream)
        real(real64), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_real64_rank0

    subroutine secure_fortran_pointer_real64_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                [remote%number_of_elements], astream)
    end subroutine secure_fortran_pointer_real64_rank1

    subroutine secure_real64_rank1(ptr, remote, astream)
        real(real64), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_real64_rank1

    subroutine secure_fortran_pointer_real64_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_real64_rank2

    subroutine secure_real64_rank2(ptr, remote, astream)
        real(real64), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_real64_rank2

    subroutine secure_fortran_pointer_real64_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_real64_rank3

    subroutine secure_real64_rank3(ptr, remote, astream)
        real(real64), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_real64_rank3

    subroutine secure_fortran_pointer_real64_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_real64_rank4

    subroutine secure_real64_rank4(ptr, remote, astream)
        real(real64), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_real64_rank4

    subroutine secure_fortran_pointer_real64_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_real64_rank5

    subroutine secure_real64_rank5(ptr, remote, astream)
        real(real64), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_real64_rank5

    subroutine secure_fortran_pointer_real32_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, astream)
    end subroutine secure_fortran_pointer_real32_rank0

    subroutine secure_real32_rank0(ptr, remote, astream)
        real(real32), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_real32_rank0

    subroutine secure_fortran_pointer_real32_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                [remote%number_of_elements], astream)
    end subroutine secure_fortran_pointer_real32_rank1

    subroutine secure_real32_rank1(ptr, remote, astream)
        real(real32), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_real32_rank1

    subroutine secure_fortran_pointer_real32_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_real32_rank2

    subroutine secure_real32_rank2(ptr, remote, astream)
        real(real32), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_real32_rank2

    subroutine secure_fortran_pointer_real32_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_real32_rank3

    subroutine secure_real32_rank3(ptr, remote, astream)
        real(real32), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_real32_rank3

    subroutine secure_fortran_pointer_real32_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_real32_rank4

    subroutine secure_real32_rank4(ptr, remote, astream)
        real(real32), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_real32_rank4

    subroutine secure_fortran_pointer_real32_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_real32_rank5

    subroutine secure_real32_rank5(ptr, remote, astream)
        real(real32), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_real32_rank5

    subroutine secure_fortran_pointer_int64_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, astream)
    end subroutine secure_fortran_pointer_int64_rank0

    subroutine secure_int64_rank0(ptr, remote, astream)
        integer(int64), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int64_rank0

    subroutine secure_fortran_pointer_int64_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                [remote%number_of_elements], astream)
    end subroutine secure_fortran_pointer_int64_rank1

    subroutine secure_int64_rank1(ptr, remote, astream)
        integer(int64), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int64_rank1

    subroutine secure_fortran_pointer_int64_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_int64_rank2

    subroutine secure_int64_rank2(ptr, remote, astream)
        integer(int64), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int64_rank2

    subroutine secure_fortran_pointer_int64_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_int64_rank3

    subroutine secure_int64_rank3(ptr, remote, astream)
        integer(int64), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int64_rank3

    subroutine secure_fortran_pointer_int64_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_int64_rank4

    subroutine secure_int64_rank4(ptr, remote, astream)
        integer(int64), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int64_rank4

    subroutine secure_fortran_pointer_int64_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_int64_rank5

    subroutine secure_int64_rank5(ptr, remote, astream)
        integer(int64), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int64_rank5

    subroutine secure_fortran_pointer_int32_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, astream)
    end subroutine secure_fortran_pointer_int32_rank0

    subroutine secure_int32_rank0(ptr, remote, astream)
        integer(int32), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int32_rank0

    subroutine secure_fortran_pointer_int32_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                [remote%number_of_elements], astream)
    end subroutine secure_fortran_pointer_int32_rank1

    subroutine secure_int32_rank1(ptr, remote, astream)
        integer(int32), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int32_rank1

    subroutine secure_fortran_pointer_int32_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_int32_rank2

    subroutine secure_int32_rank2(ptr, remote, astream)
        integer(int32), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int32_rank2

    subroutine secure_fortran_pointer_int32_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_int32_rank3

    subroutine secure_int32_rank3(ptr, remote, astream)
        integer(int32), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int32_rank3

    subroutine secure_fortran_pointer_int32_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_int32_rank4

    subroutine secure_int32_rank4(ptr, remote, astream)
        integer(int32), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int32_rank4

    subroutine secure_fortran_pointer_int32_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_int32_rank5

    subroutine secure_int32_rank5(ptr, remote, astream)
        integer(int32), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int32_rank5

    subroutine secure_fortran_pointer_int16_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, astream)
    end subroutine secure_fortran_pointer_int16_rank0

    subroutine secure_int16_rank0(ptr, remote, astream)
        integer(int16), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int16_rank0

    subroutine secure_fortran_pointer_int16_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                [remote%number_of_elements], astream)
    end subroutine secure_fortran_pointer_int16_rank1

    subroutine secure_int16_rank1(ptr, remote, astream)
        integer(int16), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int16_rank1

    subroutine secure_fortran_pointer_int16_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_int16_rank2

    subroutine secure_int16_rank2(ptr, remote, astream)
        integer(int16), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int16_rank2

    subroutine secure_fortran_pointer_int16_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_int16_rank3

    subroutine secure_int16_rank3(ptr, remote, astream)
        integer(int16), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int16_rank3

    subroutine secure_fortran_pointer_int16_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_int16_rank4

    subroutine secure_int16_rank4(ptr, remote, astream)
        integer(int16), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int16_rank4

    subroutine secure_fortran_pointer_int16_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_int16_rank5

    subroutine secure_int16_rank5(ptr, remote, astream)
        integer(int16), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int16_rank5

    subroutine secure_fortran_pointer_int8_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, astream)
    end subroutine secure_fortran_pointer_int8_rank0

    subroutine secure_int8_rank0(ptr, remote, astream)
        integer(int8), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int8_rank0

    subroutine secure_fortran_pointer_int8_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                [remote%number_of_elements], astream)
    end subroutine secure_fortran_pointer_int8_rank1

    subroutine secure_int8_rank1(ptr, remote, astream)
        integer(int8), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int8_rank1

    subroutine secure_fortran_pointer_int8_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_int8_rank2

    subroutine secure_int8_rank2(ptr, remote, astream)
        integer(int8), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int8_rank2

    subroutine secure_fortran_pointer_int8_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_int8_rank3

    subroutine secure_int8_rank3(ptr, remote, astream)
        integer(int8), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int8_rank3

    subroutine secure_fortran_pointer_int8_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_int8_rank4

    subroutine secure_int8_rank4(ptr, remote, astream)
        integer(int8), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int8_rank4

    subroutine secure_fortran_pointer_int8_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%secure_fortran_pointer(ptr, remote%storage, &
                remote%get_dims(), astream)
    end subroutine secure_fortran_pointer_int8_rank5

    subroutine secure_int8_rank5(ptr, remote, astream)
        integer(int8), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%secure_fortran_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine secure_int8_rank5

    subroutine update_remote_complex128_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), pointer, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_complex128_rank0

    subroutine update_complex128_rank0(ptr, remote, astream)
        complex(real64), pointer, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_complex128_rank0

    subroutine release_pointer_complex128_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_complex128_rank0

    subroutine release_complex128_rank0(ptr, remote, astream)
        complex(real64), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_complex128_rank0

    subroutine update_remote_and_release_pointer_complex128_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), pointer, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_complex128_rank0

    subroutine update_and_release_complex128_rank0(ptr, remote, astream)
        complex(real64), pointer, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_complex128_rank0

    subroutine update_remote_complex128_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), dimension(:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_complex128_rank1

    subroutine update_complex128_rank1(ptr, remote, astream)
        complex(real64), dimension(:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_complex128_rank1

    subroutine release_pointer_complex128_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_complex128_rank1

    subroutine release_complex128_rank1(ptr, remote, astream)
        complex(real64), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_complex128_rank1

    subroutine update_remote_and_release_pointer_complex128_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_complex128_rank1

    subroutine update_and_release_complex128_rank1(ptr, remote, astream)
        complex(real64), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_complex128_rank1

    subroutine update_remote_complex128_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), dimension(:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_complex128_rank2

    subroutine update_complex128_rank2(ptr, remote, astream)
        complex(real64), dimension(:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_complex128_rank2

    subroutine release_pointer_complex128_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_complex128_rank2

    subroutine release_complex128_rank2(ptr, remote, astream)
        complex(real64), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_complex128_rank2

    subroutine update_remote_and_release_pointer_complex128_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_complex128_rank2

    subroutine update_and_release_complex128_rank2(ptr, remote, astream)
        complex(real64), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_complex128_rank2

    subroutine update_remote_complex128_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), dimension(:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_complex128_rank3

    subroutine update_complex128_rank3(ptr, remote, astream)
        complex(real64), dimension(:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_complex128_rank3

    subroutine release_pointer_complex128_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_complex128_rank3

    subroutine release_complex128_rank3(ptr, remote, astream)
        complex(real64), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_complex128_rank3

    subroutine update_remote_and_release_pointer_complex128_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_complex128_rank3

    subroutine update_and_release_complex128_rank3(ptr, remote, astream)
        complex(real64), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_complex128_rank3

    subroutine update_remote_complex128_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), dimension(:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_complex128_rank4

    subroutine update_complex128_rank4(ptr, remote, astream)
        complex(real64), dimension(:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_complex128_rank4

    subroutine release_pointer_complex128_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_complex128_rank4

    subroutine release_complex128_rank4(ptr, remote, astream)
        complex(real64), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_complex128_rank4

    subroutine update_remote_and_release_pointer_complex128_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_complex128_rank4

    subroutine update_and_release_complex128_rank4(ptr, remote, astream)
        complex(real64), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_complex128_rank4

    subroutine update_remote_complex128_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), dimension(:,:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_complex128_rank5

    subroutine update_complex128_rank5(ptr, remote, astream)
        complex(real64), dimension(:,:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_complex128_rank5

    subroutine release_pointer_complex128_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_complex128_rank5

    subroutine release_complex128_rank5(ptr, remote, astream)
        complex(real64), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_complex128_rank5

    subroutine update_remote_and_release_pointer_complex128_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real64), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_complex128_rank5

    subroutine update_and_release_complex128_rank5(ptr, remote, astream)
        complex(real64), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_complex128_rank5

    subroutine update_remote_complex64_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), pointer, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_complex64_rank0

    subroutine update_complex64_rank0(ptr, remote, astream)
        complex(real32), pointer, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_complex64_rank0

    subroutine release_pointer_complex64_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_complex64_rank0

    subroutine release_complex64_rank0(ptr, remote, astream)
        complex(real32), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_complex64_rank0

    subroutine update_remote_and_release_pointer_complex64_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), pointer, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_complex64_rank0

    subroutine update_and_release_complex64_rank0(ptr, remote, astream)
        complex(real32), pointer, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_complex64_rank0

    subroutine update_remote_complex64_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), dimension(:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_complex64_rank1

    subroutine update_complex64_rank1(ptr, remote, astream)
        complex(real32), dimension(:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_complex64_rank1

    subroutine release_pointer_complex64_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_complex64_rank1

    subroutine release_complex64_rank1(ptr, remote, astream)
        complex(real32), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_complex64_rank1

    subroutine update_remote_and_release_pointer_complex64_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_complex64_rank1

    subroutine update_and_release_complex64_rank1(ptr, remote, astream)
        complex(real32), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_complex64_rank1

    subroutine update_remote_complex64_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), dimension(:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_complex64_rank2

    subroutine update_complex64_rank2(ptr, remote, astream)
        complex(real32), dimension(:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_complex64_rank2

    subroutine release_pointer_complex64_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_complex64_rank2

    subroutine release_complex64_rank2(ptr, remote, astream)
        complex(real32), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_complex64_rank2

    subroutine update_remote_and_release_pointer_complex64_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_complex64_rank2

    subroutine update_and_release_complex64_rank2(ptr, remote, astream)
        complex(real32), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_complex64_rank2

    subroutine update_remote_complex64_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), dimension(:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_complex64_rank3

    subroutine update_complex64_rank3(ptr, remote, astream)
        complex(real32), dimension(:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_complex64_rank3

    subroutine release_pointer_complex64_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_complex64_rank3

    subroutine release_complex64_rank3(ptr, remote, astream)
        complex(real32), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_complex64_rank3

    subroutine update_remote_and_release_pointer_complex64_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_complex64_rank3

    subroutine update_and_release_complex64_rank3(ptr, remote, astream)
        complex(real32), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_complex64_rank3

    subroutine update_remote_complex64_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), dimension(:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_complex64_rank4

    subroutine update_complex64_rank4(ptr, remote, astream)
        complex(real32), dimension(:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_complex64_rank4

    subroutine release_pointer_complex64_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_complex64_rank4

    subroutine release_complex64_rank4(ptr, remote, astream)
        complex(real32), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_complex64_rank4

    subroutine update_remote_and_release_pointer_complex64_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_complex64_rank4

    subroutine update_and_release_complex64_rank4(ptr, remote, astream)
        complex(real32), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_complex64_rank4

    subroutine update_remote_complex64_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), dimension(:,:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_complex64_rank5

    subroutine update_complex64_rank5(ptr, remote, astream)
        complex(real32), dimension(:,:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_complex64_rank5

    subroutine release_pointer_complex64_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_complex64_rank5

    subroutine release_complex64_rank5(ptr, remote, astream)
        complex(real32), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_complex64_rank5

    subroutine update_remote_and_release_pointer_complex64_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        complex(real32), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_complex64_rank5

    subroutine update_and_release_complex64_rank5(ptr, remote, astream)
        complex(real32), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_complex64_rank5

    subroutine update_remote_real64_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), pointer, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_real64_rank0

    subroutine update_real64_rank0(ptr, remote, astream)
        real(real64), pointer, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_real64_rank0

    subroutine release_pointer_real64_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_real64_rank0

    subroutine release_real64_rank0(ptr, remote, astream)
        real(real64), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_real64_rank0

    subroutine update_remote_and_release_pointer_real64_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), pointer, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_real64_rank0

    subroutine update_and_release_real64_rank0(ptr, remote, astream)
        real(real64), pointer, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_real64_rank0

    subroutine update_remote_real64_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), dimension(:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_real64_rank1

    subroutine update_real64_rank1(ptr, remote, astream)
        real(real64), dimension(:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_real64_rank1

    subroutine release_pointer_real64_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_real64_rank1

    subroutine release_real64_rank1(ptr, remote, astream)
        real(real64), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_real64_rank1

    subroutine update_remote_and_release_pointer_real64_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_real64_rank1

    subroutine update_and_release_real64_rank1(ptr, remote, astream)
        real(real64), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_real64_rank1

    subroutine update_remote_real64_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), dimension(:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_real64_rank2

    subroutine update_real64_rank2(ptr, remote, astream)
        real(real64), dimension(:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_real64_rank2

    subroutine release_pointer_real64_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_real64_rank2

    subroutine release_real64_rank2(ptr, remote, astream)
        real(real64), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_real64_rank2

    subroutine update_remote_and_release_pointer_real64_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_real64_rank2

    subroutine update_and_release_real64_rank2(ptr, remote, astream)
        real(real64), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_real64_rank2

    subroutine update_remote_real64_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), dimension(:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_real64_rank3

    subroutine update_real64_rank3(ptr, remote, astream)
        real(real64), dimension(:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_real64_rank3

    subroutine release_pointer_real64_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_real64_rank3

    subroutine release_real64_rank3(ptr, remote, astream)
        real(real64), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_real64_rank3

    subroutine update_remote_and_release_pointer_real64_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_real64_rank3

    subroutine update_and_release_real64_rank3(ptr, remote, astream)
        real(real64), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_real64_rank3

    subroutine update_remote_real64_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), dimension(:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_real64_rank4

    subroutine update_real64_rank4(ptr, remote, astream)
        real(real64), dimension(:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_real64_rank4

    subroutine release_pointer_real64_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_real64_rank4

    subroutine release_real64_rank4(ptr, remote, astream)
        real(real64), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_real64_rank4

    subroutine update_remote_and_release_pointer_real64_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_real64_rank4

    subroutine update_and_release_real64_rank4(ptr, remote, astream)
        real(real64), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_real64_rank4

    subroutine update_remote_real64_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), dimension(:,:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_real64_rank5

    subroutine update_real64_rank5(ptr, remote, astream)
        real(real64), dimension(:,:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_real64_rank5

    subroutine release_pointer_real64_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_real64_rank5

    subroutine release_real64_rank5(ptr, remote, astream)
        real(real64), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_real64_rank5

    subroutine update_remote_and_release_pointer_real64_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real64), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_real64_rank5

    subroutine update_and_release_real64_rank5(ptr, remote, astream)
        real(real64), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_real64_rank5

    subroutine update_remote_real32_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), pointer, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_real32_rank0

    subroutine update_real32_rank0(ptr, remote, astream)
        real(real32), pointer, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_real32_rank0

    subroutine release_pointer_real32_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_real32_rank0

    subroutine release_real32_rank0(ptr, remote, astream)
        real(real32), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_real32_rank0

    subroutine update_remote_and_release_pointer_real32_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), pointer, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_real32_rank0

    subroutine update_and_release_real32_rank0(ptr, remote, astream)
        real(real32), pointer, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_real32_rank0

    subroutine update_remote_real32_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), dimension(:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_real32_rank1

    subroutine update_real32_rank1(ptr, remote, astream)
        real(real32), dimension(:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_real32_rank1

    subroutine release_pointer_real32_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_real32_rank1

    subroutine release_real32_rank1(ptr, remote, astream)
        real(real32), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_real32_rank1

    subroutine update_remote_and_release_pointer_real32_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_real32_rank1

    subroutine update_and_release_real32_rank1(ptr, remote, astream)
        real(real32), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_real32_rank1

    subroutine update_remote_real32_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), dimension(:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_real32_rank2

    subroutine update_real32_rank2(ptr, remote, astream)
        real(real32), dimension(:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_real32_rank2

    subroutine release_pointer_real32_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_real32_rank2

    subroutine release_real32_rank2(ptr, remote, astream)
        real(real32), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_real32_rank2

    subroutine update_remote_and_release_pointer_real32_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_real32_rank2

    subroutine update_and_release_real32_rank2(ptr, remote, astream)
        real(real32), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_real32_rank2

    subroutine update_remote_real32_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), dimension(:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_real32_rank3

    subroutine update_real32_rank3(ptr, remote, astream)
        real(real32), dimension(:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_real32_rank3

    subroutine release_pointer_real32_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_real32_rank3

    subroutine release_real32_rank3(ptr, remote, astream)
        real(real32), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_real32_rank3

    subroutine update_remote_and_release_pointer_real32_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_real32_rank3

    subroutine update_and_release_real32_rank3(ptr, remote, astream)
        real(real32), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_real32_rank3

    subroutine update_remote_real32_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), dimension(:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_real32_rank4

    subroutine update_real32_rank4(ptr, remote, astream)
        real(real32), dimension(:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_real32_rank4

    subroutine release_pointer_real32_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_real32_rank4

    subroutine release_real32_rank4(ptr, remote, astream)
        real(real32), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_real32_rank4

    subroutine update_remote_and_release_pointer_real32_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_real32_rank4

    subroutine update_and_release_real32_rank4(ptr, remote, astream)
        real(real32), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_real32_rank4

    subroutine update_remote_real32_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), dimension(:,:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_real32_rank5

    subroutine update_real32_rank5(ptr, remote, astream)
        real(real32), dimension(:,:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_real32_rank5

    subroutine release_pointer_real32_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_real32_rank5

    subroutine release_real32_rank5(ptr, remote, astream)
        real(real32), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_real32_rank5

    subroutine update_remote_and_release_pointer_real32_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        real(real32), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_real32_rank5

    subroutine update_and_release_real32_rank5(ptr, remote, astream)
        real(real32), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_real32_rank5

    subroutine update_remote_int64_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), pointer, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int64_rank0

    subroutine update_int64_rank0(ptr, remote, astream)
        integer(int64), pointer, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int64_rank0

    subroutine release_pointer_int64_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int64_rank0

    subroutine release_int64_rank0(ptr, remote, astream)
        integer(int64), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int64_rank0

    subroutine update_remote_and_release_pointer_int64_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), pointer, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int64_rank0

    subroutine update_and_release_int64_rank0(ptr, remote, astream)
        integer(int64), pointer, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int64_rank0

    subroutine update_remote_int64_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), dimension(:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int64_rank1

    subroutine update_int64_rank1(ptr, remote, astream)
        integer(int64), dimension(:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int64_rank1

    subroutine release_pointer_int64_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int64_rank1

    subroutine release_int64_rank1(ptr, remote, astream)
        integer(int64), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int64_rank1

    subroutine update_remote_and_release_pointer_int64_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int64_rank1

    subroutine update_and_release_int64_rank1(ptr, remote, astream)
        integer(int64), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int64_rank1

    subroutine update_remote_int64_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), dimension(:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int64_rank2

    subroutine update_int64_rank2(ptr, remote, astream)
        integer(int64), dimension(:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int64_rank2

    subroutine release_pointer_int64_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int64_rank2

    subroutine release_int64_rank2(ptr, remote, astream)
        integer(int64), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int64_rank2

    subroutine update_remote_and_release_pointer_int64_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int64_rank2

    subroutine update_and_release_int64_rank2(ptr, remote, astream)
        integer(int64), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int64_rank2

    subroutine update_remote_int64_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), dimension(:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int64_rank3

    subroutine update_int64_rank3(ptr, remote, astream)
        integer(int64), dimension(:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int64_rank3

    subroutine release_pointer_int64_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int64_rank3

    subroutine release_int64_rank3(ptr, remote, astream)
        integer(int64), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int64_rank3

    subroutine update_remote_and_release_pointer_int64_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int64_rank3

    subroutine update_and_release_int64_rank3(ptr, remote, astream)
        integer(int64), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int64_rank3

    subroutine update_remote_int64_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), dimension(:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int64_rank4

    subroutine update_int64_rank4(ptr, remote, astream)
        integer(int64), dimension(:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int64_rank4

    subroutine release_pointer_int64_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int64_rank4

    subroutine release_int64_rank4(ptr, remote, astream)
        integer(int64), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int64_rank4

    subroutine update_remote_and_release_pointer_int64_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int64_rank4

    subroutine update_and_release_int64_rank4(ptr, remote, astream)
        integer(int64), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int64_rank4

    subroutine update_remote_int64_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), dimension(:,:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int64_rank5

    subroutine update_int64_rank5(ptr, remote, astream)
        integer(int64), dimension(:,:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int64_rank5

    subroutine release_pointer_int64_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int64_rank5

    subroutine release_int64_rank5(ptr, remote, astream)
        integer(int64), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int64_rank5

    subroutine update_remote_and_release_pointer_int64_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int64), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int64_rank5

    subroutine update_and_release_int64_rank5(ptr, remote, astream)
        integer(int64), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int64_rank5

    subroutine update_remote_int32_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), pointer, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int32_rank0

    subroutine update_int32_rank0(ptr, remote, astream)
        integer(int32), pointer, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int32_rank0

    subroutine release_pointer_int32_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int32_rank0

    subroutine release_int32_rank0(ptr, remote, astream)
        integer(int32), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int32_rank0

    subroutine update_remote_and_release_pointer_int32_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), pointer, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int32_rank0

    subroutine update_and_release_int32_rank0(ptr, remote, astream)
        integer(int32), pointer, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int32_rank0

    subroutine update_remote_int32_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), dimension(:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int32_rank1

    subroutine update_int32_rank1(ptr, remote, astream)
        integer(int32), dimension(:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int32_rank1

    subroutine release_pointer_int32_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int32_rank1

    subroutine release_int32_rank1(ptr, remote, astream)
        integer(int32), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int32_rank1

    subroutine update_remote_and_release_pointer_int32_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int32_rank1

    subroutine update_and_release_int32_rank1(ptr, remote, astream)
        integer(int32), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int32_rank1

    subroutine update_remote_int32_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), dimension(:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int32_rank2

    subroutine update_int32_rank2(ptr, remote, astream)
        integer(int32), dimension(:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int32_rank2

    subroutine release_pointer_int32_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int32_rank2

    subroutine release_int32_rank2(ptr, remote, astream)
        integer(int32), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int32_rank2

    subroutine update_remote_and_release_pointer_int32_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int32_rank2

    subroutine update_and_release_int32_rank2(ptr, remote, astream)
        integer(int32), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int32_rank2

    subroutine update_remote_int32_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), dimension(:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int32_rank3

    subroutine update_int32_rank3(ptr, remote, astream)
        integer(int32), dimension(:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int32_rank3

    subroutine release_pointer_int32_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int32_rank3

    subroutine release_int32_rank3(ptr, remote, astream)
        integer(int32), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int32_rank3

    subroutine update_remote_and_release_pointer_int32_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int32_rank3

    subroutine update_and_release_int32_rank3(ptr, remote, astream)
        integer(int32), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int32_rank3

    subroutine update_remote_int32_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), dimension(:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int32_rank4

    subroutine update_int32_rank4(ptr, remote, astream)
        integer(int32), dimension(:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int32_rank4

    subroutine release_pointer_int32_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int32_rank4

    subroutine release_int32_rank4(ptr, remote, astream)
        integer(int32), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int32_rank4

    subroutine update_remote_and_release_pointer_int32_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int32_rank4

    subroutine update_and_release_int32_rank4(ptr, remote, astream)
        integer(int32), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int32_rank4

    subroutine update_remote_int32_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), dimension(:,:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int32_rank5

    subroutine update_int32_rank5(ptr, remote, astream)
        integer(int32), dimension(:,:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int32_rank5

    subroutine release_pointer_int32_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int32_rank5

    subroutine release_int32_rank5(ptr, remote, astream)
        integer(int32), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int32_rank5

    subroutine update_remote_and_release_pointer_int32_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int32), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int32_rank5

    subroutine update_and_release_int32_rank5(ptr, remote, astream)
        integer(int32), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int32_rank5

    subroutine update_remote_int16_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), pointer, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int16_rank0

    subroutine update_int16_rank0(ptr, remote, astream)
        integer(int16), pointer, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int16_rank0

    subroutine release_pointer_int16_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int16_rank0

    subroutine release_int16_rank0(ptr, remote, astream)
        integer(int16), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int16_rank0

    subroutine update_remote_and_release_pointer_int16_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), pointer, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int16_rank0

    subroutine update_and_release_int16_rank0(ptr, remote, astream)
        integer(int16), pointer, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int16_rank0

    subroutine update_remote_int16_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), dimension(:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int16_rank1

    subroutine update_int16_rank1(ptr, remote, astream)
        integer(int16), dimension(:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int16_rank1

    subroutine release_pointer_int16_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int16_rank1

    subroutine release_int16_rank1(ptr, remote, astream)
        integer(int16), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int16_rank1

    subroutine update_remote_and_release_pointer_int16_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int16_rank1

    subroutine update_and_release_int16_rank1(ptr, remote, astream)
        integer(int16), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int16_rank1

    subroutine update_remote_int16_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), dimension(:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int16_rank2

    subroutine update_int16_rank2(ptr, remote, astream)
        integer(int16), dimension(:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int16_rank2

    subroutine release_pointer_int16_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int16_rank2

    subroutine release_int16_rank2(ptr, remote, astream)
        integer(int16), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int16_rank2

    subroutine update_remote_and_release_pointer_int16_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int16_rank2

    subroutine update_and_release_int16_rank2(ptr, remote, astream)
        integer(int16), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int16_rank2

    subroutine update_remote_int16_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), dimension(:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int16_rank3

    subroutine update_int16_rank3(ptr, remote, astream)
        integer(int16), dimension(:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int16_rank3

    subroutine release_pointer_int16_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int16_rank3

    subroutine release_int16_rank3(ptr, remote, astream)
        integer(int16), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int16_rank3

    subroutine update_remote_and_release_pointer_int16_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int16_rank3

    subroutine update_and_release_int16_rank3(ptr, remote, astream)
        integer(int16), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int16_rank3

    subroutine update_remote_int16_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), dimension(:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int16_rank4

    subroutine update_int16_rank4(ptr, remote, astream)
        integer(int16), dimension(:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int16_rank4

    subroutine release_pointer_int16_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int16_rank4

    subroutine release_int16_rank4(ptr, remote, astream)
        integer(int16), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int16_rank4

    subroutine update_remote_and_release_pointer_int16_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int16_rank4

    subroutine update_and_release_int16_rank4(ptr, remote, astream)
        integer(int16), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int16_rank4

    subroutine update_remote_int16_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), dimension(:,:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int16_rank5

    subroutine update_int16_rank5(ptr, remote, astream)
        integer(int16), dimension(:,:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int16_rank5

    subroutine release_pointer_int16_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int16_rank5

    subroutine release_int16_rank5(ptr, remote, astream)
        integer(int16), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int16_rank5

    subroutine update_remote_and_release_pointer_int16_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int16), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int16_rank5

    subroutine update_and_release_int16_rank5(ptr, remote, astream)
        integer(int16), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int16_rank5

    subroutine update_remote_int8_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), pointer, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int8_rank0

    subroutine update_int8_rank0(ptr, remote, astream)
        integer(int8), pointer, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int8_rank0

    subroutine release_pointer_int8_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int8_rank0

    subroutine release_int8_rank0(ptr, remote, astream)
        integer(int8), pointer, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int8_rank0

    subroutine update_remote_and_release_pointer_int8_rank0(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), pointer, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int8_rank0

    subroutine update_and_release_int8_rank0(ptr, remote, astream)
        integer(int8), pointer, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int8_rank0

    subroutine update_remote_int8_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), dimension(:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int8_rank1

    subroutine update_int8_rank1(ptr, remote, astream)
        integer(int8), dimension(:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int8_rank1

    subroutine release_pointer_int8_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int8_rank1

    subroutine release_int8_rank1(ptr, remote, astream)
        integer(int8), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int8_rank1

    subroutine update_remote_and_release_pointer_int8_rank1(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int8_rank1

    subroutine update_and_release_int8_rank1(ptr, remote, astream)
        integer(int8), dimension(:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int8_rank1

    subroutine update_remote_int8_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), dimension(:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int8_rank2

    subroutine update_int8_rank2(ptr, remote, astream)
        integer(int8), dimension(:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int8_rank2

    subroutine release_pointer_int8_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int8_rank2

    subroutine release_int8_rank2(ptr, remote, astream)
        integer(int8), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int8_rank2

    subroutine update_remote_and_release_pointer_int8_rank2(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int8_rank2

    subroutine update_and_release_int8_rank2(ptr, remote, astream)
        integer(int8), dimension(:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int8_rank2

    subroutine update_remote_int8_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), dimension(:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int8_rank3

    subroutine update_int8_rank3(ptr, remote, astream)
        integer(int8), dimension(:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int8_rank3

    subroutine release_pointer_int8_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int8_rank3

    subroutine release_int8_rank3(ptr, remote, astream)
        integer(int8), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int8_rank3

    subroutine update_remote_and_release_pointer_int8_rank3(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int8_rank3

    subroutine update_and_release_int8_rank3(ptr, remote, astream)
        integer(int8), dimension(:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int8_rank3

    subroutine update_remote_int8_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), dimension(:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int8_rank4

    subroutine update_int8_rank4(ptr, remote, astream)
        integer(int8), dimension(:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int8_rank4

    subroutine release_pointer_int8_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int8_rank4

    subroutine release_int8_rank4(ptr, remote, astream)
        integer(int8), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int8_rank4

    subroutine update_remote_and_release_pointer_int8_rank4(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int8_rank4

    subroutine update_and_release_int8_rank4(ptr, remote, astream)
        integer(int8), dimension(:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int8_rank4

    subroutine update_remote_int8_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), dimension(:,:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%update_remote(ptr, remote%storage, astream)
    end subroutine update_remote_int8_rank5

    subroutine update_int8_rank5(ptr, remote, astream)
        integer(int8), dimension(:,:,:,:,:), pointer, contiguous, intent(in) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_int8_rank5

    subroutine release_pointer_int8_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        call this%converter%release_pointer(ptr, remote%storage, astream)
    end subroutine release_pointer_int8_rank5

    subroutine release_int8_rank5(ptr, remote, astream)
        integer(int8), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(in) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine release_int8_rank5

    subroutine update_remote_and_release_pointer_int8_rank5(this, ptr, remote, astream)
        class(tensor_fortran_converter), intent(in) :: this
        integer(int8), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        call this%update_remote(ptr, remote, astream)
        call this%release_pointer(ptr, remote, astream)
    end subroutine update_remote_and_release_pointer_int8_rank5

    subroutine update_and_release_int8_rank5(ptr, remote, astream)
        integer(int8), dimension(:,:,:,:,:), pointer, contiguous, intent(inout) :: ptr
        class(tensor), intent(inout) :: remote
        type(stream), intent(in), optional :: astream

        type(tensor_fortran_converter) :: converter

        converter = tensor_fortran_converter()
        call converter%update_remote(ptr, remote, astream)
        call converter%release_pointer(ptr, remote, astream)
        call converter%cleanup()
    end subroutine update_and_release_int8_rank5

    subroutine cleanup(this)
        class(tensor_fortran_converter), intent(inout) :: this

        call this%converter%cleanup()
    end subroutine cleanup
end module tensor_fortran_converter_module
