# Auto-generated -- do not modify!

SOURCE_DIR := $(shell dirname ${MAKEFILE_LIST})
MAKEINC := ${NTCL_ROOT}/ntcl-build/makefile_fragments

include ${MAKEINC}/standard_preample.mk

modules      += tensor converter construction initializer
test_modules += tensor converter construction initializer

modules      += api
test_modules += api

test_modules += unittest

library_name := libntcl-tensor.a

external_include := 
external_libraries := ${NTCL_ROOT}/ntcl-data/lib/libntcl-data.a ${NTCL_ROOT}/ntcl-util/lib/libntcl-util.a
internal_include_dirs := ${NTCL_ROOT}/ntcl-data/include ${NTCL_ROOT}/ntcl-util/include

ifdef use_cuda
external_libraries += ${CUDA_LIBS} -lstdc++
endif

include ${MAKEINC}/standard_defs.mk
