; ModuleID = 'C:/D_File/FPGAprj/shousiACC/HLS_2022.1/conv_core/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"class.std::ios_base::Init" }
%"class.std::ios_base::Init" = type { i8 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: noinline
define void @apatb_Conv_ir(%"struct.ap_uint<16>"* nocapture readonly %CHin, %"struct.ap_uint<16>"* nocapture readonly %Hin, %"struct.ap_uint<16>"* nocapture readonly %Win, %"struct.ap_uint<16>"* nocapture readonly %CHout, %"struct.ap_uint<8>"* nocapture readonly %Kx, %"struct.ap_uint<8>"* nocapture readonly %Ky, %"struct.ap_uint<8>"* nocapture readonly %Sx, %"struct.ap_uint<8>"* nocapture readonly %Sy, %"struct.ap_uint<1>"* nocapture readonly %mode, %"struct.ap_uint<1>"* nocapture readonly %relu_en, float* noalias nocapture nonnull readonly %feature_in, float* noalias nocapture nonnull readonly %W, float* noalias nocapture nonnull readonly %bias, float* noalias nocapture nonnull %feature_out) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 8589934588)
  %feature_in_copy = bitcast i8* %malloccall to [2147483647 x float]*
  %malloccall1 = tail call i8* @malloc(i64 8589934588)
  %W_copy = bitcast i8* %malloccall1 to [2147483647 x float]*
  %malloccall2 = tail call i8* @malloc(i64 8589934588)
  %bias_copy = bitcast i8* %malloccall2 to [2147483647 x float]*
  %malloccall3 = tail call i8* @malloc(i64 8589934588)
  %feature_out_copy = bitcast i8* %malloccall3 to [2147483647 x float]*
  %0 = bitcast float* %feature_in to [2147483647 x float]*
  %1 = bitcast float* %W to [2147483647 x float]*
  %2 = bitcast float* %bias to [2147483647 x float]*
  %3 = bitcast float* %feature_out to [2147483647 x float]*
  call fastcc void @copy_in([2147483647 x float]* nonnull %0, [2147483647 x float]* %feature_in_copy, [2147483647 x float]* nonnull %1, [2147483647 x float]* %W_copy, [2147483647 x float]* nonnull %2, [2147483647 x float]* %bias_copy, [2147483647 x float]* nonnull %3, [2147483647 x float]* %feature_out_copy)
  %4 = getelementptr inbounds [2147483647 x float], [2147483647 x float]* %feature_in_copy, i32 0, i32 0
  %5 = getelementptr inbounds [2147483647 x float], [2147483647 x float]* %W_copy, i32 0, i32 0
  %6 = getelementptr inbounds [2147483647 x float], [2147483647 x float]* %bias_copy, i32 0, i32 0
  %7 = getelementptr inbounds [2147483647 x float], [2147483647 x float]* %feature_out_copy, i32 0, i32 0
  call void @apatb_Conv_hw(%"struct.ap_uint<16>"* %CHin, %"struct.ap_uint<16>"* %Hin, %"struct.ap_uint<16>"* %Win, %"struct.ap_uint<16>"* %CHout, %"struct.ap_uint<8>"* %Kx, %"struct.ap_uint<8>"* %Ky, %"struct.ap_uint<8>"* %Sx, %"struct.ap_uint<8>"* %Sy, %"struct.ap_uint<1>"* %mode, %"struct.ap_uint<1>"* %relu_en, float* %4, float* %5, float* %6, float* %7)
  call void @copy_back([2147483647 x float]* %0, [2147483647 x float]* %feature_in_copy, [2147483647 x float]* %1, [2147483647 x float]* %W_copy, [2147483647 x float]* %2, [2147483647 x float]* %bias_copy, [2147483647 x float]* %3, [2147483647 x float]* %feature_out_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  tail call void @free(i8* %malloccall3)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([2147483647 x float]* noalias readonly, [2147483647 x float]* noalias, [2147483647 x float]* noalias readonly, [2147483647 x float]* noalias, [2147483647 x float]* noalias readonly, [2147483647 x float]* noalias, [2147483647 x float]* noalias readonly, [2147483647 x float]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2147483647f32([2147483647 x float]* %1, [2147483647 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a2147483647f32([2147483647 x float]* %3, [2147483647 x float]* %2)
  call fastcc void @onebyonecpy_hls.p0a2147483647f32([2147483647 x float]* %5, [2147483647 x float]* %4)
  call fastcc void @onebyonecpy_hls.p0a2147483647f32([2147483647 x float]* %7, [2147483647 x float]* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a2147483647f32([2147483647 x float]* noalias, [2147483647 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [2147483647 x float]* %0, null
  %3 = icmp eq [2147483647 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2147483647 x float], [2147483647 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [2147483647 x float], [2147483647 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2147483647
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([2147483647 x float]* noalias, [2147483647 x float]* noalias readonly, [2147483647 x float]* noalias, [2147483647 x float]* noalias readonly, [2147483647 x float]* noalias, [2147483647 x float]* noalias readonly, [2147483647 x float]* noalias, [2147483647 x float]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2147483647f32([2147483647 x float]* %0, [2147483647 x float]* %1)
  call fastcc void @onebyonecpy_hls.p0a2147483647f32([2147483647 x float]* %2, [2147483647 x float]* %3)
  call fastcc void @onebyonecpy_hls.p0a2147483647f32([2147483647 x float]* %4, [2147483647 x float]* %5)
  call fastcc void @onebyonecpy_hls.p0a2147483647f32([2147483647 x float]* %6, [2147483647 x float]* %7)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_Conv_hw(%"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, float*, float*, float*, float*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([2147483647 x float]* noalias, [2147483647 x float]* noalias readonly, [2147483647 x float]* noalias, [2147483647 x float]* noalias readonly, [2147483647 x float]* noalias, [2147483647 x float]* noalias readonly, [2147483647 x float]* noalias, [2147483647 x float]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2147483647f32([2147483647 x float]* %6, [2147483647 x float]* %7)
  ret void
}

define void @Conv_hw_stub_wrapper(%"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, float*, float*, float*, float*) #4 {
entry:
  %14 = bitcast float* %10 to [2147483647 x float]*
  %15 = bitcast float* %11 to [2147483647 x float]*
  %16 = bitcast float* %12 to [2147483647 x float]*
  %17 = bitcast float* %13 to [2147483647 x float]*
  call void @copy_out([2147483647 x float]* null, [2147483647 x float]* %14, [2147483647 x float]* null, [2147483647 x float]* %15, [2147483647 x float]* null, [2147483647 x float]* %16, [2147483647 x float]* null, [2147483647 x float]* %17)
  %18 = bitcast [2147483647 x float]* %14 to float*
  %19 = bitcast [2147483647 x float]* %15 to float*
  %20 = bitcast [2147483647 x float]* %16 to float*
  %21 = bitcast [2147483647 x float]* %17 to float*
  call void @Conv_hw_stub(%"struct.ap_uint<16>"* %0, %"struct.ap_uint<16>"* %1, %"struct.ap_uint<16>"* %2, %"struct.ap_uint<16>"* %3, %"struct.ap_uint<8>"* %4, %"struct.ap_uint<8>"* %5, %"struct.ap_uint<8>"* %6, %"struct.ap_uint<8>"* %7, %"struct.ap_uint<1>"* %8, %"struct.ap_uint<1>"* %9, float* %18, float* %19, float* %20, float* %21)
  call void @copy_in([2147483647 x float]* null, [2147483647 x float]* %14, [2147483647 x float]* null, [2147483647 x float]* %15, [2147483647 x float]* null, [2147483647 x float]* %16, [2147483647 x float]* null, [2147483647 x float]* %17)
  ret void
}

declare void @Conv_hw_stub(%"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, float*, float*, float*, float*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
