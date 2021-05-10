module matrix_module
    use, intrinsic :: iso_fortran_env, only : int64
    use :: data_storage_module, only : data_storage

    ! All public objects in tensor are public here
    use :: tensor_module

    implicit none
    public

    type, extends(tensor) :: matrix
        logical :: is_transposed
    end type matrix

    interface matrix
        module procedure constructor_empty
        module procedure constructor_int64_array
        module procedure constructor_int64
        module procedure constructor_int
    end interface matrix
contains
    function constructor_empty() result(this)
        type(matrix) :: this

        call this%clear()
        this%is_transposed = .false.
        this%rank = 2
    end function constructor_empty

    function constructor_int64_array(storage, datatype, dims) result(this)
        class(data_storage), intent(in) :: storage
        integer, intent(in) :: datatype
        integer(int64), dimension(2), intent(in) :: dims
        type(matrix) :: this

        this = matrix()
        call this%setup(storage, datatype, dims)
    end function constructor_int64_array

    function constructor_int64(storage, datatype, nrows, ncols) result(this)
        class(data_storage), intent(in) :: storage
        integer, intent(in) :: datatype
        integer(int64), intent(in) :: nrows, ncols
        type(matrix) :: this

        this = matrix(storage, datatype, [nrows,ncols])
    end function constructor_int64

    function constructor_int(storage, datatype, nrows, ncols) result(this)
        class(data_storage), intent(in) :: storage
        integer, intent(in) :: datatype
        integer, intent(in) :: nrows, ncols
        type(matrix) :: this

        this = matrix(storage, datatype, int([nrows, ncols], int64))
    end function constructor_int
end module matrix_module
