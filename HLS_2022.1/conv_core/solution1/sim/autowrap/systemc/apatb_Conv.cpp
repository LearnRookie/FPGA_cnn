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

// wrapc file define:
#define AUTOTB_TVIN_CHin "../tv/cdatafile/c.Conv.autotvin_CHin.dat"
#define AUTOTB_TVOUT_CHin "../tv/cdatafile/c.Conv.autotvout_CHin.dat"
#define AUTOTB_TVIN_Hin "../tv/cdatafile/c.Conv.autotvin_Hin.dat"
#define AUTOTB_TVOUT_Hin "../tv/cdatafile/c.Conv.autotvout_Hin.dat"
#define AUTOTB_TVIN_Win "../tv/cdatafile/c.Conv.autotvin_Win.dat"
#define AUTOTB_TVOUT_Win "../tv/cdatafile/c.Conv.autotvout_Win.dat"
#define AUTOTB_TVIN_CHout "../tv/cdatafile/c.Conv.autotvin_CHout.dat"
#define AUTOTB_TVOUT_CHout "../tv/cdatafile/c.Conv.autotvout_CHout.dat"
#define AUTOTB_TVIN_Kx "../tv/cdatafile/c.Conv.autotvin_Kx.dat"
#define AUTOTB_TVOUT_Kx "../tv/cdatafile/c.Conv.autotvout_Kx.dat"
#define AUTOTB_TVIN_Ky "../tv/cdatafile/c.Conv.autotvin_Ky.dat"
#define AUTOTB_TVOUT_Ky "../tv/cdatafile/c.Conv.autotvout_Ky.dat"
#define AUTOTB_TVIN_Sx "../tv/cdatafile/c.Conv.autotvin_Sx.dat"
#define AUTOTB_TVOUT_Sx "../tv/cdatafile/c.Conv.autotvout_Sx.dat"
#define AUTOTB_TVIN_Sy "../tv/cdatafile/c.Conv.autotvin_Sy.dat"
#define AUTOTB_TVOUT_Sy "../tv/cdatafile/c.Conv.autotvout_Sy.dat"
#define AUTOTB_TVIN_mode "../tv/cdatafile/c.Conv.autotvin_mode.dat"
#define AUTOTB_TVOUT_mode "../tv/cdatafile/c.Conv.autotvout_mode.dat"
#define AUTOTB_TVIN_relu_en "../tv/cdatafile/c.Conv.autotvin_relu_en.dat"
#define AUTOTB_TVOUT_relu_en "../tv/cdatafile/c.Conv.autotvout_relu_en.dat"
#define AUTOTB_TVIN_feature_in "../tv/cdatafile/c.Conv.autotvin_feature_in.dat"
#define AUTOTB_TVOUT_feature_in "../tv/cdatafile/c.Conv.autotvout_feature_in.dat"
#define AUTOTB_TVIN_W "../tv/cdatafile/c.Conv.autotvin_W.dat"
#define AUTOTB_TVOUT_W "../tv/cdatafile/c.Conv.autotvout_W.dat"
#define AUTOTB_TVIN_bias "../tv/cdatafile/c.Conv.autotvin_bias.dat"
#define AUTOTB_TVOUT_bias "../tv/cdatafile/c.Conv.autotvout_bias.dat"
#define AUTOTB_TVIN_feature_out "../tv/cdatafile/c.Conv.autotvin_feature_out.dat"
#define AUTOTB_TVOUT_feature_out "../tv/cdatafile/c.Conv.autotvout_feature_out.dat"
#define AUTOTB_TVIN_gmem "../tv/cdatafile/c.Conv.autotvin_gmem.dat"
#define AUTOTB_TVOUT_gmem "../tv/cdatafile/c.Conv.autotvout_gmem.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_CHin "../tv/rtldatafile/rtl.Conv.autotvout_CHin.dat"
#define AUTOTB_TVOUT_PC_Hin "../tv/rtldatafile/rtl.Conv.autotvout_Hin.dat"
#define AUTOTB_TVOUT_PC_Win "../tv/rtldatafile/rtl.Conv.autotvout_Win.dat"
#define AUTOTB_TVOUT_PC_CHout "../tv/rtldatafile/rtl.Conv.autotvout_CHout.dat"
#define AUTOTB_TVOUT_PC_Kx "../tv/rtldatafile/rtl.Conv.autotvout_Kx.dat"
#define AUTOTB_TVOUT_PC_Ky "../tv/rtldatafile/rtl.Conv.autotvout_Ky.dat"
#define AUTOTB_TVOUT_PC_Sx "../tv/rtldatafile/rtl.Conv.autotvout_Sx.dat"
#define AUTOTB_TVOUT_PC_Sy "../tv/rtldatafile/rtl.Conv.autotvout_Sy.dat"
#define AUTOTB_TVOUT_PC_mode "../tv/rtldatafile/rtl.Conv.autotvout_mode.dat"
#define AUTOTB_TVOUT_PC_relu_en "../tv/rtldatafile/rtl.Conv.autotvout_relu_en.dat"
#define AUTOTB_TVOUT_PC_feature_in "../tv/rtldatafile/rtl.Conv.autotvout_feature_in.dat"
#define AUTOTB_TVOUT_PC_W "../tv/rtldatafile/rtl.Conv.autotvout_W.dat"
#define AUTOTB_TVOUT_PC_bias "../tv/rtldatafile/rtl.Conv.autotvout_bias.dat"
#define AUTOTB_TVOUT_PC_feature_out "../tv/rtldatafile/rtl.Conv.autotvout_feature_out.dat"
#define AUTOTB_TVOUT_PC_gmem "../tv/rtldatafile/rtl.Conv.autotvout_gmem.dat"


