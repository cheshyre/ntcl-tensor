#include <complex>
#include <iostream>
#include <cuComplex.h>

#include <cuda_common.h>

// Add
template <typename T>
__global__ void cuda_tap_add_kernel(T *dst, T *src, uint64_t ndim, float alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] += alpha*src[idx];
}

__global__ void cuda_tap_add_kernel_c64(cuComplex *dst, cuComplex *src, uint64_t ndim, cuComplex alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] = cuCaddf(dst[idx], cuCmulf(alpha, src[idx]));
}

__global__ void cuda_tap_add_kernel_c128(cuDoubleComplex *dst, cuDoubleComplex *src, uint64_t ndim, cuDoubleComplex alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] = cuCadd(dst[idx], cuCmul(alpha, src[idx]));
}

extern "C" void cuda_tap_add_real32(float *dst, float*src, int64_t ndim, float alpha, cudaStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_add_kernel<float><<<nblocks, block_size, 0, *stream>>>(dst, src, nelements, alpha);
  } else {
    cuda_tap_add_kernel<float><<<nblocks, block_size>>>(dst, src, nelements, alpha);
  }
}

extern "C" void cuda_tap_add_real64(double *dst, double*src, int64_t ndim, double alpha, cudaStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_add_kernel<double><<<nblocks, block_size, 0, *stream>>>(dst, src, nelements, alpha);
  } else {
    cuda_tap_add_kernel<double><<<nblocks, block_size>>>(dst, src, nelements, alpha);
  }
}

extern "C" void cuda_tap_add_complex64(cuComplex *dst, cuComplex *src, int64_t ndim, cuComplex alpha, cudaStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_add_kernel_c64<<<nblocks, block_size, 0, *stream>>>(dst, src, nelements, alpha);
  } else {
    cuda_tap_add_kernel_c64<<<nblocks, block_size>>>(dst, src, nelements, alpha);
  }
}

extern "C" void cuda_tap_add_complex128(cuDoubleComplex *dst, cuDoubleComplex*src,
    int64_t ndim, cuDoubleComplex alpha, cudaStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_add_kernel_c128<<<nblocks, block_size, 0, *stream>>>(dst, src, nelements, alpha);
  } else {
    cuda_tap_add_kernel_c128<<<nblocks, block_size>>>(dst, src, nelements, alpha);
  }
}

// Multiply
template <typename T>
__global__ void cuda_tap_multiply_kernel(T *dst, T *src, uint64_t ndim, float alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] *= alpha*src[idx];
}

__global__ void cuda_tap_multiply_kernel_c64(cuComplex *dst, cuComplex *src, uint64_t ndim, cuComplex alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] = cuCmulf(dst[idx], cuCmulf(alpha, src[idx]));
}

__global__ void cuda_tap_multiply_kernel_c128(cuDoubleComplex *dst, cuDoubleComplex *src, uint64_t ndim, cuDoubleComplex alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] = cuCmul(dst[idx], cuCmul(alpha, src[idx]));
}

extern "C" void cuda_tap_multiply_real32(float *dst, float*src, int64_t ndim, float alpha, cudaStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_multiply_kernel<float><<<nblocks, block_size, 0, *stream>>>(dst, src, nelements, alpha);
  } else {
    cuda_tap_multiply_kernel<float><<<nblocks, block_size>>>(dst, src, nelements, alpha);
  }
}

extern "C" void cuda_tap_multiply_real64(double *dst, double*src, int64_t ndim, double alpha, cudaStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_multiply_kernel<double><<<nblocks, block_size, 0, *stream>>>(dst, src, nelements, alpha);
  } else {
    cuda_tap_multiply_kernel<double><<<nblocks, block_size>>>(dst, src, nelements, alpha);
  }
}

extern "C" void cuda_tap_multiply_complex64(cuComplex *dst, cuComplex *src, int64_t ndim, cuComplex alpha, cudaStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_multiply_kernel_c64<<<nblocks, block_size, 0, *stream>>>(dst, src, nelements, alpha);
  } else {
    cuda_tap_multiply_kernel_c64<<<nblocks, block_size>>>(dst, src, nelements, alpha);
  }
}

extern "C" void cuda_tap_multiply_complex128(cuDoubleComplex *dst, cuDoubleComplex*src,
    int64_t ndim, cuDoubleComplex alpha, cudaStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_multiply_kernel_c128<<<nblocks, block_size, 0, *stream>>>(dst, src, nelements, alpha);
  } else {
    cuda_tap_multiply_kernel_c128<<<nblocks, block_size>>>(dst, src, nelements, alpha);
  }
}

