! Auto-generated -- DO NOT MODIFY
module tensor_package_test_module
    use :: util_api, only : &
            selector, &
            assert

    use :: tscalar_test_module, only : tscalar_test
    use :: vector_test_module, only : vector_test
    use :: matrix_test_module, only : matrix_test
    use :: tensor_rank3_test_module, only : tensor_rank3_test
    use :: tensor_rank4_test_module, only : tensor_rank4_test
    use :: tensor_rank5_test_module, only : tensor_rank5_test

    implicit none
    private

    public :: tensor_package_test

    type :: tensor_package_test
        type(selector) :: test_selector
    contains
        procedure :: run => run
        procedure :: cleanup => cleanup
        procedure :: clear => clear
    end type tensor_package_test

    interface tensor_package_test
        module procedure constructor
    end interface tensor_package_test

contains
    function constructor(aselector) result(this)
        type(selector), intent(in) :: aselector
        type(tensor_package_test) :: this

        call this%clear()

        this%test_selector = aselector
    end function constructor

    subroutine run(this, assertion)
        class(tensor_package_test), intent(in) :: this
        type(assert), intent(inout) :: assertion

        type(tscalar_test) :: atscalar_test
        type(vector_test) :: avector_test
        type(matrix_test) :: amatrix_test
        type(tensor_rank3_test) :: atensor_rank3_test
        type(tensor_rank4_test) :: atensor_rank4_test
        type(tensor_rank5_test) :: atensor_rank5_test

        call assertion%equal("tensor::Package test complete", .true.)

        if ( &
                this%test_selector%is_enabled("tscalar") ) then
            atscalar_test = tscalar_test()
            call atscalar_test%run(assertion)
            call atscalar_test%cleanup()
        end if

        if ( &
                this%test_selector%is_enabled("vector") ) then
            avector_test = vector_test()
            call avector_test%run(assertion)
            call avector_test%cleanup()
        end if

        if ( &
                this%test_selector%is_enabled("matrix") ) then
            amatrix_test = matrix_test()
            call amatrix_test%run(assertion)
            call amatrix_test%cleanup()
        end if

        if ( &
                this%test_selector%is_enabled("tensor_rank3") ) then
            atensor_rank3_test = tensor_rank3_test()
            call atensor_rank3_test%run(assertion)
            call atensor_rank3_test%cleanup()
        end if

        if ( &
                this%test_selector%is_enabled("tensor_rank4") ) then
            atensor_rank4_test = tensor_rank4_test()
            call atensor_rank4_test%run(assertion)
            call atensor_rank4_test%cleanup()
        end if

        if ( &
                this%test_selector%is_enabled("tensor_rank5") ) then
            atensor_rank5_test = tensor_rank5_test()
            call atensor_rank5_test%run(assertion)
            call atensor_rank5_test%cleanup()
        end if

    end subroutine run

    subroutine cleanup(this)
        class(tensor_package_test), intent(inout) :: this

        call this%clear()
    end subroutine cleanup

    subroutine clear(this)
        class(tensor_package_test), intent(inout) :: this
    end subroutine clear
end module tensor_package_test_module
