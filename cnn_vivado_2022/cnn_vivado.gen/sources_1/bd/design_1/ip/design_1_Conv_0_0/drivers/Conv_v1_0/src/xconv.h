// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCONV_H
#define XCONV_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xconv_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XConv_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XConv;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XConv_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XConv_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XConv_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XConv_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XConv_Initialize(XConv *InstancePtr, u16 DeviceId);
XConv_Config* XConv_LookupConfig(u16 DeviceId);
int XConv_CfgInitialize(XConv *InstancePtr, XConv_Config *ConfigPtr);
#else
int XConv_Initialize(XConv *InstancePtr, const char* InstanceName);
int XConv_Release(XConv *InstancePtr);
#endif

void XConv_Start(XConv *InstancePtr);
u32 XConv_IsDone(XConv *InstancePtr);
u32 XConv_IsIdle(XConv *InstancePtr);
u32 XConv_IsReady(XConv *InstancePtr);
void XConv_EnableAutoRestart(XConv *InstancePtr);
void XConv_DisableAutoRestart(XConv *InstancePtr);

void XConv_Set_CHin(XConv *InstancePtr, u32 Data);
u32 XConv_Get_CHin(XConv *InstancePtr);
void XConv_Set_Hin(XConv *InstancePtr, u32 Data);
u32 XConv_Get_Hin(XConv *InstancePtr);
void XConv_Set_Win(XConv *InstancePtr, u32 Data);
u32 XConv_Get_Win(XConv *InstancePtr);
void XConv_Set_CHout(XConv *InstancePtr, u32 Data);
u32 XConv_Get_CHout(XConv *InstancePtr);
void XConv_Set_Kx(XConv *InstancePtr, u32 Data);
u32 XConv_Get_Kx(XConv *InstancePtr);
void XConv_Set_Ky(XConv *InstancePtr, u32 Data);
u32 XConv_Get_Ky(XConv *InstancePtr);
void XConv_Set_Sx(XConv *InstancePtr, u32 Data);
u32 XConv_Get_Sx(XConv *InstancePtr);
void XConv_Set_Sy(XConv *InstancePtr, u32 Data);
u32 XConv_Get_Sy(XConv *InstancePtr);
void XConv_Set_mode(XConv *InstancePtr, u32 Data);
u32 XConv_Get_mode(XConv *InstancePtr);
void XConv_Set_relu_en(XConv *InstancePtr, u32 Data);
u32 XConv_Get_relu_en(XConv *InstancePtr);
void XConv_Set_feature_in(XConv *InstancePtr, u64 Data);
u64 XConv_Get_feature_in(XConv *InstancePtr);
void XConv_Set_W(XConv *InstancePtr, u64 Data);
u64 XConv_Get_W(XConv *InstancePtr);
void XConv_Set_bias(XConv *InstancePtr, u64 Data);
u64 XConv_Get_bias(XConv *InstancePtr);
void XConv_Set_feature_out(XConv *InstancePtr, u64 Data);
u64 XConv_Get_feature_out(XConv *InstancePtr);

void XConv_InterruptGlobalEnable(XConv *InstancePtr);
void XConv_InterruptGlobalDisable(XConv *InstancePtr);
void XConv_InterruptEnable(XConv *InstancePtr, u32 Mask);
void XConv_InterruptDisable(XConv *InstancePtr, u32 Mask);
void XConv_InterruptClear(XConv *InstancePtr, u32 Mask);
u32 XConv_InterruptGetEnabled(XConv *InstancePtr);
u32 XConv_InterruptGetStatus(XConv *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
