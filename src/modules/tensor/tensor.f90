module tensor_module
    use, intrinsic :: iso_fortran_env, only : int64

    use :: data_storage_module, only : data_storage

    implicit none
    private

    public :: tensor

    type, abstract :: tensor
        class(data_storage), allocatable :: storage
        integer :: datatype, rank
        integer(int64) :: number_of_elements
        integer(int64), dimension(:), allocatable :: dims
    contains
        procedure :: setup => setup
        procedure :: get_datatype => get_datatype
        procedure :: get_number_of_elements => get_number_of_elements
        procedure :: get_dims => get_dims
        procedure :: get_rank => get_rank
        procedure :: set_dims_and_size => set_dims_and_size
        procedure :: is_allocated => is_allocated
        procedure :: release => release
        procedure :: cleanup => cleanup
        procedure :: clear => clear
    end type tensor
contains
    subroutine setup(this, storage, datatype, dims)
        class(tensor), intent(inout) :: this
        class(data_storage), intent(in), optional :: storage
        integer, intent(in), optional :: datatype
        integer(int64), dimension(:), intent(in), optional :: dims

        if ( present(storage) ) allocate(this%storage, source=storage)
        if ( present(datatype) ) this%datatype = datatype
        if ( present(dims) ) call this%set_dims_and_size(dims)
    end subroutine setup

    subroutine set_dims_and_size(this, dims)
        class(tensor), intent(inout) :: this
        integer(int64), dimension(:), intent(in) :: dims

        this%rank = size(dims)
        this%dims = dims
        this%number_of_elements = product(dims)
        if (this%rank == 0) this%number_of_elements = 1
    end subroutine set_dims_and_size

    pure logical function is_allocated(this)
        class(tensor), intent(in) :: this

        is_allocated = allocated(this%storage)
    end function is_allocated

    pure integer function get_datatype(this)
        class(tensor), intent(in) :: this

        get_datatype = this%datatype
    end function get_datatype

    function get_dims(this) result(dims)
        class(tensor), intent(in) :: this
        integer(int64), dimension(:), allocatable :: dims

        if (allocated(this%dims) ) then
            dims = this%dims
        else
            error stop "tensor::get_dims:Not allocated."
        end if
    end function get_dims

    pure integer function get_rank(this)
        class(tensor), intent(in) :: this

        get_rank = this%rank
    end function get_rank

    integer(int64) function get_number_of_elements(this)
        class(tensor), intent(in) :: this

        get_number_of_elements = this%number_of_elements
    end function get_number_of_elements

    subroutine release(this)
        class(tensor), intent(inout) :: this

        if ( allocated(this%storage)) deallocate(this%storage)
        if (allocated(this%dims)) deallocate(this%dims)

        call this%clear()
    end subroutine release

    subroutine cleanup(this)
        class(tensor), intent(inout) :: this

        if ( allocated(this%storage) ) call this%storage%deallocate_data()

        call this%release()
    end subroutine cleanup

    subroutine clear(this)
        class(tensor), intent(inout) :: this

        this%datatype = 0
        this%number_of_elements = 0
        this%rank = 0
    end subroutine clear
end module tensor_module
