#include <iostream>

#include <hip_common.h>
#include <hip/hip_complex.h>

// Add
template <typename T>
__global__ void hip_tap_add_kernel(T *dst, T *src, uint64_t ndim, T alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] = dst[idx] + alpha*src[idx];
}

extern "C" void hip_tap_add_real32(float *dst, float*src, int64_t ndim, float alpha, hipStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_add_kernel<float>, nblocks, block_size, 0, *stream, dst, src, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_add_kernel<float>, nblocks, block_size, 0, 0, dst, src, nelements, alpha);
  }
}

extern "C" void hip_tap_add_real64(double *dst, double*src, int64_t ndim, double alpha, hipStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_add_kernel<double>, nblocks, block_size, 0, *stream, dst, src, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_add_kernel<double>, nblocks, block_size, 0, 0, dst, src, nelements, alpha);
  }
}

extern "C" void hip_tap_add_complex64(hipFloatComplex *dst, hipFloatComplex *src, int64_t ndim, hipFloatComplex alpha, hipStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_add_kernel<hipFloatComplex>, nblocks, block_size, 0, *stream, dst, src, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_add_kernel<hipFloatComplex>, nblocks, block_size, 0, 0, dst, src, nelements, alpha);
  }
}

extern "C" void hip_tap_add_complex128(hipDoubleComplex *dst, hipDoubleComplex*src,
    int64_t ndim, hipDoubleComplex alpha, hipStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_add_kernel<hipDoubleComplex>, nblocks, block_size, 0, *stream, dst, src, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_add_kernel<hipDoubleComplex>, nblocks, block_size, 0, 0, dst, src, nelements, alpha);
  }
}

// Multiply
template <typename T>
__global__ void hip_tap_multiply_kernel(T *dst, T *src, uint64_t ndim, T alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] = dst[idx]*alpha*src[idx];
}

extern "C" void hip_tap_multiply_real32(float *dst, float*src, int64_t ndim, float alpha, hipStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_multiply_kernel<float>, nblocks, block_size, 0, *stream, dst, src, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_multiply_kernel<float>, nblocks, block_size, 0, 0, dst, src, nelements, alpha);
  }
}

extern "C" void hip_tap_multiply_real64(double *dst, double*src, int64_t ndim, double alpha, hipStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_multiply_kernel<double>, nblocks, block_size, 0, *stream, dst, src, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_multiply_kernel<double>, nblocks, block_size, 0, 0, dst, src, nelements, alpha);
  }
}

extern "C" void hip_tap_multiply_complex64(hipFloatComplex *dst, hipFloatComplex *src, int64_t ndim, hipFloatComplex alpha, hipStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_multiply_kernel<hipFloatComplex>, nblocks, block_size, 0, *stream, dst, src, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_multiply_kernel<hipFloatComplex>, nblocks, block_size, 0, 0, dst, src, nelements, alpha);
  }
}

extern "C" void hip_tap_multiply_complex128(hipDoubleComplex *dst, hipDoubleComplex*src,
    int64_t ndim, hipDoubleComplex alpha, hipStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_multiply_kernel<hipDoubleComplex>, nblocks, block_size, 0, *stream, dst, src, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_multiply_kernel<hipDoubleComplex>, nblocks, block_size, 0, 0, dst, src, nelements, alpha);
  }
}

// Divide
template <typename T>
__global__ void hip_tap_divide_kernel(T *dst, T *src, uint64_t ndim, T alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] = dst[idx]*alpha/src[idx];
}

extern "C" void hip_tap_divide_real32(float *dst, float*src, int64_t ndim, float alpha, hipStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_divide_kernel<float>, nblocks, block_size, 0, *stream, dst, src, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_divide_kernel<float>, nblocks, block_size, 0, 0, dst, src, nelements, alpha);
  }
}

extern "C" void hip_tap_divide_real64(double *dst, double*src, int64_t ndim, double alpha, hipStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_divide_kernel<double>, nblocks, block_size, 0, *stream, dst, src, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_divide_kernel<double>, nblocks, block_size, 0, 0, dst, src, nelements, alpha);
  }
}

extern "C" void hip_tap_divide_complex64(hipFloatComplex *dst, hipFloatComplex *src, int64_t ndim, hipFloatComplex alpha, hipStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_divide_kernel<hipFloatComplex>, nblocks, block_size, 0, *stream, dst, src, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_divide_kernel<hipFloatComplex>, nblocks, block_size, 0, 0, dst, src, nelements, alpha);
  }
}

extern "C" void hip_tap_divide_complex128(hipDoubleComplex *dst, hipDoubleComplex*src,
    int64_t ndim, hipDoubleComplex alpha, hipStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_divide_kernel<hipDoubleComplex>, nblocks, block_size, 0, *stream, dst, src, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_divide_kernel<hipDoubleComplex>, nblocks, block_size, 0, 0, dst, src, nelements, alpha);
  }
}