static const bool little_endian()
{
  int a = 1;
  return *(char*)&a == 1;
}

inline static void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    rev_endian(p, dbytes);
    vp = (p_dat) (p+dbytes);
  }

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
      if (little_endian()) {
        rev_endian(vp[i], wbytes);
      }
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};


inline static const std::string begin_str(int num)
{
  return std::string("[[transaction]]           ")
         .append(std::to_string(num))
         .append("\n");
}

inline static const std::string end_str()
{
  return std::string("[[/transaction]]\n");
}

const std::string formatData(unsigned char *pos, size_t wbits)
{
  bool LE = little_endian();
  size_t wbytes = (wbits+7)>>3;
  size_t i = LE ? wbytes-1 : 0;
  auto next = [&] () {
    auto c = pos[i];
    LE ? --i : ++i;
    return c;
  };
  std::ostringstream ss;
  ss << "0x";
  if (int t = (wbits & 0x7)) {
    if (t <= 4) {
      unsigned char mask = (1<<t)-1;
      ss << std::hex << std::setfill('0') << std::setw(1)
         << (int) (next() & mask);
      wbytes -= 1;
    }
  }
  for (size_t i = 0; i < wbytes; ++i) {
    ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
  }
  ss.put('\n');
  return ss.str();
}

static bool RTLOutputCheckAndReplacement(std::string &data)
{
  bool changed = false;
  for (size_t i = 2; i < data.size(); ++i) {
    if (data[i] == 'X' || data[i] == 'x') {
      data[i] = '0';
      changed = true;
    }
  }
  return changed;
}

struct SimException : public std::exception {
  const char *msg;
  const size_t line;
  SimException(const char *msg, const size_t line)
    : msg(msg), line(line)
  {
  }
};

template<size_t bit_width>
class PostCheck
{
  static const char *bad;
  static const char *err;
  std::fstream stream;
  std::string s;

  void send(char *p, ap_uint<bit_width> &data, size_t l, size_t rest)
  {
    if (rest == 0) {
      if (!little_endian()) {
        const size_t wbytes = (bit_width+7)>>3;
        rev_endian(p-wbytes, wbytes);
      }
    } else if (rest < 8) {
      *p = data.range(l+rest-1, l).to_uint();
      send(p+1, data, l+rest, 0);
    } else {
      *p = data.range(l+8-1, l).to_uint();
      send(p+1, data, l+8, rest-8);
    }
  }

  void readline()
  {
    std::getline(stream, s);
    if (stream.eof()) {
      throw SimException(bad, __LINE__);
    }
  }

public:
  char *param;
  size_t psize;
  size_t depth;

  PostCheck(const char *file)
  {
    stream.open(file);
    if (stream.fail()) {
      throw SimException(err, __LINE__);
    } else {
      readline();
      if (s != "[[[runtime]]]") {
        throw SimException(bad, __LINE__);
      }
    }
  }

  ~PostCheck() noexcept(false)
  {
    stream.close();
  }

  void run(size_t AESL_transaction_pc, size_t skip)
  {
    if (stream.peek() == '[') {
      readline();
    }

    for (size_t i = 0; i < skip; ++i) {
      readline();
    }

    bool foundX = false;
    for (size_t i = 0; i < depth; ++i) {
      readline();
      foundX |= RTLOutputCheckAndReplacement(s);
      ap_uint<bit_width> data(s.c_str(), 16);
      send(param+i*psize, data, 0, bit_width);
    }
    if (foundX) {
      std::cerr << "WARNING: [SIM 212-201] RTL produces unknown value "
                << "'x' or 'X' on some port, possible cause: "
                << "There are uninitialized variables in the design.\n";
    }

    if (stream.peek() == '[') {
      readline();
    }
  }
};

