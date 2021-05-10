module tensor_datatypes
    implicit none
    private

    public :: dt_null
    public :: dt_c128
    public :: dt_r64
    public :: dt_i64
    public :: dt_c64
    public :: dt_r32
    public :: dt_i32
    public :: dt_i16
    public :: dt_i8
    public :: dt_c_ptr

    integer, parameter :: dt_null = 0
    integer, parameter :: dt_c128 = 1
    integer, parameter :: dt_r64 = 2
    integer, parameter :: dt_i64 = 3
    integer, parameter :: dt_c64 = 4
    integer, parameter :: dt_r32 = 5
    integer, parameter :: dt_i32 = 6
    integer, parameter :: dt_i16 = 7
    integer, parameter :: dt_i8 = 8
    integer, parameter :: dt_c_ptr = 99
end module tensor_datatypes
