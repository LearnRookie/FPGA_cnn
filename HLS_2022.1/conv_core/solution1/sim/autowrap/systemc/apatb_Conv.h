// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_Conv (
short CHin,
short Hin,
short Win,
short CHout,
char Kx,
char Ky,
char Sx,
char Sy,
char mode,
char relu_en,
volatile void* feature_in,
volatile void* W,
volatile void* bias,
volatile void* feature_out);
