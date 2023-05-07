// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xconv.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XConv_CfgInitialize(XConv *InstancePtr, XConv_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XConv_Start(XConv *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_AP_CTRL) & 0x80;
    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XConv_IsDone(XConv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XConv_IsIdle(XConv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XConv_IsReady(XConv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XConv_EnableAutoRestart(XConv *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XConv_DisableAutoRestart(XConv *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_AP_CTRL, 0);
}

void XConv_Set_CHin(XConv *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_CHIN_DATA, Data);
}

u32 XConv_Get_CHin(XConv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_CHIN_DATA);
    return Data;
}

void XConv_Set_Hin(XConv *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_HIN_DATA, Data);
}

u32 XConv_Get_Hin(XConv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_HIN_DATA);
    return Data;
}

void XConv_Set_Win(XConv *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_WIN_DATA, Data);
}

u32 XConv_Get_Win(XConv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_WIN_DATA);
    return Data;
}

void XConv_Set_CHout(XConv *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_CHOUT_DATA, Data);
}

u32 XConv_Get_CHout(XConv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_CHOUT_DATA);
    return Data;
}

void XConv_Set_Kx(XConv *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_KX_DATA, Data);
}

u32 XConv_Get_Kx(XConv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_KX_DATA);
    return Data;
}

void XConv_Set_Ky(XConv *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_KY_DATA, Data);
}

u32 XConv_Get_Ky(XConv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_KY_DATA);
    return Data;
}

void XConv_Set_Sx(XConv *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_SX_DATA, Data);
}

u32 XConv_Get_Sx(XConv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_SX_DATA);
    return Data;
}

void XConv_Set_Sy(XConv *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_SY_DATA, Data);
}

u32 XConv_Get_Sy(XConv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_SY_DATA);
    return Data;
}

void XConv_Set_mode(XConv *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_MODE_DATA, Data);
}

u32 XConv_Get_mode(XConv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_MODE_DATA);
    return Data;
}

void XConv_Set_relu_en(XConv *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_RELU_EN_DATA, Data);
}

u32 XConv_Get_relu_en(XConv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_RELU_EN_DATA);
    return Data;
}

void XConv_Set_feature_in(XConv *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_FEATURE_IN_DATA, (u32)(Data));
    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_FEATURE_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XConv_Get_feature_in(XConv *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_FEATURE_IN_DATA);
    Data += (u64)XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_FEATURE_IN_DATA + 4) << 32;
    return Data;
}

void XConv_Set_W(XConv *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_W_DATA, (u32)(Data));
    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_W_DATA + 4, (u32)(Data >> 32));
}

u64 XConv_Get_W(XConv *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_W_DATA);
    Data += (u64)XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_W_DATA + 4) << 32;
    return Data;
}

void XConv_Set_bias(XConv *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_BIAS_DATA, (u32)(Data));
    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_BIAS_DATA + 4, (u32)(Data >> 32));
}

u64 XConv_Get_bias(XConv *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_BIAS_DATA);
    Data += (u64)XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_BIAS_DATA + 4) << 32;
    return Data;
}

void XConv_Set_feature_out(XConv *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_FEATURE_OUT_DATA, (u32)(Data));
    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_FEATURE_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XConv_Get_feature_out(XConv *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_FEATURE_OUT_DATA);
    Data += (u64)XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_FEATURE_OUT_DATA + 4) << 32;
    return Data;
}

void XConv_InterruptGlobalEnable(XConv *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_GIE, 1);
}

void XConv_InterruptGlobalDisable(XConv *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_GIE, 0);
}

void XConv_InterruptEnable(XConv *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_IER);
    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_IER, Register | Mask);
}

void XConv_InterruptDisable(XConv *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_IER);
    XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_IER, Register & (~Mask));
}

void XConv_InterruptClear(XConv *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XConv_WriteReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_ISR, Mask);
}

u32 XConv_InterruptGetEnabled(XConv *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_IER);
}

u32 XConv_InterruptGetStatus(XConv *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XConv_ReadReg(InstancePtr->Control_BaseAddress, XCONV_CONTROL_ADDR_ISR);
}

