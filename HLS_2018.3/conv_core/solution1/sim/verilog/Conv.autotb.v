// ==============================================================
// File generated on Thu Apr 20 21:03:16 +0800 2023
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      Conv
`define AUTOTB_DUT_INST AESL_inst_Conv
`define AUTOTB_TOP      apatb_Conv_top
`define AUTOTB_LAT_RESULT_FILE "Conv.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "Conv.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_Conv_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_gmem 1
`define AESL_DEPTH_CHin_V 1
`define AESL_DEPTH_Hin_V 1
`define AESL_DEPTH_Win_V 1
`define AESL_DEPTH_CHout_V 1
`define AESL_DEPTH_Kx_V 1
`define AESL_DEPTH_Ky_V 1
`define AESL_DEPTH_Sx_V 1
`define AESL_DEPTH_Sy_V 1
`define AESL_DEPTH_mode_V 1
`define AESL_DEPTH_relu_en_V 1
`define AESL_DEPTH_feature_in 1
`define AESL_DEPTH_W 1
`define AESL_DEPTH_bias 1
`define AESL_DEPTH_feature_out 1
`define AUTOTB_TVIN_gmem  "../tv/cdatafile/c.Conv.autotvin_gmem.dat"
`define AUTOTB_TVIN_CHin_V  "../tv/cdatafile/c.Conv.autotvin_CHin_V.dat"
`define AUTOTB_TVIN_Hin_V  "../tv/cdatafile/c.Conv.autotvin_Hin_V.dat"
`define AUTOTB_TVIN_Win_V  "../tv/cdatafile/c.Conv.autotvin_Win_V.dat"
`define AUTOTB_TVIN_CHout_V  "../tv/cdatafile/c.Conv.autotvin_CHout_V.dat"
`define AUTOTB_TVIN_Kx_V  "../tv/cdatafile/c.Conv.autotvin_Kx_V.dat"
`define AUTOTB_TVIN_Ky_V  "../tv/cdatafile/c.Conv.autotvin_Ky_V.dat"
`define AUTOTB_TVIN_Sx_V  "../tv/cdatafile/c.Conv.autotvin_Sx_V.dat"
`define AUTOTB_TVIN_Sy_V  "../tv/cdatafile/c.Conv.autotvin_Sy_V.dat"
`define AUTOTB_TVIN_mode_V  "../tv/cdatafile/c.Conv.autotvin_mode_V.dat"
`define AUTOTB_TVIN_relu_en_V  "../tv/cdatafile/c.Conv.autotvin_relu_en_V.dat"
`define AUTOTB_TVIN_feature_in  "../tv/cdatafile/c.Conv.autotvin_feature_in.dat"
`define AUTOTB_TVIN_W  "../tv/cdatafile/c.Conv.autotvin_W.dat"
`define AUTOTB_TVIN_bias  "../tv/cdatafile/c.Conv.autotvin_bias.dat"
`define AUTOTB_TVIN_feature_out  "../tv/cdatafile/c.Conv.autotvin_feature_out.dat"
`define AUTOTB_TVIN_gmem_out_wrapc  "../tv/rtldatafile/rtl.Conv.autotvin_gmem.dat"
`define AUTOTB_TVIN_CHin_V_out_wrapc  "../tv/rtldatafile/rtl.Conv.autotvin_CHin_V.dat"
`define AUTOTB_TVIN_Hin_V_out_wrapc  "../tv/rtldatafile/rtl.Conv.autotvin_Hin_V.dat"
`define AUTOTB_TVIN_Win_V_out_wrapc  "../tv/rtldatafile/rtl.Conv.autotvin_Win_V.dat"
`define AUTOTB_TVIN_CHout_V_out_wrapc  "../tv/rtldatafile/rtl.Conv.autotvin_CHout_V.dat"
`define AUTOTB_TVIN_Kx_V_out_wrapc  "../tv/rtldatafile/rtl.Conv.autotvin_Kx_V.dat"
`define AUTOTB_TVIN_Ky_V_out_wrapc  "../tv/rtldatafile/rtl.Conv.autotvin_Ky_V.dat"
`define AUTOTB_TVIN_Sx_V_out_wrapc  "../tv/rtldatafile/rtl.Conv.autotvin_Sx_V.dat"
`define AUTOTB_TVIN_Sy_V_out_wrapc  "../tv/rtldatafile/rtl.Conv.autotvin_Sy_V.dat"
`define AUTOTB_TVIN_mode_V_out_wrapc  "../tv/rtldatafile/rtl.Conv.autotvin_mode_V.dat"
`define AUTOTB_TVIN_relu_en_V_out_wrapc  "../tv/rtldatafile/rtl.Conv.autotvin_relu_en_V.dat"
`define AUTOTB_TVIN_feature_in_out_wrapc  "../tv/rtldatafile/rtl.Conv.autotvin_feature_in.dat"
`define AUTOTB_TVIN_W_out_wrapc  "../tv/rtldatafile/rtl.Conv.autotvin_W.dat"
`define AUTOTB_TVIN_bias_out_wrapc  "../tv/rtldatafile/rtl.Conv.autotvin_bias.dat"
`define AUTOTB_TVIN_feature_out_out_wrapc  "../tv/rtldatafile/rtl.Conv.autotvin_feature_out.dat"
`define AUTOTB_TVOUT_gmem  "../tv/cdatafile/c.Conv.autotvout_gmem.dat"
`define AUTOTB_TVOUT_gmem_out_wrapc  "../tv/rtldatafile/rtl.Conv.autotvout_gmem.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_gmem = 4;
parameter LENGTH_CHin_V = 1;
parameter LENGTH_Hin_V = 1;
parameter LENGTH_Win_V = 1;
parameter LENGTH_CHout_V = 1;
parameter LENGTH_Kx_V = 1;
parameter LENGTH_Ky_V = 1;
parameter LENGTH_Sx_V = 1;
parameter LENGTH_Sy_V = 1;
parameter LENGTH_mode_V = 1;
parameter LENGTH_relu_en_V = 1;
parameter LENGTH_feature_in = 1;
parameter LENGTH_W = 1;
parameter LENGTH_bias = 1;
parameter LENGTH_feature_out = 1;

task read_token;
    input integer fp;
    output reg [199 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [6 : 0] AXILiteS_AWADDR;
wire  AXILiteS_AWVALID;
wire  AXILiteS_AWREADY;
wire  AXILiteS_WVALID;
wire  AXILiteS_WREADY;
wire [31 : 0] AXILiteS_WDATA;
wire [3 : 0] AXILiteS_WSTRB;
wire [6 : 0] AXILiteS_ARADDR;
wire  AXILiteS_ARVALID;
wire  AXILiteS_ARREADY;
wire  AXILiteS_RVALID;
wire  AXILiteS_RREADY;
wire [31 : 0] AXILiteS_RDATA;
wire [1 : 0] AXILiteS_RRESP;
wire  AXILiteS_BVALID;
wire  AXILiteS_BREADY;
wire [1 : 0] AXILiteS_BRESP;
wire  AXILiteS_INTERRUPT;
wire  gmem_AWVALID;
wire  gmem_AWREADY;
wire [31 : 0] gmem_AWADDR;
wire [0 : 0] gmem_AWID;
wire [7 : 0] gmem_AWLEN;
wire [2 : 0] gmem_AWSIZE;
wire [1 : 0] gmem_AWBURST;
wire [1 : 0] gmem_AWLOCK;
wire [3 : 0] gmem_AWCACHE;
wire [2 : 0] gmem_AWPROT;
wire [3 : 0] gmem_AWQOS;
wire [3 : 0] gmem_AWREGION;
wire [0 : 0] gmem_AWUSER;
wire  gmem_WVALID;
wire  gmem_WREADY;
wire [31 : 0] gmem_WDATA;
wire [3 : 0] gmem_WSTRB;
wire  gmem_WLAST;
wire [0 : 0] gmem_WID;
wire [0 : 0] gmem_WUSER;
wire  gmem_ARVALID;
wire  gmem_ARREADY;
wire [31 : 0] gmem_ARADDR;
wire [0 : 0] gmem_ARID;
wire [7 : 0] gmem_ARLEN;
wire [2 : 0] gmem_ARSIZE;
wire [1 : 0] gmem_ARBURST;
wire [1 : 0] gmem_ARLOCK;
wire [3 : 0] gmem_ARCACHE;
wire [2 : 0] gmem_ARPROT;
wire [3 : 0] gmem_ARQOS;
wire [3 : 0] gmem_ARREGION;
wire [0 : 0] gmem_ARUSER;
wire  gmem_RVALID;
wire  gmem_RREADY;
wire [31 : 0] gmem_RDATA;
wire  gmem_RLAST;
wire [0 : 0] gmem_RID;
wire [0 : 0] gmem_RUSER;
wire [1 : 0] gmem_RRESP;
wire  gmem_BVALID;
wire  gmem_BREADY;
wire [1 : 0] gmem_BRESP;
wire [0 : 0] gmem_BID;
wire [0 : 0] gmem_BUSER;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire AXILiteS_write_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;

wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_AXILiteS_AWADDR(AXILiteS_AWADDR),
    .s_axi_AXILiteS_AWVALID(AXILiteS_AWVALID),
    .s_axi_AXILiteS_AWREADY(AXILiteS_AWREADY),
    .s_axi_AXILiteS_WVALID(AXILiteS_WVALID),
    .s_axi_AXILiteS_WREADY(AXILiteS_WREADY),
    .s_axi_AXILiteS_WDATA(AXILiteS_WDATA),
    .s_axi_AXILiteS_WSTRB(AXILiteS_WSTRB),
    .s_axi_AXILiteS_ARADDR(AXILiteS_ARADDR),
    .s_axi_AXILiteS_ARVALID(AXILiteS_ARVALID),
    .s_axi_AXILiteS_ARREADY(AXILiteS_ARREADY),
    .s_axi_AXILiteS_RVALID(AXILiteS_RVALID),
    .s_axi_AXILiteS_RREADY(AXILiteS_RREADY),
    .s_axi_AXILiteS_RDATA(AXILiteS_RDATA),
    .s_axi_AXILiteS_RRESP(AXILiteS_RRESP),
    .s_axi_AXILiteS_BVALID(AXILiteS_BVALID),
    .s_axi_AXILiteS_BREADY(AXILiteS_BREADY),
    .s_axi_AXILiteS_BRESP(AXILiteS_BRESP),
    .interrupt(AXILiteS_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_gmem_AWVALID(gmem_AWVALID),
    .m_axi_gmem_AWREADY(gmem_AWREADY),
    .m_axi_gmem_AWADDR(gmem_AWADDR),
    .m_axi_gmem_AWID(gmem_AWID),
    .m_axi_gmem_AWLEN(gmem_AWLEN),
    .m_axi_gmem_AWSIZE(gmem_AWSIZE),
    .m_axi_gmem_AWBURST(gmem_AWBURST),
    .m_axi_gmem_AWLOCK(gmem_AWLOCK),
    .m_axi_gmem_AWCACHE(gmem_AWCACHE),
    .m_axi_gmem_AWPROT(gmem_AWPROT),
    .m_axi_gmem_AWQOS(gmem_AWQOS),
    .m_axi_gmem_AWREGION(gmem_AWREGION),
    .m_axi_gmem_AWUSER(gmem_AWUSER),
    .m_axi_gmem_WVALID(gmem_WVALID),
    .m_axi_gmem_WREADY(gmem_WREADY),
    .m_axi_gmem_WDATA(gmem_WDATA),
    .m_axi_gmem_WSTRB(gmem_WSTRB),
    .m_axi_gmem_WLAST(gmem_WLAST),
    .m_axi_gmem_WID(gmem_WID),
    .m_axi_gmem_WUSER(gmem_WUSER),
    .m_axi_gmem_ARVALID(gmem_ARVALID),
    .m_axi_gmem_ARREADY(gmem_ARREADY),
    .m_axi_gmem_ARADDR(gmem_ARADDR),
    .m_axi_gmem_ARID(gmem_ARID),
    .m_axi_gmem_ARLEN(gmem_ARLEN),
    .m_axi_gmem_ARSIZE(gmem_ARSIZE),
    .m_axi_gmem_ARBURST(gmem_ARBURST),
    .m_axi_gmem_ARLOCK(gmem_ARLOCK),
    .m_axi_gmem_ARCACHE(gmem_ARCACHE),
    .m_axi_gmem_ARPROT(gmem_ARPROT),
    .m_axi_gmem_ARQOS(gmem_ARQOS),
    .m_axi_gmem_ARREGION(gmem_ARREGION),
    .m_axi_gmem_ARUSER(gmem_ARUSER),
    .m_axi_gmem_RVALID(gmem_RVALID),
    .m_axi_gmem_RREADY(gmem_RREADY),
    .m_axi_gmem_RDATA(gmem_RDATA),
    .m_axi_gmem_RLAST(gmem_RLAST),
    .m_axi_gmem_RID(gmem_RID),
    .m_axi_gmem_RUSER(gmem_RUSER),
    .m_axi_gmem_RRESP(gmem_RRESP),
    .m_axi_gmem_BVALID(gmem_BVALID),
    .m_axi_gmem_BREADY(gmem_BREADY),
    .m_axi_gmem_BRESP(gmem_BRESP),
    .m_axi_gmem_BID(gmem_BID),
    .m_axi_gmem_BUSER(gmem_BUSER));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = AESL_reset;
assign ap_rst_n_n = ~AESL_reset;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & AXILiteS_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status ;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end















wire    AESL_axi_master_gmem_ready;
wire    AESL_axi_master_gmem_done;
wire [32 - 1:0] feature_in;
wire [32 - 1:0] W;
wire [32 - 1:0] bias;
wire [32 - 1:0] feature_out;
AESL_axi_master_gmem AESL_AXI_MASTER_gmem(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_gmem_AWVALID (gmem_AWVALID),
    .TRAN_gmem_AWREADY (gmem_AWREADY),
    .TRAN_gmem_AWADDR (gmem_AWADDR),
    .TRAN_gmem_AWID (gmem_AWID),
    .TRAN_gmem_AWLEN (gmem_AWLEN),
    .TRAN_gmem_AWSIZE (gmem_AWSIZE),
    .TRAN_gmem_AWBURST (gmem_AWBURST),
    .TRAN_gmem_AWLOCK (gmem_AWLOCK),
    .TRAN_gmem_AWCACHE (gmem_AWCACHE),
    .TRAN_gmem_AWPROT (gmem_AWPROT),
    .TRAN_gmem_AWQOS (gmem_AWQOS),
    .TRAN_gmem_AWREGION (gmem_AWREGION),
    .TRAN_gmem_AWUSER (gmem_AWUSER),
    .TRAN_gmem_WVALID (gmem_WVALID),
    .TRAN_gmem_WREADY (gmem_WREADY),
    .TRAN_gmem_WDATA (gmem_WDATA),
    .TRAN_gmem_WSTRB (gmem_WSTRB),
    .TRAN_gmem_WLAST (gmem_WLAST),
    .TRAN_gmem_WID (gmem_WID),
    .TRAN_gmem_WUSER (gmem_WUSER),
    .TRAN_gmem_ARVALID (gmem_ARVALID),
    .TRAN_gmem_ARREADY (gmem_ARREADY),
    .TRAN_gmem_ARADDR (gmem_ARADDR),
    .TRAN_gmem_ARID (gmem_ARID),
    .TRAN_gmem_ARLEN (gmem_ARLEN),
    .TRAN_gmem_ARSIZE (gmem_ARSIZE),
    .TRAN_gmem_ARBURST (gmem_ARBURST),
    .TRAN_gmem_ARLOCK (gmem_ARLOCK),
    .TRAN_gmem_ARCACHE (gmem_ARCACHE),
    .TRAN_gmem_ARPROT (gmem_ARPROT),
    .TRAN_gmem_ARQOS (gmem_ARQOS),
    .TRAN_gmem_ARREGION (gmem_ARREGION),
    .TRAN_gmem_ARUSER (gmem_ARUSER),
    .TRAN_gmem_RVALID (gmem_RVALID),
    .TRAN_gmem_RREADY (gmem_RREADY),
    .TRAN_gmem_RDATA (gmem_RDATA),
    .TRAN_gmem_RLAST (gmem_RLAST),
    .TRAN_gmem_RID (gmem_RID),
    .TRAN_gmem_RUSER (gmem_RUSER),
    .TRAN_gmem_RRESP (gmem_RRESP),
    .TRAN_gmem_BVALID (gmem_BVALID),
    .TRAN_gmem_BREADY (gmem_BREADY),
    .TRAN_gmem_BRESP (gmem_BRESP),
    .TRAN_gmem_BID (gmem_BID),
    .TRAN_gmem_BUSER (gmem_BUSER),
    .TRAN_gmem_feature_in (feature_in),
    .TRAN_gmem_W (W),
    .TRAN_gmem_bias (bias),
    .TRAN_gmem_feature_out (feature_out),
    .ready (AESL_axi_master_gmem_ready),
    .done  (AESL_axi_master_gmem_done)
);
assign    AESL_axi_master_gmem_ready    =   ready;
assign    AESL_axi_master_gmem_done    =   AESL_done_delay;

AESL_axi_slave_AXILiteS AESL_AXI_SLAVE_AXILiteS(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_AXILiteS_AWADDR (AXILiteS_AWADDR),
    .TRAN_s_axi_AXILiteS_AWVALID (AXILiteS_AWVALID),
    .TRAN_s_axi_AXILiteS_AWREADY (AXILiteS_AWREADY),
    .TRAN_s_axi_AXILiteS_WVALID (AXILiteS_WVALID),
    .TRAN_s_axi_AXILiteS_WREADY (AXILiteS_WREADY),
    .TRAN_s_axi_AXILiteS_WDATA (AXILiteS_WDATA),
    .TRAN_s_axi_AXILiteS_WSTRB (AXILiteS_WSTRB),
    .TRAN_s_axi_AXILiteS_ARADDR (AXILiteS_ARADDR),
    .TRAN_s_axi_AXILiteS_ARVALID (AXILiteS_ARVALID),
    .TRAN_s_axi_AXILiteS_ARREADY (AXILiteS_ARREADY),
    .TRAN_s_axi_AXILiteS_RVALID (AXILiteS_RVALID),
    .TRAN_s_axi_AXILiteS_RREADY (AXILiteS_RREADY),
    .TRAN_s_axi_AXILiteS_RDATA (AXILiteS_RDATA),
    .TRAN_s_axi_AXILiteS_RRESP (AXILiteS_RRESP),
    .TRAN_s_axi_AXILiteS_BVALID (AXILiteS_BVALID),
    .TRAN_s_axi_AXILiteS_BREADY (AXILiteS_BREADY),
    .TRAN_s_axi_AXILiteS_BRESP (AXILiteS_BRESP),
    .TRAN_AXILiteS_interrupt (AXILiteS_INTERRUPT),
    .TRAN_feature_in (feature_in),
    .TRAN_W (W),
    .TRAN_bias (bias),
    .TRAN_feature_out (feature_out),
    .TRAN_AXILiteS_write_data_finish(AXILiteS_write_data_finish),
    .TRAN_AXILiteS_ready_out (AESL_ready),
    .TRAN_AXILiteS_ready_in (AESL_slave_ready),
    .TRAN_AXILiteS_done_out (AESL_slave_output_done),
    .TRAN_AXILiteS_idle_out (AESL_idle),
    .TRAN_AXILiteS_write_start_in     (AESL_slave_write_start_in),
    .TRAN_AXILiteS_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_AXILiteS_transaction_done_in (AESL_done_delay),
    .TRAN_AXILiteS_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_gmem;
reg [31:0] size_gmem;
reg [31:0] size_gmem_backup;
reg end_CHin_V;
reg [31:0] size_CHin_V;
reg [31:0] size_CHin_V_backup;
reg end_Hin_V;
reg [31:0] size_Hin_V;
reg [31:0] size_Hin_V_backup;
reg end_Win_V;
reg [31:0] size_Win_V;
reg [31:0] size_Win_V_backup;
reg end_CHout_V;
reg [31:0] size_CHout_V;
reg [31:0] size_CHout_V_backup;
reg end_Kx_V;
reg [31:0] size_Kx_V;
reg [31:0] size_Kx_V_backup;
reg end_Ky_V;
reg [31:0] size_Ky_V;
reg [31:0] size_Ky_V_backup;
reg end_Sx_V;
reg [31:0] size_Sx_V;
reg [31:0] size_Sx_V_backup;
reg end_Sy_V;
reg [31:0] size_Sy_V;
reg [31:0] size_Sy_V_backup;
reg end_mode_V;
reg [31:0] size_mode_V;
reg [31:0] size_mode_V_backup;
reg end_relu_en_V;
reg [31:0] size_relu_en_V;
reg [31:0] size_relu_en_V_backup;
reg end_feature_in;
reg [31:0] size_feature_in;
reg [31:0] size_feature_in_backup;
reg end_W;
reg [31:0] size_W;
reg [31:0] size_W_backup;
reg end_bias;
reg [31:0] size_bias;
reg [31:0] size_bias_backup;
reg end_feature_out;
reg [31:0] size_feature_out;
reg [31:0] size_feature_out_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

reg dump_tvout_finish_gmem;

initial begin : dump_tvout_runtime_sign_gmem
    integer fp;
    dump_tvout_finish_gmem = 0;
    fp = $fopen(`AUTOTB_TVOUT_gmem_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_gmem_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_gmem_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_gmem_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_gmem = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule
