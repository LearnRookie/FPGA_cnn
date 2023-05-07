// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/COR)
//        bit 0 - ap_done (Read/COR)
//        bit 1 - ap_ready (Read/COR)
//        others - reserved
// 0x10 : Data signal of CHin
//        bit 15~0 - CHin[15:0] (Read/Write)
//        others   - reserved
// 0x14 : reserved
// 0x18 : Data signal of Hin
//        bit 15~0 - Hin[15:0] (Read/Write)
//        others   - reserved
// 0x1c : reserved
// 0x20 : Data signal of Win
//        bit 15~0 - Win[15:0] (Read/Write)
//        others   - reserved
// 0x24 : reserved
// 0x28 : Data signal of CHout
//        bit 15~0 - CHout[15:0] (Read/Write)
//        others   - reserved
// 0x2c : reserved
// 0x30 : Data signal of Kx
//        bit 7~0 - Kx[7:0] (Read/Write)
//        others  - reserved
// 0x34 : reserved
// 0x38 : Data signal of Ky
//        bit 7~0 - Ky[7:0] (Read/Write)
//        others  - reserved
// 0x3c : reserved
// 0x40 : Data signal of Sx
//        bit 7~0 - Sx[7:0] (Read/Write)
//        others  - reserved
// 0x44 : reserved
// 0x48 : Data signal of Sy
//        bit 7~0 - Sy[7:0] (Read/Write)
//        others  - reserved
// 0x4c : reserved
// 0x50 : Data signal of mode
//        bit 0  - mode[0] (Read/Write)
//        others - reserved
// 0x54 : reserved
// 0x58 : Data signal of relu_en
//        bit 0  - relu_en[0] (Read/Write)
//        others - reserved
// 0x5c : reserved
// 0x60 : Data signal of feature_in
//        bit 31~0 - feature_in[31:0] (Read/Write)
// 0x64 : Data signal of feature_in
//        bit 31~0 - feature_in[63:32] (Read/Write)
// 0x68 : reserved
// 0x6c : Data signal of W
//        bit 31~0 - W[31:0] (Read/Write)
// 0x70 : Data signal of W
//        bit 31~0 - W[63:32] (Read/Write)
// 0x74 : reserved
// 0x78 : Data signal of bias
//        bit 31~0 - bias[31:0] (Read/Write)
// 0x7c : Data signal of bias
//        bit 31~0 - bias[63:32] (Read/Write)
// 0x80 : reserved
// 0x84 : Data signal of feature_out
//        bit 31~0 - feature_out[31:0] (Read/Write)
// 0x88 : Data signal of feature_out
//        bit 31~0 - feature_out[63:32] (Read/Write)
// 0x8c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL          0x00
#define CONTROL_ADDR_GIE              0x04
#define CONTROL_ADDR_IER              0x08
#define CONTROL_ADDR_ISR              0x0c
#define CONTROL_ADDR_CHIN_DATA        0x10
#define CONTROL_BITS_CHIN_DATA        16
#define CONTROL_ADDR_HIN_DATA         0x18
#define CONTROL_BITS_HIN_DATA         16
#define CONTROL_ADDR_WIN_DATA         0x20
#define CONTROL_BITS_WIN_DATA         16
#define CONTROL_ADDR_CHOUT_DATA       0x28
#define CONTROL_BITS_CHOUT_DATA       16
#define CONTROL_ADDR_KX_DATA          0x30
#define CONTROL_BITS_KX_DATA          8
#define CONTROL_ADDR_KY_DATA          0x38
#define CONTROL_BITS_KY_DATA          8
#define CONTROL_ADDR_SX_DATA          0x40
#define CONTROL_BITS_SX_DATA          8
#define CONTROL_ADDR_SY_DATA          0x48
#define CONTROL_BITS_SY_DATA          8
#define CONTROL_ADDR_MODE_DATA        0x50
#define CONTROL_BITS_MODE_DATA        1
#define CONTROL_ADDR_RELU_EN_DATA     0x58
#define CONTROL_BITS_RELU_EN_DATA     1
#define CONTROL_ADDR_FEATURE_IN_DATA  0x60
#define CONTROL_BITS_FEATURE_IN_DATA  64
#define CONTROL_ADDR_W_DATA           0x6c
#define CONTROL_BITS_W_DATA           64
#define CONTROL_ADDR_BIAS_DATA        0x78
#define CONTROL_BITS_BIAS_DATA        64
#define CONTROL_ADDR_FEATURE_OUT_DATA 0x84
#define CONTROL_BITS_FEATURE_OUT_DATA 64
