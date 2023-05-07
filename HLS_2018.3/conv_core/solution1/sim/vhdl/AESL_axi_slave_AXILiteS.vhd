-- ==============================================================
-- File generated on Thu Apr 20 20:44:58 +0800 2023
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;


entity AESL_axi_slave_AXILiteS is
  generic (
      constant    TV_IN_CHin_V : STRING (1 to 42) := "../tv/cdatafile/c.Conv.autotvin_CHin_V.dat";
      constant    TV_IN_Hin_V : STRING (1 to 41) := "../tv/cdatafile/c.Conv.autotvin_Hin_V.dat";
      constant    TV_IN_Win_V : STRING (1 to 41) := "../tv/cdatafile/c.Conv.autotvin_Win_V.dat";
      constant    TV_IN_CHout_V : STRING (1 to 43) := "../tv/cdatafile/c.Conv.autotvin_CHout_V.dat";
      constant    TV_IN_Kx_V : STRING (1 to 40) := "../tv/cdatafile/c.Conv.autotvin_Kx_V.dat";
      constant    TV_IN_Ky_V : STRING (1 to 40) := "../tv/cdatafile/c.Conv.autotvin_Ky_V.dat";
      constant    TV_IN_Sx_V : STRING (1 to 40) := "../tv/cdatafile/c.Conv.autotvin_Sx_V.dat";
      constant    TV_IN_Sy_V : STRING (1 to 40) := "../tv/cdatafile/c.Conv.autotvin_Sy_V.dat";
      constant    TV_IN_mode_V : STRING (1 to 42) := "../tv/cdatafile/c.Conv.autotvin_mode_V.dat";
      constant    TV_IN_relu_en_V : STRING (1 to 45) := "../tv/cdatafile/c.Conv.autotvin_relu_en_V.dat";
      constant    TV_IN_feature_in : STRING (1 to 46) := "../tv/cdatafile/c.Conv.autotvin_feature_in.dat";
      constant    TV_IN_W : STRING (1 to 37) := "../tv/cdatafile/c.Conv.autotvin_W.dat";
      constant    TV_IN_bias : STRING (1 to 40) := "../tv/cdatafile/c.Conv.autotvin_bias.dat";
      constant    TV_IN_feature_out : STRING (1 to 47) := "../tv/cdatafile/c.Conv.autotvin_feature_out.dat";
constant ADDR_WIDTH : INTEGER := 7;
constant DATA_WIDTH : INTEGER := 32;
constant CHin_V_DEPTH : INTEGER := 1;
constant CHin_V_c_bitwidth : INTEGER := 16;
constant Hin_V_DEPTH : INTEGER := 1;
constant Hin_V_c_bitwidth : INTEGER := 16;
constant Win_V_DEPTH : INTEGER := 1;
constant Win_V_c_bitwidth : INTEGER := 16;
constant CHout_V_DEPTH : INTEGER := 1;
constant CHout_V_c_bitwidth : INTEGER := 16;
constant Kx_V_DEPTH : INTEGER := 1;
constant Kx_V_c_bitwidth : INTEGER := 8;
constant Ky_V_DEPTH : INTEGER := 1;
constant Ky_V_c_bitwidth : INTEGER := 8;
constant Sx_V_DEPTH : INTEGER := 1;
constant Sx_V_c_bitwidth : INTEGER := 8;
constant Sy_V_DEPTH : INTEGER := 1;
constant Sy_V_c_bitwidth : INTEGER := 8;
constant mode_V_DEPTH : INTEGER := 1;
constant mode_V_c_bitwidth : INTEGER := 1;
constant relu_en_V_DEPTH : INTEGER := 1;
constant relu_en_V_c_bitwidth : INTEGER := 1;
constant feature_in_DEPTH : INTEGER := 1;
constant feature_in_c_bitwidth : INTEGER := 32;
constant W_DEPTH : INTEGER := 1;
constant W_c_bitwidth : INTEGER := 32;
constant bias_DEPTH : INTEGER := 1;
constant bias_c_bitwidth : INTEGER := 32;
constant feature_out_DEPTH : INTEGER := 1;
constant feature_out_c_bitwidth : INTEGER := 32;
constant START_ADDR : INTEGER := 0;
constant Conv_continue_addr : INTEGER := 0;
constant Conv_auto_start_addr : INTEGER := 0;
constant CHin_V_data_in_addr : INTEGER := 16;
constant Hin_V_data_in_addr : INTEGER := 24;
constant Win_V_data_in_addr : INTEGER := 32;
constant CHout_V_data_in_addr : INTEGER := 40;
constant Kx_V_data_in_addr : INTEGER := 48;
constant Ky_V_data_in_addr : INTEGER := 56;
constant Sx_V_data_in_addr : INTEGER := 64;
constant Sy_V_data_in_addr : INTEGER := 72;
constant mode_V_data_in_addr : INTEGER := 80;
constant relu_en_V_data_in_addr : INTEGER := 88;
constant feature_in_data_in_addr : INTEGER := 96;
constant W_data_in_addr : INTEGER := 104;
constant bias_data_in_addr : INTEGER := 112;
constant feature_out_data_in_addr : INTEGER := 120;
constant STATUS_ADDR : INTEGER := 0;
      constant    INTERFACE_TYPE : STRING (1 to 8) := "AXILiteS"

  );
  port (
clk   :   IN STD_LOGIC;
reset :   IN STD_LOGIC;
TRAN_s_axi_AXILiteS_AWADDR  : OUT STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0);
TRAN_s_axi_AXILiteS_AWVALID  : OUT STD_LOGIC;
TRAN_s_axi_AXILiteS_AWREADY  : IN STD_LOGIC;
TRAN_s_axi_AXILiteS_WVALID  : OUT STD_LOGIC;
TRAN_s_axi_AXILiteS_WREADY  : IN STD_LOGIC;
TRAN_s_axi_AXILiteS_WDATA  : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
TRAN_s_axi_AXILiteS_WSTRB  : OUT STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0);
TRAN_s_axi_AXILiteS_ARADDR  : OUT STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0);
TRAN_s_axi_AXILiteS_ARVALID  : OUT STD_LOGIC;
TRAN_s_axi_AXILiteS_ARREADY  : IN STD_LOGIC;
TRAN_s_axi_AXILiteS_RVALID  : IN STD_LOGIC;
TRAN_s_axi_AXILiteS_RREADY  : OUT STD_LOGIC;
TRAN_s_axi_AXILiteS_RDATA  : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
TRAN_s_axi_AXILiteS_RRESP  : IN STD_LOGIC_VECTOR(2 - 1 downto 0);
TRAN_s_axi_AXILiteS_BVALID  : IN STD_LOGIC;
TRAN_s_axi_AXILiteS_BREADY  : OUT STD_LOGIC;
TRAN_s_axi_AXILiteS_BRESP  : IN STD_LOGIC_VECTOR(2 - 1 downto 0);
TRAN_AXILiteS_interrupt   : IN STD_LOGIC;
TRAN_feature_in   : IN STD_LOGIC_VECTOR(32 -1 downto 0);
TRAN_W   : IN STD_LOGIC_VECTOR(32 -1 downto 0);
TRAN_bias   : IN STD_LOGIC_VECTOR(32 -1 downto 0);
TRAN_feature_out   : IN STD_LOGIC_VECTOR(32 -1 downto 0);
TRAN_AXILiteS_write_data_finish   : OUT STD_LOGIC;
TRAN_AXILiteS_start_in   : IN STD_LOGIC;
TRAN_AXILiteS_done_out   : OUT STD_LOGIC;
TRAN_AXILiteS_ready_out   : OUT STD_LOGIC;
TRAN_AXILiteS_ready_in   : IN STD_LOGIC;
TRAN_AXILiteS_idle_out   : OUT STD_LOGIC;
TRAN_AXILiteS_write_start_in   : IN STD_LOGIC;
TRAN_AXILiteS_write_start_finish   : OUT STD_LOGIC;
TRAN_AXILiteS_transaction_done_in   : IN STD_LOGIC

  );
end AESL_axi_slave_AXILiteS;

