! Auto-generated -- DO NOT MODIFY
program unittest
    use :: util_api, only : &
            assert, &
            selector

    use :: data_initializer, only : &
            data_initialize, &
            data_finalize

    use :: tensor_package_test_module, only : &
            tensor_package_test
    use :: converter_package_test_module, only : &
            converter_package_test
    use :: construction_package_test_module, only : &
            construction_package_test
    use :: initializer_package_test_module, only : &
            initializer_package_test

    implicit none

    type(assert) :: assertion
    type(selector) :: aselector

    type(tensor_package_test) :: &
            atensor_package_test
    type(converter_package_test) :: &
            aconverter_package_test
    type(construction_package_test) :: &
            aconstruction_package_test
    type(initializer_package_test) :: &
            ainitializer_package_test

    assertion = assert()
    aselector = selector()

    call data_initialize()

    atensor_package_test = tensor_package_test(aselector)
    call atensor_package_test%run(assertion)
    call atensor_package_test%cleanup()

    aconverter_package_test = converter_package_test(aselector)
    call aconverter_package_test%run(assertion)
    call aconverter_package_test%cleanup()

    aconstruction_package_test = construction_package_test(aselector)
    call aconstruction_package_test%run(assertion)
    call aconstruction_package_test%cleanup()

    ainitializer_package_test = initializer_package_test(aselector)
    call ainitializer_package_test%run(assertion)
    call ainitializer_package_test%cleanup()

    call data_finalize()

    call assertion%write_summary()

    call aselector%cleanup()
    call assertion%cleanup()
end program unittest
