! Auto-generated -- DO NOT MODIFY
program unittest
    use :: util_api, only : &
            assert, &
            selector

    use :: tensor_initializer, only : &
            tensor_initialize, &
            tensor_finalize

    use :: tensor_package_test_module, only : &
            tensor_package_test
    use :: converter_package_test_module, only : &
            converter_package_test
    use :: construction_package_test_module, only : &
            construction_package_test
    use :: initializer_package_test_module, only : &
            initializer_package_test
    use :: primitives_package_test_module, only : &
            primitives_package_test

#ifdef use_cuda
    use :: cuda_primitives_package_test_module, only : &
            cuda_primitives_package_test
#endif

#ifdef use_hip
    use :: hip_primitives_package_test_module, only : &
            hip_primitives_package_test
#endif

    use :: api_package_test_module, only : &
            api_package_test

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
    type(primitives_package_test) :: &
            aprimitives_package_test

#ifdef use_cuda
    type(cuda_primitives_package_test) :: &
            acuda_primitives_package_test
#endif

#ifdef use_hip
    type(hip_primitives_package_test) :: &
            ahip_primitives_package_test
#endif

    type(api_package_test) :: &
            aapi_package_test

    assertion = assert()
    aselector = selector()

    call tensor_initialize()

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

    aprimitives_package_test = primitives_package_test(aselector)
    call aprimitives_package_test%run(assertion)
    call aprimitives_package_test%cleanup()

#ifdef use_cuda
    acuda_primitives_package_test = cuda_primitives_package_test(aselector)
    call acuda_primitives_package_test%run(assertion)
    call acuda_primitives_package_test%cleanup()
#endif

#ifdef use_hip
    ahip_primitives_package_test = hip_primitives_package_test(aselector)
    call ahip_primitives_package_test%run(assertion)
    call ahip_primitives_package_test%cleanup()
#endif

    aapi_package_test = api_package_test(aselector)
    call aapi_package_test%run(assertion)
    call aapi_package_test%cleanup()

    call tensor_finalize()

    call assertion%write_summary()

    call aselector%cleanup()
    call assertion%cleanup()
end program unittest
