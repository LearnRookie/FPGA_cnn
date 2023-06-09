// ==============================================================
// File generated on Thu Apr 20 21:03:11 +0800 2023
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "gmem"
#define AUTOTB_TVIN_gmem  "../tv/cdatafile/c.Conv.autotvin_gmem.dat"
#define AUTOTB_TVOUT_gmem  "../tv/cdatafile/c.Conv.autotvout_gmem.dat"
// wrapc file define: "CHin_V"
#define AUTOTB_TVIN_CHin_V  "../tv/cdatafile/c.Conv.autotvin_CHin_V.dat"
// wrapc file define: "Hin_V"
#define AUTOTB_TVIN_Hin_V  "../tv/cdatafile/c.Conv.autotvin_Hin_V.dat"
// wrapc file define: "Win_V"
#define AUTOTB_TVIN_Win_V  "../tv/cdatafile/c.Conv.autotvin_Win_V.dat"
// wrapc file define: "CHout_V"
#define AUTOTB_TVIN_CHout_V  "../tv/cdatafile/c.Conv.autotvin_CHout_V.dat"
// wrapc file define: "Kx_V"
#define AUTOTB_TVIN_Kx_V  "../tv/cdatafile/c.Conv.autotvin_Kx_V.dat"
// wrapc file define: "Ky_V"
#define AUTOTB_TVIN_Ky_V  "../tv/cdatafile/c.Conv.autotvin_Ky_V.dat"
// wrapc file define: "Sx_V"
#define AUTOTB_TVIN_Sx_V  "../tv/cdatafile/c.Conv.autotvin_Sx_V.dat"
// wrapc file define: "Sy_V"
#define AUTOTB_TVIN_Sy_V  "../tv/cdatafile/c.Conv.autotvin_Sy_V.dat"
// wrapc file define: "mode_V"
#define AUTOTB_TVIN_mode_V  "../tv/cdatafile/c.Conv.autotvin_mode_V.dat"
// wrapc file define: "relu_en_V"
#define AUTOTB_TVIN_relu_en_V  "../tv/cdatafile/c.Conv.autotvin_relu_en_V.dat"
// wrapc file define: "feature_in"
#define AUTOTB_TVIN_feature_in  "../tv/cdatafile/c.Conv.autotvin_feature_in.dat"
// wrapc file define: "W"
#define AUTOTB_TVIN_W  "../tv/cdatafile/c.Conv.autotvin_W.dat"
// wrapc file define: "bias"
#define AUTOTB_TVIN_bias  "../tv/cdatafile/c.Conv.autotvin_bias.dat"
// wrapc file define: "feature_out"
#define AUTOTB_TVIN_feature_out  "../tv/cdatafile/c.Conv.autotvin_feature_out.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "gmem"
#define AUTOTB_TVOUT_PC_gmem  "../tv/rtldatafile/rtl.Conv.autotvout_gmem.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			gmem_depth = 0;
			CHin_V_depth = 0;
			Hin_V_depth = 0;
			Win_V_depth = 0;
			CHout_V_depth = 0;
			Kx_V_depth = 0;
			Ky_V_depth = 0;
			Sx_V_depth = 0;
			Sy_V_depth = 0;
			mode_V_depth = 0;
			relu_en_V_depth = 0;
			feature_in_depth = 0;
			W_depth = 0;
			bias_depth = 0;
			feature_out_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{gmem " << gmem_depth << "}\n";
			total_list << "{CHin_V " << CHin_V_depth << "}\n";
			total_list << "{Hin_V " << Hin_V_depth << "}\n";
			total_list << "{Win_V " << Win_V_depth << "}\n";
			total_list << "{CHout_V " << CHout_V_depth << "}\n";
			total_list << "{Kx_V " << Kx_V_depth << "}\n";
			total_list << "{Ky_V " << Ky_V_depth << "}\n";
			total_list << "{Sx_V " << Sx_V_depth << "}\n";
			total_list << "{Sy_V " << Sy_V_depth << "}\n";
			total_list << "{mode_V " << mode_V_depth << "}\n";
			total_list << "{relu_en_V " << relu_en_V_depth << "}\n";
			total_list << "{feature_in " << feature_in_depth << "}\n";
			total_list << "{W " << W_depth << "}\n";
			total_list << "{bias " << bias_depth << "}\n";
			total_list << "{feature_out " << feature_out_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int gmem_depth;
		int CHin_V_depth;
		int Hin_V_depth;
		int Win_V_depth;
		int CHout_V_depth;
		int Kx_V_depth;
		int Ky_V_depth;
		int Sx_V_depth;
		int Sy_V_depth;
		int mode_V_depth;
		int relu_en_V_depth;
		int feature_in_depth;
		int W_depth;
		int bias_depth;
		int feature_out_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void Conv (
ap_uint<16> CHin,
ap_uint<16> Hin,
ap_uint<16> Win,
ap_uint<16> CHout,
ap_uint<8> Kx,
ap_uint<8> Ky,
ap_uint<8> Sx,
ap_uint<8> Sy,
ap_uint<1> mode,
ap_uint<1> relu_en,
float* feature_in,
float* W,
float* bias,
float* feature_out);

