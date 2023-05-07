set SynModuleInfo {
  {SRCNAME Conv_Pipeline_Input_Channel MODELNAME Conv_Pipeline_Input_Channel RTLNAME Conv_Conv_Pipeline_Input_Channel
    SUBMODULES {
      {MODELNAME Conv_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME Conv_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Conv_flow_control_loop_pipe_sequential_init RTLNAME Conv_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME Conv_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME Conv MODELNAME Conv RTLNAME Conv IS_TOP 1
    SUBMODULES {
      {MODELNAME Conv_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME Conv_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME Conv_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME Conv_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME Conv_sdiv_18ns_9ns_16_22_seq_1 RTLNAME Conv_sdiv_18ns_9ns_16_22_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 21 ALLOW_PRAGMA 1}
      {MODELNAME Conv_mul_16ns_32ns_48_2_1 RTLNAME Conv_mul_16ns_32ns_48_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME Conv_mul_8ns_8ns_16_1_1 RTLNAME Conv_mul_8ns_8ns_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Conv_mul_32ns_16ns_48_2_1 RTLNAME Conv_mul_32ns_16ns_48_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME Conv_mul_32s_16ns_48_2_1 RTLNAME Conv_mul_32s_16ns_48_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME Conv_mul_mul_16ns_16ns_32_4_1 RTLNAME Conv_mul_mul_16ns_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Conv_mac_mul_sub_16ns_8ns_8ns_16_4_1 RTLNAME Conv_mac_mul_sub_16ns_8ns_8ns_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Conv_mul_mul_16ns_8ns_16_4_1 RTLNAME Conv_mul_mul_16ns_8ns_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Conv_mul_mul_16s_16ns_32_4_1 RTLNAME Conv_mul_mul_16s_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Conv_mac_muladd_16ns_16ns_48ns_48_4_1 RTLNAME Conv_mac_muladd_16ns_16ns_48ns_48_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Conv_mac_muladd_16s_16ns_48s_48_4_1 RTLNAME Conv_mac_muladd_16s_16ns_48s_48_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Conv_mul_mul_8ns_16ns_24_4_1 RTLNAME Conv_mul_mul_8ns_16ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Conv_gmem_m_axi RTLNAME Conv_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME Conv_control_s_axi RTLNAME Conv_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