// Scalar add
template <typename T>
__global__ void hip_tap_scalar_add_kernel(T *dst, uint64_t ndim, T alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] = dst[idx] + alpha;
}

extern "C" void hip_tap_scalar_add_real32(float *dst, int64_t ndim, float alpha, hipStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_scalar_add_kernel<float>, nblocks, block_size, 0, *stream, dst, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_scalar_add_kernel<float>, nblocks, block_size, 0, 0, dst, nelements, alpha);
  }
}

extern "C" void hip_tap_scalar_add_real64(double *dst, int64_t ndim, double alpha, hipStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_scalar_add_kernel<double>, nblocks, block_size, 0, *stream, dst, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_scalar_add_kernel<double>, nblocks, block_size, 0, 0, dst, nelements, alpha);
  }
}

extern "C" void hip_tap_scalar_add_complex64(hipFloatComplex *dst, int64_t ndim, hipFloatComplex alpha, hipStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_scalar_add_kernel<hipFloatComplex>, nblocks, block_size, 0, *stream, dst, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_scalar_add_kernel<hipFloatComplex>, nblocks, block_size, 0, 0, dst, nelements, alpha);
  }
}

extern "C" void hip_tap_scalar_add_complex128(hipDoubleComplex *dst,
    int64_t ndim, hipDoubleComplex alpha, hipStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_scalar_add_kernel<hipDoubleComplex>, nblocks, block_size, 0, *stream, dst, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_scalar_add_kernel<hipDoubleComplex>, nblocks, block_size, 0, 0, dst, nelements, alpha);
  }
}

// Scalar multiply
template <typename T>
__global__ void hip_tap_scalar_multiply_kernel(T *dst, uint64_t ndim, T alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] = dst[idx]*alpha;
}

extern "C" void hip_tap_scalar_multiply_real32(float *dst, int64_t ndim, float alpha, hipStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_scalar_multiply_kernel<float>, nblocks, block_size, 0, *stream, dst, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_scalar_multiply_kernel<float>, nblocks, block_size, 0, 0, dst, nelements, alpha);
  }
}

extern "C" void hip_tap_scalar_multiply_real64(double *dst, int64_t ndim, double alpha, hipStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_scalar_multiply_kernel<double>, nblocks, block_size, 0, *stream, dst, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_scalar_multiply_kernel<double>, nblocks, block_size, 0, 0, dst, nelements, alpha);
  }
}

extern "C" void hip_tap_scalar_multiply_complex64(hipFloatComplex *dst, int64_t ndim, hipFloatComplex alpha, hipStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_scalar_multiply_kernel<hipFloatComplex>, nblocks, block_size, 0, *stream, dst, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_scalar_multiply_kernel<hipFloatComplex>, nblocks, block_size, 0, 0, dst, nelements, alpha);
  }
}

extern "C" void hip_tap_scalar_multiply_complex128(hipDoubleComplex *dst,
    int64_t ndim, hipDoubleComplex alpha, hipStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_scalar_multiply_kernel<hipDoubleComplex>, nblocks, block_size, 0, *stream, dst, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_scalar_multiply_kernel<hipDoubleComplex>, nblocks, block_size, 0, 0, dst, nelements, alpha);
  }
}

// Scalar inverse
template <typename T>
__global__ void hip_tap_scalar_inverse_kernel(T *dst, uint64_t ndim, T alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] = alpha/dst[idx];
}

extern "C" void hip_tap_scalar_inverse_real32(float *dst, int64_t ndim, float alpha, hipStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_scalar_inverse_kernel<float>, nblocks, block_size, 0, *stream, dst, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_scalar_inverse_kernel<float>, nblocks, block_size, 0, 0, dst, nelements, alpha);
  }
}

extern "C" void hip_tap_scalar_inverse_real64(double *dst, int64_t ndim, double alpha, hipStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_scalar_inverse_kernel<double>, nblocks, block_size, 0, *stream, dst, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_scalar_inverse_kernel<double>, nblocks, block_size, 0, 0, dst, nelements, alpha);
  }
}

extern "C" void hip_tap_scalar_inverse_complex64(hipFloatComplex *dst, int64_t ndim, hipFloatComplex alpha, hipStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_scalar_inverse_kernel<hipFloatComplex>, nblocks, block_size, 0, *stream, dst, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_scalar_inverse_kernel<hipFloatComplex>, nblocks, block_size, 0, 0, dst, nelements, alpha);
  }
}

extern "C" void hip_tap_scalar_inverse_complex128(hipDoubleComplex *dst,
    int64_t ndim, hipDoubleComplex alpha, hipStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    hipLaunchKernelGGL(hip_tap_scalar_inverse_kernel<hipDoubleComplex>, nblocks, block_size, 0, *stream, dst, nelements, alpha);
  } else {
    hipLaunchKernelGGL(hip_tap_scalar_inverse_kernel<hipDoubleComplex>, nblocks, block_size, 0, 0, dst, nelements, alpha);
  }
}