void AESL_WRAP_Conv (
ap_uint<16> CHin,
ap_uint<16> Hin,
ap_uint<16> Win,
ap_uint<16> CHout,
ap_uint<8> Kx,
ap_uint<8> Ky,
ap_uint<8> Sx,
ap_uint<8> Sy,
ap_uint<1> mode,
ap_uint<1> relu_en,
float* feature_in,
float* W,
float* bias,
float* feature_out)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "gmem"
		aesl_fh.read(AUTOTB_TVOUT_PC_gmem, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_gmem, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_gmem, AESL_token); // data

			sc_bv<32> *gmem_pc_buffer = new sc_bv<32>[4];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'gmem', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'gmem', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					gmem_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_gmem, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_gmem))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: gmem
				{
					// bitslice(31, 0)
					// {
						// celement: feature_in(31, 0)
						// {
							sc_lv<32>* feature_in_lv0_0_0_1 = new sc_lv<32>[4];
						// }
						// celement: W(31, 0)
						// {
							sc_lv<32>* W_lv0_0_0_1 = new sc_lv<32>[4];
						// }
						// celement: bias(31, 0)
						// {
							sc_lv<32>* bias_lv0_0_0_1 = new sc_lv<32>[4];
						// }
						// celement: feature_out(31, 0)
						// {
							sc_lv<32>* feature_out_lv0_0_0_1 = new sc_lv<32>[4];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: feature_in(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								hls_map_index++;
							}
						}
						// celement: W(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								hls_map_index++;
							}
						}
						// celement: bias(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								hls_map_index++;
							}
						}
						// celement: feature_out(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(feature_out[0]) != NULL) // check the null address if the c port is array or others
								{
									feature_out_lv0_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(gmem_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: feature_in(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : feature_in[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : feature_in[0]
								// output_left_conversion : *(int*)&feature_in[i_0]
								// output_type_conversion : (feature_in_lv0_0_0_1[hls_map_index]).to_uint64()
								hls_map_index++;
							}
						}
						// celement: W(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : W[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : W[0]
								// output_left_conversion : *(int*)&W[i_0]
								// output_type_conversion : (W_lv0_0_0_1[hls_map_index]).to_uint64()
								hls_map_index++;
							}
						}
						// celement: bias(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : bias[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : bias[0]
								// output_left_conversion : *(int*)&bias[i_0]
								// output_type_conversion : (bias_lv0_0_0_1[hls_map_index]).to_uint64()
								hls_map_index++;
							}
						}
						// celement: feature_out(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : feature_out[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : feature_out[0]
								// output_left_conversion : *(int*)&feature_out[i_0]
								// output_type_conversion : (feature_out_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(feature_out[0]) != NULL) // check the null address if the c port is array or others
								{
									*(int*)&feature_out[i_0] = (feature_out_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] gmem_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "gmem"
		char* tvin_gmem = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_gmem);
		char* tvout_gmem = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_gmem);

		// "CHin_V"
		char* tvin_CHin_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_CHin_V);

		// "Hin_V"
		char* tvin_Hin_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Hin_V);

		// "Win_V"
		char* tvin_Win_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Win_V);

		// "CHout_V"
		char* tvin_CHout_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_CHout_V);

		// "Kx_V"
		char* tvin_Kx_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Kx_V);

		// "Ky_V"
		char* tvin_Ky_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Ky_V);

		// "Sx_V"
		char* tvin_Sx_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Sx_V);

		// "Sy_V"
		char* tvin_Sy_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Sy_V);

		// "mode_V"
		char* tvin_mode_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_mode_V);

		// "relu_en_V"
		char* tvin_relu_en_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_relu_en_V);

		// "feature_in"
		char* tvin_feature_in = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_feature_in);

		// "W"
		char* tvin_W = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_W);

		// "bias"
		char* tvin_bias = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_bias);

		// "feature_out"
		char* tvin_feature_out = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_feature_out);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_gmem, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_gmem, tvin_gmem);

		sc_bv<32>* gmem_tvin_wrapc_buffer = new sc_bv<32>[4];

		// RTL Name: gmem
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: feature_in(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : feature_in[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : feature_in[0]
						// regulate_c_name       : feature_in
						// input_type_conversion : *(int*)&feature_in[i_0]
						if (&(feature_in[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> feature_in_tmp_mem;
							feature_in_tmp_mem = *(int*)&feature_in[i_0];
							gmem_tvin_wrapc_buffer[hls_map_index].range(31, 0) = feature_in_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
				// celement: W(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : W[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : W[0]
						// regulate_c_name       : W
						// input_type_conversion : *(int*)&W[i_0]
						if (&(W[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> W_tmp_mem;
							W_tmp_mem = *(int*)&W[i_0];
							gmem_tvin_wrapc_buffer[hls_map_index].range(31, 0) = W_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
				// celement: bias(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : bias[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : bias[0]
						// regulate_c_name       : bias
						// input_type_conversion : *(int*)&bias[i_0]
						if (&(bias[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> bias_tmp_mem;
							bias_tmp_mem = *(int*)&bias[i_0];
							gmem_tvin_wrapc_buffer[hls_map_index].range(31, 0) = bias_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
				// celement: feature_out(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : feature_out[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : feature_out[0]
						// regulate_c_name       : feature_out
						// input_type_conversion : *(int*)&feature_out[i_0]
						if (&(feature_out[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> feature_out_tmp_mem;
							feature_out_tmp_mem = *(int*)&feature_out[i_0];
							gmem_tvin_wrapc_buffer[hls_map_index].range(31, 0) = feature_out_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 4; i++)
		{
			sprintf(tvin_gmem, "%s\n", (gmem_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_gmem, tvin_gmem);
		}

		tcl_file.set_num(4, &tcl_file.gmem_depth);
		sprintf(tvin_gmem, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_gmem, tvin_gmem);

		// release memory allocation
		delete [] gmem_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_CHin_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_CHin_V, tvin_CHin_V);

		sc_bv<16> CHin_V_tvin_wrapc_buffer;

		// RTL Name: CHin_V
		{
			// bitslice(15, 0)
			{
				// celement: CHin.V(15, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : CHin
						// sub_1st_elem          : 
						// ori_name_1st_elem     : CHin
						// regulate_c_name       : CHin_V
						// input_type_conversion : (CHin).to_string(2).c_str()
						if (&(CHin) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> CHin_V_tmp_mem;
							CHin_V_tmp_mem = (CHin).to_string(2).c_str();
							CHin_V_tvin_wrapc_buffer.range(15, 0) = CHin_V_tmp_mem.range(15, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_CHin_V, "%s\n", (CHin_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_CHin_V, tvin_CHin_V);
		}

		tcl_file.set_num(1, &tcl_file.CHin_V_depth);
		sprintf(tvin_CHin_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_CHin_V, tvin_CHin_V);

		// [[transaction]]
		sprintf(tvin_Hin_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Hin_V, tvin_Hin_V);

		sc_bv<16> Hin_V_tvin_wrapc_buffer;

		// RTL Name: Hin_V
		{
			// bitslice(15, 0)
			{
				// celement: Hin.V(15, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : Hin
						// sub_1st_elem          : 
						// ori_name_1st_elem     : Hin
						// regulate_c_name       : Hin_V
						// input_type_conversion : (Hin).to_string(2).c_str()
						if (&(Hin) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> Hin_V_tmp_mem;
							Hin_V_tmp_mem = (Hin).to_string(2).c_str();
							Hin_V_tvin_wrapc_buffer.range(15, 0) = Hin_V_tmp_mem.range(15, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_Hin_V, "%s\n", (Hin_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Hin_V, tvin_Hin_V);
		}

		tcl_file.set_num(1, &tcl_file.Hin_V_depth);
		sprintf(tvin_Hin_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Hin_V, tvin_Hin_V);

		// [[transaction]]
		sprintf(tvin_Win_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Win_V, tvin_Win_V);

		sc_bv<16> Win_V_tvin_wrapc_buffer;

		// RTL Name: Win_V
		{
			// bitslice(15, 0)
			{
				// celement: Win.V(15, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : Win
						// sub_1st_elem          : 
						// ori_name_1st_elem     : Win
						// regulate_c_name       : Win_V
						// input_type_conversion : (Win).to_string(2).c_str()
						if (&(Win) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> Win_V_tmp_mem;
							Win_V_tmp_mem = (Win).to_string(2).c_str();
							Win_V_tvin_wrapc_buffer.range(15, 0) = Win_V_tmp_mem.range(15, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_Win_V, "%s\n", (Win_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Win_V, tvin_Win_V);
		}

		tcl_file.set_num(1, &tcl_file.Win_V_depth);
		sprintf(tvin_Win_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Win_V, tvin_Win_V);

		// [[transaction]]
		sprintf(tvin_CHout_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_CHout_V, tvin_CHout_V);

		sc_bv<16> CHout_V_tvin_wrapc_buffer;

		// RTL Name: CHout_V
		{
			// bitslice(15, 0)
			{
				// celement: CHout.V(15, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : CHout
						// sub_1st_elem          : 
						// ori_name_1st_elem     : CHout
						// regulate_c_name       : CHout_V
						// input_type_conversion : (CHout).to_string(2).c_str()
						if (&(CHout) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> CHout_V_tmp_mem;
							CHout_V_tmp_mem = (CHout).to_string(2).c_str();
							CHout_V_tvin_wrapc_buffer.range(15, 0) = CHout_V_tmp_mem.range(15, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_CHout_V, "%s\n", (CHout_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_CHout_V, tvin_CHout_V);
		}

		tcl_file.set_num(1, &tcl_file.CHout_V_depth);
		sprintf(tvin_CHout_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_CHout_V, tvin_CHout_V);

		// [[transaction]]
		sprintf(tvin_Kx_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Kx_V, tvin_Kx_V);

		sc_bv<8> Kx_V_tvin_wrapc_buffer;

		// RTL Name: Kx_V
		{
			// bitslice(7, 0)
			{
				// celement: Kx.V(7, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : Kx
						// sub_1st_elem          : 
						// ori_name_1st_elem     : Kx
						// regulate_c_name       : Kx_V
						// input_type_conversion : (Kx).to_string(2).c_str()
						if (&(Kx) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> Kx_V_tmp_mem;
							Kx_V_tmp_mem = (Kx).to_string(2).c_str();
							Kx_V_tvin_wrapc_buffer.range(7, 0) = Kx_V_tmp_mem.range(7, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_Kx_V, "%s\n", (Kx_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Kx_V, tvin_Kx_V);
		}

		tcl_file.set_num(1, &tcl_file.Kx_V_depth);
		sprintf(tvin_Kx_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Kx_V, tvin_Kx_V);

		// [[transaction]]
		sprintf(tvin_Ky_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Ky_V, tvin_Ky_V);

		sc_bv<8> Ky_V_tvin_wrapc_buffer;

		// RTL Name: Ky_V
		{
			// bitslice(7, 0)
			{
				// celement: Ky.V(7, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : Ky
						// sub_1st_elem          : 
						// ori_name_1st_elem     : Ky
						// regulate_c_name       : Ky_V
						// input_type_conversion : (Ky).to_string(2).c_str()
						if (&(Ky) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> Ky_V_tmp_mem;
							Ky_V_tmp_mem = (Ky).to_string(2).c_str();
							Ky_V_tvin_wrapc_buffer.range(7, 0) = Ky_V_tmp_mem.range(7, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_Ky_V, "%s\n", (Ky_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Ky_V, tvin_Ky_V);
		}

		tcl_file.set_num(1, &tcl_file.Ky_V_depth);
		sprintf(tvin_Ky_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Ky_V, tvin_Ky_V);

		// [[transaction]]
		sprintf(tvin_Sx_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Sx_V, tvin_Sx_V);

		sc_bv<8> Sx_V_tvin_wrapc_buffer;

		// RTL Name: Sx_V
		{
			// bitslice(7, 0)
			{
				// celement: Sx.V(7, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : Sx
						// sub_1st_elem          : 
						// ori_name_1st_elem     : Sx
						// regulate_c_name       : Sx_V
						// input_type_conversion : (Sx).to_string(2).c_str()
						if (&(Sx) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> Sx_V_tmp_mem;
							Sx_V_tmp_mem = (Sx).to_string(2).c_str();
							Sx_V_tvin_wrapc_buffer.range(7, 0) = Sx_V_tmp_mem.range(7, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_Sx_V, "%s\n", (Sx_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Sx_V, tvin_Sx_V);
		}

		tcl_file.set_num(1, &tcl_file.Sx_V_depth);
		sprintf(tvin_Sx_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Sx_V, tvin_Sx_V);

		// [[transaction]]
		sprintf(tvin_Sy_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Sy_V, tvin_Sy_V);

		sc_bv<8> Sy_V_tvin_wrapc_buffer;

		// RTL Name: Sy_V
		{
			// bitslice(7, 0)
			{
				// celement: Sy.V(7, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : Sy
						// sub_1st_elem          : 
						// ori_name_1st_elem     : Sy
						// regulate_c_name       : Sy_V
						// input_type_conversion : (Sy).to_string(2).c_str()
						if (&(Sy) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> Sy_V_tmp_mem;
							Sy_V_tmp_mem = (Sy).to_string(2).c_str();
							Sy_V_tvin_wrapc_buffer.range(7, 0) = Sy_V_tmp_mem.range(7, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_Sy_V, "%s\n", (Sy_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Sy_V, tvin_Sy_V);
		}

		tcl_file.set_num(1, &tcl_file.Sy_V_depth);
		sprintf(tvin_Sy_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Sy_V, tvin_Sy_V);

		// [[transaction]]
		sprintf(tvin_mode_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_mode_V, tvin_mode_V);

		sc_bv<1> mode_V_tvin_wrapc_buffer;

		// RTL Name: mode_V
		{
			// bitslice(0, 0)
			{
				// celement: mode.V(0, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : mode
						// sub_1st_elem          : 
						// ori_name_1st_elem     : mode
						// regulate_c_name       : mode_V
						// input_type_conversion : (mode).to_string(2).c_str()
						if (&(mode) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> mode_V_tmp_mem;
							mode_V_tmp_mem = (mode).to_string(2).c_str();
							mode_V_tvin_wrapc_buffer.range(0, 0) = mode_V_tmp_mem.range(0, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_mode_V, "%s\n", (mode_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_mode_V, tvin_mode_V);
		}

		tcl_file.set_num(1, &tcl_file.mode_V_depth);
		sprintf(tvin_mode_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_mode_V, tvin_mode_V);

		// [[transaction]]
		sprintf(tvin_relu_en_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_relu_en_V, tvin_relu_en_V);

		sc_bv<1> relu_en_V_tvin_wrapc_buffer;

		// RTL Name: relu_en_V
		{
			// bitslice(0, 0)
			{
				// celement: relu_en.V(0, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : relu_en
						// sub_1st_elem          : 
						// ori_name_1st_elem     : relu_en
						// regulate_c_name       : relu_en_V
						// input_type_conversion : (relu_en).to_string(2).c_str()
						if (&(relu_en) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> relu_en_V_tmp_mem;
							relu_en_V_tmp_mem = (relu_en).to_string(2).c_str();
							relu_en_V_tvin_wrapc_buffer.range(0, 0) = relu_en_V_tmp_mem.range(0, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_relu_en_V, "%s\n", (relu_en_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_relu_en_V, tvin_relu_en_V);
		}

		tcl_file.set_num(1, &tcl_file.relu_en_V_depth);
		sprintf(tvin_relu_en_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_relu_en_V, tvin_relu_en_V);

		// [[transaction]]
		sprintf(tvin_feature_in, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_feature_in, tvin_feature_in);

		sc_bv<32> feature_in_tvin_wrapc_buffer;

		// RTL Name: feature_in
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_feature_in, "%s\n", (feature_in_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_feature_in, tvin_feature_in);
		}

		tcl_file.set_num(1, &tcl_file.feature_in_depth);
		sprintf(tvin_feature_in, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_feature_in, tvin_feature_in);

		// [[transaction]]
		sprintf(tvin_W, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_W, tvin_W);

		sc_bv<32> W_tvin_wrapc_buffer;

		// RTL Name: W
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_W, "%s\n", (W_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_W, tvin_W);
		}

		tcl_file.set_num(1, &tcl_file.W_depth);
		sprintf(tvin_W, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_W, tvin_W);

		// [[transaction]]
		sprintf(tvin_bias, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_bias, tvin_bias);

		sc_bv<32> bias_tvin_wrapc_buffer;

		// RTL Name: bias
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_bias, "%s\n", (bias_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_bias, tvin_bias);
		}

		tcl_file.set_num(1, &tcl_file.bias_depth);
		sprintf(tvin_bias, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_bias, tvin_bias);

		// [[transaction]]
		sprintf(tvin_feature_out, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_feature_out, tvin_feature_out);

		sc_bv<32> feature_out_tvin_wrapc_buffer;

		// RTL Name: feature_out
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_feature_out, "%s\n", (feature_out_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_feature_out, tvin_feature_out);
		}

		tcl_file.set_num(1, &tcl_file.feature_out_depth);
		sprintf(tvin_feature_out, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_feature_out, tvin_feature_out);

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		Conv(CHin, Hin, Win, CHout, Kx, Ky, Sx, Sy, mode, relu_en, feature_in, W, bias, feature_out);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_gmem, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_gmem, tvout_gmem);

		sc_bv<32>* gmem_tvout_wrapc_buffer = new sc_bv<32>[4];

		// RTL Name: gmem
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: feature_in(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : feature_in[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : feature_in[0]
						// regulate_c_name       : feature_in
						// input_type_conversion : *(int*)&feature_in[i_0]
						if (&(feature_in[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> feature_in_tmp_mem;
							feature_in_tmp_mem = *(int*)&feature_in[i_0];
							gmem_tvout_wrapc_buffer[hls_map_index].range(31, 0) = feature_in_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
				// celement: W(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : W[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : W[0]
						// regulate_c_name       : W
						// input_type_conversion : *(int*)&W[i_0]
						if (&(W[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> W_tmp_mem;
							W_tmp_mem = *(int*)&W[i_0];
							gmem_tvout_wrapc_buffer[hls_map_index].range(31, 0) = W_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
				// celement: bias(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : bias[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : bias[0]
						// regulate_c_name       : bias
						// input_type_conversion : *(int*)&bias[i_0]
						if (&(bias[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> bias_tmp_mem;
							bias_tmp_mem = *(int*)&bias[i_0];
							gmem_tvout_wrapc_buffer[hls_map_index].range(31, 0) = bias_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
				// celement: feature_out(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : feature_out[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : feature_out[0]
						// regulate_c_name       : feature_out
						// input_type_conversion : *(int*)&feature_out[i_0]
						if (&(feature_out[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> feature_out_tmp_mem;
							feature_out_tmp_mem = *(int*)&feature_out[i_0];
							gmem_tvout_wrapc_buffer[hls_map_index].range(31, 0) = feature_out_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 4; i++)
		{
			sprintf(tvout_gmem, "%s\n", (gmem_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_gmem, tvout_gmem);
		}

		tcl_file.set_num(4, &tcl_file.gmem_depth);
		sprintf(tvout_gmem, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_gmem, tvout_gmem);

		// release memory allocation
		delete [] gmem_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "gmem"
		delete [] tvin_gmem;
		delete [] tvout_gmem;
		// release memory allocation: "CHin_V"
		delete [] tvin_CHin_V;
		// release memory allocation: "Hin_V"
		delete [] tvin_Hin_V;
		// release memory allocation: "Win_V"
		delete [] tvin_Win_V;
		// release memory allocation: "CHout_V"
		delete [] tvin_CHout_V;
		// release memory allocation: "Kx_V"
		delete [] tvin_Kx_V;
		// release memory allocation: "Ky_V"
		delete [] tvin_Ky_V;
		// release memory allocation: "Sx_V"
		delete [] tvin_Sx_V;
		// release memory allocation: "Sy_V"
		delete [] tvin_Sy_V;
		// release memory allocation: "mode_V"
		delete [] tvin_mode_V;
		// release memory allocation: "relu_en_V"
		delete [] tvin_relu_en_V;
		// release memory allocation: "feature_in"
		delete [] tvin_feature_in;
		// release memory allocation: "W"
		delete [] tvin_W;
		// release memory allocation: "bias"
		delete [] tvin_bias;
		// release memory allocation: "feature_out"
		delete [] tvin_feature_out;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

