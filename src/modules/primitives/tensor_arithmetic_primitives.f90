module tensor_arithmetic_primitives_module
    use :: data_api, only : &
            stream, &
            memory_manager

    use :: tensor_package_api, only : &
            tensor, &
            scalar

    implicit none
    private

    public :: tensor_arithmetic_primitives

    type, abstract :: tensor_arithmetic_primitives
    contains
        procedure(op), deferred :: add ! C = C + alpha*A
        procedure(op), deferred :: multiply ! C = alpha*C*A
        procedure(op), deferred :: divide ! C = alpha*C/A

        procedure(scalar_op), deferred :: scalar_add ! C = C + alpha
        procedure(scalar_op), deferred :: scalar_multiply ! C = alpha*C
        procedure(scalar_op), deferred :: scalar_inverse ! C = alpha/C

        procedure(empty), deferred :: cleanup
        procedure(sync), deferred :: synchronize

        procedure, nopass :: set => set
        procedure, nopass :: get_alpha => get_alpha
        procedure, nopass :: check_datatype_and_size => check_datatype_and_size
    end type tensor_arithmetic_primitives

    abstract interface
        subroutine op(this, dst, src, alpha, astream)
            import :: tensor_arithmetic_primitives
            import :: tensor
            import :: scalar
            import :: stream

            class(tensor_arithmetic_primitives), intent(inout) :: this
            class(tensor), intent(inout) :: dst
            class(tensor), intent(in) :: src
            type(scalar), intent(in), optional :: alpha
            type(stream), intent(in), optional :: astream
        end subroutine op

        subroutine scalar_op(this, dst, alpha, astream)
            import :: tensor_arithmetic_primitives
            import :: tensor
            import :: scalar
            import :: stream

            class(tensor_arithmetic_primitives), intent(inout) :: this
            class(tensor), intent(inout) :: dst
            type(scalar), intent(in), optional :: alpha
            type(stream), intent(in), optional :: astream
        end subroutine scalar_op

        subroutine empty(this)
            import :: tensor_arithmetic_primitives

            class(tensor_arithmetic_primitives), intent(inout) :: this
        end subroutine empty

        subroutine sync(this, astream)
            import :: tensor_arithmetic_primitives
            import :: stream

            class(tensor_arithmetic_primitives), intent(inout) :: this
            type(stream), intent(in), optional :: astream
        end subroutine sync
    end interface

    integer, parameter :: default_alpha = 1
contains
    subroutine set(dst, src, astream)
        class(tensor), intent(inout) :: dst
        class(tensor), intent(in) :: src
        type(stream), intent(in), optional :: astream

        call memory_manager%copy_storage(src%storage, dst%storage, astream)
    end subroutine set

    subroutine check_datatype_and_size(dst, src)
        class(tensor), intent(in) :: dst, src

        ! Check if same data type
        if ( .not. ( &
                dst%is_allocated() .and. src%is_allocated() .and. &
                dst%datatype == src%datatype .and. &
                dst%number_of_elements == src%number_of_elements ) ) then
            error stop 'tensor_arithmetic_primitives::check_datatype_and_size:Tensors are not compatible.'
        end if
    end subroutine check_datatype_and_size

    type(scalar) function get_alpha(alpha)
        type(scalar), intent(in), optional :: alpha

        get_alpha = scalar(default_alpha)
        if ( present(alpha) ) get_alpha = alpha
    end function get_alpha
end module tensor_arithmetic_primitives_module