template<size_t bit_width>
const char* PostCheck<bit_width>::bad = "Bad TV file";

template<size_t bit_width>
const char* PostCheck<bit_width>::err = "Error on TV file";
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  CHin_depth = 0;
  Hin_depth = 0;
  Win_depth = 0;
  CHout_depth = 0;
  Kx_depth = 0;
  Ky_depth = 0;
  Sx_depth = 0;
  Sy_depth = 0;
  mode_depth = 0;
  relu_en_depth = 0;
  feature_in_depth = 0;
  W_depth = 0;
  bias_depth = 0;
  feature_out_depth = 0;
  gmem_depth = 0;
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
  total_list << "{CHin " << CHin_depth << "}\n";
  total_list << "{Hin " << Hin_depth << "}\n";
  total_list << "{Win " << Win_depth << "}\n";
  total_list << "{CHout " << CHout_depth << "}\n";
  total_list << "{Kx " << Kx_depth << "}\n";
  total_list << "{Ky " << Ky_depth << "}\n";
  total_list << "{Sx " << Sx_depth << "}\n";
  total_list << "{Sy " << Sy_depth << "}\n";
  total_list << "{mode " << mode_depth << "}\n";
  total_list << "{relu_en " << relu_en_depth << "}\n";
  total_list << "{feature_in " << feature_in_depth << "}\n";
  total_list << "{W " << W_depth << "}\n";
  total_list << "{bias " << bias_depth << "}\n";
  total_list << "{feature_out " << feature_out_depth << "}\n";
  total_list << "{gmem " << gmem_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int CHin_depth;
    int Hin_depth;
    int Win_depth;
    int CHout_depth;
    int Kx_depth;
    int Ky_depth;
    int Sx_depth;
    int Sy_depth;
    int mode_depth;
    int relu_en_depth;
    int feature_in_depth;
    int W_depth;
    int bias_depth;
    int feature_out_depth;
    int gmem_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};


