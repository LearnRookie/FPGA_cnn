// ==============================================================
// File generated on Thu Apr 20 21:03:16 +0800 2023
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_AXILiteS (
    clk,
    reset,
    TRAN_s_axi_AXILiteS_AWADDR,
    TRAN_s_axi_AXILiteS_AWVALID,
    TRAN_s_axi_AXILiteS_AWREADY,
    TRAN_s_axi_AXILiteS_WVALID,
    TRAN_s_axi_AXILiteS_WREADY,
    TRAN_s_axi_AXILiteS_WDATA,
    TRAN_s_axi_AXILiteS_WSTRB,
    TRAN_s_axi_AXILiteS_ARADDR,
    TRAN_s_axi_AXILiteS_ARVALID,
    TRAN_s_axi_AXILiteS_ARREADY,
    TRAN_s_axi_AXILiteS_RVALID,
    TRAN_s_axi_AXILiteS_RREADY,
    TRAN_s_axi_AXILiteS_RDATA,
    TRAN_s_axi_AXILiteS_RRESP,
    TRAN_s_axi_AXILiteS_BVALID,
    TRAN_s_axi_AXILiteS_BREADY,
    TRAN_s_axi_AXILiteS_BRESP,
    TRAN_feature_in,
    TRAN_W,
    TRAN_bias,
    TRAN_feature_out,
    TRAN_AXILiteS_write_data_finish,
    TRAN_AXILiteS_start_in,
    TRAN_AXILiteS_idle_out,
    TRAN_AXILiteS_ready_out,
    TRAN_AXILiteS_ready_in,
    TRAN_AXILiteS_done_out,
    TRAN_AXILiteS_write_start_in   ,
    TRAN_AXILiteS_write_start_finish,
    TRAN_AXILiteS_interrupt,
    TRAN_AXILiteS_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_CHin_V "../tv/cdatafile/c.Conv.autotvin_CHin_V.dat"
`define TV_IN_Hin_V "../tv/cdatafile/c.Conv.autotvin_Hin_V.dat"
`define TV_IN_Win_V "../tv/cdatafile/c.Conv.autotvin_Win_V.dat"
`define TV_IN_CHout_V "../tv/cdatafile/c.Conv.autotvin_CHout_V.dat"
`define TV_IN_Kx_V "../tv/cdatafile/c.Conv.autotvin_Kx_V.dat"
`define TV_IN_Ky_V "../tv/cdatafile/c.Conv.autotvin_Ky_V.dat"
`define TV_IN_Sx_V "../tv/cdatafile/c.Conv.autotvin_Sx_V.dat"
`define TV_IN_Sy_V "../tv/cdatafile/c.Conv.autotvin_Sy_V.dat"
`define TV_IN_mode_V "../tv/cdatafile/c.Conv.autotvin_mode_V.dat"
`define TV_IN_relu_en_V "../tv/cdatafile/c.Conv.autotvin_relu_en_V.dat"
`define TV_IN_feature_in "../tv/cdatafile/c.Conv.autotvin_feature_in.dat"
`define TV_IN_W "../tv/cdatafile/c.Conv.autotvin_W.dat"
`define TV_IN_bias "../tv/cdatafile/c.Conv.autotvin_bias.dat"
`define TV_IN_feature_out "../tv/cdatafile/c.Conv.autotvin_feature_out.dat"
parameter ADDR_WIDTH = 7;
parameter DATA_WIDTH = 32;
parameter CHin_V_DEPTH = 1;
reg [31 : 0] CHin_V_OPERATE_DEPTH = 0;
parameter CHin_V_c_bitwidth = 16;
parameter Hin_V_DEPTH = 1;
reg [31 : 0] Hin_V_OPERATE_DEPTH = 0;
parameter Hin_V_c_bitwidth = 16;
parameter Win_V_DEPTH = 1;
reg [31 : 0] Win_V_OPERATE_DEPTH = 0;
parameter Win_V_c_bitwidth = 16;
parameter CHout_V_DEPTH = 1;
reg [31 : 0] CHout_V_OPERATE_DEPTH = 0;
parameter CHout_V_c_bitwidth = 16;
parameter Kx_V_DEPTH = 1;
reg [31 : 0] Kx_V_OPERATE_DEPTH = 0;
parameter Kx_V_c_bitwidth = 8;
parameter Ky_V_DEPTH = 1;
reg [31 : 0] Ky_V_OPERATE_DEPTH = 0;
parameter Ky_V_c_bitwidth = 8;
parameter Sx_V_DEPTH = 1;
reg [31 : 0] Sx_V_OPERATE_DEPTH = 0;
parameter Sx_V_c_bitwidth = 8;
parameter Sy_V_DEPTH = 1;
reg [31 : 0] Sy_V_OPERATE_DEPTH = 0;
parameter Sy_V_c_bitwidth = 8;
parameter mode_V_DEPTH = 1;
reg [31 : 0] mode_V_OPERATE_DEPTH = 0;
parameter mode_V_c_bitwidth = 1;
parameter relu_en_V_DEPTH = 1;
reg [31 : 0] relu_en_V_OPERATE_DEPTH = 0;
parameter relu_en_V_c_bitwidth = 1;
parameter feature_in_DEPTH = 1;
reg [31 : 0] feature_in_OPERATE_DEPTH = 1;
parameter feature_in_c_bitwidth = 32;
parameter W_DEPTH = 1;
reg [31 : 0] W_OPERATE_DEPTH = 1;
parameter W_c_bitwidth = 32;
parameter bias_DEPTH = 1;
reg [31 : 0] bias_OPERATE_DEPTH = 1;
parameter bias_c_bitwidth = 32;
parameter feature_out_DEPTH = 1;
reg [31 : 0] feature_out_OPERATE_DEPTH = 1;
parameter feature_out_c_bitwidth = 32;
parameter START_ADDR = 0;
parameter Conv_continue_addr = 0;
parameter Conv_auto_start_addr = 0;
parameter CHin_V_data_in_addr = 16;
parameter Hin_V_data_in_addr = 24;
parameter Win_V_data_in_addr = 32;
parameter CHout_V_data_in_addr = 40;
parameter Kx_V_data_in_addr = 48;
parameter Ky_V_data_in_addr = 56;
parameter Sx_V_data_in_addr = 64;
parameter Sy_V_data_in_addr = 72;
parameter mode_V_data_in_addr = 80;
parameter relu_en_V_data_in_addr = 88;
parameter feature_in_data_in_addr = 96;
parameter W_data_in_addr = 104;
parameter bias_data_in_addr = 112;
parameter feature_out_data_in_addr = 120;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_AXILiteS_AWADDR;
output  TRAN_s_axi_AXILiteS_AWVALID;
input  TRAN_s_axi_AXILiteS_AWREADY;
output  TRAN_s_axi_AXILiteS_WVALID;
input  TRAN_s_axi_AXILiteS_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_AXILiteS_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_AXILiteS_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_AXILiteS_ARADDR;
output  TRAN_s_axi_AXILiteS_ARVALID;
input  TRAN_s_axi_AXILiteS_ARREADY;
input  TRAN_s_axi_AXILiteS_RVALID;
output  TRAN_s_axi_AXILiteS_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_AXILiteS_RDATA;
input [2 - 1 : 0] TRAN_s_axi_AXILiteS_RRESP;
input  TRAN_s_axi_AXILiteS_BVALID;
output  TRAN_s_axi_AXILiteS_BREADY;
input [2 - 1 : 0] TRAN_s_axi_AXILiteS_BRESP;
input    [32 - 1 : 0] TRAN_feature_in;
input    [32 - 1 : 0] TRAN_W;
input    [32 - 1 : 0] TRAN_bias;
input    [32 - 1 : 0] TRAN_feature_out;
output TRAN_AXILiteS_write_data_finish;
input     clk;
input     reset;
input     TRAN_AXILiteS_start_in;
output    TRAN_AXILiteS_done_out;
output    TRAN_AXILiteS_ready_out;
input     TRAN_AXILiteS_ready_in;
output    TRAN_AXILiteS_idle_out;
input  TRAN_AXILiteS_write_start_in   ;
output TRAN_AXILiteS_write_start_finish;
input     TRAN_AXILiteS_interrupt;
input     TRAN_AXILiteS_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] mem_CHin_V [CHin_V_DEPTH - 1 : 0];
reg CHin_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_Hin_V [Hin_V_DEPTH - 1 : 0];
reg Hin_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_Win_V [Win_V_DEPTH - 1 : 0];
reg Win_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_CHout_V [CHout_V_DEPTH - 1 : 0];
reg CHout_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_Kx_V [Kx_V_DEPTH - 1 : 0];
reg Kx_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_Ky_V [Ky_V_DEPTH - 1 : 0];
reg Ky_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_Sx_V [Sx_V_DEPTH - 1 : 0];
reg Sx_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_Sy_V [Sy_V_DEPTH - 1 : 0];
reg Sy_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_mode_V [mode_V_DEPTH - 1 : 0];
reg mode_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_relu_en_V [relu_en_V_DEPTH - 1 : 0];
reg relu_en_V_write_data_finish;
reg [feature_in_c_bitwidth - 1 : 0] reg_feature_in;
reg feature_in_write_data_finish;
reg [W_c_bitwidth - 1 : 0] reg_W;
reg W_write_data_finish;
reg [bias_c_bitwidth - 1 : 0] reg_bias;
reg bias_write_data_finish;
reg [feature_out_c_bitwidth - 1 : 0] reg_feature_out;
reg feature_out_write_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
reg process_6_finish = 0;
reg process_7_finish = 0;
reg process_8_finish = 0;
reg process_9_finish = 0;
reg process_10_finish = 0;
reg process_11_finish = 0;
reg process_12_finish = 0;
reg process_13_finish = 0;
reg process_14_finish = 0;
reg process_15_finish = 0;
//write CHin_V reg
reg [31 : 0] write_CHin_V_count = 0;
reg write_CHin_V_run_flag = 0;
reg write_one_CHin_V_data_done = 0;
//write Hin_V reg
reg [31 : 0] write_Hin_V_count = 0;
reg write_Hin_V_run_flag = 0;
reg write_one_Hin_V_data_done = 0;
//write Win_V reg
reg [31 : 0] write_Win_V_count = 0;
reg write_Win_V_run_flag = 0;
reg write_one_Win_V_data_done = 0;
//write CHout_V reg
reg [31 : 0] write_CHout_V_count = 0;
reg write_CHout_V_run_flag = 0;
reg write_one_CHout_V_data_done = 0;
//write Kx_V reg
reg [31 : 0] write_Kx_V_count = 0;
reg write_Kx_V_run_flag = 0;
reg write_one_Kx_V_data_done = 0;
//write Ky_V reg
reg [31 : 0] write_Ky_V_count = 0;
reg write_Ky_V_run_flag = 0;
reg write_one_Ky_V_data_done = 0;
//write Sx_V reg
reg [31 : 0] write_Sx_V_count = 0;
reg write_Sx_V_run_flag = 0;
reg write_one_Sx_V_data_done = 0;
//write Sy_V reg
reg [31 : 0] write_Sy_V_count = 0;
reg write_Sy_V_run_flag = 0;
reg write_one_Sy_V_data_done = 0;
//write mode_V reg
reg [31 : 0] write_mode_V_count = 0;
reg write_mode_V_run_flag = 0;
reg write_one_mode_V_data_done = 0;
//write relu_en_V reg
reg [31 : 0] write_relu_en_V_count = 0;
reg write_relu_en_V_run_flag = 0;
reg write_one_relu_en_V_data_done = 0;
//write feature_in reg
reg [31 : 0] write_feature_in_count = 0;
reg write_feature_in_run_flag = 0;
reg write_one_feature_in_data_done = 0;
//write W reg
reg [31 : 0] write_W_count = 0;
reg write_W_run_flag = 0;
reg write_one_W_data_done = 0;
//write bias reg
reg [31 : 0] write_bias_count = 0;
reg write_bias_run_flag = 0;
reg write_one_bias_data_done = 0;
//write feature_out reg
reg [31 : 0] write_feature_out_count = 0;
reg write_feature_out_run_flag = 0;
reg write_one_feature_out_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_AXILiteS_AWADDR = AWADDR_reg;
assign TRAN_s_axi_AXILiteS_AWVALID = AWVALID_reg;
assign TRAN_s_axi_AXILiteS_WVALID = WVALID_reg;
assign TRAN_s_axi_AXILiteS_WDATA = WDATA_reg;
assign TRAN_s_axi_AXILiteS_WSTRB = WSTRB_reg;
assign TRAN_s_axi_AXILiteS_ARADDR = ARADDR_reg;
assign TRAN_s_axi_AXILiteS_ARVALID = ARVALID_reg;
assign TRAN_s_axi_AXILiteS_RREADY = RREADY_reg;
assign TRAN_s_axi_AXILiteS_BREADY = BREADY_reg;
assign TRAN_AXILiteS_write_start_finish = AESL_write_start_finish;
assign TRAN_AXILiteS_done_out = AESL_done_index_reg;
assign TRAN_AXILiteS_ready_out = AESL_ready_out_index_reg;
assign TRAN_AXILiteS_idle_out = AESL_idle_index_reg;
assign TRAN_AXILiteS_write_data_finish = 1 & CHin_V_write_data_finish & Hin_V_write_data_finish & Win_V_write_data_finish & CHout_V_write_data_finish & Kx_V_write_data_finish & Ky_V_write_data_finish & Sx_V_write_data_finish & Sy_V_write_data_finish & mode_V_write_data_finish & relu_en_V_write_data_finish & feature_in_write_data_finish & W_write_data_finish & bias_write_data_finish & feature_out_write_data_finish;
always @(TRAN_AXILiteS_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_AXILiteS_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish or process_6_finish or process_7_finish or process_8_finish or process_9_finish or process_10_finish or process_11_finish or process_12_finish or process_13_finish or process_14_finish or process_15_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 6 && process_6_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 7 && process_7_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 8 && process_8_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 9 && process_9_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 10 && process_10_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 11 && process_11_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 12 && process_12_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 13 && process_13_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 14 && process_14_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 15 && process_15_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

always @(TRAN_feature_in) 
begin
    reg_feature_in = TRAN_feature_in;
end
always @(TRAN_W) 
begin
    reg_W = TRAN_W;
end
always @(TRAN_bias) 
begin
    reg_bias = TRAN_bias;
end
always @(TRAN_feature_out) 
begin
    reg_feature_out = TRAN_feature_out;
end
task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 32; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8 ) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth <= 1024 & bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_AXILiteS_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_AXILiteS_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_AXILiteS_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_AXILiteS_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_AXILiteS_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_AXILiteS_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_AXILiteS_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_AXILiteS_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_done_index_reg         <= RDATA_reg[1 : 1];
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        CHin_V_write_data_finish <= 0;
        write_CHin_V_run_flag <= 0; 
        write_CHin_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (CHin_V_c_bitwidth, CHin_V_DEPTH, CHin_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            CHin_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_CHin_V_run_flag <= 1; 
            write_CHin_V_count = 0;
        end
        if (write_one_CHin_V_data_done === 1) begin
            write_CHin_V_count = write_CHin_V_count + 1;
            if (write_CHin_V_count == CHin_V_OPERATE_DEPTH) begin
                write_CHin_V_run_flag <= 0; 
                CHin_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_CHin_V
    integer write_CHin_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] CHin_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = CHin_V_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_CHin_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write CHin_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (CHin_V_c_bitwidth < 32) begin
                        CHin_V_data_tmp_reg = mem_CHin_V[write_CHin_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < CHin_V_c_bitwidth) begin
                                CHin_V_data_tmp_reg[j] = mem_CHin_V[write_CHin_V_count][i*32 + j];
                            end
                            else begin
                                CHin_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (CHin_V_data_in_addr + write_CHin_V_count * four_byte_num * 4 + i * 4, CHin_V_data_tmp_reg, write_CHin_V_resp);
                end
                process_busy = 0;
                write_one_CHin_V_data_done <= 1;
                @(posedge clk);
                write_one_CHin_V_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        Hin_V_write_data_finish <= 0;
        write_Hin_V_run_flag <= 0; 
        write_Hin_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (Hin_V_c_bitwidth, Hin_V_DEPTH, Hin_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            Hin_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_Hin_V_run_flag <= 1; 
            write_Hin_V_count = 0;
        end
        if (write_one_Hin_V_data_done === 1) begin
            write_Hin_V_count = write_Hin_V_count + 1;
            if (write_Hin_V_count == Hin_V_OPERATE_DEPTH) begin
                write_Hin_V_run_flag <= 0; 
                Hin_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_Hin_V
    integer write_Hin_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] Hin_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = Hin_V_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_Hin_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write Hin_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (Hin_V_c_bitwidth < 32) begin
                        Hin_V_data_tmp_reg = mem_Hin_V[write_Hin_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < Hin_V_c_bitwidth) begin
                                Hin_V_data_tmp_reg[j] = mem_Hin_V[write_Hin_V_count][i*32 + j];
                            end
                            else begin
                                Hin_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (Hin_V_data_in_addr + write_Hin_V_count * four_byte_num * 4 + i * 4, Hin_V_data_tmp_reg, write_Hin_V_resp);
                end
                process_busy = 0;
                write_one_Hin_V_data_done <= 1;
                @(posedge clk);
                write_one_Hin_V_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        Win_V_write_data_finish <= 0;
        write_Win_V_run_flag <= 0; 
        write_Win_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (Win_V_c_bitwidth, Win_V_DEPTH, Win_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            Win_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_Win_V_run_flag <= 1; 
            write_Win_V_count = 0;
        end
        if (write_one_Win_V_data_done === 1) begin
            write_Win_V_count = write_Win_V_count + 1;
            if (write_Win_V_count == Win_V_OPERATE_DEPTH) begin
                write_Win_V_run_flag <= 0; 
                Win_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_Win_V
    integer write_Win_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] Win_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = Win_V_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_Win_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write Win_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (Win_V_c_bitwidth < 32) begin
                        Win_V_data_tmp_reg = mem_Win_V[write_Win_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < Win_V_c_bitwidth) begin
                                Win_V_data_tmp_reg[j] = mem_Win_V[write_Win_V_count][i*32 + j];
                            end
                            else begin
                                Win_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (Win_V_data_in_addr + write_Win_V_count * four_byte_num * 4 + i * 4, Win_V_data_tmp_reg, write_Win_V_resp);
                end
                process_busy = 0;
                write_one_Win_V_data_done <= 1;
                @(posedge clk);
                write_one_Win_V_data_done <= 0;
            end   
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        CHout_V_write_data_finish <= 0;
        write_CHout_V_run_flag <= 0; 
        write_CHout_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (CHout_V_c_bitwidth, CHout_V_DEPTH, CHout_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            CHout_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_CHout_V_run_flag <= 1; 
            write_CHout_V_count = 0;
        end
        if (write_one_CHout_V_data_done === 1) begin
            write_CHout_V_count = write_CHout_V_count + 1;
            if (write_CHout_V_count == CHout_V_OPERATE_DEPTH) begin
                write_CHout_V_run_flag <= 0; 
                CHout_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_CHout_V
    integer write_CHout_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] CHout_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = CHout_V_c_bitwidth;
    process_num = 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_4_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_CHout_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write CHout_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (CHout_V_c_bitwidth < 32) begin
                        CHout_V_data_tmp_reg = mem_CHout_V[write_CHout_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < CHout_V_c_bitwidth) begin
                                CHout_V_data_tmp_reg[j] = mem_CHout_V[write_CHout_V_count][i*32 + j];
                            end
                            else begin
                                CHout_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (CHout_V_data_in_addr + write_CHout_V_count * four_byte_num * 4 + i * 4, CHout_V_data_tmp_reg, write_CHout_V_resp);
                end
                process_busy = 0;
                write_one_CHout_V_data_done <= 1;
                @(posedge clk);
                write_one_CHout_V_data_done <= 0;
            end   
            process_4_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        Kx_V_write_data_finish <= 0;
        write_Kx_V_run_flag <= 0; 
        write_Kx_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (Kx_V_c_bitwidth, Kx_V_DEPTH, Kx_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            Kx_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_Kx_V_run_flag <= 1; 
            write_Kx_V_count = 0;
        end
        if (write_one_Kx_V_data_done === 1) begin
            write_Kx_V_count = write_Kx_V_count + 1;
            if (write_Kx_V_count == Kx_V_OPERATE_DEPTH) begin
                write_Kx_V_run_flag <= 0; 
                Kx_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_Kx_V
    integer write_Kx_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] Kx_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = Kx_V_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_5_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_Kx_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write Kx_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (Kx_V_c_bitwidth < 32) begin
                        Kx_V_data_tmp_reg = mem_Kx_V[write_Kx_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < Kx_V_c_bitwidth) begin
                                Kx_V_data_tmp_reg[j] = mem_Kx_V[write_Kx_V_count][i*32 + j];
                            end
                            else begin
                                Kx_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (Kx_V_data_in_addr + write_Kx_V_count * four_byte_num * 4 + i * 4, Kx_V_data_tmp_reg, write_Kx_V_resp);
                end
                process_busy = 0;
                write_one_Kx_V_data_done <= 1;
                @(posedge clk);
                write_one_Kx_V_data_done <= 0;
            end   
            process_5_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        Ky_V_write_data_finish <= 0;
        write_Ky_V_run_flag <= 0; 
        write_Ky_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (Ky_V_c_bitwidth, Ky_V_DEPTH, Ky_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            Ky_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_Ky_V_run_flag <= 1; 
            write_Ky_V_count = 0;
        end
        if (write_one_Ky_V_data_done === 1) begin
            write_Ky_V_count = write_Ky_V_count + 1;
            if (write_Ky_V_count == Ky_V_OPERATE_DEPTH) begin
                write_Ky_V_run_flag <= 0; 
                Ky_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_Ky_V
    integer write_Ky_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] Ky_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = Ky_V_c_bitwidth;
    process_num = 6;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_6_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_Ky_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write Ky_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (Ky_V_c_bitwidth < 32) begin
                        Ky_V_data_tmp_reg = mem_Ky_V[write_Ky_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < Ky_V_c_bitwidth) begin
                                Ky_V_data_tmp_reg[j] = mem_Ky_V[write_Ky_V_count][i*32 + j];
                            end
                            else begin
                                Ky_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (Ky_V_data_in_addr + write_Ky_V_count * four_byte_num * 4 + i * 4, Ky_V_data_tmp_reg, write_Ky_V_resp);
                end
                process_busy = 0;
                write_one_Ky_V_data_done <= 1;
                @(posedge clk);
                write_one_Ky_V_data_done <= 0;
            end   
            process_6_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        Sx_V_write_data_finish <= 0;
        write_Sx_V_run_flag <= 0; 
        write_Sx_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (Sx_V_c_bitwidth, Sx_V_DEPTH, Sx_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            Sx_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_Sx_V_run_flag <= 1; 
            write_Sx_V_count = 0;
        end
        if (write_one_Sx_V_data_done === 1) begin
            write_Sx_V_count = write_Sx_V_count + 1;
            if (write_Sx_V_count == Sx_V_OPERATE_DEPTH) begin
                write_Sx_V_run_flag <= 0; 
                Sx_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_Sx_V
    integer write_Sx_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] Sx_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = Sx_V_c_bitwidth;
    process_num = 7;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_7_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_Sx_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write Sx_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (Sx_V_c_bitwidth < 32) begin
                        Sx_V_data_tmp_reg = mem_Sx_V[write_Sx_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < Sx_V_c_bitwidth) begin
                                Sx_V_data_tmp_reg[j] = mem_Sx_V[write_Sx_V_count][i*32 + j];
                            end
                            else begin
                                Sx_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (Sx_V_data_in_addr + write_Sx_V_count * four_byte_num * 4 + i * 4, Sx_V_data_tmp_reg, write_Sx_V_resp);
                end
                process_busy = 0;
                write_one_Sx_V_data_done <= 1;
                @(posedge clk);
                write_one_Sx_V_data_done <= 0;
            end   
            process_7_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        Sy_V_write_data_finish <= 0;
        write_Sy_V_run_flag <= 0; 
        write_Sy_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (Sy_V_c_bitwidth, Sy_V_DEPTH, Sy_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            Sy_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_Sy_V_run_flag <= 1; 
            write_Sy_V_count = 0;
        end
        if (write_one_Sy_V_data_done === 1) begin
            write_Sy_V_count = write_Sy_V_count + 1;
            if (write_Sy_V_count == Sy_V_OPERATE_DEPTH) begin
                write_Sy_V_run_flag <= 0; 
                Sy_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_Sy_V
    integer write_Sy_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] Sy_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = Sy_V_c_bitwidth;
    process_num = 8;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_8_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_Sy_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write Sy_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (Sy_V_c_bitwidth < 32) begin
                        Sy_V_data_tmp_reg = mem_Sy_V[write_Sy_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < Sy_V_c_bitwidth) begin
                                Sy_V_data_tmp_reg[j] = mem_Sy_V[write_Sy_V_count][i*32 + j];
                            end
                            else begin
                                Sy_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (Sy_V_data_in_addr + write_Sy_V_count * four_byte_num * 4 + i * 4, Sy_V_data_tmp_reg, write_Sy_V_resp);
                end
                process_busy = 0;
                write_one_Sy_V_data_done <= 1;
                @(posedge clk);
                write_one_Sy_V_data_done <= 0;
            end   
            process_8_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        mode_V_write_data_finish <= 0;
        write_mode_V_run_flag <= 0; 
        write_mode_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (mode_V_c_bitwidth, mode_V_DEPTH, mode_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            mode_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_mode_V_run_flag <= 1; 
            write_mode_V_count = 0;
        end
        if (write_one_mode_V_data_done === 1) begin
            write_mode_V_count = write_mode_V_count + 1;
            if (write_mode_V_count == mode_V_OPERATE_DEPTH) begin
                write_mode_V_run_flag <= 0; 
                mode_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_mode_V
    integer write_mode_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] mode_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = mode_V_c_bitwidth;
    process_num = 9;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_9_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_mode_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write mode_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (mode_V_c_bitwidth < 32) begin
                        mode_V_data_tmp_reg = mem_mode_V[write_mode_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < mode_V_c_bitwidth) begin
                                mode_V_data_tmp_reg[j] = mem_mode_V[write_mode_V_count][i*32 + j];
                            end
                            else begin
                                mode_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (mode_V_data_in_addr + write_mode_V_count * four_byte_num * 4 + i * 4, mode_V_data_tmp_reg, write_mode_V_resp);
                end
                process_busy = 0;
                write_one_mode_V_data_done <= 1;
                @(posedge clk);
                write_one_mode_V_data_done <= 0;
            end   
            process_9_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        relu_en_V_write_data_finish <= 0;
        write_relu_en_V_run_flag <= 0; 
        write_relu_en_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (relu_en_V_c_bitwidth, relu_en_V_DEPTH, relu_en_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            relu_en_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_relu_en_V_run_flag <= 1; 
            write_relu_en_V_count = 0;
        end
        if (write_one_relu_en_V_data_done === 1) begin
            write_relu_en_V_count = write_relu_en_V_count + 1;
            if (write_relu_en_V_count == relu_en_V_OPERATE_DEPTH) begin
                write_relu_en_V_run_flag <= 0; 
                relu_en_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_relu_en_V
    integer write_relu_en_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] relu_en_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = relu_en_V_c_bitwidth;
    process_num = 10;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_10_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_relu_en_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write relu_en_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (relu_en_V_c_bitwidth < 32) begin
                        relu_en_V_data_tmp_reg = mem_relu_en_V[write_relu_en_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < relu_en_V_c_bitwidth) begin
                                relu_en_V_data_tmp_reg[j] = mem_relu_en_V[write_relu_en_V_count][i*32 + j];
                            end
                            else begin
                                relu_en_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (relu_en_V_data_in_addr + write_relu_en_V_count * four_byte_num * 4 + i * 4, relu_en_V_data_tmp_reg, write_relu_en_V_resp);
                end
                process_busy = 0;
                write_one_relu_en_V_data_done <= 1;
                @(posedge clk);
                write_one_relu_en_V_data_done <= 0;
            end   
            process_10_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        feature_in_write_data_finish <= 0;
        write_feature_in_run_flag <= 0; 
        write_feature_in_count = 0;
        count_operate_depth_by_bitwidth_and_depth (feature_in_c_bitwidth, feature_in_DEPTH, feature_in_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            feature_in_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_feature_in_run_flag <= 1; 
            write_feature_in_count = 0;
        end
        if (write_one_feature_in_data_done === 1) begin
            write_feature_in_count = write_feature_in_count + 1;
            if (write_feature_in_count == feature_in_OPERATE_DEPTH) begin
                write_feature_in_run_flag <= 0; 
                feature_in_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_feature_in
    integer write_feature_in_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] feature_in_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = feature_in_c_bitwidth;
    process_num = 11;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_11_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_feature_in_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write feature_in data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (feature_in_c_bitwidth < 32) begin
                        feature_in_data_tmp_reg = reg_feature_in;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < feature_in_c_bitwidth) begin
                                feature_in_data_tmp_reg[j] = reg_feature_in[i*32 + j];
                            end
                            else begin
                                feature_in_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (feature_in_data_in_addr + write_feature_in_count * four_byte_num * 4 + i * 4, feature_in_data_tmp_reg, write_feature_in_resp);
                end
                process_busy = 0;
                write_one_feature_in_data_done <= 1;
                @(posedge clk);
                write_one_feature_in_data_done <= 0;
            end   
            process_11_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        W_write_data_finish <= 0;
        write_W_run_flag <= 0; 
        write_W_count = 0;
        count_operate_depth_by_bitwidth_and_depth (W_c_bitwidth, W_DEPTH, W_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            W_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_W_run_flag <= 1; 
            write_W_count = 0;
        end
        if (write_one_W_data_done === 1) begin
            write_W_count = write_W_count + 1;
            if (write_W_count == W_OPERATE_DEPTH) begin
                write_W_run_flag <= 0; 
                W_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_W
    integer write_W_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] W_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = W_c_bitwidth;
    process_num = 12;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_12_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_W_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write W data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (W_c_bitwidth < 32) begin
                        W_data_tmp_reg = reg_W;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < W_c_bitwidth) begin
                                W_data_tmp_reg[j] = reg_W[i*32 + j];
                            end
                            else begin
                                W_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (W_data_in_addr + write_W_count * four_byte_num * 4 + i * 4, W_data_tmp_reg, write_W_resp);
                end
                process_busy = 0;
                write_one_W_data_done <= 1;
                @(posedge clk);
                write_one_W_data_done <= 0;
            end   
            process_12_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        bias_write_data_finish <= 0;
        write_bias_run_flag <= 0; 
        write_bias_count = 0;
        count_operate_depth_by_bitwidth_and_depth (bias_c_bitwidth, bias_DEPTH, bias_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            bias_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_bias_run_flag <= 1; 
            write_bias_count = 0;
        end
        if (write_one_bias_data_done === 1) begin
            write_bias_count = write_bias_count + 1;
            if (write_bias_count == bias_OPERATE_DEPTH) begin
                write_bias_run_flag <= 0; 
                bias_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_bias
    integer write_bias_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] bias_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = bias_c_bitwidth;
    process_num = 13;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_13_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_bias_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write bias data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (bias_c_bitwidth < 32) begin
                        bias_data_tmp_reg = reg_bias;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < bias_c_bitwidth) begin
                                bias_data_tmp_reg[j] = reg_bias[i*32 + j];
                            end
                            else begin
                                bias_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (bias_data_in_addr + write_bias_count * four_byte_num * 4 + i * 4, bias_data_tmp_reg, write_bias_resp);
                end
                process_busy = 0;
                write_one_bias_data_done <= 1;
                @(posedge clk);
                write_one_bias_data_done <= 0;
            end   
            process_13_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        feature_out_write_data_finish <= 0;
        write_feature_out_run_flag <= 0; 
        write_feature_out_count = 0;
        count_operate_depth_by_bitwidth_and_depth (feature_out_c_bitwidth, feature_out_DEPTH, feature_out_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            feature_out_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_feature_out_run_flag <= 1; 
            write_feature_out_count = 0;
        end
        if (write_one_feature_out_data_done === 1) begin
            write_feature_out_count = write_feature_out_count + 1;
            if (write_feature_out_count == feature_out_OPERATE_DEPTH) begin
                write_feature_out_run_flag <= 0; 
                feature_out_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_feature_out
    integer write_feature_out_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] feature_out_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = feature_out_c_bitwidth;
    process_num = 14;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_14_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_feature_out_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write feature_out data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (feature_out_c_bitwidth < 32) begin
                        feature_out_data_tmp_reg = reg_feature_out;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < feature_out_c_bitwidth) begin
                                feature_out_data_tmp_reg[j] = reg_feature_out[i*32 + j];
                            end
                            else begin
                                feature_out_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (feature_out_data_in_addr + write_feature_out_count * four_byte_num * 4 + i * 4, feature_out_data_tmp_reg, write_feature_out_resp);
                end
                process_busy = 0;
                write_one_feature_out_data_done <= 1;
                @(posedge clk);
                write_one_feature_out_data_done <= 0;
            end   
            process_14_finish <= 1;
        end
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 1) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_AXILiteS_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 15;
    while (1) begin
        process_15_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_15_finish <= 1;
        end 
        @(posedge clk);
    end
end

//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_CHin_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [CHin_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (CHin_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_CHin_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_CHin_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < CHin_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_CHin_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_CHin_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_CHin_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_CHin_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_CHin_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_Hin_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [Hin_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (Hin_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_Hin_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_Hin_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < Hin_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_Hin_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_Hin_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_Hin_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_Hin_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_Hin_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_Win_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [Win_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (Win_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_Win_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_Win_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < Win_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_Win_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_Win_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_Win_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_Win_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_Win_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_CHout_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [CHout_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (CHout_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_CHout_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_CHout_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < CHout_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_CHout_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_CHout_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_CHout_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_CHout_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_CHout_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_Kx_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [Kx_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (Kx_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_Kx_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_Kx_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < Kx_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_Kx_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_Kx_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_Kx_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_Kx_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_Kx_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_Ky_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [Ky_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (Ky_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_Ky_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_Ky_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < Ky_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_Ky_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_Ky_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_Ky_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_Ky_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_Ky_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_Sx_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [Sx_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (Sx_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_Sx_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_Sx_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < Sx_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_Sx_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_Sx_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_Sx_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_Sx_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_Sx_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_Sy_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [Sy_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (Sy_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_Sy_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_Sy_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < Sy_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_Sy_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_Sy_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_Sy_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_Sy_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_Sy_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_mode_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [mode_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (mode_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_mode_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_mode_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < mode_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_mode_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_mode_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_mode_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_mode_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_mode_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_relu_en_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [relu_en_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (relu_en_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_relu_en_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_relu_en_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < relu_en_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_relu_en_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_relu_en_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_relu_en_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_relu_en_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_relu_en_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
endmodule