// Divide
template <typename T>
__global__ void cuda_tap_divide_kernel(T *dst, T *src, uint64_t ndim, float alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] = dst[idx]*alpha/src[idx];
}

__global__ void cuda_tap_divide_kernel_c64(cuComplex *dst, cuComplex *src, uint64_t ndim, cuComplex alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] = cuCmulf(dst[idx], cuCdivf(alpha, src[idx]));
}

__global__ void cuda_tap_divide_kernel_c128(cuDoubleComplex *dst, cuDoubleComplex *src, uint64_t ndim, cuDoubleComplex alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] = cuCmul(dst[idx], cuCdiv(alpha, src[idx]));
}

extern "C" void cuda_tap_divide_real32(float *dst, float*src, int64_t ndim, float alpha, cudaStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_divide_kernel<float><<<nblocks, block_size, 0, *stream>>>(dst, src, nelements, alpha);
  } else {
    cuda_tap_divide_kernel<float><<<nblocks, block_size>>>(dst, src, nelements, alpha);
  }
}

extern "C" void cuda_tap_divide_real64(double *dst, double*src, int64_t ndim, double alpha, cudaStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_divide_kernel<double><<<nblocks, block_size, 0, *stream>>>(dst, src, nelements, alpha);
  } else {
    cuda_tap_divide_kernel<double><<<nblocks, block_size>>>(dst, src, nelements, alpha);
  }
}

extern "C" void cuda_tap_divide_complex64(cuComplex *dst, cuComplex *src, int64_t ndim, cuComplex alpha, cudaStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_divide_kernel_c64<<<nblocks, block_size, 0, *stream>>>(dst, src, nelements, alpha);
  } else {
    cuda_tap_divide_kernel_c64<<<nblocks, block_size>>>(dst, src, nelements, alpha);
  }
}

extern "C" void cuda_tap_divide_complex128(cuDoubleComplex *dst, cuDoubleComplex*src,
    int64_t ndim, cuDoubleComplex alpha, cudaStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_divide_kernel_c128<<<nblocks, block_size, 0, *stream>>>(dst, src, nelements, alpha);
  } else {
    cuda_tap_divide_kernel_c128<<<nblocks, block_size>>>(dst, src, nelements, alpha);
  }
}

// Scalar add
template <typename T>
__global__ void cuda_tap_scalar_add_kernel(T *dst, uint64_t ndim, float alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] += alpha;
}

__global__ void cuda_tap_scalar_add_kernel_c64(cuComplex *dst, uint64_t ndim, cuComplex alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] = cuCaddf(dst[idx], alpha);
}

__global__ void cuda_tap_scalar_add_kernel_c128(cuDoubleComplex *dst, uint64_t ndim, cuDoubleComplex alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] = cuCadd(dst[idx], alpha);
}

extern "C" void cuda_tap_scalar_add_real32(float *dst, int64_t ndim, float alpha, cudaStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_scalar_add_kernel<float><<<nblocks, block_size, 0, *stream>>>(dst, nelements, alpha);
  } else {
    cuda_tap_scalar_add_kernel<float><<<nblocks, block_size>>>(dst, nelements, alpha);
  }
}

extern "C" void cuda_tap_scalar_add_real64(double *dst, int64_t ndim, double alpha, cudaStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_scalar_add_kernel<double><<<nblocks, block_size, 0, *stream>>>(dst, nelements, alpha);
  } else {
    cuda_tap_scalar_add_kernel<double><<<nblocks, block_size>>>(dst, nelements, alpha);
  }
}

extern "C" void cuda_tap_scalar_add_complex64(cuComplex *dst, int64_t ndim, cuComplex alpha, cudaStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_scalar_add_kernel_c64<<<nblocks, block_size, 0, *stream>>>(dst, nelements, alpha);
  } else {
    cuda_tap_scalar_add_kernel_c64<<<nblocks, block_size>>>(dst, nelements, alpha);
  }
}

extern "C" void cuda_tap_scalar_add_complex128(cuDoubleComplex *dst,
    int64_t ndim, cuDoubleComplex alpha, cudaStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_scalar_add_kernel_c128<<<nblocks, block_size, 0, *stream>>>(dst, nelements, alpha);
  } else {
    cuda_tap_scalar_add_kernel_c128<<<nblocks, block_size>>>(dst, nelements, alpha);
  }
}

// Scalar multiply
template <typename T>
__global__ void cuda_tap_scalar_multiply_kernel(T *dst, uint64_t ndim, float alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] *= alpha;
}