architecture behav of AESL_axi_slave_AXILiteS is
------------------------Local signal-------------------
shared variable CHin_V_OPERATE_DEPTH : INTEGER;
shared variable Hin_V_OPERATE_DEPTH : INTEGER;
shared variable Win_V_OPERATE_DEPTH : INTEGER;
shared variable CHout_V_OPERATE_DEPTH : INTEGER;
shared variable Kx_V_OPERATE_DEPTH : INTEGER;
shared variable Ky_V_OPERATE_DEPTH : INTEGER;
shared variable Sx_V_OPERATE_DEPTH : INTEGER;
shared variable Sy_V_OPERATE_DEPTH : INTEGER;
shared variable mode_V_OPERATE_DEPTH : INTEGER;
shared variable relu_en_V_OPERATE_DEPTH : INTEGER;
shared variable feature_in_OPERATE_DEPTH : INTEGER;
shared variable W_OPERATE_DEPTH : INTEGER;
shared variable bias_OPERATE_DEPTH : INTEGER;
shared variable feature_out_OPERATE_DEPTH : INTEGER;
signal AWADDR_reg : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_0_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_1_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_2_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_3_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_4_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_5_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_6_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_7_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_8_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_9_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_10_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_11_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_12_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_13_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_14_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_15_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal AWVALID_reg : STD_LOGIC := '0';
signal process_0_AWVALID_var : STD_LOGIC := '0';
signal process_1_AWVALID_var : STD_LOGIC := '0';
signal process_2_AWVALID_var : STD_LOGIC := '0';
signal process_3_AWVALID_var : STD_LOGIC := '0';
signal process_4_AWVALID_var : STD_LOGIC := '0';
signal process_5_AWVALID_var : STD_LOGIC := '0';
signal process_6_AWVALID_var : STD_LOGIC := '0';
signal process_7_AWVALID_var : STD_LOGIC := '0';
signal process_8_AWVALID_var : STD_LOGIC := '0';
signal process_9_AWVALID_var : STD_LOGIC := '0';
signal process_10_AWVALID_var : STD_LOGIC := '0';
signal process_11_AWVALID_var : STD_LOGIC := '0';
signal process_12_AWVALID_var : STD_LOGIC := '0';
signal process_13_AWVALID_var : STD_LOGIC := '0';
signal process_14_AWVALID_var : STD_LOGIC := '0';
signal process_15_AWVALID_var : STD_LOGIC := '0';
signal WVALID_reg : STD_LOGIC := '0';
signal process_0_WVALID_var : STD_LOGIC := '0';
signal process_1_WVALID_var : STD_LOGIC := '0';
signal process_2_WVALID_var : STD_LOGIC := '0';
signal process_3_WVALID_var : STD_LOGIC := '0';
signal process_4_WVALID_var : STD_LOGIC := '0';
signal process_5_WVALID_var : STD_LOGIC := '0';
signal process_6_WVALID_var : STD_LOGIC := '0';
signal process_7_WVALID_var : STD_LOGIC := '0';
signal process_8_WVALID_var : STD_LOGIC := '0';
signal process_9_WVALID_var : STD_LOGIC := '0';
signal process_10_WVALID_var : STD_LOGIC := '0';
signal process_11_WVALID_var : STD_LOGIC := '0';
signal process_12_WVALID_var : STD_LOGIC := '0';
signal process_13_WVALID_var : STD_LOGIC := '0';
signal process_14_WVALID_var : STD_LOGIC := '0';
signal process_15_WVALID_var : STD_LOGIC := '0';
signal WDATA_reg : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_0_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_1_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_2_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_3_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_4_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_5_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_6_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_7_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_8_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_9_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_10_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_11_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_12_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_13_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_14_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_15_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal WSTRB_reg : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_0_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_1_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_2_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_3_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_4_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_5_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_6_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_7_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_8_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_9_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_10_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_11_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_12_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_13_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_14_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_15_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal ARADDR_reg : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_0_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_1_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_2_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_3_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_4_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_5_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_6_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_7_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_8_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_9_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_10_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_11_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_12_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_13_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_14_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_15_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal ARVALID_reg : STD_LOGIC := '0';
signal process_0_ARVALID_var : STD_LOGIC := '0';
signal process_1_ARVALID_var : STD_LOGIC := '0';
signal process_2_ARVALID_var : STD_LOGIC := '0';
signal process_3_ARVALID_var : STD_LOGIC := '0';
signal process_4_ARVALID_var : STD_LOGIC := '0';
signal process_5_ARVALID_var : STD_LOGIC := '0';
signal process_6_ARVALID_var : STD_LOGIC := '0';
signal process_7_ARVALID_var : STD_LOGIC := '0';
signal process_8_ARVALID_var : STD_LOGIC := '0';
signal process_9_ARVALID_var : STD_LOGIC := '0';
signal process_10_ARVALID_var : STD_LOGIC := '0';
signal process_11_ARVALID_var : STD_LOGIC := '0';
signal process_12_ARVALID_var : STD_LOGIC := '0';
signal process_13_ARVALID_var : STD_LOGIC := '0';
signal process_14_ARVALID_var : STD_LOGIC := '0';
signal process_15_ARVALID_var : STD_LOGIC := '0';
signal RREADY_reg : STD_LOGIC := '0';
signal process_0_RREADY_var : STD_LOGIC := '0';
signal process_1_RREADY_var : STD_LOGIC := '0';
signal process_2_RREADY_var : STD_LOGIC := '0';
signal process_3_RREADY_var : STD_LOGIC := '0';
signal process_4_RREADY_var : STD_LOGIC := '0';
signal process_5_RREADY_var : STD_LOGIC := '0';
signal process_6_RREADY_var : STD_LOGIC := '0';
signal process_7_RREADY_var : STD_LOGIC := '0';
signal process_8_RREADY_var : STD_LOGIC := '0';
signal process_9_RREADY_var : STD_LOGIC := '0';
signal process_10_RREADY_var : STD_LOGIC := '0';
signal process_11_RREADY_var : STD_LOGIC := '0';
signal process_12_RREADY_var : STD_LOGIC := '0';
signal process_13_RREADY_var : STD_LOGIC := '0';
signal process_14_RREADY_var : STD_LOGIC := '0';
signal process_15_RREADY_var : STD_LOGIC := '0';
signal RDATA_reg : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_0_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_1_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_2_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_3_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_4_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_5_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_6_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_7_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_8_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_9_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_10_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_11_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_12_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_13_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_14_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_15_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal BREADY_reg : STD_LOGIC := '0';
signal process_0_BREADY_var : STD_LOGIC := '0';
signal process_1_BREADY_var : STD_LOGIC := '0';
signal process_2_BREADY_var : STD_LOGIC := '0';
signal process_3_BREADY_var : STD_LOGIC := '0';
signal process_4_BREADY_var : STD_LOGIC := '0';
signal process_5_BREADY_var : STD_LOGIC := '0';
signal process_6_BREADY_var : STD_LOGIC := '0';
signal process_7_BREADY_var : STD_LOGIC := '0';
signal process_8_BREADY_var : STD_LOGIC := '0';
signal process_9_BREADY_var : STD_LOGIC := '0';
signal process_10_BREADY_var : STD_LOGIC := '0';
signal process_11_BREADY_var : STD_LOGIC := '0';
signal process_12_BREADY_var : STD_LOGIC := '0';
signal process_13_BREADY_var : STD_LOGIC := '0';
signal process_14_BREADY_var : STD_LOGIC := '0';
signal process_15_BREADY_var : STD_LOGIC := '0';
  type    mem_CHin_V_arr2D is array(0 to CHin_V_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_CHin_V : mem_CHin_V_arr2D;
signal CHin_V_write_data_finish : STD_LOGIC := '0';
  type    mem_Hin_V_arr2D is array(0 to Hin_V_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_Hin_V : mem_Hin_V_arr2D;
signal Hin_V_write_data_finish : STD_LOGIC := '0';
  type    mem_Win_V_arr2D is array(0 to Win_V_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_Win_V : mem_Win_V_arr2D;
signal Win_V_write_data_finish : STD_LOGIC := '0';
  type    mem_CHout_V_arr2D is array(0 to CHout_V_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_CHout_V : mem_CHout_V_arr2D;
signal CHout_V_write_data_finish : STD_LOGIC := '0';
  type    mem_Kx_V_arr2D is array(0 to Kx_V_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_Kx_V : mem_Kx_V_arr2D;
signal Kx_V_write_data_finish : STD_LOGIC := '0';
  type    mem_Ky_V_arr2D is array(0 to Ky_V_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_Ky_V : mem_Ky_V_arr2D;
signal Ky_V_write_data_finish : STD_LOGIC := '0';
  type    mem_Sx_V_arr2D is array(0 to Sx_V_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_Sx_V : mem_Sx_V_arr2D;
signal Sx_V_write_data_finish : STD_LOGIC := '0';
  type    mem_Sy_V_arr2D is array(0 to Sy_V_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_Sy_V : mem_Sy_V_arr2D;
signal Sy_V_write_data_finish : STD_LOGIC := '0';
  type    mem_mode_V_arr2D is array(0 to mode_V_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_mode_V : mem_mode_V_arr2D;
signal mode_V_write_data_finish : STD_LOGIC := '0';
  type    mem_relu_en_V_arr2D is array(0 to relu_en_V_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_relu_en_V : mem_relu_en_V_arr2D;
signal relu_en_V_write_data_finish : STD_LOGIC := '0';
signal reg_feature_in : STD_LOGIC_VECTOR(feature_in_c_bitwidth - 1 downto 0);
signal feature_in_write_data_finish : STD_LOGIC := '0';
signal reg_W : STD_LOGIC_VECTOR(W_c_bitwidth - 1 downto 0);
signal W_write_data_finish : STD_LOGIC := '0';
signal reg_bias : STD_LOGIC_VECTOR(bias_c_bitwidth - 1 downto 0);
signal bias_write_data_finish : STD_LOGIC := '0';
signal reg_feature_out : STD_LOGIC_VECTOR(feature_out_c_bitwidth - 1 downto 0);
signal feature_out_write_data_finish : STD_LOGIC := '0';
signal AESL_ready_out_index_reg : STD_LOGIC := '0';
signal AESL_write_start_finish : STD_LOGIC := '0';
signal AESL_ready_reg : STD_LOGIC;
signal ready_initial : STD_LOGIC;
signal AESL_done_index_reg : STD_LOGIC := '0';
signal AESL_idle_index_reg : STD_LOGIC := '0';
signal AESL_auto_restart_index_reg : STD_LOGIC;
signal process_0_finish : STD_LOGIC := '0';
signal process_1_finish : STD_LOGIC := '0';
signal process_2_finish : STD_LOGIC := '0';
signal process_3_finish : STD_LOGIC := '0';
signal process_4_finish : STD_LOGIC := '0';
signal process_5_finish : STD_LOGIC := '0';
signal process_6_finish : STD_LOGIC := '0';
signal process_7_finish : STD_LOGIC := '0';
signal process_8_finish : STD_LOGIC := '0';
signal process_9_finish : STD_LOGIC := '0';
signal process_10_finish : STD_LOGIC := '0';
signal process_11_finish : STD_LOGIC := '0';
signal process_12_finish : STD_LOGIC := '0';
signal process_13_finish : STD_LOGIC := '0';
signal process_14_finish : STD_LOGIC := '0';
signal process_15_finish : STD_LOGIC := '0';
--write CHin_V reg
shared variable write_CHin_V_count : INTEGER;
signal write_CHin_V_run_flag : STD_LOGIC := '0';
signal write_one_CHin_V_data_done : STD_LOGIC := '0';
--write Hin_V reg
shared variable write_Hin_V_count : INTEGER;
signal write_Hin_V_run_flag : STD_LOGIC := '0';
signal write_one_Hin_V_data_done : STD_LOGIC := '0';
--write Win_V reg
shared variable write_Win_V_count : INTEGER;
signal write_Win_V_run_flag : STD_LOGIC := '0';
signal write_one_Win_V_data_done : STD_LOGIC := '0';
--write CHout_V reg
shared variable write_CHout_V_count : INTEGER;
signal write_CHout_V_run_flag : STD_LOGIC := '0';
signal write_one_CHout_V_data_done : STD_LOGIC := '0';
--write Kx_V reg
shared variable write_Kx_V_count : INTEGER;
signal write_Kx_V_run_flag : STD_LOGIC := '0';
signal write_one_Kx_V_data_done : STD_LOGIC := '0';
--write Ky_V reg
shared variable write_Ky_V_count : INTEGER;
signal write_Ky_V_run_flag : STD_LOGIC := '0';
signal write_one_Ky_V_data_done : STD_LOGIC := '0';
--write Sx_V reg
shared variable write_Sx_V_count : INTEGER;
signal write_Sx_V_run_flag : STD_LOGIC := '0';
signal write_one_Sx_V_data_done : STD_LOGIC := '0';
--write Sy_V reg
shared variable write_Sy_V_count : INTEGER;
signal write_Sy_V_run_flag : STD_LOGIC := '0';
signal write_one_Sy_V_data_done : STD_LOGIC := '0';
--write mode_V reg
shared variable write_mode_V_count : INTEGER;
signal write_mode_V_run_flag : STD_LOGIC := '0';
signal write_one_mode_V_data_done : STD_LOGIC := '0';
--write relu_en_V reg
shared variable write_relu_en_V_count : INTEGER;
signal write_relu_en_V_run_flag : STD_LOGIC := '0';
signal write_one_relu_en_V_data_done : STD_LOGIC := '0';
--write feature_in reg
shared variable write_feature_in_count : INTEGER;
signal write_feature_in_run_flag : STD_LOGIC := '0';
signal write_one_feature_in_data_done : STD_LOGIC := '0';
--write W reg
shared variable write_W_count : INTEGER;
signal write_W_run_flag : STD_LOGIC := '0';
signal write_one_W_data_done : STD_LOGIC := '0';
--write bias reg
shared variable write_bias_count : INTEGER;
signal write_bias_run_flag : STD_LOGIC := '0';
signal write_one_bias_data_done : STD_LOGIC := '0';
--write feature_out reg
shared variable write_feature_out_count : INTEGER;
signal write_feature_out_run_flag : STD_LOGIC := '0';
signal write_one_feature_out_data_done : STD_LOGIC := '0';
shared variable write_start_count : INTEGER;
signal write_start_run_flag : STD_LOGIC := '0';

--===================process control=================
signal ongoing_process_number : INTEGER;
-- Process number depends on how much processes needed.
shared variable process_busy : STD_LOGIC := '0';

      function esl_icmp_eq(v1, v2 : STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR is
          variable res : STD_LOGIC_VECTOR(0 downto 0);
      begin
          if v1 = v2 then
              res := "1";
          else
              res := "0";
          end if;
          return res;
      end function;
      procedure esl_read_token (file textfile: TEXT; textline: inout LINE; token: out STRING; token_len: out INTEGER) is
          variable whitespace : CHARACTER;
          variable i : INTEGER;
          variable ok: BOOLEAN;
          variable buff: STRING(1 to token'length);
      begin
          ok := false;
          i := 1;
          loop_main: while not endfile(textfile) loop
              if textline = null or textline'length = 0 then
                  readline(textfile, textline);
              end if;
              loop_remove_whitespace: while textline'length > 0 loop
                  if textline(textline'left) = ' ' or
                      textline(textline'left) = HT or
                      textline(textline'left) = CR or
                      textline(textline'left) = LF then
                      read(textline, whitespace);
                  else 
                      exit loop_remove_whitespace;
                  end if;
              end loop;
              loop_aesl_read_token: while textline'length > 0 and i <= buff'length loop
                  if textline(textline'left) = ' ' or
                     textline(textline'left) = HT or
                     textline(textline'left) = CR or
                     textline(textline'left) = LF then
                      exit loop_aesl_read_token;
                  else 
                      read(textline, buff(i));
                      i := i + 1;
                  end if;
                  ok := true;
              end loop;
              if ok = true then
                  exit loop_main;
              end if;
          end loop;
          buff(i) := ' ';
          token := buff;
          token_len:= i-1;
      end procedure esl_read_token;

      procedure esl_read_token (file textfile: TEXT; 
                                textline: inout LINE; 
                                token: out STRING) is
          variable i : INTEGER;
      begin
          esl_read_token (textfile, textline, token, i);
      end procedure esl_read_token;

      function esl_add(v1, v2 : STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR is
          variable res : unsigned(v1'length-1 downto 0);
      begin
          res := unsigned(v1) + unsigned(v2);
          return std_logic_vector(res);
      end function;

      function esl_icmp_ult(v1, v2 : STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR is
          variable res : STD_LOGIC_VECTOR(0 downto 0);
      begin
          if unsigned(v1) < unsigned(v2) then
              res := "1";
          else
              res := "0";
          end if;
          return res;
      end function;

      function esl_str2lv_hex (RHS : STRING; data_width : INTEGER) return STD_LOGIC_VECTOR is
          variable	ret	:   STD_LOGIC_VECTOR(data_width - 1 downto 0);
          variable	idx	:   integer := 3;
      begin
          ret := (others => '0');
          if(RHS(1) /= '0' and (RHS(2) /= 'x' or RHS(2) /= 'X')) then
     	        report "Error! The format of hex number is not initialed by 0x";
          end if;
          while true loop
              if (data_width > 4) then
                  case RHS(idx)  is
                      when '0'    =>  ret := ret(data_width - 5 downto 0) & "0000";
     	                when '1'    =>  ret := ret(data_width - 5 downto 0) & "0001";
                      when '2'    =>  ret := ret(data_width - 5 downto 0) & "0010";
                      when '3'    =>  ret := ret(data_width - 5 downto 0) & "0011";
                      when '4'    =>  ret := ret(data_width - 5 downto 0) & "0100";
                      when '5'    =>  ret := ret(data_width - 5 downto 0) & "0101";
                      when '6'    =>  ret := ret(data_width - 5 downto 0) & "0110";
                      when '7'    =>  ret := ret(data_width - 5 downto 0) & "0111";
                      when '8'    =>  ret := ret(data_width - 5 downto 0) & "1000";
                      when '9'    =>  ret := ret(data_width - 5 downto 0) & "1001";
                      when 'a' | 'A'  =>  ret := ret(data_width - 5 downto 0) & "1010";
                      when 'b' | 'B'  =>  ret := ret(data_width - 5 downto 0) & "1011";
                      when 'c' | 'C'  =>  ret := ret(data_width - 5 downto 0) & "1100";
                      when 'd' | 'D'  =>  ret := ret(data_width - 5 downto 0) & "1101";
                      when 'e' | 'E'  =>  ret := ret(data_width - 5 downto 0) & "1110";
                      when 'f' | 'F'  =>  ret := ret(data_width - 5 downto 0) & "1111";
                      when 'x' | 'X'  =>  ret := ret(data_width - 5 downto 0) & "XXXX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              elsif (data_width = 4) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "0000";
     	                when '1'    =>  ret := "0001";
                      when '2'    =>  ret := "0010";
                      when '3'    =>  ret := "0011";
                      when '4'    =>  ret := "0100";
                      when '5'    =>  ret := "0101";
                      when '6'    =>  ret := "0110";
                      when '7'    =>  ret := "0111";
                      when '8'    =>  ret := "1000";
                      when '9'    =>  ret := "1001";
                      when 'a' | 'A'  =>  ret := "1010";
                      when 'b' | 'B'  =>  ret := "1011";
                      when 'c' | 'C'  =>  ret := "1100";
                      when 'd' | 'D'  =>  ret := "1101";
                      when 'e' | 'E'  =>  ret := "1110";
                      when 'f' | 'F'  =>  ret := "1111";
                      when 'x' | 'X'  =>  ret := "XXXX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              elsif (data_width = 3) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "000";
     	                when '1'    =>  ret := "001";
                      when '2'    =>  ret := "010";
                      when '3'    =>  ret := "011";
                      when '4'    =>  ret := "100";
                      when '5'    =>  ret := "101";
                      when '6'    =>  ret := "110";
                      when '7'    =>  ret := "111";
                      when 'x' | 'X'  =>  ret := "XXX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              elsif (data_width = 2) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "00";
     	                when '1'    =>  ret := "01";
                      when '2'    =>  ret := "10";
                      when '3'    =>  ret := "11";
                      when 'x' | 'X'  =>  ret := "XX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              elsif (data_width = 1) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "0";
     	                when '1'    =>  ret := "1";
                      when 'x' | 'X'  =>  ret := "X";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              else
                  report string'("Wrong data_width.");
                  return ret;
              end if;
              idx := idx + 1;
          end loop;
          return ret;
      end function;

      function esl_conv_string_hex (lv : STD_LOGIC_VECTOR) return STRING is
          constant str_len : integer := (lv'length + 3)/4;
          variable ret : STRING (1 to str_len);
          variable i, tmp: INTEGER;
          variable normal_lv : STD_LOGIC_VECTOR(lv'length - 1 downto 0);
          variable tmp_lv : STD_LOGIC_VECTOR(3 downto 0);
      begin
          normal_lv := lv;
          for i in 1 to str_len loop
              if(i = 1) then
                  if((lv'length mod 4) = 3) then
                      tmp_lv(2 downto 0) := normal_lv(lv'length - 1 downto lv'length - 3);
                      case tmp_lv(2 downto 0) is
                          when "000" => ret(i) := '0';
                          when "001" => ret(i) := '1';
                          when "010" => ret(i) := '2';
                          when "011" => ret(i) := '3';
                          when "100" => ret(i) := '4';
                          when "101" => ret(i) := '5';
                          when "110" => ret(i) := '6';
                          when "111" => ret(i) := '7';
                          when others  => ret(i) := 'X';
                      end case;
                  elsif((lv'length mod 4) = 2) then
                      tmp_lv(1 downto 0) := normal_lv(lv'length - 1 downto lv'length - 2);
                      case tmp_lv(1 downto 0) is
                          when "00" => ret(i) := '0';
                          when "01" => ret(i) := '1';
                          when "10" => ret(i) := '2';
                          when "11" => ret(i) := '3';
                          when others => ret(i) := 'X';
                      end case;
                  elsif((lv'length mod 4) = 1) then
                      tmp_lv(0 downto 0) := normal_lv(lv'length - 1 downto lv'length - 1);
                      case tmp_lv(0 downto 0) is
                          when "0" => ret(i) := '0';
                          when "1" => ret(i) := '1';
                          when others=> ret(i) := 'X';
                      end case;
                  elsif((lv'length mod 4) = 0) then
                      tmp_lv(3 downto 0) := normal_lv(lv'length - 1 downto lv'length - 4);
                      case tmp_lv(3 downto 0) is
                          when "0000" => ret(i) := '0';
                          when "0001" => ret(i) := '1';
                          when "0010" => ret(i) := '2';
                          when "0011" => ret(i) := '3';
                          when "0100" => ret(i) := '4';
                          when "0101" => ret(i) := '5';
                          when "0110" => ret(i) := '6';
                          when "0111" => ret(i) := '7';
                          when "1000" => ret(i) := '8';
                          when "1001" => ret(i) := '9';
                          when "1010" => ret(i) := 'a';
                          when "1011" => ret(i) := 'b';
                          when "1100" => ret(i) := 'c';
                          when "1101" => ret(i) := 'd';
                          when "1110" => ret(i) := 'e';
                          when "1111" => ret(i) := 'f';
                          when others   => ret(i) := 'X';
                      end case;
                  end if;
              else
                  tmp_lv(3 downto 0) := normal_lv((str_len - i) * 4 + 3 downto (str_len - i) * 4);
                  case tmp_lv(3 downto 0) is
                      when "0000" => ret(i) := '0';
                      when "0001" => ret(i) := '1';
                      when "0010" => ret(i) := '2';
                      when "0011" => ret(i) := '3';
                      when "0100" => ret(i) := '4';
                      when "0101" => ret(i) := '5';
                      when "0110" => ret(i) := '6';
                      when "0111" => ret(i) := '7';
                      when "1000" => ret(i) := '8';
                      when "1001" => ret(i) := '9';
                      when "1010" => ret(i) := 'a';
                      when "1011" => ret(i) := 'b';
                      when "1100" => ret(i) := 'c';
                      when "1101" => ret(i) := 'd';
                      when "1110" => ret(i) := 'e';
                      when "1111" => ret(i) := 'f';
                      when others   => ret(i) := 'X';
                  end case;
              end if;
          end loop;
          return ret;
      end function;

procedure count_c_data_four_byte_num_by_bitwidth (constant bitwidth : IN INTEGER; variable num : OUT INTEGER) is
variable factor : INTEGER;
variable i : INTEGER;
begin
    factor := 32;
    for i in 1 to 32 loop
        if (bitwidth <= factor and bitwidth > factor - 32) then
            num := i;
        end if;
        factor := factor + 32;
    end loop;
end procedure; 

procedure count_seperate_factor_by_bitwidth(bitwidth : in INTEGER; factor : out INTEGER) is
begin
    if (bitwidth <= 8) then
        factor := 4;
    elsif (bitwidth <= 16 and bitwidth > 8 ) then
        factor := 2;
    elsif (bitwidth <= 32 and bitwidth > 16 ) then
        factor := 1;
    elsif (bitwidth <= 1024 and bitwidth > 32 ) then
        factor := 1;
    end if;
end procedure;

procedure count_operate_depth_by_bitwidth_and_depth(bitwidth : in INTEGER; depth : in INTEGER; operate_depth : out INTEGER) is
variable factor : INTEGER;
variable remain : INTEGER;
variable operate_depth_tmp : INTEGER;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth_tmp := depth / factor;
    remain := depth mod factor;
    if (remain > 0) then
        operate_depth_tmp := operate_depth_tmp + 1;
    end if;
    operate_depth := operate_depth_tmp;
end procedure;

begin
--=================== signal connection ==============
TRAN_s_axi_AXILiteS_AWADDR <= AWADDR_reg;
TRAN_s_axi_AXILiteS_AWVALID <= AWVALID_reg;
TRAN_s_axi_AXILiteS_WVALID <= WVALID_reg;
TRAN_s_axi_AXILiteS_WDATA <= WDATA_reg;
TRAN_s_axi_AXILiteS_WSTRB <= WSTRB_reg;
TRAN_s_axi_AXILiteS_ARADDR <= ARADDR_reg;
TRAN_s_axi_AXILiteS_ARVALID <= ARVALID_reg;
TRAN_s_axi_AXILiteS_RREADY <= RREADY_reg;
TRAN_s_axi_AXILiteS_BREADY <= BREADY_reg;
TRAN_AXILiteS_done_out <= AESL_done_index_reg;
TRAN_AXILiteS_ready_out <= AESL_ready_out_index_reg;
TRAN_AXILiteS_write_start_finish <= AESL_write_start_finish;
TRAN_AXILiteS_idle_out <= AESL_idle_index_reg;
TRAN_AXILiteS_write_data_finish <= '1' and CHin_V_write_data_finish and Hin_V_write_data_finish and Win_V_write_data_finish and CHout_V_write_data_finish and Kx_V_write_data_finish and Ky_V_write_data_finish and Sx_V_write_data_finish and Sy_V_write_data_finish and mode_V_write_data_finish and relu_en_V_write_data_finish and feature_in_write_data_finish and W_write_data_finish and bias_write_data_finish and feature_out_write_data_finish;
AESL_ready_reg_proc : process(TRAN_AXILiteS_ready_in, ready_initial) 
begin
    AESL_ready_reg <= TRAN_AXILiteS_ready_in or ready_initial;
end process;
reg_feature_in <= TRAN_feature_in;
reg_W <= TRAN_W;
reg_bias <= TRAN_bias;
reg_feature_out <= TRAN_feature_out;
gen_ready_initial_proc : process
begin
    ready_initial <= '0';
    wait until reset = '1';
        wait until clk'event and clk = '1';
    ready_initial <= '1';
    wait until clk'event and clk = '1';
    ready_initial <= '0';
    wait;
end process;

ongoing_process_number_gen : process(reset , process_0_finish , process_1_finish , process_2_finish , process_3_finish , process_4_finish , process_5_finish , process_6_finish , process_7_finish , process_8_finish , process_9_finish , process_10_finish , process_11_finish , process_12_finish , process_13_finish , process_14_finish , process_15_finish )
begin
    if (reset = '0') then
        ongoing_process_number <= 0;
    elsif (ongoing_process_number = 0 and process_0_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 1 and process_1_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 2 and process_2_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 3 and process_3_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 4 and process_4_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 5 and process_5_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 6 and process_6_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 7 and process_7_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 8 and process_8_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 9 and process_9_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 10 and process_10_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 11 and process_11_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 12 and process_12_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 13 and process_13_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 14 and process_14_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 15 and process_15_finish = '1') then
            ongoing_process_number <= 0;
    end if;
end process;

output_reg_write_value_function : process
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    while (true) loop
        if (ongoing_process_number = 0 ) then
            AWADDR_reg <= process_0_AWADDR_var;
            AWVALID_reg <= process_0_AWVALID_var;
            WVALID_reg <= process_0_WVALID_var;
            WDATA_reg <= process_0_WDATA_var;
            WSTRB_reg <= process_0_WSTRB_var;
            ARADDR_reg <= process_0_ARADDR_var;
            ARVALID_reg <= process_0_ARVALID_var;
            RREADY_reg <= process_0_RREADY_var;
            BREADY_reg <= process_0_BREADY_var;
        elsif (ongoing_process_number = 1 ) then
            AWADDR_reg <= process_1_AWADDR_var;
            AWVALID_reg <= process_1_AWVALID_var;
            WVALID_reg <= process_1_WVALID_var;
            WDATA_reg <= process_1_WDATA_var;
            WSTRB_reg <= process_1_WSTRB_var;
            ARADDR_reg <= process_1_ARADDR_var;
            ARVALID_reg <= process_1_ARVALID_var;
            RREADY_reg <= process_1_RREADY_var;
            BREADY_reg <= process_1_BREADY_var;
        elsif (ongoing_process_number = 2 ) then
            AWADDR_reg <= process_2_AWADDR_var;
            AWVALID_reg <= process_2_AWVALID_var;
            WVALID_reg <= process_2_WVALID_var;
            WDATA_reg <= process_2_WDATA_var;
            WSTRB_reg <= process_2_WSTRB_var;
            ARADDR_reg <= process_2_ARADDR_var;
            ARVALID_reg <= process_2_ARVALID_var;
            RREADY_reg <= process_2_RREADY_var;
            BREADY_reg <= process_2_BREADY_var;
        elsif (ongoing_process_number = 3 ) then
            AWADDR_reg <= process_3_AWADDR_var;
            AWVALID_reg <= process_3_AWVALID_var;
            WVALID_reg <= process_3_WVALID_var;
            WDATA_reg <= process_3_WDATA_var;
            WSTRB_reg <= process_3_WSTRB_var;
            ARADDR_reg <= process_3_ARADDR_var;
            ARVALID_reg <= process_3_ARVALID_var;
            RREADY_reg <= process_3_RREADY_var;
            BREADY_reg <= process_3_BREADY_var;
        elsif (ongoing_process_number = 4 ) then
            AWADDR_reg <= process_4_AWADDR_var;
            AWVALID_reg <= process_4_AWVALID_var;
            WVALID_reg <= process_4_WVALID_var;
            WDATA_reg <= process_4_WDATA_var;
            WSTRB_reg <= process_4_WSTRB_var;
            ARADDR_reg <= process_4_ARADDR_var;
            ARVALID_reg <= process_4_ARVALID_var;
            RREADY_reg <= process_4_RREADY_var;
            BREADY_reg <= process_4_BREADY_var;
        elsif (ongoing_process_number = 5 ) then
            AWADDR_reg <= process_5_AWADDR_var;
            AWVALID_reg <= process_5_AWVALID_var;
            WVALID_reg <= process_5_WVALID_var;
            WDATA_reg <= process_5_WDATA_var;
            WSTRB_reg <= process_5_WSTRB_var;
            ARADDR_reg <= process_5_ARADDR_var;
            ARVALID_reg <= process_5_ARVALID_var;
            RREADY_reg <= process_5_RREADY_var;
            BREADY_reg <= process_5_BREADY_var;
        elsif (ongoing_process_number = 6 ) then
            AWADDR_reg <= process_6_AWADDR_var;
            AWVALID_reg <= process_6_AWVALID_var;
            WVALID_reg <= process_6_WVALID_var;
            WDATA_reg <= process_6_WDATA_var;
            WSTRB_reg <= process_6_WSTRB_var;
            ARADDR_reg <= process_6_ARADDR_var;
            ARVALID_reg <= process_6_ARVALID_var;
            RREADY_reg <= process_6_RREADY_var;
            BREADY_reg <= process_6_BREADY_var;
        elsif (ongoing_process_number = 7 ) then
            AWADDR_reg <= process_7_AWADDR_var;
            AWVALID_reg <= process_7_AWVALID_var;
            WVALID_reg <= process_7_WVALID_var;
            WDATA_reg <= process_7_WDATA_var;
            WSTRB_reg <= process_7_WSTRB_var;
            ARADDR_reg <= process_7_ARADDR_var;
            ARVALID_reg <= process_7_ARVALID_var;
            RREADY_reg <= process_7_RREADY_var;
            BREADY_reg <= process_7_BREADY_var;
        elsif (ongoing_process_number = 8 ) then
            AWADDR_reg <= process_8_AWADDR_var;
            AWVALID_reg <= process_8_AWVALID_var;
            WVALID_reg <= process_8_WVALID_var;
            WDATA_reg <= process_8_WDATA_var;
            WSTRB_reg <= process_8_WSTRB_var;
            ARADDR_reg <= process_8_ARADDR_var;
            ARVALID_reg <= process_8_ARVALID_var;
            RREADY_reg <= process_8_RREADY_var;
            BREADY_reg <= process_8_BREADY_var;
        elsif (ongoing_process_number = 9 ) then
            AWADDR_reg <= process_9_AWADDR_var;
            AWVALID_reg <= process_9_AWVALID_var;
            WVALID_reg <= process_9_WVALID_var;
            WDATA_reg <= process_9_WDATA_var;
            WSTRB_reg <= process_9_WSTRB_var;
            ARADDR_reg <= process_9_ARADDR_var;
            ARVALID_reg <= process_9_ARVALID_var;
            RREADY_reg <= process_9_RREADY_var;
            BREADY_reg <= process_9_BREADY_var;
        elsif (ongoing_process_number = 10 ) then
            AWADDR_reg <= process_10_AWADDR_var;
            AWVALID_reg <= process_10_AWVALID_var;
            WVALID_reg <= process_10_WVALID_var;
            WDATA_reg <= process_10_WDATA_var;
            WSTRB_reg <= process_10_WSTRB_var;
            ARADDR_reg <= process_10_ARADDR_var;
            ARVALID_reg <= process_10_ARVALID_var;
            RREADY_reg <= process_10_RREADY_var;
            BREADY_reg <= process_10_BREADY_var;
        elsif (ongoing_process_number = 11 ) then
            AWADDR_reg <= process_11_AWADDR_var;
            AWVALID_reg <= process_11_AWVALID_var;
            WVALID_reg <= process_11_WVALID_var;
            WDATA_reg <= process_11_WDATA_var;
            WSTRB_reg <= process_11_WSTRB_var;
            ARADDR_reg <= process_11_ARADDR_var;
            ARVALID_reg <= process_11_ARVALID_var;
            RREADY_reg <= process_11_RREADY_var;
            BREADY_reg <= process_11_BREADY_var;
        elsif (ongoing_process_number = 12 ) then
            AWADDR_reg <= process_12_AWADDR_var;
            AWVALID_reg <= process_12_AWVALID_var;
            WVALID_reg <= process_12_WVALID_var;
            WDATA_reg <= process_12_WDATA_var;
            WSTRB_reg <= process_12_WSTRB_var;
            ARADDR_reg <= process_12_ARADDR_var;
            ARVALID_reg <= process_12_ARVALID_var;
            RREADY_reg <= process_12_RREADY_var;
            BREADY_reg <= process_12_BREADY_var;
        elsif (ongoing_process_number = 13 ) then
            AWADDR_reg <= process_13_AWADDR_var;
            AWVALID_reg <= process_13_AWVALID_var;
            WVALID_reg <= process_13_WVALID_var;
            WDATA_reg <= process_13_WDATA_var;
            WSTRB_reg <= process_13_WSTRB_var;
            ARADDR_reg <= process_13_ARADDR_var;
            ARVALID_reg <= process_13_ARVALID_var;
            RREADY_reg <= process_13_RREADY_var;
            BREADY_reg <= process_13_BREADY_var;
        elsif (ongoing_process_number = 14 ) then
            AWADDR_reg <= process_14_AWADDR_var;
            AWVALID_reg <= process_14_AWVALID_var;
            WVALID_reg <= process_14_WVALID_var;
            WDATA_reg <= process_14_WDATA_var;
            WSTRB_reg <= process_14_WSTRB_var;
            ARADDR_reg <= process_14_ARADDR_var;
            ARVALID_reg <= process_14_ARVALID_var;
            RREADY_reg <= process_14_RREADY_var;
            BREADY_reg <= process_14_BREADY_var;
        elsif (ongoing_process_number = 15 ) then
            AWADDR_reg <= process_15_AWADDR_var;
            AWVALID_reg <= process_15_AWVALID_var;
            WVALID_reg <= process_15_WVALID_var;
            WDATA_reg <= process_15_WDATA_var;
            WSTRB_reg <= process_15_WSTRB_var;
            ARADDR_reg <= process_15_ARADDR_var;
            ARVALID_reg <= process_15_ARVALID_var;
            RREADY_reg <= process_15_RREADY_var;
            BREADY_reg <= process_15_BREADY_var;
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
update_status_proc : process
    variable process_num : INTEGER;
    variable read_status_resp : INTEGER;
    variable process_0_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    process_num := 0;
    while (true) loop
        process_0_finish <= '0';
        AESL_done_index_reg         <= '0';
        AESL_ready_out_index_reg        <= '0';
        if (ongoing_process_number = process_num and process_busy = '0') then
            process_busy := '1';
--=======================one single read operate======================
                read_status_resp := 0;
                process_0_ARADDR_var <= STD_LOGIC_VECTOR(to_unsigned(STATUS_ADDR, ADDR_WIDTH));
                process_0_ARVALID_var <= '1';
                while (TRAN_s_axi_AXILiteS_ARREADY /= '1') loop
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_0_ARVALID_var <= '0';
                process_0_RREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_RVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_0_RDATA_tmp := TRAN_s_axi_AXILiteS_RDATA;
                process_0_RREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_RRESP = (2 => '0') ) then
                    read_status_resp := 1;
                    --output success. in fact RRESP is always 2'b00
                end if;
                wait until clk'event and clk = '1';

--=======================one single read operate end======================

                AESL_done_index_reg         <= process_0_RDATA_tmp(1);
                AESL_ready_out_index_reg        <= process_0_RDATA_tmp(1);
                AESL_idle_index_reg         <= process_0_RDATA_tmp(2);
            process_busy := '0';
            process_0_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;

gen_write_CHin_V_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        CHin_V_write_data_finish <= '0';
        write_CHin_V_run_flag <= '0'; 
        write_CHin_V_count := 0;
        count_operate_depth_by_bitwidth_and_depth (CHin_V_c_bitwidth, CHin_V_DEPTH, CHin_V_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            CHin_V_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_CHin_V_run_flag <= '1'; 
            write_CHin_V_count := 0;
        end if;
        if (write_one_CHin_V_data_done = '1') then
            write_CHin_V_count := write_CHin_V_count + 1;
            if (write_CHin_V_count = CHin_V_OPERATE_DEPTH) then
                write_CHin_V_run_flag <= '0'; 
                CHin_V_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_CHin_V_proc : process
    variable write_CHin_V_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_1_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable CHin_V_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := CHin_V_c_bitwidth;
    process_num := 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_1_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_CHin_V_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write CHin_V data 
                for i in 0 to four_byte_num - 1 loop
                    if (CHin_V_c_bitwidth < 32) then
                        CHin_V_data_tmp_reg := mem_CHin_V(write_CHin_V_count);
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < CHin_V_c_bitwidth) then
                                CHin_V_data_tmp_reg(j) := mem_CHin_V(write_CHin_V_count)(i*32 + j);
                            else 
                                CHin_V_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
--=======================one single write operate======================
                write_CHin_V_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_1_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(CHin_V_data_in_addr + write_CHin_V_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_1_AWVALID_var <= '1';
                process_1_WDATA_var   <= CHin_V_data_tmp_reg;
                process_1_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_1_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_AXILiteS_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_AXILiteS_WREADY and WVALID_reg;
                    end if;
                    process_1_AWVALID_var <= not aw_flag;
                    process_1_WVALID_var <= not w_flag;
                end loop;

                process_1_BREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_1_BREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_BRESP = (2 => '0')) then
                    write_CHin_V_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                end loop;
                process_busy := '0';
                write_one_CHin_V_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_CHin_V_data_done <= '0';
            end if;
            process_1_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
gen_write_Hin_V_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        Hin_V_write_data_finish <= '0';
        write_Hin_V_run_flag <= '0'; 
        write_Hin_V_count := 0;
        count_operate_depth_by_bitwidth_and_depth (Hin_V_c_bitwidth, Hin_V_DEPTH, Hin_V_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            Hin_V_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_Hin_V_run_flag <= '1'; 
            write_Hin_V_count := 0;
        end if;
        if (write_one_Hin_V_data_done = '1') then
            write_Hin_V_count := write_Hin_V_count + 1;
            if (write_Hin_V_count = Hin_V_OPERATE_DEPTH) then
                write_Hin_V_run_flag <= '0'; 
                Hin_V_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_Hin_V_proc : process
    variable write_Hin_V_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_2_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable Hin_V_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := Hin_V_c_bitwidth;
    process_num := 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_2_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_Hin_V_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write Hin_V data 
                for i in 0 to four_byte_num - 1 loop
                    if (Hin_V_c_bitwidth < 32) then
                        Hin_V_data_tmp_reg := mem_Hin_V(write_Hin_V_count);
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < Hin_V_c_bitwidth) then
                                Hin_V_data_tmp_reg(j) := mem_Hin_V(write_Hin_V_count)(i*32 + j);
                            else 
                                Hin_V_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
--=======================one single write operate======================
                write_Hin_V_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_2_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(Hin_V_data_in_addr + write_Hin_V_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_2_AWVALID_var <= '1';
                process_2_WDATA_var   <= Hin_V_data_tmp_reg;
                process_2_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_2_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_AXILiteS_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_AXILiteS_WREADY and WVALID_reg;
                    end if;
                    process_2_AWVALID_var <= not aw_flag;
                    process_2_WVALID_var <= not w_flag;
                end loop;

                process_2_BREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_2_BREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_BRESP = (2 => '0')) then
                    write_Hin_V_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                end loop;
                process_busy := '0';
                write_one_Hin_V_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_Hin_V_data_done <= '0';
            end if;
            process_2_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
gen_write_Win_V_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        Win_V_write_data_finish <= '0';
        write_Win_V_run_flag <= '0'; 
        write_Win_V_count := 0;
        count_operate_depth_by_bitwidth_and_depth (Win_V_c_bitwidth, Win_V_DEPTH, Win_V_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            Win_V_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_Win_V_run_flag <= '1'; 
            write_Win_V_count := 0;
        end if;
        if (write_one_Win_V_data_done = '1') then
            write_Win_V_count := write_Win_V_count + 1;
            if (write_Win_V_count = Win_V_OPERATE_DEPTH) then
                write_Win_V_run_flag <= '0'; 
                Win_V_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_Win_V_proc : process
    variable write_Win_V_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_3_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable Win_V_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := Win_V_c_bitwidth;
    process_num := 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_3_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_Win_V_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write Win_V data 
                for i in 0 to four_byte_num - 1 loop
                    if (Win_V_c_bitwidth < 32) then
                        Win_V_data_tmp_reg := mem_Win_V(write_Win_V_count);
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < Win_V_c_bitwidth) then
                                Win_V_data_tmp_reg(j) := mem_Win_V(write_Win_V_count)(i*32 + j);
                            else 
                                Win_V_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
--=======================one single write operate======================
                write_Win_V_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_3_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(Win_V_data_in_addr + write_Win_V_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_3_AWVALID_var <= '1';
                process_3_WDATA_var   <= Win_V_data_tmp_reg;
                process_3_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_3_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_AXILiteS_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_AXILiteS_WREADY and WVALID_reg;
                    end if;
                    process_3_AWVALID_var <= not aw_flag;
                    process_3_WVALID_var <= not w_flag;
                end loop;

                process_3_BREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_3_BREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_BRESP = (2 => '0')) then
                    write_Win_V_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                end loop;
                process_busy := '0';
                write_one_Win_V_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_Win_V_data_done <= '0';
            end if;
            process_3_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
gen_write_CHout_V_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        CHout_V_write_data_finish <= '0';
        write_CHout_V_run_flag <= '0'; 
        write_CHout_V_count := 0;
        count_operate_depth_by_bitwidth_and_depth (CHout_V_c_bitwidth, CHout_V_DEPTH, CHout_V_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            CHout_V_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_CHout_V_run_flag <= '1'; 
            write_CHout_V_count := 0;
        end if;
        if (write_one_CHout_V_data_done = '1') then
            write_CHout_V_count := write_CHout_V_count + 1;
            if (write_CHout_V_count = CHout_V_OPERATE_DEPTH) then
                write_CHout_V_run_flag <= '0'; 
                CHout_V_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_CHout_V_proc : process
    variable write_CHout_V_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_4_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable CHout_V_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := CHout_V_c_bitwidth;
    process_num := 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_4_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_CHout_V_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write CHout_V data 
                for i in 0 to four_byte_num - 1 loop
                    if (CHout_V_c_bitwidth < 32) then
                        CHout_V_data_tmp_reg := mem_CHout_V(write_CHout_V_count);
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < CHout_V_c_bitwidth) then
                                CHout_V_data_tmp_reg(j) := mem_CHout_V(write_CHout_V_count)(i*32 + j);
                            else 
                                CHout_V_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
--=======================one single write operate======================
                write_CHout_V_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_4_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(CHout_V_data_in_addr + write_CHout_V_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_4_AWVALID_var <= '1';
                process_4_WDATA_var   <= CHout_V_data_tmp_reg;
                process_4_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_4_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_AXILiteS_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_AXILiteS_WREADY and WVALID_reg;
                    end if;
                    process_4_AWVALID_var <= not aw_flag;
                    process_4_WVALID_var <= not w_flag;
                end loop;

                process_4_BREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_4_BREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_BRESP = (2 => '0')) then
                    write_CHout_V_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                end loop;
                process_busy := '0';
                write_one_CHout_V_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_CHout_V_data_done <= '0';
            end if;
            process_4_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
gen_write_Kx_V_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        Kx_V_write_data_finish <= '0';
        write_Kx_V_run_flag <= '0'; 
        write_Kx_V_count := 0;
        count_operate_depth_by_bitwidth_and_depth (Kx_V_c_bitwidth, Kx_V_DEPTH, Kx_V_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            Kx_V_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_Kx_V_run_flag <= '1'; 
            write_Kx_V_count := 0;
        end if;
        if (write_one_Kx_V_data_done = '1') then
            write_Kx_V_count := write_Kx_V_count + 1;
            if (write_Kx_V_count = Kx_V_OPERATE_DEPTH) then
                write_Kx_V_run_flag <= '0'; 
                Kx_V_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_Kx_V_proc : process
    variable write_Kx_V_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_5_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable Kx_V_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := Kx_V_c_bitwidth;
    process_num := 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_5_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_Kx_V_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write Kx_V data 
                for i in 0 to four_byte_num - 1 loop
                    if (Kx_V_c_bitwidth < 32) then
                        Kx_V_data_tmp_reg := mem_Kx_V(write_Kx_V_count);
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < Kx_V_c_bitwidth) then
                                Kx_V_data_tmp_reg(j) := mem_Kx_V(write_Kx_V_count)(i*32 + j);
                            else 
                                Kx_V_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
--=======================one single write operate======================
                write_Kx_V_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_5_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(Kx_V_data_in_addr + write_Kx_V_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_5_AWVALID_var <= '1';
                process_5_WDATA_var   <= Kx_V_data_tmp_reg;
                process_5_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_5_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_AXILiteS_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_AXILiteS_WREADY and WVALID_reg;
                    end if;
                    process_5_AWVALID_var <= not aw_flag;
                    process_5_WVALID_var <= not w_flag;
                end loop;

                process_5_BREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_5_BREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_BRESP = (2 => '0')) then
                    write_Kx_V_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                end loop;
                process_busy := '0';
                write_one_Kx_V_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_Kx_V_data_done <= '0';
            end if;
            process_5_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
gen_write_Ky_V_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        Ky_V_write_data_finish <= '0';
        write_Ky_V_run_flag <= '0'; 
        write_Ky_V_count := 0;
        count_operate_depth_by_bitwidth_and_depth (Ky_V_c_bitwidth, Ky_V_DEPTH, Ky_V_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            Ky_V_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_Ky_V_run_flag <= '1'; 
            write_Ky_V_count := 0;
        end if;
        if (write_one_Ky_V_data_done = '1') then
            write_Ky_V_count := write_Ky_V_count + 1;
            if (write_Ky_V_count = Ky_V_OPERATE_DEPTH) then
                write_Ky_V_run_flag <= '0'; 
                Ky_V_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_Ky_V_proc : process
    variable write_Ky_V_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_6_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable Ky_V_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := Ky_V_c_bitwidth;
    process_num := 6;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_6_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_Ky_V_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write Ky_V data 
                for i in 0 to four_byte_num - 1 loop
                    if (Ky_V_c_bitwidth < 32) then
                        Ky_V_data_tmp_reg := mem_Ky_V(write_Ky_V_count);
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < Ky_V_c_bitwidth) then
                                Ky_V_data_tmp_reg(j) := mem_Ky_V(write_Ky_V_count)(i*32 + j);
                            else 
                                Ky_V_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
--=======================one single write operate======================
                write_Ky_V_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_6_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(Ky_V_data_in_addr + write_Ky_V_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_6_AWVALID_var <= '1';
                process_6_WDATA_var   <= Ky_V_data_tmp_reg;
                process_6_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_6_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_AXILiteS_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_AXILiteS_WREADY and WVALID_reg;
                    end if;
                    process_6_AWVALID_var <= not aw_flag;
                    process_6_WVALID_var <= not w_flag;
                end loop;

                process_6_BREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_6_BREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_BRESP = (2 => '0')) then
                    write_Ky_V_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                end loop;
                process_busy := '0';
                write_one_Ky_V_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_Ky_V_data_done <= '0';
            end if;
            process_6_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
gen_write_Sx_V_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        Sx_V_write_data_finish <= '0';
        write_Sx_V_run_flag <= '0'; 
        write_Sx_V_count := 0;
        count_operate_depth_by_bitwidth_and_depth (Sx_V_c_bitwidth, Sx_V_DEPTH, Sx_V_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            Sx_V_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_Sx_V_run_flag <= '1'; 
            write_Sx_V_count := 0;
        end if;
        if (write_one_Sx_V_data_done = '1') then
            write_Sx_V_count := write_Sx_V_count + 1;
            if (write_Sx_V_count = Sx_V_OPERATE_DEPTH) then
                write_Sx_V_run_flag <= '0'; 
                Sx_V_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_Sx_V_proc : process
    variable write_Sx_V_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_7_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable Sx_V_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := Sx_V_c_bitwidth;
    process_num := 7;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_7_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_Sx_V_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write Sx_V data 
                for i in 0 to four_byte_num - 1 loop
                    if (Sx_V_c_bitwidth < 32) then
                        Sx_V_data_tmp_reg := mem_Sx_V(write_Sx_V_count);
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < Sx_V_c_bitwidth) then
                                Sx_V_data_tmp_reg(j) := mem_Sx_V(write_Sx_V_count)(i*32 + j);
                            else 
                                Sx_V_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
--=======================one single write operate======================
                write_Sx_V_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_7_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(Sx_V_data_in_addr + write_Sx_V_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_7_AWVALID_var <= '1';
                process_7_WDATA_var   <= Sx_V_data_tmp_reg;
                process_7_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_7_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_AXILiteS_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_AXILiteS_WREADY and WVALID_reg;
                    end if;
                    process_7_AWVALID_var <= not aw_flag;
                    process_7_WVALID_var <= not w_flag;
                end loop;

                process_7_BREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_7_BREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_BRESP = (2 => '0')) then
                    write_Sx_V_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                end loop;
                process_busy := '0';
                write_one_Sx_V_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_Sx_V_data_done <= '0';
            end if;
            process_7_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
gen_write_Sy_V_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        Sy_V_write_data_finish <= '0';
        write_Sy_V_run_flag <= '0'; 
        write_Sy_V_count := 0;
        count_operate_depth_by_bitwidth_and_depth (Sy_V_c_bitwidth, Sy_V_DEPTH, Sy_V_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            Sy_V_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_Sy_V_run_flag <= '1'; 
            write_Sy_V_count := 0;
        end if;
        if (write_one_Sy_V_data_done = '1') then
            write_Sy_V_count := write_Sy_V_count + 1;
            if (write_Sy_V_count = Sy_V_OPERATE_DEPTH) then
                write_Sy_V_run_flag <= '0'; 
                Sy_V_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_Sy_V_proc : process
    variable write_Sy_V_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_8_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable Sy_V_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := Sy_V_c_bitwidth;
    process_num := 8;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_8_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_Sy_V_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write Sy_V data 
                for i in 0 to four_byte_num - 1 loop
                    if (Sy_V_c_bitwidth < 32) then
                        Sy_V_data_tmp_reg := mem_Sy_V(write_Sy_V_count);
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < Sy_V_c_bitwidth) then
                                Sy_V_data_tmp_reg(j) := mem_Sy_V(write_Sy_V_count)(i*32 + j);
                            else 
                                Sy_V_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
--=======================one single write operate======================
                write_Sy_V_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_8_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(Sy_V_data_in_addr + write_Sy_V_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_8_AWVALID_var <= '1';
                process_8_WDATA_var   <= Sy_V_data_tmp_reg;
                process_8_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_8_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_AXILiteS_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_AXILiteS_WREADY and WVALID_reg;
                    end if;
                    process_8_AWVALID_var <= not aw_flag;
                    process_8_WVALID_var <= not w_flag;
                end loop;

                process_8_BREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_8_BREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_BRESP = (2 => '0')) then
                    write_Sy_V_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                end loop;
                process_busy := '0';
                write_one_Sy_V_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_Sy_V_data_done <= '0';
            end if;
            process_8_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
gen_write_mode_V_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        mode_V_write_data_finish <= '0';
        write_mode_V_run_flag <= '0'; 
        write_mode_V_count := 0;
        count_operate_depth_by_bitwidth_and_depth (mode_V_c_bitwidth, mode_V_DEPTH, mode_V_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            mode_V_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_mode_V_run_flag <= '1'; 
            write_mode_V_count := 0;
        end if;
        if (write_one_mode_V_data_done = '1') then
            write_mode_V_count := write_mode_V_count + 1;
            if (write_mode_V_count = mode_V_OPERATE_DEPTH) then
                write_mode_V_run_flag <= '0'; 
                mode_V_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_mode_V_proc : process
    variable write_mode_V_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_9_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable mode_V_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := mode_V_c_bitwidth;
    process_num := 9;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_9_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_mode_V_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write mode_V data 
                for i in 0 to four_byte_num - 1 loop
                    if (mode_V_c_bitwidth < 32) then
                        mode_V_data_tmp_reg := mem_mode_V(write_mode_V_count);
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < mode_V_c_bitwidth) then
                                mode_V_data_tmp_reg(j) := mem_mode_V(write_mode_V_count)(i*32 + j);
                            else 
                                mode_V_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
--=======================one single write operate======================
                write_mode_V_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_9_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(mode_V_data_in_addr + write_mode_V_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_9_AWVALID_var <= '1';
                process_9_WDATA_var   <= mode_V_data_tmp_reg;
                process_9_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_9_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_AXILiteS_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_AXILiteS_WREADY and WVALID_reg;
                    end if;
                    process_9_AWVALID_var <= not aw_flag;
                    process_9_WVALID_var <= not w_flag;
                end loop;

                process_9_BREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_9_BREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_BRESP = (2 => '0')) then
                    write_mode_V_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                end loop;
                process_busy := '0';
                write_one_mode_V_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_mode_V_data_done <= '0';
            end if;
            process_9_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
gen_write_relu_en_V_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        relu_en_V_write_data_finish <= '0';
        write_relu_en_V_run_flag <= '0'; 
        write_relu_en_V_count := 0;
        count_operate_depth_by_bitwidth_and_depth (relu_en_V_c_bitwidth, relu_en_V_DEPTH, relu_en_V_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            relu_en_V_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_relu_en_V_run_flag <= '1'; 
            write_relu_en_V_count := 0;
        end if;
        if (write_one_relu_en_V_data_done = '1') then
            write_relu_en_V_count := write_relu_en_V_count + 1;
            if (write_relu_en_V_count = relu_en_V_OPERATE_DEPTH) then
                write_relu_en_V_run_flag <= '0'; 
                relu_en_V_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_relu_en_V_proc : process
    variable write_relu_en_V_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_10_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable relu_en_V_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := relu_en_V_c_bitwidth;
    process_num := 10;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_10_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_relu_en_V_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write relu_en_V data 
                for i in 0 to four_byte_num - 1 loop
                    if (relu_en_V_c_bitwidth < 32) then
                        relu_en_V_data_tmp_reg := mem_relu_en_V(write_relu_en_V_count);
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < relu_en_V_c_bitwidth) then
                                relu_en_V_data_tmp_reg(j) := mem_relu_en_V(write_relu_en_V_count)(i*32 + j);
                            else 
                                relu_en_V_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
--=======================one single write operate======================
                write_relu_en_V_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_10_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(relu_en_V_data_in_addr + write_relu_en_V_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_10_AWVALID_var <= '1';
                process_10_WDATA_var   <= relu_en_V_data_tmp_reg;
                process_10_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_10_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_AXILiteS_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_AXILiteS_WREADY and WVALID_reg;
                    end if;
                    process_10_AWVALID_var <= not aw_flag;
                    process_10_WVALID_var <= not w_flag;
                end loop;

                process_10_BREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_10_BREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_BRESP = (2 => '0')) then
                    write_relu_en_V_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                end loop;
                process_busy := '0';
                write_one_relu_en_V_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_relu_en_V_data_done <= '0';
            end if;
            process_10_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
gen_write_feature_in_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        feature_in_write_data_finish <= '0';
        write_feature_in_run_flag <= '0'; 
        write_feature_in_count := 0;
        count_operate_depth_by_bitwidth_and_depth (feature_in_c_bitwidth, feature_in_DEPTH, feature_in_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            feature_in_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_feature_in_run_flag <= '1'; 
            write_feature_in_count := 0;
        end if;
        if (write_one_feature_in_data_done = '1') then
            write_feature_in_count := write_feature_in_count + 1;
            if (write_feature_in_count = feature_in_OPERATE_DEPTH) then
                write_feature_in_run_flag <= '0'; 
                feature_in_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_feature_in_proc : process
    variable write_feature_in_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_11_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable feature_in_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := feature_in_c_bitwidth;
    process_num := 11;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_11_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_feature_in_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write feature_in data 
                for i in 0 to four_byte_num - 1 loop
                    if (feature_in_c_bitwidth < 32) then
                        feature_in_data_tmp_reg := reg_feature_in;
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < feature_in_c_bitwidth) then
                                feature_in_data_tmp_reg(j) := reg_feature_in(i*32 + j);
                            else 
                                feature_in_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
--=======================one single write operate======================
                write_feature_in_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_11_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(feature_in_data_in_addr + write_feature_in_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_11_AWVALID_var <= '1';
                process_11_WDATA_var   <= feature_in_data_tmp_reg;
                process_11_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_11_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_AXILiteS_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_AXILiteS_WREADY and WVALID_reg;
                    end if;
                    process_11_AWVALID_var <= not aw_flag;
                    process_11_WVALID_var <= not w_flag;
                end loop;

                process_11_BREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_11_BREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_BRESP = (2 => '0')) then
                    write_feature_in_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                end loop;
                process_busy := '0';
                write_one_feature_in_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_feature_in_data_done <= '0';
            end if;
            process_11_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
gen_write_W_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        W_write_data_finish <= '0';
        write_W_run_flag <= '0'; 
        write_W_count := 0;
        count_operate_depth_by_bitwidth_and_depth (W_c_bitwidth, W_DEPTH, W_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            W_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_W_run_flag <= '1'; 
            write_W_count := 0;
        end if;
        if (write_one_W_data_done = '1') then
            write_W_count := write_W_count + 1;
            if (write_W_count = W_OPERATE_DEPTH) then
                write_W_run_flag <= '0'; 
                W_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_W_proc : process
    variable write_W_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_12_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable W_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := W_c_bitwidth;
    process_num := 12;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_12_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_W_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write W data 
                for i in 0 to four_byte_num - 1 loop
                    if (W_c_bitwidth < 32) then
                        W_data_tmp_reg := reg_W;
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < W_c_bitwidth) then
                                W_data_tmp_reg(j) := reg_W(i*32 + j);
                            else 
                                W_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
--=======================one single write operate======================
                write_W_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_12_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(W_data_in_addr + write_W_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_12_AWVALID_var <= '1';
                process_12_WDATA_var   <= W_data_tmp_reg;
                process_12_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_12_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_AXILiteS_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_AXILiteS_WREADY and WVALID_reg;
                    end if;
                    process_12_AWVALID_var <= not aw_flag;
                    process_12_WVALID_var <= not w_flag;
                end loop;

                process_12_BREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_12_BREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_BRESP = (2 => '0')) then
                    write_W_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                end loop;
                process_busy := '0';
                write_one_W_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_W_data_done <= '0';
            end if;
            process_12_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
gen_write_bias_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        bias_write_data_finish <= '0';
        write_bias_run_flag <= '0'; 
        write_bias_count := 0;
        count_operate_depth_by_bitwidth_and_depth (bias_c_bitwidth, bias_DEPTH, bias_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            bias_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_bias_run_flag <= '1'; 
            write_bias_count := 0;
        end if;
        if (write_one_bias_data_done = '1') then
            write_bias_count := write_bias_count + 1;
            if (write_bias_count = bias_OPERATE_DEPTH) then
                write_bias_run_flag <= '0'; 
                bias_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_bias_proc : process
    variable write_bias_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_13_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable bias_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := bias_c_bitwidth;
    process_num := 13;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_13_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_bias_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write bias data 
                for i in 0 to four_byte_num - 1 loop
                    if (bias_c_bitwidth < 32) then
                        bias_data_tmp_reg := reg_bias;
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < bias_c_bitwidth) then
                                bias_data_tmp_reg(j) := reg_bias(i*32 + j);
                            else 
                                bias_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
--=======================one single write operate======================
                write_bias_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_13_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(bias_data_in_addr + write_bias_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_13_AWVALID_var <= '1';
                process_13_WDATA_var   <= bias_data_tmp_reg;
                process_13_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_13_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_AXILiteS_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_AXILiteS_WREADY and WVALID_reg;
                    end if;
                    process_13_AWVALID_var <= not aw_flag;
                    process_13_WVALID_var <= not w_flag;
                end loop;

                process_13_BREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_13_BREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_BRESP = (2 => '0')) then
                    write_bias_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                end loop;
                process_busy := '0';
                write_one_bias_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_bias_data_done <= '0';
            end if;
            process_13_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
gen_write_feature_out_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        feature_out_write_data_finish <= '0';
        write_feature_out_run_flag <= '0'; 
        write_feature_out_count := 0;
        count_operate_depth_by_bitwidth_and_depth (feature_out_c_bitwidth, feature_out_DEPTH, feature_out_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            feature_out_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_feature_out_run_flag <= '1'; 
            write_feature_out_count := 0;
        end if;
        if (write_one_feature_out_data_done = '1') then
            write_feature_out_count := write_feature_out_count + 1;
            if (write_feature_out_count = feature_out_OPERATE_DEPTH) then
                write_feature_out_run_flag <= '0'; 
                feature_out_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_feature_out_proc : process
    variable write_feature_out_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_14_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable feature_out_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := feature_out_c_bitwidth;
    process_num := 14;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_14_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_feature_out_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write feature_out data 
                for i in 0 to four_byte_num - 1 loop
                    if (feature_out_c_bitwidth < 32) then
                        feature_out_data_tmp_reg := reg_feature_out;
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < feature_out_c_bitwidth) then
                                feature_out_data_tmp_reg(j) := reg_feature_out(i*32 + j);
                            else 
                                feature_out_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
--=======================one single write operate======================
                write_feature_out_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_14_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(feature_out_data_in_addr + write_feature_out_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_14_AWVALID_var <= '1';
                process_14_WDATA_var   <= feature_out_data_tmp_reg;
                process_14_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_14_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_AXILiteS_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_AXILiteS_WREADY and WVALID_reg;
                    end if;
                    process_14_AWVALID_var <= not aw_flag;
                    process_14_WVALID_var <= not w_flag;
                end loop;

                process_14_BREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_14_BREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_BRESP = (2 => '0')) then
                    write_feature_out_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                end loop;
                process_busy := '0';
                write_one_feature_out_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_feature_out_data_done <= '0';
            end if;
            process_14_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;

gen_write_start_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        write_start_run_flag <= '0'; 
        write_start_count := 0;
    elsif (clk'event and clk = '1') then
        if (write_start_count >= 1) then
            write_start_run_flag <= '0'; 
        elsif (TRAN_AXILiteS_write_start_in = '1') then
            write_start_run_flag <= '1'; 
        end if;
        if (AESL_write_start_finish = '1') then
            write_start_count := write_start_count + 1;
            write_start_run_flag <= '0'; 
        end if;
    end if;
end process;

write_start_proc : process
    variable process_num : INTEGER;
    variable write_start_resp : INTEGER;
    variable write_start_tmp : STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0) ;
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
    variable i : INTEGER;
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    process_num := 15;
    while (true) loop
        process_15_finish <= '0';
        if (ongoing_process_number = process_num and process_busy = '0' ) then
            if (write_start_run_flag = '1') then
                process_busy := '1';
                write_start_tmp := (others => '0');
                write_start_tmp(0) := '1';
--=======================one single write operate======================
                write_start_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_15_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(START_ADDR, ADDR_WIDTH));
                process_15_AWVALID_var <= '1';
                process_15_WDATA_var   <= write_start_tmp;
                process_15_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_15_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_AXILiteS_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_AXILiteS_WREADY and WVALID_reg;
                    end if;
                    process_15_AWVALID_var <= not aw_flag;
                    process_15_WVALID_var <= not w_flag;
                end loop;

                process_15_BREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_15_BREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_BRESP = (2 => '0')) then
                    write_start_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                process_busy := '0';
                AESL_write_start_finish <= '1';
                wait until clk'event and clk = '1';
                AESL_write_start_finish <= '0';
            end if;
            process_15_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;

--------------------------Read file------------------------ 
 
-- Read data from file 
read_CHin_V_file_process : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 128);
  variable    token_tmp : STD_LOGIC_VECTOR(CHin_V_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    mem_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_8 : STD_LOGIC_VECTOR(8 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_16 : STD_LOGIC_VECTOR(16 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_32 : STD_LOGIC_VECTOR(32 - 1 downto 0) := (others => '0'); 
  variable    transaction_idx : INTEGER; 
  variable    i : INTEGER; 
  variable    j : INTEGER; 
  variable    factor : INTEGER; 
  variable    remain  :   INTEGER; 
  variable    read_counter :   INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (CHin_V_c_bitwidth , factor);
  file_open(fstatus, fp, TV_IN_CHin_V , READ_MODE);
  if(fstatus /= OPEN_OK) then
      assert false report "Open file " & TV_IN_CHin_V & " failed!!!" severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  if(token(1 to 13) /= "[[[runtime]]]") then
      assert false report "ERROR: Simulation using HLS TB failed." severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
      wait until clk'event and clk = '1';
      wait for 0.2 ns;
      while(AESL_ready_reg /= '1') loop
          wait until clk'event and clk = '1';
          wait for 0.2 ns;
      end loop;
      read_counter := 0;
      for i in 0 to CHin_V_DEPTH - 1 loop
          read_counter := read_counter + 1;
          esl_read_token(fp, token_line, token);
          token_tmp := esl_str2lv_hex(token, CHin_V_c_bitwidth);
          remain := i mod factor;
          if (factor = 4) then
              mem_tmp_8 (7 downto 0) := (others => '0');
              for j in 0 to CHin_V_c_bitwidth - 1 loop
                  mem_tmp_8 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (7 downto 0) := mem_tmp_8;
              elsif (remain = 1) then
                  mem_tmp (15 downto 8) := mem_tmp_8;
              elsif (remain = 2) then
                  mem_tmp (23 downto 16) := mem_tmp_8;
              elsif (remain = 3) then
                  mem_tmp (31 downto 24) := mem_tmp_8;
                  mem_CHin_V(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 2) then
              mem_tmp_16 (15 downto 0) := (others => '0');
              for j in 0 to CHin_V_c_bitwidth - 1 loop
                  mem_tmp_16 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (15 downto 0) := mem_tmp_16;
              elsif (remain = 1) then
                  mem_tmp (31 downto 16) := mem_tmp_16;
                  mem_CHin_V(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 1) then
              if (CHin_V_c_bitwidth < 32) then
                  mem_tmp_32 (31 downto 0) := (others => '0');
                  for j in 0 to CHin_V_c_bitwidth - 1 loop
                      mem_tmp_32 (j downto j) := token_tmp (j downto j);
                  end loop;
                  mem_CHin_V(i)(31 downto 0) := mem_tmp_32;
              else
                  mem_CHin_V(i) := token_tmp;
              end if;
          end if;
      end loop;
      remain := read_counter mod factor;
      if (factor = 4) then
          if (remain /= 0) then
              mem_CHin_V(CHin_V_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      elsif (factor = 2) then
          if (remain /= 0) then
              mem_CHin_V(CHin_V_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      end if;
      esl_read_token(fp, token_line, token);
      if(token(1 to 16) /= "[[/transaction]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      transaction_idx := transaction_idx + 1; 
  end loop;
  file_close(fp);
end process;
 
--------------------------Read file------------------------ 
 
-- Read data from file 
read_Hin_V_file_process : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 128);
  variable    token_tmp : STD_LOGIC_VECTOR(Hin_V_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    mem_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_8 : STD_LOGIC_VECTOR(8 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_16 : STD_LOGIC_VECTOR(16 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_32 : STD_LOGIC_VECTOR(32 - 1 downto 0) := (others => '0'); 
  variable    transaction_idx : INTEGER; 
  variable    i : INTEGER; 
  variable    j : INTEGER; 
  variable    factor : INTEGER; 
  variable    remain  :   INTEGER; 
  variable    read_counter :   INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (Hin_V_c_bitwidth , factor);
  file_open(fstatus, fp, TV_IN_Hin_V , READ_MODE);
  if(fstatus /= OPEN_OK) then
      assert false report "Open file " & TV_IN_Hin_V & " failed!!!" severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  if(token(1 to 13) /= "[[[runtime]]]") then
      assert false report "ERROR: Simulation using HLS TB failed." severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
      wait until clk'event and clk = '1';
      wait for 0.2 ns;
      while(AESL_ready_reg /= '1') loop
          wait until clk'event and clk = '1';
          wait for 0.2 ns;
      end loop;
      read_counter := 0;
      for i in 0 to Hin_V_DEPTH - 1 loop
          read_counter := read_counter + 1;
          esl_read_token(fp, token_line, token);
          token_tmp := esl_str2lv_hex(token, Hin_V_c_bitwidth);
          remain := i mod factor;
          if (factor = 4) then
              mem_tmp_8 (7 downto 0) := (others => '0');
              for j in 0 to Hin_V_c_bitwidth - 1 loop
                  mem_tmp_8 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (7 downto 0) := mem_tmp_8;
              elsif (remain = 1) then
                  mem_tmp (15 downto 8) := mem_tmp_8;
              elsif (remain = 2) then
                  mem_tmp (23 downto 16) := mem_tmp_8;
              elsif (remain = 3) then
                  mem_tmp (31 downto 24) := mem_tmp_8;
                  mem_Hin_V(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 2) then
              mem_tmp_16 (15 downto 0) := (others => '0');
              for j in 0 to Hin_V_c_bitwidth - 1 loop
                  mem_tmp_16 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (15 downto 0) := mem_tmp_16;
              elsif (remain = 1) then
                  mem_tmp (31 downto 16) := mem_tmp_16;
                  mem_Hin_V(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 1) then
              if (Hin_V_c_bitwidth < 32) then
                  mem_tmp_32 (31 downto 0) := (others => '0');
                  for j in 0 to Hin_V_c_bitwidth - 1 loop
                      mem_tmp_32 (j downto j) := token_tmp (j downto j);
                  end loop;
                  mem_Hin_V(i)(31 downto 0) := mem_tmp_32;
              else
                  mem_Hin_V(i) := token_tmp;
              end if;
          end if;
      end loop;
      remain := read_counter mod factor;
      if (factor = 4) then
          if (remain /= 0) then
              mem_Hin_V(Hin_V_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      elsif (factor = 2) then
          if (remain /= 0) then
              mem_Hin_V(Hin_V_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      end if;
      esl_read_token(fp, token_line, token);
      if(token(1 to 16) /= "[[/transaction]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      transaction_idx := transaction_idx + 1; 
  end loop;
  file_close(fp);
end process;
 
--------------------------Read file------------------------ 
 
-- Read data from file 
read_Win_V_file_process : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 128);
  variable    token_tmp : STD_LOGIC_VECTOR(Win_V_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    mem_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_8 : STD_LOGIC_VECTOR(8 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_16 : STD_LOGIC_VECTOR(16 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_32 : STD_LOGIC_VECTOR(32 - 1 downto 0) := (others => '0'); 
  variable    transaction_idx : INTEGER; 
  variable    i : INTEGER; 
  variable    j : INTEGER; 
  variable    factor : INTEGER; 
  variable    remain  :   INTEGER; 
  variable    read_counter :   INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (Win_V_c_bitwidth , factor);
  file_open(fstatus, fp, TV_IN_Win_V , READ_MODE);
  if(fstatus /= OPEN_OK) then
      assert false report "Open file " & TV_IN_Win_V & " failed!!!" severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  if(token(1 to 13) /= "[[[runtime]]]") then
      assert false report "ERROR: Simulation using HLS TB failed." severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
      wait until clk'event and clk = '1';
      wait for 0.2 ns;
      while(AESL_ready_reg /= '1') loop
          wait until clk'event and clk = '1';
          wait for 0.2 ns;
      end loop;
      read_counter := 0;
      for i in 0 to Win_V_DEPTH - 1 loop
          read_counter := read_counter + 1;
          esl_read_token(fp, token_line, token);
          token_tmp := esl_str2lv_hex(token, Win_V_c_bitwidth);
          remain := i mod factor;
          if (factor = 4) then
              mem_tmp_8 (7 downto 0) := (others => '0');
              for j in 0 to Win_V_c_bitwidth - 1 loop
                  mem_tmp_8 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (7 downto 0) := mem_tmp_8;
              elsif (remain = 1) then
                  mem_tmp (15 downto 8) := mem_tmp_8;
              elsif (remain = 2) then
                  mem_tmp (23 downto 16) := mem_tmp_8;
              elsif (remain = 3) then
                  mem_tmp (31 downto 24) := mem_tmp_8;
                  mem_Win_V(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 2) then
              mem_tmp_16 (15 downto 0) := (others => '0');
              for j in 0 to Win_V_c_bitwidth - 1 loop
                  mem_tmp_16 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (15 downto 0) := mem_tmp_16;
              elsif (remain = 1) then
                  mem_tmp (31 downto 16) := mem_tmp_16;
                  mem_Win_V(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 1) then
              if (Win_V_c_bitwidth < 32) then
                  mem_tmp_32 (31 downto 0) := (others => '0');
                  for j in 0 to Win_V_c_bitwidth - 1 loop
                      mem_tmp_32 (j downto j) := token_tmp (j downto j);
                  end loop;
                  mem_Win_V(i)(31 downto 0) := mem_tmp_32;
              else
                  mem_Win_V(i) := token_tmp;
              end if;
          end if;
      end loop;
      remain := read_counter mod factor;
      if (factor = 4) then
          if (remain /= 0) then
              mem_Win_V(Win_V_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      elsif (factor = 2) then
          if (remain /= 0) then
              mem_Win_V(Win_V_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      end if;
      esl_read_token(fp, token_line, token);
      if(token(1 to 16) /= "[[/transaction]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      transaction_idx := transaction_idx + 1; 
  end loop;
  file_close(fp);
end process;
 
--------------------------Read file------------------------ 
 
-- Read data from file 
read_CHout_V_file_process : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 128);
  variable    token_tmp : STD_LOGIC_VECTOR(CHout_V_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    mem_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_8 : STD_LOGIC_VECTOR(8 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_16 : STD_LOGIC_VECTOR(16 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_32 : STD_LOGIC_VECTOR(32 - 1 downto 0) := (others => '0'); 
  variable    transaction_idx : INTEGER; 
  variable    i : INTEGER; 
  variable    j : INTEGER; 
  variable    factor : INTEGER; 
  variable    remain  :   INTEGER; 
  variable    read_counter :   INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (CHout_V_c_bitwidth , factor);
  file_open(fstatus, fp, TV_IN_CHout_V , READ_MODE);
  if(fstatus /= OPEN_OK) then
      assert false report "Open file " & TV_IN_CHout_V & " failed!!!" severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  if(token(1 to 13) /= "[[[runtime]]]") then
      assert false report "ERROR: Simulation using HLS TB failed." severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
      wait until clk'event and clk = '1';
      wait for 0.2 ns;
      while(AESL_ready_reg /= '1') loop
          wait until clk'event and clk = '1';
          wait for 0.2 ns;
      end loop;
      read_counter := 0;
      for i in 0 to CHout_V_DEPTH - 1 loop
          read_counter := read_counter + 1;
          esl_read_token(fp, token_line, token);
          token_tmp := esl_str2lv_hex(token, CHout_V_c_bitwidth);
          remain := i mod factor;
          if (factor = 4) then
              mem_tmp_8 (7 downto 0) := (others => '0');
              for j in 0 to CHout_V_c_bitwidth - 1 loop
                  mem_tmp_8 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (7 downto 0) := mem_tmp_8;
              elsif (remain = 1) then
                  mem_tmp (15 downto 8) := mem_tmp_8;
              elsif (remain = 2) then
                  mem_tmp (23 downto 16) := mem_tmp_8;
              elsif (remain = 3) then
                  mem_tmp (31 downto 24) := mem_tmp_8;
                  mem_CHout_V(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 2) then
              mem_tmp_16 (15 downto 0) := (others => '0');
              for j in 0 to CHout_V_c_bitwidth - 1 loop
                  mem_tmp_16 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (15 downto 0) := mem_tmp_16;
              elsif (remain = 1) then
                  mem_tmp (31 downto 16) := mem_tmp_16;
                  mem_CHout_V(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 1) then
              if (CHout_V_c_bitwidth < 32) then
                  mem_tmp_32 (31 downto 0) := (others => '0');
                  for j in 0 to CHout_V_c_bitwidth - 1 loop
                      mem_tmp_32 (j downto j) := token_tmp (j downto j);
                  end loop;
                  mem_CHout_V(i)(31 downto 0) := mem_tmp_32;
              else
                  mem_CHout_V(i) := token_tmp;
              end if;
          end if;
      end loop;
      remain := read_counter mod factor;
      if (factor = 4) then
          if (remain /= 0) then
              mem_CHout_V(CHout_V_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      elsif (factor = 2) then
          if (remain /= 0) then
              mem_CHout_V(CHout_V_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      end if;
      esl_read_token(fp, token_line, token);
      if(token(1 to 16) /= "[[/transaction]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      transaction_idx := transaction_idx + 1; 
  end loop;
  file_close(fp);
end process;
 
--------------------------Read file------------------------ 
 
-- Read data from file 
read_Kx_V_file_process : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 128);
  variable    token_tmp : STD_LOGIC_VECTOR(Kx_V_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    mem_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_8 : STD_LOGIC_VECTOR(8 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_16 : STD_LOGIC_VECTOR(16 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_32 : STD_LOGIC_VECTOR(32 - 1 downto 0) := (others => '0'); 
  variable    transaction_idx : INTEGER; 
  variable    i : INTEGER; 
  variable    j : INTEGER; 
  variable    factor : INTEGER; 
  variable    remain  :   INTEGER; 
  variable    read_counter :   INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (Kx_V_c_bitwidth , factor);
  file_open(fstatus, fp, TV_IN_Kx_V , READ_MODE);
  if(fstatus /= OPEN_OK) then
      assert false report "Open file " & TV_IN_Kx_V & " failed!!!" severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  if(token(1 to 13) /= "[[[runtime]]]") then
      assert false report "ERROR: Simulation using HLS TB failed." severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
      wait until clk'event and clk = '1';
      wait for 0.2 ns;
      while(AESL_ready_reg /= '1') loop
          wait until clk'event and clk = '1';
          wait for 0.2 ns;
      end loop;
      read_counter := 0;
      for i in 0 to Kx_V_DEPTH - 1 loop
          read_counter := read_counter + 1;
          esl_read_token(fp, token_line, token);
          token_tmp := esl_str2lv_hex(token, Kx_V_c_bitwidth);
          remain := i mod factor;
          if (factor = 4) then
              mem_tmp_8 (7 downto 0) := (others => '0');
              for j in 0 to Kx_V_c_bitwidth - 1 loop
                  mem_tmp_8 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (7 downto 0) := mem_tmp_8;
              elsif (remain = 1) then
                  mem_tmp (15 downto 8) := mem_tmp_8;
              elsif (remain = 2) then
                  mem_tmp (23 downto 16) := mem_tmp_8;
              elsif (remain = 3) then
                  mem_tmp (31 downto 24) := mem_tmp_8;
                  mem_Kx_V(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 2) then
              mem_tmp_16 (15 downto 0) := (others => '0');
              for j in 0 to Kx_V_c_bitwidth - 1 loop
                  mem_tmp_16 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (15 downto 0) := mem_tmp_16;
              elsif (remain = 1) then
                  mem_tmp (31 downto 16) := mem_tmp_16;
                  mem_Kx_V(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 1) then
              if (Kx_V_c_bitwidth < 32) then
                  mem_tmp_32 (31 downto 0) := (others => '0');
                  for j in 0 to Kx_V_c_bitwidth - 1 loop
                      mem_tmp_32 (j downto j) := token_tmp (j downto j);
                  end loop;
                  mem_Kx_V(i)(31 downto 0) := mem_tmp_32;
              else
                  mem_Kx_V(i) := token_tmp;
              end if;
          end if;
      end loop;
      remain := read_counter mod factor;
      if (factor = 4) then
          if (remain /= 0) then
              mem_Kx_V(Kx_V_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      elsif (factor = 2) then
          if (remain /= 0) then
              mem_Kx_V(Kx_V_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      end if;
      esl_read_token(fp, token_line, token);
      if(token(1 to 16) /= "[[/transaction]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      transaction_idx := transaction_idx + 1; 
  end loop;
  file_close(fp);
end process;
 
--------------------------Read file------------------------ 
 
-- Read data from file 
read_Ky_V_file_process : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 128);
  variable    token_tmp : STD_LOGIC_VECTOR(Ky_V_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    mem_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_8 : STD_LOGIC_VECTOR(8 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_16 : STD_LOGIC_VECTOR(16 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_32 : STD_LOGIC_VECTOR(32 - 1 downto 0) := (others => '0'); 
  variable    transaction_idx : INTEGER; 
  variable    i : INTEGER; 
  variable    j : INTEGER; 
  variable    factor : INTEGER; 
  variable    remain  :   INTEGER; 
  variable    read_counter :   INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (Ky_V_c_bitwidth , factor);
  file_open(fstatus, fp, TV_IN_Ky_V , READ_MODE);
  if(fstatus /= OPEN_OK) then
      assert false report "Open file " & TV_IN_Ky_V & " failed!!!" severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  if(token(1 to 13) /= "[[[runtime]]]") then
      assert false report "ERROR: Simulation using HLS TB failed." severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
      wait until clk'event and clk = '1';
      wait for 0.2 ns;
      while(AESL_ready_reg /= '1') loop
          wait until clk'event and clk = '1';
          wait for 0.2 ns;
      end loop;
      read_counter := 0;
      for i in 0 to Ky_V_DEPTH - 1 loop
          read_counter := read_counter + 1;
          esl_read_token(fp, token_line, token);
          token_tmp := esl_str2lv_hex(token, Ky_V_c_bitwidth);
          remain := i mod factor;
          if (factor = 4) then
              mem_tmp_8 (7 downto 0) := (others => '0');
              for j in 0 to Ky_V_c_bitwidth - 1 loop
                  mem_tmp_8 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (7 downto 0) := mem_tmp_8;
              elsif (remain = 1) then
                  mem_tmp (15 downto 8) := mem_tmp_8;
              elsif (remain = 2) then
                  mem_tmp (23 downto 16) := mem_tmp_8;
              elsif (remain = 3) then
                  mem_tmp (31 downto 24) := mem_tmp_8;
                  mem_Ky_V(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 2) then
              mem_tmp_16 (15 downto 0) := (others => '0');
              for j in 0 to Ky_V_c_bitwidth - 1 loop
                  mem_tmp_16 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (15 downto 0) := mem_tmp_16;
              elsif (remain = 1) then
                  mem_tmp (31 downto 16) := mem_tmp_16;
                  mem_Ky_V(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 1) then
              if (Ky_V_c_bitwidth < 32) then
                  mem_tmp_32 (31 downto 0) := (others => '0');
                  for j in 0 to Ky_V_c_bitwidth - 1 loop
                      mem_tmp_32 (j downto j) := token_tmp (j downto j);
                  end loop;
                  mem_Ky_V(i)(31 downto 0) := mem_tmp_32;
              else
                  mem_Ky_V(i) := token_tmp;
              end if;
          end if;
      end loop;
      remain := read_counter mod factor;
      if (factor = 4) then
          if (remain /= 0) then
              mem_Ky_V(Ky_V_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      elsif (factor = 2) then
          if (remain /= 0) then
              mem_Ky_V(Ky_V_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      end if;
      esl_read_token(fp, token_line, token);
      if(token(1 to 16) /= "[[/transaction]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      transaction_idx := transaction_idx + 1; 
  end loop;
  file_close(fp);
end process;
 
--------------------------Read file------------------------ 
 
-- Read data from file 
read_Sx_V_file_process : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 128);
  variable    token_tmp : STD_LOGIC_VECTOR(Sx_V_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    mem_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_8 : STD_LOGIC_VECTOR(8 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_16 : STD_LOGIC_VECTOR(16 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_32 : STD_LOGIC_VECTOR(32 - 1 downto 0) := (others => '0'); 
  variable    transaction_idx : INTEGER; 
  variable    i : INTEGER; 
  variable    j : INTEGER; 
  variable    factor : INTEGER; 
  variable    remain  :   INTEGER; 
  variable    read_counter :   INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (Sx_V_c_bitwidth , factor);
  file_open(fstatus, fp, TV_IN_Sx_V , READ_MODE);
  if(fstatus /= OPEN_OK) then
      assert false report "Open file " & TV_IN_Sx_V & " failed!!!" severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  if(token(1 to 13) /= "[[[runtime]]]") then
      assert false report "ERROR: Simulation using HLS TB failed." severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
      wait until clk'event and clk = '1';
      wait for 0.2 ns;
      while(AESL_ready_reg /= '1') loop
          wait until clk'event and clk = '1';
          wait for 0.2 ns;
      end loop;
      read_counter := 0;
      for i in 0 to Sx_V_DEPTH - 1 loop
          read_counter := read_counter + 1;
          esl_read_token(fp, token_line, token);
          token_tmp := esl_str2lv_hex(token, Sx_V_c_bitwidth);
          remain := i mod factor;
          if (factor = 4) then
              mem_tmp_8 (7 downto 0) := (others => '0');
              for j in 0 to Sx_V_c_bitwidth - 1 loop
                  mem_tmp_8 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (7 downto 0) := mem_tmp_8;
              elsif (remain = 1) then
                  mem_tmp (15 downto 8) := mem_tmp_8;
              elsif (remain = 2) then
                  mem_tmp (23 downto 16) := mem_tmp_8;
              elsif (remain = 3) then
                  mem_tmp (31 downto 24) := mem_tmp_8;
                  mem_Sx_V(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 2) then
              mem_tmp_16 (15 downto 0) := (others => '0');
              for j in 0 to Sx_V_c_bitwidth - 1 loop
                  mem_tmp_16 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (15 downto 0) := mem_tmp_16;
              elsif (remain = 1) then
                  mem_tmp (31 downto 16) := mem_tmp_16;
                  mem_Sx_V(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 1) then
              if (Sx_V_c_bitwidth < 32) then
                  mem_tmp_32 (31 downto 0) := (others => '0');
                  for j in 0 to Sx_V_c_bitwidth - 1 loop
                      mem_tmp_32 (j downto j) := token_tmp (j downto j);
                  end loop;
                  mem_Sx_V(i)(31 downto 0) := mem_tmp_32;
              else
                  mem_Sx_V(i) := token_tmp;
              end if;
          end if;
      end loop;
      remain := read_counter mod factor;
      if (factor = 4) then
          if (remain /= 0) then
              mem_Sx_V(Sx_V_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      elsif (factor = 2) then
          if (remain /= 0) then
              mem_Sx_V(Sx_V_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      end if;
      esl_read_token(fp, token_line, token);
      if(token(1 to 16) /= "[[/transaction]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      transaction_idx := transaction_idx + 1; 
  end loop;
  file_close(fp);
end process;
 
--------------------------Read file------------------------ 
 
-- Read data from file 
read_Sy_V_file_process : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 128);
  variable    token_tmp : STD_LOGIC_VECTOR(Sy_V_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    mem_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_8 : STD_LOGIC_VECTOR(8 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_16 : STD_LOGIC_VECTOR(16 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_32 : STD_LOGIC_VECTOR(32 - 1 downto 0) := (others => '0'); 
  variable    transaction_idx : INTEGER; 
  variable    i : INTEGER; 
  variable    j : INTEGER; 
  variable    factor : INTEGER; 
  variable    remain  :   INTEGER; 
  variable    read_counter :   INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (Sy_V_c_bitwidth , factor);
  file_open(fstatus, fp, TV_IN_Sy_V , READ_MODE);
  if(fstatus /= OPEN_OK) then
      assert false report "Open file " & TV_IN_Sy_V & " failed!!!" severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  if(token(1 to 13) /= "[[[runtime]]]") then
      assert false report "ERROR: Simulation using HLS TB failed." severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
      wait until clk'event and clk = '1';
      wait for 0.2 ns;
      while(AESL_ready_reg /= '1') loop
          wait until clk'event and clk = '1';
          wait for 0.2 ns;
      end loop;
      read_counter := 0;
      for i in 0 to Sy_V_DEPTH - 1 loop
          read_counter := read_counter + 1;
          esl_read_token(fp, token_line, token);
          token_tmp := esl_str2lv_hex(token, Sy_V_c_bitwidth);
          remain := i mod factor;
          if (factor = 4) then
              mem_tmp_8 (7 downto 0) := (others => '0');
              for j in 0 to Sy_V_c_bitwidth - 1 loop
                  mem_tmp_8 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (7 downto 0) := mem_tmp_8;
              elsif (remain = 1) then
                  mem_tmp (15 downto 8) := mem_tmp_8;
              elsif (remain = 2) then
                  mem_tmp (23 downto 16) := mem_tmp_8;
              elsif (remain = 3) then
                  mem_tmp (31 downto 24) := mem_tmp_8;
                  mem_Sy_V(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 2) then
              mem_tmp_16 (15 downto 0) := (others => '0');
              for j in 0 to Sy_V_c_bitwidth - 1 loop
                  mem_tmp_16 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (15 downto 0) := mem_tmp_16;
              elsif (remain = 1) then
                  mem_tmp (31 downto 16) := mem_tmp_16;
                  mem_Sy_V(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 1) then
              if (Sy_V_c_bitwidth < 32) then
                  mem_tmp_32 (31 downto 0) := (others => '0');
                  for j in 0 to Sy_V_c_bitwidth - 1 loop
                      mem_tmp_32 (j downto j) := token_tmp (j downto j);
                  end loop;
                  mem_Sy_V(i)(31 downto 0) := mem_tmp_32;
              else
                  mem_Sy_V(i) := token_tmp;
              end if;
          end if;
      end loop;
      remain := read_counter mod factor;
      if (factor = 4) then
          if (remain /= 0) then
              mem_Sy_V(Sy_V_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      elsif (factor = 2) then
          if (remain /= 0) then
              mem_Sy_V(Sy_V_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      end if;
      esl_read_token(fp, token_line, token);
      if(token(1 to 16) /= "[[/transaction]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      transaction_idx := transaction_idx + 1; 
  end loop;
  file_close(fp);
end process;
 
--------------------------Read file------------------------ 
 
-- Read data from file 
read_mode_V_file_process : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 128);
  variable    token_tmp : STD_LOGIC_VECTOR(mode_V_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    mem_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_8 : STD_LOGIC_VECTOR(8 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_16 : STD_LOGIC_VECTOR(16 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_32 : STD_LOGIC_VECTOR(32 - 1 downto 0) := (others => '0'); 
  variable    transaction_idx : INTEGER; 
  variable    i : INTEGER; 
  variable    j : INTEGER; 
  variable    factor : INTEGER; 
  variable    remain  :   INTEGER; 
  variable    read_counter :   INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (mode_V_c_bitwidth , factor);
  file_open(fstatus, fp, TV_IN_mode_V , READ_MODE);
  if(fstatus /= OPEN_OK) then
      assert false report "Open file " & TV_IN_mode_V & " failed!!!" severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  if(token(1 to 13) /= "[[[runtime]]]") then
      assert false report "ERROR: Simulation using HLS TB failed." severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
      wait until clk'event and clk = '1';
      wait for 0.2 ns;
      while(AESL_ready_reg /= '1') loop
          wait until clk'event and clk = '1';
          wait for 0.2 ns;
      end loop;
      read_counter := 0;
      for i in 0 to mode_V_DEPTH - 1 loop
          read_counter := read_counter + 1;
          esl_read_token(fp, token_line, token);
          token_tmp := esl_str2lv_hex(token, mode_V_c_bitwidth);
          remain := i mod factor;
          if (factor = 4) then
              mem_tmp_8 (7 downto 0) := (others => '0');
              for j in 0 to mode_V_c_bitwidth - 1 loop
                  mem_tmp_8 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (7 downto 0) := mem_tmp_8;
              elsif (remain = 1) then
                  mem_tmp (15 downto 8) := mem_tmp_8;
              elsif (remain = 2) then
                  mem_tmp (23 downto 16) := mem_tmp_8;
              elsif (remain = 3) then
                  mem_tmp (31 downto 24) := mem_tmp_8;
                  mem_mode_V(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 2) then
              mem_tmp_16 (15 downto 0) := (others => '0');
              for j in 0 to mode_V_c_bitwidth - 1 loop
                  mem_tmp_16 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (15 downto 0) := mem_tmp_16;
              elsif (remain = 1) then
                  mem_tmp (31 downto 16) := mem_tmp_16;
                  mem_mode_V(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 1) then
              if (mode_V_c_bitwidth < 32) then
                  mem_tmp_32 (31 downto 0) := (others => '0');
                  for j in 0 to mode_V_c_bitwidth - 1 loop
                      mem_tmp_32 (j downto j) := token_tmp (j downto j);
                  end loop;
                  mem_mode_V(i)(31 downto 0) := mem_tmp_32;
              else
                  mem_mode_V(i) := token_tmp;
              end if;
          end if;
      end loop;
      remain := read_counter mod factor;
      if (factor = 4) then
          if (remain /= 0) then
              mem_mode_V(mode_V_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      elsif (factor = 2) then
          if (remain /= 0) then
              mem_mode_V(mode_V_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      end if;
      esl_read_token(fp, token_line, token);
      if(token(1 to 16) /= "[[/transaction]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      transaction_idx := transaction_idx + 1; 
  end loop;
  file_close(fp);
end process;
 
--------------------------Read file------------------------ 
 
-- Read data from file 
read_relu_en_V_file_process : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 128);
  variable    token_tmp : STD_LOGIC_VECTOR(relu_en_V_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    mem_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_8 : STD_LOGIC_VECTOR(8 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_16 : STD_LOGIC_VECTOR(16 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_32 : STD_LOGIC_VECTOR(32 - 1 downto 0) := (others => '0'); 
  variable    transaction_idx : INTEGER; 
  variable    i : INTEGER; 
  variable    j : INTEGER; 
  variable    factor : INTEGER; 
  variable    remain  :   INTEGER; 
  variable    read_counter :   INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (relu_en_V_c_bitwidth , factor);
  file_open(fstatus, fp, TV_IN_relu_en_V , READ_MODE);
  if(fstatus /= OPEN_OK) then
      assert false report "Open file " & TV_IN_relu_en_V & " failed!!!" severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  if(token(1 to 13) /= "[[[runtime]]]") then
      assert false report "ERROR: Simulation using HLS TB failed." severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
      wait until clk'event and clk = '1';
      wait for 0.2 ns;
      while(AESL_ready_reg /= '1') loop
          wait until clk'event and clk = '1';
          wait for 0.2 ns;
      end loop;
      read_counter := 0;
      for i in 0 to relu_en_V_DEPTH - 1 loop
          read_counter := read_counter + 1;
          esl_read_token(fp, token_line, token);
          token_tmp := esl_str2lv_hex(token, relu_en_V_c_bitwidth);
          remain := i mod factor;
          if (factor = 4) then
              mem_tmp_8 (7 downto 0) := (others => '0');
              for j in 0 to relu_en_V_c_bitwidth - 1 loop
                  mem_tmp_8 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (7 downto 0) := mem_tmp_8;
              elsif (remain = 1) then
                  mem_tmp (15 downto 8) := mem_tmp_8;
              elsif (remain = 2) then
                  mem_tmp (23 downto 16) := mem_tmp_8;
              elsif (remain = 3) then
                  mem_tmp (31 downto 24) := mem_tmp_8;
                  mem_relu_en_V(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 2) then
              mem_tmp_16 (15 downto 0) := (others => '0');
              for j in 0 to relu_en_V_c_bitwidth - 1 loop
                  mem_tmp_16 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (15 downto 0) := mem_tmp_16;
              elsif (remain = 1) then
                  mem_tmp (31 downto 16) := mem_tmp_16;
                  mem_relu_en_V(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 1) then
              if (relu_en_V_c_bitwidth < 32) then
                  mem_tmp_32 (31 downto 0) := (others => '0');
                  for j in 0 to relu_en_V_c_bitwidth - 1 loop
                      mem_tmp_32 (j downto j) := token_tmp (j downto j);
                  end loop;
                  mem_relu_en_V(i)(31 downto 0) := mem_tmp_32;
              else
                  mem_relu_en_V(i) := token_tmp;
              end if;
          end if;
      end loop;
      remain := read_counter mod factor;
      if (factor = 4) then
          if (remain /= 0) then
              mem_relu_en_V(relu_en_V_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      elsif (factor = 2) then
          if (remain /= 0) then
              mem_relu_en_V(relu_en_V_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      end if;
      esl_read_token(fp, token_line, token);
      if(token(1 to 16) /= "[[/transaction]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      transaction_idx := transaction_idx + 1; 
  end loop;
  file_close(fp);
end process;
 
end behav;
