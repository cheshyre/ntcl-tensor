module tensor_c_pointer_converter_module
    use, intrinsic :: iso_fortran_env, only : int64
    use, intrinsic :: iso_c_binding, only : c_ptr, c_intptr_t

    use :: data_api, only : &
            data_storage, &
            data_builder, &
            storage_builder, &
            memory_manager, &
            stream, &
            fortran_data_converter

    use :: tensor_module, only : tensor

    implicit none
    private

    public :: tensor_c_pointer_converter

    type :: tensor_c_pointer_converter
        class(data_builder), allocatable :: builder
        type(storage_builder) :: sbuilder
        type(fortran_data_converter) :: converter
    contains
        procedure :: secure_pointer => secure_pointer
        procedure :: update => update
        procedure :: release => release
        procedure :: update_and_release => update_and_release
        procedure :: secure_pointer_from_array => secure_pointer_from_array
        procedure :: update_array => update_array
        procedure :: release_from_array => release_from_array
        procedure :: update_array_and_release => update_array_and_release
        procedure :: cleanup => cleanup
        procedure :: set_builder => set_builder
    end type tensor_c_pointer_converter

    interface tensor_c_pointer_converter
        module procedure constructor
    end interface tensor_c_pointer_converter
contains
    function constructor(builder) result(this)
        class(data_builder), intent(in) :: builder
        type(tensor_c_pointer_converter) :: this

        call this%set_builder(builder)
        this%converter = fortran_data_converter()
    end function constructor

    subroutine secure_pointer(this, dta, ptr, astream)
        class(tensor_c_pointer_converter), intent(in) :: this
        class(tensor), intent(in) :: dta
        type(c_ptr), intent(inout) :: ptr
        type(stream), intent(in), optional :: astream

        class(data_storage), allocatable :: local

        call this%builder%allocate_class(local)
        call memory_manager%secure_local_storage(dta%storage, local, astream)
        ptr = local%get_data_pointer()

        deallocate(local)
    end subroutine secure_pointer

    subroutine update(this, dta, ptr, astream)
        class(tensor_c_pointer_converter), intent(in) :: this
        class(tensor), intent(inout) :: dta
        type(c_ptr), intent(in) :: ptr
        type(stream), intent(in), optional :: astream

        class(data_storage), allocatable :: local

        call this%builder%allocate_class(local)
        call local%set_data_pointer(ptr, dta%storage%number_of_bytes)
        call memory_manager%update_remote_storage(local, dta%storage, astream)

        deallocate(local)
    end subroutine update

    subroutine release(this, dta, ptr, astream)
        class(tensor_c_pointer_converter), intent(in) :: this
        class(tensor), intent(in) :: dta
        type(c_ptr), intent(inout) :: ptr
        type(stream), intent(in), optional :: astream

        class(data_storage), allocatable :: local

        call this%builder%allocate_class(local)
        call local%set_data_pointer(ptr, dta%storage%number_of_bytes)
        call memory_manager%release_local_storage(dta%storage, local, astream)

        deallocate(local)
    end subroutine release

    subroutine update_and_release(this, dta, ptr, astream)
        class(tensor_c_pointer_converter), intent(in) :: this
        class(tensor), intent(inout) :: dta
        type(c_ptr), intent(inout) :: ptr
        type(stream), intent(in), optional :: astream

        call this%update(dta, ptr, astream)
        call this%release(dta, ptr, astream)
    end subroutine update_and_release

    subroutine secure_pointer_from_array(this, dta, ptr, astream)
        class(tensor_c_pointer_converter), intent(in) :: this
        class(tensor), dimension(:), intent(in) :: dta
        type(c_ptr), intent(inout) :: ptr
        type(stream), intent(in), optional :: astream

        type(c_ptr), dimension(:), allocatable :: ptrs
        integer :: number_of_tensors, idx
        class(data_storage), allocatable :: local

        number_of_tensors = size(dta)
        allocate(ptrs(number_of_tensors))

        do idx = 1, number_of_tensors
            call this%secure_pointer(dta(idx), ptrs(idx), astream)
        end do

        call this%builder%allocate_class(local)
        call this%sbuilder%copy_c_ptr(local, ptrs)

        ptr = local%get_data_pointer()
        deallocate(local)
        deallocate(ptrs)
    end subroutine secure_pointer_from_array

    subroutine update_array(this, dta, ptr, astream)
        class(tensor_c_pointer_converter), intent(in) :: this
        class(tensor), dimension(:), intent(inout) :: dta
        type(c_ptr), intent(in) :: ptr
        type(stream), intent(in), optional :: astream

        type(c_ptr), dimension(:), pointer, contiguous :: ptrs
        integer :: number_of_tensors, idx, bytes_per_element
        class(data_storage), allocatable :: local

        number_of_tensors = size(dta)

        call this%builder%allocate_class(local)

        bytes_per_element = storage_size(1_c_intptr_t)/8
        call local%set_data_pointer(ptr, int(number_of_tensors*bytes_per_element, int64))

        call this%converter%secure_c_pointers(ptrs, local, int(number_of_tensors, int64), astream)

        do idx = 1, number_of_tensors
            call this%update(dta(idx), ptrs(idx), astream)
        end do

        call this%converter%release_c_pointers(ptrs, local, astream)
        deallocate(local)
    end subroutine update_array

    subroutine release_from_array(this, dta, ptr, astream)
        class(tensor_c_pointer_converter), intent(in) :: this
        class(tensor), dimension(:), intent(in) :: dta
        type(c_ptr), intent(inout) :: ptr
        type(stream), intent(in), optional :: astream

        type(c_ptr), dimension(:), pointer, contiguous :: ptrs
        integer :: number_of_tensors, idx, bytes_per_element
        class(data_storage), allocatable :: local

        number_of_tensors = size(dta)

        call this%builder%allocate_class(local)

        bytes_per_element = storage_size(1_c_intptr_t)/8
        call local%set_data_pointer(ptr, int(number_of_tensors*bytes_per_element, int64))

        call this%converter%secure_c_pointers(ptrs, local, int(number_of_tensors, int64), astream)

        do idx = 1, number_of_tensors
            call this%release(dta(idx), ptrs(idx), astream)
        end do

        call this%converter%release_c_pointers(ptrs, local, astream)
        deallocate(local)
    end subroutine release_from_array

    subroutine update_array_and_release(this, dta, ptr, astream)
        class(tensor_c_pointer_converter), intent(in) :: this
        class(tensor), dimension(:), intent(inout) :: dta
        type(c_ptr), intent(inout) :: ptr
        type(stream), intent(in), optional :: astream

        call this%update_array(dta, ptr, astream)
        call this%release_from_array(dta, ptr, astream)
    end subroutine update_array_and_release

    subroutine cleanup(this)
        class(tensor_c_pointer_converter), intent(inout) :: this

        if ( allocated(this%builder) ) deallocate(this%builder)
    end subroutine cleanup

    subroutine set_builder(this, builder)
        class(tensor_c_pointer_converter), intent(inout) :: this
        class(data_builder), intent(in) :: builder

        this%builder = builder
    end subroutine set_builder
end module tensor_c_pointer_converter_module