__global__ void cuda_tap_scalar_multiply_kernel_c64(cuComplex *dst, uint64_t ndim, cuComplex alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] = cuCmulf(dst[idx], alpha);
}

__global__ void cuda_tap_scalar_multiply_kernel_c128(cuDoubleComplex *dst, uint64_t ndim, cuDoubleComplex alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] = cuCmul(dst[idx], alpha);
}

extern "C" void cuda_tap_scalar_multiply_real32(float *dst, int64_t ndim, float alpha, cudaStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_scalar_multiply_kernel<float><<<nblocks, block_size, 0, *stream>>>(dst, nelements, alpha);
  } else {
    cuda_tap_scalar_multiply_kernel<float><<<nblocks, block_size>>>(dst, nelements, alpha);
  }
}

extern "C" void cuda_tap_scalar_multiply_real64(double *dst, int64_t ndim, double alpha, cudaStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_scalar_multiply_kernel<double><<<nblocks, block_size, 0, *stream>>>(dst, nelements, alpha);
  } else {
    cuda_tap_scalar_multiply_kernel<double><<<nblocks, block_size>>>(dst, nelements, alpha);
  }
}

extern "C" void cuda_tap_scalar_multiply_complex64(cuComplex *dst, int64_t ndim, cuComplex alpha, cudaStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_scalar_multiply_kernel_c64<<<nblocks, block_size, 0, *stream>>>(dst, nelements, alpha);
  } else {
    cuda_tap_scalar_multiply_kernel_c64<<<nblocks, block_size>>>(dst, nelements, alpha);
  }
}

extern "C" void cuda_tap_scalar_multiply_complex128(cuDoubleComplex *dst,
    int64_t ndim, cuDoubleComplex alpha, cudaStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_scalar_multiply_kernel_c128<<<nblocks, block_size, 0, *stream>>>(dst, nelements, alpha);
  } else {
    cuda_tap_scalar_multiply_kernel_c128<<<nblocks, block_size>>>(dst, nelements, alpha);
  }
}

// Scalar inverse
template <typename T>
__global__ void cuda_tap_scalar_inverse_kernel(T *dst, uint64_t ndim, float alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] = alpha/dst[idx];
}

__global__ void cuda_tap_scalar_inverse_kernel_c64(cuComplex *dst, uint64_t ndim, cuComplex alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] = cuCdivf(alpha, dst[idx]);
}

__global__ void cuda_tap_scalar_inverse_kernel_c128(cuDoubleComplex *dst, uint64_t ndim, cuDoubleComplex alpha) {
  uint64_t idx = ((uint64_t) blockIdx.x)*((uint64_t) blockDim.x) + threadIdx.x;

  if ( idx < ndim ) dst[idx] = cuCdiv(alpha, dst[idx]);
}

extern "C" void cuda_tap_scalar_inverse_real32(float *dst, int64_t ndim, float alpha, cudaStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_scalar_inverse_kernel<float><<<nblocks, block_size, 0, *stream>>>(dst, nelements, alpha);
  } else {
    cuda_tap_scalar_inverse_kernel<float><<<nblocks, block_size>>>(dst, nelements, alpha);
  }
}

extern "C" void cuda_tap_scalar_inverse_real64(double *dst, int64_t ndim, double alpha, cudaStream_t *stream) {
  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_scalar_inverse_kernel<double><<<nblocks, block_size, 0, *stream>>>(dst, nelements, alpha);
  } else {
    cuda_tap_scalar_inverse_kernel<double><<<nblocks, block_size>>>(dst, nelements, alpha);
  }
}

extern "C" void cuda_tap_scalar_inverse_complex64(cuComplex *dst, int64_t ndim, cuComplex alpha, cudaStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_scalar_inverse_kernel_c64<<<nblocks, block_size, 0, *stream>>>(dst, nelements, alpha);
  } else {
    cuda_tap_scalar_inverse_kernel_c64<<<nblocks, block_size>>>(dst, nelements, alpha);
  }
}

extern "C" void cuda_tap_scalar_inverse_complex128(cuDoubleComplex *dst,
    int64_t ndim, cuDoubleComplex alpha, cudaStream_t *stream) {

  int block_size = 256;
  int nblocks = (int) (ndim-1)/(block_size)+1;
  dim3 blockGrid(nblocks);
  dim3 thread_per_block(block_size);
  uint64_t nelements = ndim;

  if ( stream ) {
    cuda_tap_scalar_inverse_kernel_c128<<<nblocks, block_size, 0, *stream>>>(dst, nelements, alpha);
  } else {
    cuda_tap_scalar_inverse_kernel_c128<<<nblocks, block_size>>>(dst, nelements, alpha);
  }
}
