#include <systemc>
#include <list>
#include <map>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;

namespace bcsim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(1<<10)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
struct __cosim_s2__ { char data[2]; };
struct __cosim_s1__ { char data[1]; };
extern "C" void Conv(int*, __cosim_s2__, __cosim_s2__, __cosim_s2__, __cosim_s2__, __cosim_s1__, __cosim_s1__, __cosim_s1__, __cosim_s1__, __cosim_s1__, __cosim_s1__, int, int, int, int);
extern "C" void apatb_Conv_hw(__cosim_s2__* __xlx_apatb_param_CHin, __cosim_s2__* __xlx_apatb_param_Hin, __cosim_s2__* __xlx_apatb_param_Win, __cosim_s2__* __xlx_apatb_param_CHout, __cosim_s1__* __xlx_apatb_param_Kx, __cosim_s1__* __xlx_apatb_param_Ky, __cosim_s1__* __xlx_apatb_param_Sx, __cosim_s1__* __xlx_apatb_param_Sy, __cosim_s1__* __xlx_apatb_param_mode, __cosim_s1__* __xlx_apatb_param_relu_en, volatile void * __xlx_apatb_param_feature_in, volatile void * __xlx_apatb_param_W, volatile void * __xlx_apatb_param_bias, volatile void * __xlx_apatb_param_feature_out) {
  // Collect __xlx_feature_in_W_bias_feature_out__tmp_vec
  vector<sc_bv<32> >__xlx_feature_in_W_bias_feature_out__tmp_vec;
  for (int j = 0, e = 1073741823; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_feature_in)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_feature_in)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_feature_in)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_feature_in)[j*4+3];
    __xlx_feature_in_W_bias_feature_out__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_feature_in = 1073741823;
  int __xlx_offset_param_feature_in = 0;
  int __xlx_offset_byte_param_feature_in = 0*4;
  for (int j = 0, e = 1073741823; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_W)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_W)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_W)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_W)[j*4+3];
    __xlx_feature_in_W_bias_feature_out__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_W = 1073741823;
  int __xlx_offset_param_W = 1073741823;
  int __xlx_offset_byte_param_W = 1073741823*4;
  for (int j = 0, e = 1073741823; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_bias)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_bias)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_bias)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_bias)[j*4+3];
    __xlx_feature_in_W_bias_feature_out__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_bias = 1073741823;
  int __xlx_offset_param_bias = 2147483646;
  int __xlx_offset_byte_param_bias = 2147483646*4;
  for (int j = 0, e = 1073741823; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_feature_out)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_feature_out)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_feature_out)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_feature_out)[j*4+3];
    __xlx_feature_in_W_bias_feature_out__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_feature_out = 1073741823;
  int __xlx_offset_param_feature_out = 3221225469;
  int __xlx_offset_byte_param_feature_out = 3221225469*4;
  int* __xlx_feature_in_W_bias_feature_out__input_buffer= new int[__xlx_feature_in_W_bias_feature_out__tmp_vec.size()];
  for (int i = 0; i < __xlx_feature_in_W_bias_feature_out__tmp_vec.size(); ++i) {
    __xlx_feature_in_W_bias_feature_out__input_buffer[i] = __xlx_feature_in_W_bias_feature_out__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  Conv(__xlx_feature_in_W_bias_feature_out__input_buffer, *__xlx_apatb_param_CHin, *__xlx_apatb_param_Hin, *__xlx_apatb_param_Win, *__xlx_apatb_param_CHout, *__xlx_apatb_param_Kx, *__xlx_apatb_param_Ky, *__xlx_apatb_param_Sx, *__xlx_apatb_param_Sy, *__xlx_apatb_param_mode, *__xlx_apatb_param_relu_en, __xlx_offset_byte_param_feature_in, __xlx_offset_byte_param_W, __xlx_offset_byte_param_bias, __xlx_offset_byte_param_feature_out);
// print __xlx_apatb_param_feature_in
  sc_bv<32>*__xlx_feature_in_output_buffer = new sc_bv<32>[__xlx_size_param_feature_in];
  for (int i = 0; i < __xlx_size_param_feature_in; ++i) {
    __xlx_feature_in_output_buffer[i] = __xlx_feature_in_W_bias_feature_out__input_buffer[i+__xlx_offset_param_feature_in];
  }
  for (int i = 0; i < __xlx_size_param_feature_in; ++i) {
    ((char*)__xlx_apatb_param_feature_in)[i*4+0] = __xlx_feature_in_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_feature_in)[i*4+1] = __xlx_feature_in_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_feature_in)[i*4+2] = __xlx_feature_in_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_feature_in)[i*4+3] = __xlx_feature_in_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_W
  sc_bv<32>*__xlx_W_output_buffer = new sc_bv<32>[__xlx_size_param_W];
  for (int i = 0; i < __xlx_size_param_W; ++i) {
    __xlx_W_output_buffer[i] = __xlx_feature_in_W_bias_feature_out__input_buffer[i+__xlx_offset_param_W];
  }
  for (int i = 0; i < __xlx_size_param_W; ++i) {
    ((char*)__xlx_apatb_param_W)[i*4+0] = __xlx_W_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_W)[i*4+1] = __xlx_W_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_W)[i*4+2] = __xlx_W_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_W)[i*4+3] = __xlx_W_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_bias
  sc_bv<32>*__xlx_bias_output_buffer = new sc_bv<32>[__xlx_size_param_bias];
  for (int i = 0; i < __xlx_size_param_bias; ++i) {
    __xlx_bias_output_buffer[i] = __xlx_feature_in_W_bias_feature_out__input_buffer[i+__xlx_offset_param_bias];
  }
  for (int i = 0; i < __xlx_size_param_bias; ++i) {
    ((char*)__xlx_apatb_param_bias)[i*4+0] = __xlx_bias_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_bias)[i*4+1] = __xlx_bias_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_bias)[i*4+2] = __xlx_bias_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_bias)[i*4+3] = __xlx_bias_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_feature_out
  sc_bv<32>*__xlx_feature_out_output_buffer = new sc_bv<32>[__xlx_size_param_feature_out];
  for (int i = 0; i < __xlx_size_param_feature_out; ++i) {
    __xlx_feature_out_output_buffer[i] = __xlx_feature_in_W_bias_feature_out__input_buffer[i+__xlx_offset_param_feature_out];
  }
  for (int i = 0; i < __xlx_size_param_feature_out; ++i) {
    ((char*)__xlx_apatb_param_feature_out)[i*4+0] = __xlx_feature_out_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_feature_out)[i*4+1] = __xlx_feature_out_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_feature_out)[i*4+2] = __xlx_feature_out_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_feature_out)[i*4+3] = __xlx_feature_out_output_buffer[i].range(31, 24).to_uint();
  }
}