struct __cosim_s2__ { char data[2]; };
struct __cosim_s1__ { char data[1]; };
extern "C" void Conv_hw_stub_wrapper(__cosim_s2__*, __cosim_s2__*, __cosim_s2__*, __cosim_s2__*, __cosim_s1__*, __cosim_s1__*, __cosim_s1__*, __cosim_s1__*, __cosim_s1__*, __cosim_s1__*, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_Conv_hw(__cosim_s2__* __xlx_apatb_param_CHin, __cosim_s2__* __xlx_apatb_param_Hin, __cosim_s2__* __xlx_apatb_param_Win, __cosim_s2__* __xlx_apatb_param_CHout, __cosim_s1__* __xlx_apatb_param_Kx, __cosim_s1__* __xlx_apatb_param_Ky, __cosim_s1__* __xlx_apatb_param_Sx, __cosim_s1__* __xlx_apatb_param_Sy, __cosim_s1__* __xlx_apatb_param_mode, __cosim_s1__* __xlx_apatb_param_relu_en, volatile void * __xlx_apatb_param_feature_in, volatile void * __xlx_apatb_param_W, volatile void * __xlx_apatb_param_bias, volatile void * __xlx_apatb_param_feature_out) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(4147483645);
aesl_fh.read(AUTOTB_TVOUT_PC_gmem, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_feature_in, 1073741823, 0);
tr.send<4>((char*)__xlx_apatb_param_W, 1073741823, 1073741823);
tr.send<4>((char*)__xlx_apatb_param_bias, 1073741823, 2147483646);
tr.send<4>((char*)__xlx_apatb_param_feature_out, 926258176, 3221225469);
}
#else
try {
static PostCheck<32> pc(AUTOTB_TVOUT_PC_gmem);
pc.psize = 4;
pc.param = (char*)__xlx_apatb_param_feature_in;
pc.depth = 1073741823;
pc.run(AESL_transaction_pc, 0);pc.param = (char*)__xlx_apatb_param_W;
pc.depth = 1073741823;
pc.run(AESL_transaction_pc, 0);
pc.param = (char*)__xlx_apatb_param_bias;
pc.depth = 1073741823;
pc.run(AESL_transaction_pc, 0);
pc.param = (char*)__xlx_apatb_param_feature_out;
pc.depth = 926258176;
pc.run(AESL_transaction_pc, 0);

} catch (SimException &e) {
  std::cout << "at line " << e.line << " occurred exception, " << e.msg << "\n";
}
#endif

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_feature_in = 0;
unsigned __xlx_offset_byte_param_W = 0;
unsigned __xlx_offset_byte_param_bias = 0;
unsigned __xlx_offset_byte_param_feature_out = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_gmem, 'b');
transaction<32> tr(4147483645);
__xlx_offset_byte_param_feature_in = 0*4;
if (__xlx_apatb_param_feature_in) {
  tr.import<4>((char*)__xlx_apatb_param_feature_in, 1073741823, 0);
}
__xlx_offset_byte_param_W = 1073741823*4;
if (__xlx_apatb_param_W) {
  tr.import<4>((char*)__xlx_apatb_param_W, 1073741823, 0);
}
__xlx_offset_byte_param_bias = 2147483646*4;
if (__xlx_apatb_param_bias) {
  tr.import<4>((char*)__xlx_apatb_param_bias, 1073741823, 0);
}
__xlx_offset_byte_param_feature_out = 3221225469*4;
if (__xlx_apatb_param_feature_out) {
  tr.import<4>((char*)__xlx_apatb_param_feature_out, 926258176, 0);
}
aesl_fh.write(AUTOTB_TVIN_gmem, tr.p, tr.tbytes);
tcl_file.set_num(4147483645, &tcl_file.gmem_depth);
}
#else
aesl_fh.touch(AUTOTB_TVIN_gmem);
{
aesl_fh.write(AUTOTB_TVIN_gmem, begin_str(AESL_transaction));
__xlx_offset_byte_param_feature_in = 0*4;
if (__xlx_apatb_param_feature_in) {
for (size_t i = 0; i < 1073741823; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_feature_in + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
__xlx_offset_byte_param_W = 1073741823*4;
if (__xlx_apatb_param_W) {
for (size_t i = 0; i < 1073741823; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_W + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
__xlx_offset_byte_param_bias = 2147483646*4;
if (__xlx_apatb_param_bias) {
for (size_t i = 0; i < 1073741823; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_bias + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
__xlx_offset_byte_param_feature_out = 3221225469*4;
if (__xlx_apatb_param_feature_out) {
for (size_t i = 0; i < 926258176; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_feature_out + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
tcl_file.set_num(4147483645, &tcl_file.gmem_depth);
aesl_fh.write(AUTOTB_TVIN_gmem, end_str());
}
#endif
// print CHin Transactions
{
aesl_fh.write(AUTOTB_TVIN_CHin, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_CHin;
aesl_fh.write(AUTOTB_TVIN_CHin, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.CHin_depth);
aesl_fh.write(AUTOTB_TVIN_CHin, end_str());
}

// print Hin Transactions
{
aesl_fh.write(AUTOTB_TVIN_Hin, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_Hin;
aesl_fh.write(AUTOTB_TVIN_Hin, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.Hin_depth);
aesl_fh.write(AUTOTB_TVIN_Hin, end_str());
}

// print Win Transactions
{
aesl_fh.write(AUTOTB_TVIN_Win, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_Win;
aesl_fh.write(AUTOTB_TVIN_Win, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.Win_depth);
aesl_fh.write(AUTOTB_TVIN_Win, end_str());
}

// print CHout Transactions
{
aesl_fh.write(AUTOTB_TVIN_CHout, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_CHout;
aesl_fh.write(AUTOTB_TVIN_CHout, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.CHout_depth);
aesl_fh.write(AUTOTB_TVIN_CHout, end_str());
}

// print Kx Transactions
{
aesl_fh.write(AUTOTB_TVIN_Kx, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_Kx;
aesl_fh.write(AUTOTB_TVIN_Kx, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.Kx_depth);
aesl_fh.write(AUTOTB_TVIN_Kx, end_str());
}

// print Ky Transactions
{
aesl_fh.write(AUTOTB_TVIN_Ky, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_Ky;
aesl_fh.write(AUTOTB_TVIN_Ky, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.Ky_depth);
aesl_fh.write(AUTOTB_TVIN_Ky, end_str());
}

// print Sx Transactions
{
aesl_fh.write(AUTOTB_TVIN_Sx, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_Sx;
aesl_fh.write(AUTOTB_TVIN_Sx, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.Sx_depth);
aesl_fh.write(AUTOTB_TVIN_Sx, end_str());
}

// print Sy Transactions
{
aesl_fh.write(AUTOTB_TVIN_Sy, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_Sy;
aesl_fh.write(AUTOTB_TVIN_Sy, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.Sy_depth);
aesl_fh.write(AUTOTB_TVIN_Sy, end_str());
}

// print mode Transactions
{
aesl_fh.write(AUTOTB_TVIN_mode, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_mode;
aesl_fh.write(AUTOTB_TVIN_mode, formatData(pos, 1));
}
  tcl_file.set_num(1, &tcl_file.mode_depth);
aesl_fh.write(AUTOTB_TVIN_mode, end_str());
}

// print relu_en Transactions
{
aesl_fh.write(AUTOTB_TVIN_relu_en, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_relu_en;
aesl_fh.write(AUTOTB_TVIN_relu_en, formatData(pos, 1));
}
  tcl_file.set_num(1, &tcl_file.relu_en_depth);
aesl_fh.write(AUTOTB_TVIN_relu_en, end_str());
}

// print feature_in Transactions
{
aesl_fh.write(AUTOTB_TVIN_feature_in, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_feature_in;
aesl_fh.write(AUTOTB_TVIN_feature_in, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.feature_in_depth);
aesl_fh.write(AUTOTB_TVIN_feature_in, end_str());
}

// print W Transactions
{
aesl_fh.write(AUTOTB_TVIN_W, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_W;
aesl_fh.write(AUTOTB_TVIN_W, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.W_depth);
aesl_fh.write(AUTOTB_TVIN_W, end_str());
}

// print bias Transactions
{
aesl_fh.write(AUTOTB_TVIN_bias, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_bias;
aesl_fh.write(AUTOTB_TVIN_bias, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.bias_depth);
aesl_fh.write(AUTOTB_TVIN_bias, end_str());
}

// print feature_out Transactions
{
aesl_fh.write(AUTOTB_TVIN_feature_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_feature_out;
aesl_fh.write(AUTOTB_TVIN_feature_out, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.feature_out_depth);
aesl_fh.write(AUTOTB_TVIN_feature_out, end_str());
}

CodeState = CALL_C_DUT;
Conv_hw_stub_wrapper(__xlx_apatb_param_CHin, __xlx_apatb_param_Hin, __xlx_apatb_param_Win, __xlx_apatb_param_CHout, __xlx_apatb_param_Kx, __xlx_apatb_param_Ky, __xlx_apatb_param_Sx, __xlx_apatb_param_Sy, __xlx_apatb_param_mode, __xlx_apatb_param_relu_en, __xlx_apatb_param_feature_in, __xlx_apatb_param_W, __xlx_apatb_param_bias, __xlx_apatb_param_feature_out);
CodeState = DUMP_OUTPUTS;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_gmem, 'b');
transaction<32> tr(4147483645);
__xlx_offset_byte_param_feature_in = 0*4;
if (__xlx_apatb_param_feature_in) {
  tr.import<4>((char*)__xlx_apatb_param_feature_in, 1073741823, 0);
}
__xlx_offset_byte_param_W = 1073741823*4;
if (__xlx_apatb_param_W) {
  tr.import<4>((char*)__xlx_apatb_param_W, 1073741823, 0);
}
__xlx_offset_byte_param_bias = 2147483646*4;
if (__xlx_apatb_param_bias) {
  tr.import<4>((char*)__xlx_apatb_param_bias, 1073741823, 0);
}
__xlx_offset_byte_param_feature_out = 3221225469*4;
if (__xlx_apatb_param_feature_out) {
  tr.import<4>((char*)__xlx_apatb_param_feature_out, 926258176, 0);
}
aesl_fh.write(AUTOTB_TVOUT_gmem, tr.p, tr.tbytes);
tcl_file.set_num(4147483645, &tcl_file.gmem_depth);
}
#else
aesl_fh.touch(AUTOTB_TVOUT_gmem);
{
aesl_fh.write(AUTOTB_TVOUT_gmem, begin_str(AESL_transaction));
__xlx_offset_byte_param_feature_in = 0*4;
if (__xlx_apatb_param_feature_in) {
for (size_t i = 0; i < 1073741823; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_feature_in + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_gmem, s);
}
}
__xlx_offset_byte_param_W = 1073741823*4;
if (__xlx_apatb_param_W) {
for (size_t i = 0; i < 1073741823; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_W + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_gmem, s);
}
}
__xlx_offset_byte_param_bias = 2147483646*4;
if (__xlx_apatb_param_bias) {
for (size_t i = 0; i < 1073741823; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_bias + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_gmem, s);
}
}
__xlx_offset_byte_param_feature_out = 3221225469*4;
if (__xlx_apatb_param_feature_out) {
for (size_t i = 0; i < 926258176; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_feature_out + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_gmem, s);
}
}
tcl_file.set_num(4147483645, &tcl_file.gmem_depth);
aesl_fh.write(AUTOTB_TVOUT_gmem, end_str());
}
#endif
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
