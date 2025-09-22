/*************************************************************************
 * Copyright (c) 2025, NVIDIA CORPORATION. All rights reserved.
 *
 * See LICENSE.txt for license information
 ************************************************************************/
#include <hip/hip_runtime.h>
#include <iostream>

#define NCCL_VERIFIABLE_SELF_TEST 1
#include "verifiable.h"

int main(int arg_n, char **args) {
  std::cerr<<"You are hoping to see no output beyond this line."<<std::endl;
  hipSetDevice(0);
  ncclVerifiableLaunchSelfTest();
  hipDeviceSynchronize();
  return 0;
}
