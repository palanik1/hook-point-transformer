; ModuleID = 'extracted.c'
source_filename = "extracted.c"
target datalayout = "e-m:e-p:64:64-i64:64-n32:64-S128"
target triple = "bpf"

%struct.anon.3 = type { [2 x i32]*, i32*, %struct.ctl_value*, [16 x i32]*, [0 x i32]* }
%struct.ctl_value = type { %union.anon.4 }
%union.anon.4 = type { i64 }
%struct.anon.5 = type { [1 x i32]*, %struct.vip_definition*, %struct.vip_meta*, [512 x i32]*, [0 x i32]* }
%struct.vip_definition = type { %union.anon.6, i16, i8 }
%union.anon.6 = type { [4 x i32] }
%struct.vip_meta = type { i32, i32 }
%struct.anon.7 = type { [12 x i32]*, [4 x i32]*, [4 x i32]*, [128 x i32]*, [0 x i32]* }
%struct.anon.8 = type { [9 x i32]*, %struct.flow_key*, %struct.real_pos_lru*, [1000 x i32]*, [0 x i32]* }
%struct.flow_key = type { %union.anon.9, %union.anon.10, %union.anon.11, i8 }
%union.anon.9 = type { [4 x i32] }
%union.anon.10 = type { [4 x i32] }
%union.anon.11 = type { i32 }
%struct.real_pos_lru = type { i32, i64 }
%struct.anon.12 = type { [2 x i32]*, i32*, i32*, [33554944 x i32]*, [0 x i32]* }
%struct.anon.13 = type { [2 x i32]*, i32*, %struct.real_definition*, [4096 x i32]*, [0 x i32]* }
%struct.real_definition = type { %union.anon.14, i8 }
%union.anon.14 = type { [4 x i32] }
%struct.anon.15 = type { [6 x i32]*, i32*, %struct.lb_stats*, [4096 x i32]*, [0 x i32]* }
%struct.lb_stats = type { i64, i64 }
%struct.anon.16 = type { [6 x i32]*, i32*, %struct.lb_stats*, [1024 x i32]*, [0 x i32]* }
%struct.anon.17 = type { [2 x i32]*, i32*, i32*, [16777214 x i32]*, [0 x i32]* }
%struct.anon.18 = type { [12 x i32]*, [4 x i32]*, [4 x i32]*, [128 x i32]*, [0 x i32]* }
%struct.anon.19 = type { [6 x i32]*, i32*, %struct.decap_stats*, [1024 x i32]*, [0 x i32]* }
%struct.decap_stats = type { i64, i64, i64 }
%struct.__sk_buff = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i32, i32, %union.anon, i64, i32, i32, %union.anon.2 }
%union.anon = type { %struct.bpf_flow_keys* }
%struct.bpf_flow_keys = type { i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, %union.anon.0, i32, i32 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [4 x i32], [4 x i32] }
%union.anon.2 = type { %struct.bpf_sock* }
%struct.bpf_sock = type { i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, [4 x i32], i32 }
%struct.packet_description = type { %struct.flow_key, i32, i8, i8 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.20 }
%union.anon.20 = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@_license = dso_local global [4 x i8] c"GPL\00", section "license", align 1, !dbg !0
@ctl_array = dso_local global %struct.anon.3 zeroinitializer, section ".maps", align 8, !dbg !74
@vip_map = dso_local global %struct.anon.5 zeroinitializer, section ".maps", align 8, !dbg !112
@lru_mapping = dso_local global %struct.anon.7 zeroinitializer, section ".maps", align 8, !dbg !150
@fallback_cache = dso_local global %struct.anon.8 zeroinitializer, section ".maps", align 8, !dbg !169
@ch_rings = dso_local global %struct.anon.12 zeroinitializer, section ".maps", align 8, !dbg !211
@reals = dso_local global %struct.anon.13 zeroinitializer, section ".maps", align 8, !dbg !224
@reals_stats = dso_local global %struct.anon.15 zeroinitializer, section ".maps", align 8, !dbg !246
@stats = dso_local global %struct.anon.16 zeroinitializer, section ".maps", align 8, !dbg !262
@server_id_map = dso_local global %struct.anon.17 zeroinitializer, section ".maps", align 8, !dbg !275
@flow_debug_maps = dso_local global %struct.anon.18 zeroinitializer, section ".maps", align 8, !dbg !288
@decap_counters = dso_local global %struct.anon.19 zeroinitializer, section ".maps", align 8, !dbg !298
@llvm.used = appending global [13 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @_license, i32 0, i32 0), i8* bitcast (i32 (%struct.__sk_buff*)* @balancer_ingress to i8*), i8* bitcast (%struct.anon.12* @ch_rings to i8*), i8* bitcast (%struct.anon.3* @ctl_array to i8*), i8* bitcast (%struct.anon.19* @decap_counters to i8*), i8* bitcast (%struct.anon.8* @fallback_cache to i8*), i8* bitcast (%struct.anon.18* @flow_debug_maps to i8*), i8* bitcast (%struct.anon.7* @lru_mapping to i8*), i8* bitcast (%struct.anon.13* @reals to i8*), i8* bitcast (%struct.anon.15* @reals_stats to i8*), i8* bitcast (%struct.anon.17* @server_id_map to i8*), i8* bitcast (%struct.anon.16* @stats to i8*), i8* bitcast (%struct.anon.5* @vip_map to i8*)], section "llvm.metadata"

; Function Attrs: nounwind
define dso_local i32 @balancer_ingress(%struct.__sk_buff* %0) #0 section "xdp" !dbg !343 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.real_pos_lru, align 8
  call void @llvm.dbg.declare(metadata %struct.real_pos_lru* %3, metadata !450, metadata !DIExpression()), !dbg !478
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 4
  call void @llvm.dbg.declare(metadata [4 x i32]* %9, metadata !531, metadata !DIExpression()), !dbg !608
  %10 = alloca %struct.packet_description, align 4
  call void @llvm.dbg.declare(metadata %struct.packet_description* %10, metadata !496, metadata !DIExpression()), !dbg !660
  %11 = alloca %struct.vip_definition, align 4
  call void @llvm.dbg.declare(metadata %struct.vip_definition* %11, metadata !497, metadata !DIExpression()), !dbg !661
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.real_pos_lru, align 8
  call void @llvm.dbg.declare(metadata %struct.real_pos_lru* %21, metadata !450, metadata !DIExpression()), !dbg !662
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [6 x i8], align 1
  call void @llvm.dbg.declare(metadata [6 x i8]* %27, metadata !666, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.declare(metadata [6 x i8]* %27, metadata !666, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.declare(metadata [6 x i8]* %27, metadata !666, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.declare(metadata [6 x i8]* %27, metadata !666, metadata !DIExpression()), !dbg !727
  %28 = alloca %struct.packet_description, align 4
  call void @llvm.dbg.declare(metadata %struct.packet_description* %28, metadata !496, metadata !DIExpression()), !dbg !731
  %29 = alloca %struct.vip_definition, align 4
  call void @llvm.dbg.declare(metadata %struct.vip_definition* %29, metadata !497, metadata !DIExpression()), !dbg !732
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.__sk_buff* %0, metadata !436, metadata !DIExpression()), !dbg !733
  %38 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %0, i64 0, i32 15, !dbg !734
  %39 = load i32, i32* %38, align 4, !dbg !734, !tbaa !735
  %40 = zext i32 %39 to i64, !dbg !741
  %41 = inttoptr i64 %40 to i8*, !dbg !742
  call void @llvm.dbg.value(metadata i8* %41, metadata !437, metadata !DIExpression()), !dbg !733
  %42 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %0, i64 0, i32 16, !dbg !743
  %43 = load i32, i32* %42, align 8, !dbg !743, !tbaa !744
  %44 = zext i32 %43 to i64, !dbg !745
  %45 = inttoptr i64 %44 to i8*, !dbg !746
  call void @llvm.dbg.value(metadata i8* %45, metadata !438, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i8* %41, metadata !439, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i32 14, metadata !449, metadata !DIExpression()), !dbg !733
  %46 = getelementptr i8, i8* %41, i64 14, !dbg !747
  %47 = icmp ugt i8* %46, %45, !dbg !749
  br i1 %47, label %1508, label %48, !dbg !750

48:                                               ; preds = %1
  %49 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %0, i64 0, i32 4, !dbg !751
  %50 = load i32, i32* %49, align 8, !dbg !751, !tbaa !752
  call void @llvm.dbg.value(metadata i32 %50, metadata !448, metadata !DIExpression()), !dbg !733
  switch i32 %50, label %1508 [
    i32 8, label %51
    i32 56710, label %762
  ], !dbg !753

51:                                               ; preds = %48
  call void @llvm.dbg.value(metadata %struct.__sk_buff* %0, metadata !489, metadata !DIExpression()) #3, !dbg !754
  call void @llvm.dbg.value(metadata i64 14, metadata !490, metadata !DIExpression()) #3, !dbg !754
  call void @llvm.dbg.value(metadata i1 false, metadata !491, metadata !DIExpression()) #3, !dbg !754
  call void @llvm.dbg.value(metadata i8* %41, metadata !492, metadata !DIExpression()) #3, !dbg !754
  call void @llvm.dbg.value(metadata i8* %45, metadata !493, metadata !DIExpression()) #3, !dbg !754
  call void @llvm.dbg.value(metadata %struct.real_definition* null, metadata !495, metadata !DIExpression()) #3, !dbg !754
  %52 = bitcast %struct.packet_description* %28 to i8*, !dbg !755
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %52) #3, !dbg !755
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(48) %52, i8 0, i64 48, i1 false) #3, !dbg !731
  %53 = bitcast %struct.vip_definition* %29 to i8*, !dbg !756
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %53) #3, !dbg !756
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(20) %53, i8 0, i64 20, i1 false) #3, !dbg !732
  %54 = bitcast i32* %30 to i8*, !dbg !757
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %54) #3, !dbg !757
  %55 = bitcast i32* %31 to i8*, !dbg !758
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %55) #3, !dbg !758
  call void @llvm.dbg.value(metadata i32 0, metadata !505, metadata !DIExpression()) #3, !dbg !754
  store i32 0, i32* %31, align 4, !dbg !759, !tbaa !760
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !633, metadata !DIExpression()) #3, !dbg !761
  call void @llvm.dbg.value(metadata i64 14, metadata !635, metadata !DIExpression()) #3, !dbg !761
  call void @llvm.dbg.value(metadata i8* %41, metadata !637, metadata !DIExpression()) #3, !dbg !761
  call void @llvm.dbg.value(metadata i8* %45, metadata !638, metadata !DIExpression()) #3, !dbg !761
  call void @llvm.dbg.value(metadata i1 false, metadata !639, metadata !DIExpression()) #3, !dbg !761
  call void @llvm.dbg.value(metadata i8* %46, metadata !642, metadata !DIExpression()) #3, !dbg !761
  %56 = getelementptr i8, i8* %41, i64 34, !dbg !762
  %57 = icmp ugt i8* %56, %45, !dbg !764
  br i1 %57, label %760, label %58, !dbg !765

58:                                               ; preds = %51
  %59 = load i8, i8* %46, align 4, !dbg !766
  %60 = and i8 %59, 15, !dbg !766
  %61 = icmp eq i8 %60, 5, !dbg !768
  br i1 %61, label %62, label %760, !dbg !769

62:                                               ; preds = %58
  %63 = getelementptr i8, i8* %41, i64 15, !dbg !770
  %64 = load i8, i8* %63, align 1, !dbg !770, !tbaa !771
  %65 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 3, !dbg !774
  store i8 %64, i8* %65, align 1, !dbg !775, !tbaa !776
  %66 = getelementptr i8, i8* %41, i64 23, !dbg !779
  %67 = load i8, i8* %66, align 1, !dbg !779, !tbaa !780
  %68 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 3, !dbg !781
  store i8 %67, i8* %68, align 4, !dbg !782, !tbaa !783
  %69 = getelementptr i8, i8* %41, i64 16, !dbg !784
  %70 = bitcast i8* %69 to i16*, !dbg !784
  %71 = load i16, i16* %70, align 2, !dbg !784, !tbaa !785
  %72 = tail call i16 @llvm.bswap.i16(i16 %71) #3
  call void @llvm.dbg.value(metadata i64 34, metadata !635, metadata !DIExpression()) #3, !dbg !761
  %73 = getelementptr i8, i8* %41, i64 20, !dbg !786
  %74 = bitcast i8* %73 to i16*, !dbg !786
  %75 = load i16, i16* %74, align 2, !dbg !786, !tbaa !788
  %76 = and i16 %75, -193, !dbg !789
  %77 = icmp eq i16 %76, 0, !dbg !789
  br i1 %77, label %78, label %760, !dbg !790

78:                                               ; preds = %62
  %79 = icmp eq i8 %67, 1, !dbg !791
  br i1 %79, label %80, label %163, !dbg !792

80:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i8* %41, metadata !710, metadata !DIExpression()) #3, !dbg !793
  call void @llvm.dbg.value(metadata i8* %45, metadata !711, metadata !DIExpression()) #3, !dbg !793
  call void @llvm.dbg.value(metadata i64 34, metadata !712, metadata !DIExpression()) #3, !dbg !793
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !713, metadata !DIExpression()) #3, !dbg !793
  call void @llvm.dbg.value(metadata i8* %41, metadata !714, metadata !DIExpression(DW_OP_plus_uconst, 34, DW_OP_stack_value)) #3, !dbg !793
  %81 = getelementptr i8, i8* %41, i64 42, !dbg !794
  %82 = icmp ugt i8* %81, %45, !dbg !796
  br i1 %82, label %760, label %83, !dbg !797

83:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i8* %56, metadata !714, metadata !DIExpression()) #3, !dbg !793
  call void @llvm.dbg.value(metadata i8* %56, metadata !714, metadata !DIExpression()) #3, !dbg !793
  %84 = load i8, i8* %56, align 4, !dbg !798, !tbaa !799
  switch i8 %84, label %760 [
    i8 8, label %85
    i8 3, label %145
  ], !dbg !801

85:                                               ; preds = %83
  call void @llvm.dbg.value(metadata i8* %41, metadata !676, metadata !DIExpression()) #3, !dbg !802
  call void @llvm.dbg.value(metadata i8* %45, metadata !677, metadata !DIExpression()) #3, !dbg !802
  call void @llvm.dbg.value(metadata i32 0, metadata !702, metadata !DIExpression()) #3, !dbg !802
  call void @llvm.dbg.value(metadata i64 0, metadata !703, metadata !DIExpression()) #3, !dbg !802
  call void @llvm.dbg.value(metadata i64 0, metadata !704, metadata !DIExpression()) #3, !dbg !802
  call void @llvm.dbg.value(metadata i64 14, metadata !704, metadata !DIExpression()) #3, !dbg !802
  call void @llvm.dbg.value(metadata i8* %46, metadata !678, metadata !DIExpression()) #3, !dbg !802
  call void @llvm.dbg.value(metadata i64 34, metadata !704, metadata !DIExpression()) #3, !dbg !802
  call void @llvm.dbg.value(metadata i8* %56, metadata !679, metadata !DIExpression()) #3, !dbg !802
  store i8 0, i8* %56, align 4, !dbg !803, !tbaa !799
  %86 = getelementptr i8, i8* %41, i64 36, !dbg !804
  %87 = bitcast i8* %86 to i16*, !dbg !804
  %88 = load i16, i16* %87, align 2, !dbg !805, !tbaa !806
  %89 = add i16 %88, 8, !dbg !805
  store i16 %89, i16* %87, align 2, !dbg !805, !tbaa !806
  %90 = getelementptr i8, i8* %41, i64 22, !dbg !807
  store i8 64, i8* %90, align 4, !dbg !808, !tbaa !809
  %91 = getelementptr i8, i8* %41, i64 30, !dbg !810
  %92 = bitcast i8* %91 to i32*, !dbg !810
  %93 = load i32, i32* %92, align 4, !dbg !810, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %93, metadata !702, metadata !DIExpression()) #3, !dbg !802
  %94 = getelementptr i8, i8* %41, i64 26, !dbg !812
  %95 = bitcast i8* %94 to i32*, !dbg !812
  %96 = load i32, i32* %95, align 4, !dbg !812, !tbaa !813
  store i32 %96, i32* %92, align 4, !dbg !814, !tbaa !811
  store i32 %93, i32* %95, align 4, !dbg !815, !tbaa !813
  %97 = getelementptr i8, i8* %41, i64 24, !dbg !816
  %98 = bitcast i8* %97 to i16*, !dbg !816
  call void @llvm.dbg.value(metadata i8* %46, metadata !817, metadata !DIExpression()) #3, !dbg !828
  %99 = bitcast i8* %46 to i16*, !dbg !830
  call void @llvm.dbg.value(metadata i16* %99, metadata !825, metadata !DIExpression()) #3, !dbg !828
  call void @llvm.dbg.value(metadata i32 0, metadata !826, metadata !DIExpression()) #3, !dbg !831
  call void @llvm.dbg.value(metadata i16* %70, metadata !825, metadata !DIExpression()) #3, !dbg !828
  %100 = load i16, i16* %99, align 2, !dbg !832, !tbaa !835
  %101 = zext i16 %100 to i64, !dbg !832
  call void @llvm.dbg.value(metadata i32 1, metadata !826, metadata !DIExpression()) #3, !dbg !831
  %102 = getelementptr i8, i8* %41, i64 18, !dbg !836
  %103 = bitcast i8* %102 to i16*, !dbg !836
  call void @llvm.dbg.value(metadata i16* %103, metadata !825, metadata !DIExpression()) #3, !dbg !828
  %104 = zext i16 %71 to i64, !dbg !832
  call void @llvm.dbg.value(metadata i32 2, metadata !826, metadata !DIExpression()) #3, !dbg !831
  call void @llvm.dbg.value(metadata i16* %74, metadata !825, metadata !DIExpression()) #3, !dbg !828
  %105 = load i16, i16* %103, align 2, !dbg !832, !tbaa !835
  %106 = zext i16 %105 to i64, !dbg !832
  call void @llvm.dbg.value(metadata i32 3, metadata !826, metadata !DIExpression()) #3, !dbg !831
  %107 = bitcast i8* %90 to i16*, !dbg !836
  call void @llvm.dbg.value(metadata i16* %107, metadata !825, metadata !DIExpression()) #3, !dbg !828
  %108 = zext i16 %75 to i64, !dbg !832
  call void @llvm.dbg.value(metadata i32 4, metadata !826, metadata !DIExpression()) #3, !dbg !831
  call void @llvm.dbg.value(metadata i16* %98, metadata !825, metadata !DIExpression()) #3, !dbg !828
  %109 = load i16, i16* %107, align 2, !dbg !832, !tbaa !835
  %110 = zext i16 %109 to i64, !dbg !832
  call void @llvm.dbg.value(metadata i32 5, metadata !826, metadata !DIExpression()) #3, !dbg !831
  call void @llvm.dbg.value(metadata i8* %94, metadata !825, metadata !DIExpression()) #3, !dbg !828
  call void @llvm.dbg.value(metadata i32 6, metadata !826, metadata !DIExpression()) #3, !dbg !831
  %111 = and i32 %93, 65535, !dbg !832
  call void @llvm.dbg.value(metadata i32 7, metadata !826, metadata !DIExpression()) #3, !dbg !831
  call void @llvm.dbg.value(metadata i8* %91, metadata !825, metadata !DIExpression()) #3, !dbg !828
  %112 = lshr i32 %93, 16, !dbg !832
  call void @llvm.dbg.value(metadata i32 8, metadata !826, metadata !DIExpression()) #3, !dbg !831
  %113 = and i32 %96, 65535, !dbg !832
  call void @llvm.dbg.value(metadata i32 9, metadata !826, metadata !DIExpression()) #3, !dbg !831
  %114 = lshr i32 %96, 16, !dbg !832
  %115 = add nuw nsw i32 %112, %111, !dbg !837
  %116 = add nuw nsw i32 %115, %113, !dbg !837
  %117 = add nuw nsw i32 %116, %114, !dbg !837
  %118 = zext i32 %117 to i64, !dbg !837
  %119 = add nuw nsw i64 %108, %104, !dbg !837
  %120 = add nuw nsw i64 %119, %101, !dbg !837
  %121 = add nuw nsw i64 %120, %118, !dbg !837
  %122 = add nuw nsw i64 %121, %106, !dbg !837
  %123 = add nuw nsw i64 %122, %110, !dbg !837
  call void @llvm.dbg.value(metadata i32 10, metadata !826, metadata !DIExpression()) #3, !dbg !831
  call void @llvm.dbg.value(metadata i32 0, metadata !838, metadata !DIExpression()) #3, !dbg !844
  call void @llvm.dbg.value(metadata i64 %123, metadata !843, metadata !DIExpression()) #3, !dbg !844
  %124 = lshr i64 %123, 16, !dbg !846
  %125 = icmp eq i64 %124, 0, !dbg !846
  %126 = and i64 %123, 65535, !dbg !851
  %127 = add nuw nsw i64 %126, %124, !dbg !851
  %128 = select i1 %125, i64 %123, i64 %127, !dbg !851
  call void @llvm.dbg.value(metadata i64 %128, metadata !843, metadata !DIExpression()) #3, !dbg !844
  call void @llvm.dbg.value(metadata i32 1, metadata !838, metadata !DIExpression()) #3, !dbg !844
  %129 = lshr i64 %128, 16, !dbg !846
  %130 = icmp eq i64 %129, 0, !dbg !846
  %131 = and i64 %128, 65535, !dbg !851
  %132 = add nuw nsw i64 %131, %129, !dbg !851
  %133 = select i1 %130, i64 %128, i64 %132, !dbg !851
  call void @llvm.dbg.value(metadata i64 %133, metadata !843, metadata !DIExpression()) #3, !dbg !844
  call void @llvm.dbg.value(metadata i32 2, metadata !838, metadata !DIExpression()) #3, !dbg !844
  %134 = lshr i64 %133, 16, !dbg !846
  %135 = icmp eq i64 %134, 0, !dbg !846
  %136 = and i64 %133, 65535, !dbg !851
  %137 = add nuw nsw i64 %136, %134, !dbg !851
  %138 = select i1 %135, i64 %133, i64 %137, !dbg !851
  call void @llvm.dbg.value(metadata i64 %138, metadata !843, metadata !DIExpression()) #3, !dbg !844
  call void @llvm.dbg.value(metadata i32 3, metadata !838, metadata !DIExpression()) #3, !dbg !844
  %139 = lshr i64 %138, 16, !dbg !846
  %140 = add nuw nsw i64 %139, %138, !dbg !851
  call void @llvm.dbg.value(metadata i64 %140, metadata !843, metadata !DIExpression()) #3, !dbg !844
  call void @llvm.dbg.value(metadata i32 4, metadata !838, metadata !DIExpression()) #3, !dbg !844
  call void @llvm.dbg.value(metadata i64 %140, metadata !703, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_xor, DW_OP_stack_value)) #3, !dbg !802
  %141 = trunc i64 %140 to i16, !dbg !852
  %142 = xor i16 %141, -1, !dbg !852
  store i16 %142, i16* %98, align 2, !dbg !853, !tbaa !854
  call void @llvm.dbg.value(metadata i8* %41, metadata !669, metadata !DIExpression()) #3, !dbg !855
  call void @llvm.dbg.value(metadata i8* undef, metadata !670, metadata !DIExpression()) #3, !dbg !855
  %143 = getelementptr inbounds [6 x i8], [6 x i8]* %27, i64 0, i64 0, !dbg !856
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %143), !dbg !856
  call void @llvm.dbg.value(metadata i8* %41, metadata !671, metadata !DIExpression()) #3, !dbg !855
  %144 = getelementptr inbounds i8, i8* %41, i64 6, !dbg !857
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %143, i8* nonnull align 1 dereferenceable(6) %144, i64 6, i1 false) #3, !dbg !858
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %144, i8* nonnull align 1 dereferenceable(6) %41, i64 6, i1 false) #3, !dbg !859
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %41, i8* nonnull align 1 dereferenceable(6) %143, i64 6, i1 false) #3, !dbg !860
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %143), !dbg !861
  br label %760, !dbg !862

145:                                              ; preds = %83
  call void @llvm.dbg.value(metadata i64 42, metadata !712, metadata !DIExpression()) #3, !dbg !793
  call void @llvm.dbg.value(metadata i8* %41, metadata !715, metadata !DIExpression(DW_OP_plus_uconst, 42, DW_OP_stack_value)) #3, !dbg !793
  %146 = getelementptr i8, i8* %41, i64 62, !dbg !863
  %147 = icmp ugt i8* %146, %45, !dbg !865
  br i1 %147, label %760, label %148, !dbg !866

148:                                              ; preds = %145
  call void @llvm.dbg.value(metadata i8* %81, metadata !715, metadata !DIExpression()) #3, !dbg !793
  %149 = load i8, i8* %81, align 4, !dbg !867
  %150 = and i8 %149, 15, !dbg !867
  %151 = icmp eq i8 %150, 5, !dbg !869
  br i1 %151, label %152, label %760, !dbg !870

152:                                              ; preds = %148
  %153 = getelementptr i8, i8* %41, i64 51, !dbg !871
  %154 = load i8, i8* %153, align 1, !dbg !871, !tbaa !780
  store i8 %154, i8* %68, align 4, !dbg !872, !tbaa !783
  %155 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 2, !dbg !873
  store i8 1, i8* %155, align 4, !dbg !874, !tbaa !875
  %156 = getelementptr i8, i8* %41, i64 58, !dbg !876
  %157 = bitcast i8* %156 to i32*, !dbg !876
  %158 = load i32, i32* %157, align 4, !dbg !876, !tbaa !811
  %159 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !877
  store i32 %158, i32* %159, align 4, !dbg !878, !tbaa !879
  %160 = getelementptr i8, i8* %41, i64 54, !dbg !880
  %161 = bitcast i8* %160 to i32*, !dbg !880
  %162 = load i32, i32* %161, align 4, !dbg !880, !tbaa !813
  call void @llvm.dbg.value(metadata i32 -1, metadata !641, metadata !DIExpression()) #3, !dbg !761
  br label %171, !dbg !881

163:                                              ; preds = %78
  %164 = getelementptr i8, i8* %41, i64 26, !dbg !882
  %165 = bitcast i8* %164 to i32*, !dbg !882
  %166 = load i32, i32* %165, align 4, !dbg !882, !tbaa !813
  %167 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !884
  store i32 %166, i32* %167, align 4, !dbg !885, !tbaa !879
  %168 = getelementptr i8, i8* %41, i64 30, !dbg !886
  %169 = bitcast i8* %168 to i32*, !dbg !886
  %170 = load i32, i32* %169, align 4, !dbg !886, !tbaa !811
  br label %171

171:                                              ; preds = %163, %152
  %172 = phi i32 [ %170, %163 ], [ %162, %152 ]
  %173 = phi i8 [ 0, %163 ], [ 1, %152 ]
  %174 = phi i8 [ %67, %163 ], [ %154, %152 ], !dbg !887
  %175 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 1, i32 0, i64 0, !dbg !888
  store i32 %172, i32* %175, align 4, !dbg !888, !tbaa !879
  call void @llvm.dbg.value(metadata i32 -1, metadata !503, metadata !DIExpression()) #3, !dbg !754
  call void @llvm.dbg.value(metadata i8 %174, metadata !501, metadata !DIExpression()) #3, !dbg !754
  switch i8 %174, label %760 [
    i8 6, label %176
    i8 17, label %204
  ], !dbg !889

176:                                              ; preds = %171
  call void @llvm.dbg.value(metadata i8* %41, metadata !890, metadata !DIExpression()) #3, !dbg !922
  call void @llvm.dbg.value(metadata i8* %45, metadata !895, metadata !DIExpression()) #3, !dbg !922
  call void @llvm.dbg.value(metadata i1 false, metadata !896, metadata !DIExpression()) #3, !dbg !922
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !897, metadata !DIExpression()) #3, !dbg !922
  %177 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 2, !dbg !927
  %178 = icmp ne i8 %173, 0, !dbg !928
  call void @llvm.dbg.value(metadata i1 %178, metadata !898, metadata !DIExpression()) #3, !dbg !922
  call void @llvm.dbg.value(metadata i1 false, metadata !929, metadata !DIExpression()) #3, !dbg !936
  call void @llvm.dbg.value(metadata i1 %178, metadata !934, metadata !DIExpression()) #3, !dbg !936
  call void @llvm.dbg.value(metadata i64 14, metadata !935, metadata !DIExpression()) #3, !dbg !936
  %179 = select i1 %178, i64 62, i64 34, !dbg !938
  call void @llvm.dbg.value(metadata i64 %179, metadata !899, metadata !DIExpression()) #3, !dbg !922
  %180 = getelementptr i8, i8* %41, i64 %179, !dbg !939
  call void @llvm.dbg.value(metadata i8* %180, metadata !900, metadata !DIExpression()) #3, !dbg !922
  %181 = getelementptr inbounds i8, i8* %180, i64 20, !dbg !940
  %182 = icmp ugt i8* %181, %45, !dbg !942
  br i1 %182, label %760, label %183, !dbg !943

183:                                              ; preds = %176
  %184 = getelementptr inbounds i8, i8* %180, i64 12, !dbg !944
  %185 = bitcast i8* %184 to i16*, !dbg !944
  %186 = load i16, i16* %185, align 4, !dbg !944
  %187 = and i16 %186, 512, !dbg !944
  %188 = icmp eq i16 %187, 0, !dbg !946
  br i1 %188, label %191, label %189, !dbg !947

189:                                              ; preds = %183
  %190 = or i8 %173, 2, !dbg !948
  store i8 %190, i8* %177, align 4, !dbg !948, !tbaa !875
  br label %191, !dbg !950

191:                                              ; preds = %189, %183
  br i1 %178, label %198, label %192, !dbg !951

192:                                              ; preds = %191
  %193 = bitcast i8* %180 to i16*, !dbg !952
  %194 = load i16, i16* %193, align 4, !dbg !952, !tbaa !955
  %195 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 2, !dbg !957
  %196 = bitcast %union.anon.11* %195 to i16*, !dbg !958
  store i16 %194, i16* %196, align 4, !dbg !959, !tbaa !879
  %197 = getelementptr inbounds i8, i8* %180, i64 2, !dbg !960
  br label %223, !dbg !961

198:                                              ; preds = %191
  %199 = getelementptr inbounds i8, i8* %180, i64 2, !dbg !962
  %200 = bitcast i8* %199 to i16*, !dbg !962
  %201 = load i16, i16* %200, align 2, !dbg !962, !tbaa !964
  %202 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 2, !dbg !965
  %203 = bitcast %union.anon.11* %202 to i16*, !dbg !966
  store i16 %201, i16* %203, align 4, !dbg !967, !tbaa !879
  br label %223

204:                                              ; preds = %171
  call void @llvm.dbg.value(metadata i8* %41, metadata !968, metadata !DIExpression()) #3, !dbg !985
  call void @llvm.dbg.value(metadata i8* %45, metadata !971, metadata !DIExpression()) #3, !dbg !985
  call void @llvm.dbg.value(metadata i1 false, metadata !972, metadata !DIExpression()) #3, !dbg !985
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !973, metadata !DIExpression()) #3, !dbg !985
  %205 = icmp ne i8 %173, 0, !dbg !990
  call void @llvm.dbg.value(metadata i1 %205, metadata !974, metadata !DIExpression()) #3, !dbg !985
  call void @llvm.dbg.value(metadata i1 false, metadata !929, metadata !DIExpression()) #3, !dbg !991
  call void @llvm.dbg.value(metadata i1 %205, metadata !934, metadata !DIExpression()) #3, !dbg !991
  call void @llvm.dbg.value(metadata i64 14, metadata !935, metadata !DIExpression()) #3, !dbg !991
  %206 = select i1 %205, i64 62, i64 34, !dbg !993
  call void @llvm.dbg.value(metadata i64 %206, metadata !975, metadata !DIExpression()) #3, !dbg !985
  %207 = getelementptr i8, i8* %41, i64 %206, !dbg !994
  call void @llvm.dbg.value(metadata i8* %207, metadata !976, metadata !DIExpression()) #3, !dbg !985
  %208 = getelementptr inbounds i8, i8* %207, i64 8, !dbg !995
  %209 = icmp ugt i8* %208, %45, !dbg !997
  br i1 %209, label %760, label %210, !dbg !998

210:                                              ; preds = %204
  br i1 %205, label %217, label %211, !dbg !999

211:                                              ; preds = %210
  %212 = bitcast i8* %207 to i16*, !dbg !1000
  %213 = load i16, i16* %212, align 2, !dbg !1000, !tbaa !1003
  %214 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 2, !dbg !1005
  %215 = bitcast %union.anon.11* %214 to i16*, !dbg !1006
  store i16 %213, i16* %215, align 4, !dbg !1007, !tbaa !879
  %216 = getelementptr inbounds i8, i8* %207, i64 2, !dbg !1008
  br label %223, !dbg !1009

217:                                              ; preds = %210
  %218 = getelementptr inbounds i8, i8* %207, i64 2, !dbg !1010
  %219 = bitcast i8* %218 to i16*, !dbg !1010
  %220 = load i16, i16* %219, align 2, !dbg !1010, !tbaa !1012
  %221 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 2, !dbg !1013
  %222 = bitcast %union.anon.11* %221 to i16*, !dbg !1014
  store i16 %220, i16* %222, align 4, !dbg !1015, !tbaa !879
  br label %223

223:                                              ; preds = %217, %211, %198, %192
  %224 = phi %union.anon.11* [ %221, %217 ], [ %214, %211 ], [ %202, %198 ], [ %195, %192 ]
  %225 = phi i8* [ %207, %217 ], [ %216, %211 ], [ %180, %198 ], [ %197, %192 ]
  %226 = bitcast i8* %225 to i16*, !dbg !1016
  %227 = load i16, i16* %226, align 2, !dbg !1016, !tbaa !835
  %228 = bitcast %union.anon.11* %224 to [2 x i16]*, !dbg !1016
  %229 = getelementptr inbounds [2 x i16], [2 x i16]* %228, i64 0, i64 1, !dbg !1016
  store i16 %227, i16* %229, align 2, !dbg !1016, !tbaa !879
  %230 = getelementptr inbounds %struct.vip_definition, %struct.vip_definition* %29, i64 0, i32 0, i32 0, i64 0, !dbg !1017
  store i32 %172, i32* %230, align 4, !dbg !1020, !tbaa !879
  %231 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 2, !dbg !1021
  %232 = getelementptr inbounds [2 x i16], [2 x i16]* %228, i64 0, i64 1, !dbg !1022
  %233 = getelementptr inbounds %struct.vip_definition, %struct.vip_definition* %29, i64 0, i32 1, !dbg !1023
  store i16 %227, i16* %233, align 4, !dbg !1024, !tbaa !1025
  %234 = getelementptr inbounds %struct.vip_definition, %struct.vip_definition* %29, i64 0, i32 2, !dbg !1027
  store i8 %174, i8* %234, align 2, !dbg !1028, !tbaa !1029
  %235 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.5* @vip_map to i8*), i8* nonnull %53) #3, !dbg !1030
  %236 = bitcast i8* %235 to %struct.vip_meta*, !dbg !1030
  call void @llvm.dbg.value(metadata %struct.vip_meta* %236, metadata !498, metadata !DIExpression()) #3, !dbg !754
  %237 = icmp eq i8* %235, null, !dbg !1031
  br i1 %237, label %238, label %248, !dbg !1033

238:                                              ; preds = %223
  store i16 0, i16* %233, align 4, !dbg !1034, !tbaa !1025
  %239 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.5* @vip_map to i8*), i8* nonnull %53) #3, !dbg !1036
  %240 = bitcast i8* %239 to %struct.vip_meta*, !dbg !1036
  call void @llvm.dbg.value(metadata %struct.vip_meta* %240, metadata !498, metadata !DIExpression()) #3, !dbg !754
  %241 = icmp eq i8* %239, null, !dbg !1037
  br i1 %241, label %760, label %242, !dbg !1039

242:                                              ; preds = %238
  %243 = bitcast i8* %239 to i32*, !dbg !1040
  %244 = load i32, i32* %243, align 4, !dbg !1040, !tbaa !1042
  %245 = and i32 %244, 8, !dbg !1044
  %246 = icmp eq i32 %245, 0, !dbg !1044
  br i1 %246, label %247, label %248, !dbg !1045

247:                                              ; preds = %242
  store i16 0, i16* %232, align 2, !dbg !1046, !tbaa !879
  br label %248, !dbg !1048

248:                                              ; preds = %247, %242, %223
  %249 = phi %struct.vip_meta* [ %236, %223 ], [ %240, %242 ], [ %240, %247 ], !dbg !754
  call void @llvm.dbg.value(metadata %struct.vip_meta* %249, metadata !498, metadata !DIExpression()) #3, !dbg !754
  %250 = sub nsw i64 %44, %40, !dbg !1049
  %251 = icmp sgt i64 %250, 1514, !dbg !1051
  br i1 %251, label %760, label %252, !dbg !1052

252:                                              ; preds = %248
  %253 = bitcast i32* %32 to i8*, !dbg !1053
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %253) #3, !dbg !1053
  call void @llvm.dbg.value(metadata i32 512, metadata !507, metadata !DIExpression()) #3, !dbg !754
  store i32 512, i32* %32, align 4, !dbg !1054, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %32, metadata !507, metadata !DIExpression(DW_OP_deref)) #3, !dbg !754
  %254 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.16* @stats to i8*), i8* nonnull %253) #3, !dbg !1055
  call void @llvm.dbg.value(metadata i8* %254, metadata !499, metadata !DIExpression()) #3, !dbg !754
  %255 = icmp eq i8* %254, null, !dbg !1056
  br i1 %255, label %758, label %256, !dbg !1058

256:                                              ; preds = %252
  %257 = bitcast i8* %254 to i64*, !dbg !1059
  %258 = load i64, i64* %257, align 8, !dbg !1060, !tbaa !1061
  %259 = add i64 %258, 1, !dbg !1060
  store i64 %259, i64* %257, align 8, !dbg !1060, !tbaa !1061
  %260 = getelementptr inbounds %struct.vip_meta, %struct.vip_meta* %249, i64 0, i32 0, !dbg !1063
  %261 = load i32, i32* %260, align 4, !dbg !1063, !tbaa !1042
  %262 = and i32 %261, 4, !dbg !1064
  %263 = icmp eq i32 %262, 0, !dbg !1064
  br i1 %263, label %390, label %264, !dbg !1065

264:                                              ; preds = %256
  %265 = bitcast i32* %33 to i8*, !dbg !1066
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %265) #3, !dbg !1066
  call void @llvm.dbg.value(metadata i32 519, metadata !508, metadata !DIExpression()) #3, !dbg !1067
  store i32 519, i32* %33, align 4, !dbg !1068, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %33, metadata !508, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1067
  %266 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.16* @stats to i8*), i8* nonnull %265) #3, !dbg !1069
  call void @llvm.dbg.value(metadata i8* %266, metadata !511, metadata !DIExpression()) #3, !dbg !1067
  %267 = icmp eq i8* %266, null, !dbg !1070
  br i1 %267, label %378, label %268, !dbg !1072

268:                                              ; preds = %264
  call void @llvm.dbg.value(metadata i8* %41, metadata !1073, metadata !DIExpression()) #3, !dbg !1094
  call void @llvm.dbg.value(metadata i8* %45, metadata !1078, metadata !DIExpression()) #3, !dbg !1094
  call void @llvm.dbg.value(metadata i1 false, metadata !1079, metadata !DIExpression()) #3, !dbg !1094
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !1080, metadata !DIExpression()) #3, !dbg !1094
  %269 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 2, !dbg !1096
  %270 = load i8, i8* %269, align 4, !dbg !1096, !tbaa !875
  %271 = and i8 %270, 1, !dbg !1097
  %272 = icmp eq i8 %271, 0, !dbg !1098
  call void @llvm.dbg.value(metadata i1 %272, metadata !1081, metadata !DIExpression()) #3, !dbg !1094
  call void @llvm.dbg.value(metadata i1 false, metadata !929, metadata !DIExpression()) #3, !dbg !1099
  call void @llvm.dbg.value(metadata i1 %272, metadata !934, metadata !DIExpression()) #3, !dbg !1099
  call void @llvm.dbg.value(metadata i64 14, metadata !935, metadata !DIExpression()) #3, !dbg !1099
  %273 = select i1 %272, i64 34, i64 62, !dbg !1101
  call void @llvm.dbg.value(metadata i64 %273, metadata !1082, metadata !DIExpression()) #3, !dbg !1094
  %274 = getelementptr i8, i8* %41, i64 %273, !dbg !1102
  %275 = getelementptr i8, i8* %274, i64 8, !dbg !1104
  %276 = getelementptr i8, i8* %275, i64 1, !dbg !1105
  %277 = icmp ugt i8* %276, %45, !dbg !1106
  br i1 %277, label %374, label %278, !dbg !1107

278:                                              ; preds = %268
  call void @llvm.dbg.value(metadata i8* %275, metadata !1083, metadata !DIExpression()) #3, !dbg !1094
  call void @llvm.dbg.value(metadata i8* %275, metadata !1084, metadata !DIExpression()) #3, !dbg !1094
  call void @llvm.dbg.value(metadata i8* null, metadata !1085, metadata !DIExpression()) #3, !dbg !1094
  %279 = load i8, i8* %275, align 1, !dbg !1108, !tbaa !879
  %280 = zext i8 %279 to i32, !dbg !1108
  %281 = and i32 %280, 128, !dbg !1109
  %282 = icmp eq i32 %281, 0, !dbg !1110
  br i1 %282, label %294, label %283, !dbg !1111

283:                                              ; preds = %278
  %284 = getelementptr inbounds i8, i8* %275, i64 14, !dbg !1112
  %285 = icmp ugt i8* %284, %45, !dbg !1114
  %286 = and i32 %280, 32, !dbg !1115
  %287 = icmp eq i32 %286, 0, !dbg !1117
  %288 = or i1 %285, %287, !dbg !1118
  br i1 %288, label %374, label %289, !dbg !1118

289:                                              ; preds = %283
  call void @llvm.dbg.value(metadata i8* %275, metadata !1086, metadata !DIExpression()) #3, !dbg !1119
  %290 = getelementptr inbounds i8, i8* %275, i64 5, !dbg !1120
  %291 = load i8, i8* %290, align 1, !dbg !1120, !tbaa !1122
  %292 = icmp ult i8 %291, 8, !dbg !1124
  %293 = getelementptr inbounds i8, i8* %275, i64 6, !dbg !1125
  br i1 %292, label %374, label %297

294:                                              ; preds = %278
  %295 = getelementptr inbounds i8, i8* %275, i64 9, !dbg !1126
  %296 = icmp ugt i8* %295, %45, !dbg !1129
  br i1 %296, label %374, label %297, !dbg !1130

297:                                              ; preds = %294, %289
  %298 = phi i8* [ %276, %294 ], [ %293, %289 ]
  %299 = load i8, i8* %298, align 1, !dbg !1131, !tbaa !879
  %300 = lshr i8 %299, 6, !dbg !1132
  call void @llvm.dbg.value(metadata i8 %300, metadata !1089, metadata !DIExpression()) #3, !dbg !1094
  %301 = trunc i8 %300 to i2, !dbg !1133
  switch i2 %301, label %374 [
    i2 1, label %302
    i2 -2, label %314
  ], !dbg !1133

302:                                              ; preds = %297
  %303 = and i8 %299, 63, !dbg !1134
  %304 = zext i8 %303 to i32, !dbg !1134
  %305 = shl nuw nsw i32 %304, 10, !dbg !1136
  %306 = getelementptr inbounds i8, i8* %298, i64 1, !dbg !1137
  %307 = load i8, i8* %306, align 1, !dbg !1137, !tbaa !879
  %308 = zext i8 %307 to i32, !dbg !1137
  %309 = shl nuw nsw i32 %308, 2, !dbg !1138
  %310 = or i32 %309, %305, !dbg !1139
  %311 = getelementptr inbounds i8, i8* %298, i64 2, !dbg !1140
  %312 = load i8, i8* %311, align 1, !dbg !1140, !tbaa !879
  %313 = lshr i8 %312, 6, !dbg !1141
  br label %326, !dbg !1142

314:                                              ; preds = %297
  %315 = getelementptr inbounds i8, i8* %298, i64 1, !dbg !1143
  %316 = load i8, i8* %315, align 1, !dbg !1143, !tbaa !879
  %317 = zext i8 %316 to i32, !dbg !1143
  %318 = shl nuw nsw i32 %317, 16, !dbg !1144
  %319 = getelementptr inbounds i8, i8* %298, i64 2, !dbg !1145
  %320 = load i8, i8* %319, align 1, !dbg !1145, !tbaa !879
  %321 = zext i8 %320 to i32, !dbg !1145
  %322 = shl nuw nsw i32 %321, 8, !dbg !1146
  %323 = or i32 %322, %318, !dbg !1147
  %324 = getelementptr inbounds i8, i8* %298, i64 3, !dbg !1148
  %325 = load i8, i8* %324, align 1, !dbg !1148, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %330, metadata !1090, metadata !DIExpression()) #3, !dbg !1149
  br label %326

326:                                              ; preds = %314, %302
  %327 = phi i8 [ %325, %314 ], [ %313, %302 ]
  %328 = phi i32 [ %323, %314 ], [ %310, %302 ]
  %329 = zext i8 %327 to i32, !dbg !1150
  %330 = or i32 %328, %329, !dbg !1150
  call void @llvm.dbg.value(metadata i32 %330, metadata !512, metadata !DIExpression()) #3, !dbg !1067
  %331 = icmp sgt i32 %330, 0, !dbg !1151
  br i1 %331, label %332, label %374, !dbg !1152

332:                                              ; preds = %326
  call void @llvm.dbg.value(metadata i32 %330, metadata !1153, metadata !DIExpression()) #3, !dbg !1160
  %333 = bitcast i32* %26 to i8*, !dbg !1162
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %333) #3, !dbg !1162
  call void @llvm.dbg.value(metadata i32 520, metadata !1158, metadata !DIExpression()) #3, !dbg !1160
  store i32 520, i32* %26, align 4, !dbg !1163, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %26, metadata !1158, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1160
  %334 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.16* @stats to i8*), i8* nonnull %333) #3, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %334, metadata !1159, metadata !DIExpression()) #3, !dbg !1160
  %335 = icmp eq i8* %334, null, !dbg !1165
  br i1 %335, label %343, label %336, !dbg !1167

336:                                              ; preds = %332
  %337 = icmp sgt i32 %330, 65535, !dbg !1168
  %338 = getelementptr inbounds i8, i8* %334, i64 8, !dbg !1170
  %339 = select i1 %337, i8* %338, i8* %334, !dbg !1170
  %340 = bitcast i8* %339 to i64*, !dbg !1171
  %341 = load i64, i64* %340, align 8, !dbg !1171, !tbaa !1172
  %342 = add i64 %341, 1, !dbg !1171
  store i64 %342, i64* %340, align 8, !dbg !1171, !tbaa !1172
  br label %343, !dbg !1173

343:                                              ; preds = %336, %332
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %333) #3, !dbg !1173
  %344 = bitcast i32* %34 to i8*, !dbg !1174
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %344) #3, !dbg !1174
  call void @llvm.dbg.value(metadata i32 %330, metadata !513, metadata !DIExpression()) #3, !dbg !1175
  store i32 %330, i32* %34, align 4, !dbg !1176, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %34, metadata !513, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1175
  %345 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.17* @server_id_map to i8*), i8* nonnull %344) #3, !dbg !1177
  call void @llvm.dbg.value(metadata i8* %345, metadata !516, metadata !DIExpression()) #3, !dbg !1175
  %346 = icmp eq i8* %345, null, !dbg !1178
  br i1 %346, label %379, label %347, !dbg !1180

347:                                              ; preds = %343
  %348 = bitcast i8* %345 to i32*, !dbg !1177
  call void @llvm.dbg.value(metadata i32* %348, metadata !516, metadata !DIExpression()) #3, !dbg !1175
  %349 = load i32, i32* %348, align 4, !dbg !1181, !tbaa !760
  call void @llvm.dbg.value(metadata i32 %349, metadata !513, metadata !DIExpression()) #3, !dbg !1175
  store i32 %349, i32* %34, align 4, !dbg !1183, !tbaa !760
  %350 = icmp eq i32 %349, 0, !dbg !1184
  br i1 %350, label %351, label %361, !dbg !1186

351:                                              ; preds = %347
  %352 = bitcast i32* %25 to i8*, !dbg !1187
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %352) #3, !dbg !1187
  call void @llvm.dbg.value(metadata i32 521, metadata !1192, metadata !DIExpression()) #3, !dbg !1196
  store i32 521, i32* %25, align 4, !dbg !1197, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %25, metadata !1192, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1196
  %353 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.16* @stats to i8*), i8* nonnull %352) #3, !dbg !1198
  call void @llvm.dbg.value(metadata i8* %353, metadata !1193, metadata !DIExpression()) #3, !dbg !1196
  %354 = icmp eq i8* %353, null, !dbg !1199
  br i1 %354, label %360, label %355, !dbg !1201

355:                                              ; preds = %351
  call void @llvm.dbg.value(metadata i8* %353, metadata !1193, metadata !DIExpression()) #3, !dbg !1196
  %356 = getelementptr inbounds i8, i8* %353, i64 8, !dbg !1202
  %357 = bitcast i8* %356 to i64*, !dbg !1202
  %358 = load i64, i64* %357, align 8, !dbg !1203, !tbaa !1204
  %359 = add i64 %358, 1, !dbg !1203
  store i64 %359, i64* %357, align 8, !dbg !1203, !tbaa !1204
  br label %360, !dbg !1205

360:                                              ; preds = %355, %351
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %352) #3, !dbg !1205
  br label %379, !dbg !1206

361:                                              ; preds = %347
  %362 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 1, !dbg !1207
  store i32 %349, i32* %362, align 4, !dbg !1209, !tbaa !1210
  call void @llvm.dbg.value(metadata i32* %34, metadata !513, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1175
  %363 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.13* @reals to i8*), i8* nonnull %344) #3, !dbg !1211
  call void @llvm.dbg.value(metadata i8* %363, metadata !495, metadata !DIExpression()) #3, !dbg !754
  %364 = icmp eq i8* %363, null, !dbg !1212
  br i1 %364, label %365, label %383, !dbg !1214

365:                                              ; preds = %361
  %366 = bitcast i32* %24 to i8*, !dbg !1215
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %366) #3, !dbg !1215
  call void @llvm.dbg.value(metadata i32 521, metadata !1218, metadata !DIExpression()) #3, !dbg !1222
  store i32 521, i32* %24, align 4, !dbg !1223, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %24, metadata !1218, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1222
  %367 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.16* @stats to i8*), i8* nonnull %366) #3, !dbg !1224
  call void @llvm.dbg.value(metadata i8* %367, metadata !1219, metadata !DIExpression()) #3, !dbg !1222
  %368 = icmp eq i8* %367, null, !dbg !1225
  br i1 %368, label %373, label %369, !dbg !1227

369:                                              ; preds = %365
  call void @llvm.dbg.value(metadata i8* %367, metadata !1219, metadata !DIExpression()) #3, !dbg !1222
  %370 = bitcast i8* %367 to i64*, !dbg !1228
  %371 = load i64, i64* %370, align 8, !dbg !1229, !tbaa !1061
  %372 = add i64 %371, 1, !dbg !1229
  store i64 %372, i64* %370, align 8, !dbg !1229, !tbaa !1061
  br label %373, !dbg !1230

373:                                              ; preds = %369, %365
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %366) #3, !dbg !1230
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %344) #3, !dbg !1231
  br label %378

374:                                              ; preds = %326, %297, %294, %289, %283, %268
  %375 = bitcast i8* %266 to i64*, !dbg !1232
  %376 = load i64, i64* %375, align 8, !dbg !1234, !tbaa !1061
  %377 = add i64 %376, 1, !dbg !1234
  store i64 %377, i64* %375, align 8, !dbg !1234, !tbaa !1061
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %265) #3, !dbg !1235
  br label %390, !dbg !1236

378:                                              ; preds = %373, %264
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %265) #3, !dbg !1235
  br label %758

379:                                              ; preds = %343, %360
  %380 = bitcast i8* %266 to i64*, !dbg !1237
  %381 = load i64, i64* %380, align 8, !dbg !1237, !tbaa !1061
  %382 = add i64 %381, 1, !dbg !1237
  store i64 %382, i64* %380, align 8, !dbg !1237, !tbaa !1061
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %344) #3, !dbg !1231
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %265) #3, !dbg !1235
  call void @llvm.dbg.value(metadata i16 %389, metadata !502, metadata !DIExpression()) #3, !dbg !754
  call void @llvm.dbg.value(metadata i8* %363, metadata !495, metadata !DIExpression()) #3, !dbg !754
  br label %390, !dbg !1236

383:                                              ; preds = %361
  %384 = getelementptr inbounds i8, i8* %266, i64 8, !dbg !1238
  %385 = bitcast i8* %384 to i64*, !dbg !1238
  %386 = load i64, i64* %385, align 8, !dbg !1239, !tbaa !1204
  %387 = add i64 %386, 1, !dbg !1239
  store i64 %387, i64* %385, align 8, !dbg !1239, !tbaa !1204
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %344) #3, !dbg !1231
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %265) #3, !dbg !1235
  %388 = bitcast %union.anon.11* %231 to i16*, !dbg !1240
  %389 = load i16, i16* %388, align 4, !dbg !1240, !tbaa !879
  call void @llvm.dbg.value(metadata i16 %389, metadata !502, metadata !DIExpression()) #3, !dbg !754
  call void @llvm.dbg.value(metadata i8* %363, metadata !495, metadata !DIExpression()) #3, !dbg !754
  br label %573, !dbg !1236

390:                                              ; preds = %256, %379, %374
  %391 = bitcast %union.anon.11* %231 to i16*, !dbg !1240
  %392 = load i16, i16* %391, align 4, !dbg !1240, !tbaa !879
  %393 = load i32, i32* %260, align 4, !dbg !1241, !tbaa !1042
  %394 = and i32 %393, 1, !dbg !1243
  %395 = icmp eq i32 %394, 0, !dbg !1243
  br i1 %395, label %397, label %396, !dbg !1244

396:                                              ; preds = %390
  store i16 0, i16* %391, align 4, !dbg !1245, !tbaa !879
  br label %397, !dbg !1247

397:                                              ; preds = %396, %390
  %398 = bitcast i32* %35 to i8*, !dbg !1248
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %398) #3, !dbg !1248
  %399 = call i64 inttoptr (i64 8 to i64 ()*)() #3, !dbg !1249
  %400 = trunc i64 %399 to i32, !dbg !1249
  call void @llvm.dbg.value(metadata i32 %400, metadata !517, metadata !DIExpression()) #3, !dbg !1250
  store i32 %400, i32* %35, align 4, !dbg !1251, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %35, metadata !517, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1250
  %401 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.7* @lru_mapping to i8*), i8* nonnull %398) #3, !dbg !1252
  call void @llvm.dbg.value(metadata i8* %401, metadata !518, metadata !DIExpression()) #3, !dbg !1250
  %402 = icmp eq i8* %401, null, !dbg !1253
  br i1 %402, label %403, label %412, !dbg !1254

403:                                              ; preds = %397
  call void @llvm.dbg.value(metadata i8* bitcast (%struct.anon.8* @fallback_cache to i8*), metadata !518, metadata !DIExpression()) #3, !dbg !1250
  %404 = bitcast i32* %36 to i8*, !dbg !1255
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %404) #3, !dbg !1255
  call void @llvm.dbg.value(metadata i32 515, metadata !519, metadata !DIExpression()) #3, !dbg !1256
  store i32 515, i32* %36, align 4, !dbg !1257, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %36, metadata !519, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1256
  %405 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.16* @stats to i8*), i8* nonnull %404) #3, !dbg !1258
  call void @llvm.dbg.value(metadata i8* %405, metadata !522, metadata !DIExpression()) #3, !dbg !1256
  %406 = icmp eq i8* %405, null, !dbg !1259
  br i1 %406, label %411, label %407, !dbg !1261

407:                                              ; preds = %403
  call void @llvm.dbg.value(metadata i8* %405, metadata !522, metadata !DIExpression()) #3, !dbg !1256
  %408 = bitcast i8* %405 to i64*, !dbg !1262
  %409 = load i64, i64* %408, align 8, !dbg !1263, !tbaa !1061
  %410 = add i64 %409, 1, !dbg !1263
  store i64 %410, i64* %408, align 8, !dbg !1263, !tbaa !1061
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %404) #3, !dbg !1264
  br label %412

411:                                              ; preds = %403
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %404) #3, !dbg !1264
  br label %570

412:                                              ; preds = %407, %397
  %413 = phi i8* [ %401, %397 ], [ bitcast (%struct.anon.8* @fallback_cache to i8*), %407 ], !dbg !1250
  call void @llvm.dbg.value(metadata i8* %413, metadata !518, metadata !DIExpression()) #3, !dbg !1250
  %414 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 2, !dbg !1265
  %415 = load i8, i8* %414, align 4, !dbg !1265, !tbaa !875
  %416 = and i8 %415, 2, !dbg !1267
  %417 = icmp eq i8 %416, 0, !dbg !1267
  br i1 %417, label %418, label %444, !dbg !1268

418:                                              ; preds = %412
  %419 = load i32, i32* %260, align 4, !dbg !1269, !tbaa !1042
  %420 = and i32 %419, 2, !dbg !1270
  %421 = icmp eq i32 %420, 0, !dbg !1270
  br i1 %421, label %422, label %444, !dbg !1271

422:                                              ; preds = %418
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !1272, metadata !DIExpression()) #3, !dbg !1283
  call void @llvm.dbg.value(metadata i8* %413, metadata !1278, metadata !DIExpression()) #3, !dbg !1283
  call void @llvm.dbg.value(metadata i8 0, metadata !1279, metadata !DIExpression()) #3, !dbg !1283
  %423 = bitcast i32* %23 to i8*, !dbg !1286
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %423) #3, !dbg !1286
  %424 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* %413, i8* nonnull %52) #3, !dbg !1287
  call void @llvm.dbg.value(metadata i8* %424, metadata !1280, metadata !DIExpression()) #3, !dbg !1283
  %425 = icmp eq i8* %424, null, !dbg !1288
  br i1 %425, label %437, label %426, !dbg !1290

426:                                              ; preds = %422
  %427 = load i8, i8* %68, align 4, !dbg !1291, !tbaa !783
  %428 = icmp eq i8 %427, 17, !dbg !1293
  br i1 %428, label %429, label %438, !dbg !1294

429:                                              ; preds = %426
  %430 = call i64 inttoptr (i64 5 to i64 ()*)() #3, !dbg !1295
  call void @llvm.dbg.value(metadata i64 %430, metadata !1281, metadata !DIExpression()) #3, !dbg !1283
  %431 = getelementptr inbounds i8, i8* %424, i64 8, !dbg !1297
  %432 = bitcast i8* %431 to i64*, !dbg !1297
  %433 = load i64, i64* %432, align 8, !dbg !1297, !tbaa !1299
  %434 = sub i64 %430, %433, !dbg !1301
  %435 = icmp ugt i64 %434, 30000000000, !dbg !1302
  br i1 %435, label %437, label %436, !dbg !1303

436:                                              ; preds = %429
  store i64 %430, i64* %432, align 8, !dbg !1304, !tbaa !1299
  br label %438, !dbg !1305

437:                                              ; preds = %429, %422
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %423) #3, !dbg !1306
  call void @llvm.dbg.value(metadata i8* %442, metadata !495, metadata !DIExpression()) #3, !dbg !754
  br label %444, !dbg !1307

438:                                              ; preds = %436, %426
  %439 = bitcast i8* %424 to i32*, !dbg !1308
  %440 = load i32, i32* %439, align 8, !dbg !1308, !tbaa !1309
  call void @llvm.dbg.value(metadata i32 %440, metadata !1282, metadata !DIExpression()) #3, !dbg !1283
  store i32 %440, i32* %23, align 4, !dbg !1310, !tbaa !760
  %441 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 1, !dbg !1311
  store i32 %440, i32* %441, align 4, !dbg !1312, !tbaa !1210
  call void @llvm.dbg.value(metadata i32* %23, metadata !1282, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1283
  %442 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.13* @reals to i8*), i8* nonnull %423) #3, !dbg !1313
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %423) #3, !dbg !1306
  call void @llvm.dbg.value(metadata i8* %442, metadata !495, metadata !DIExpression()) #3, !dbg !754
  %443 = icmp eq i8* %442, null, !dbg !1314
  br i1 %443, label %444, label %571, !dbg !1307

444:                                              ; preds = %438, %437, %418, %412
  %445 = load i8, i8* %68, align 4, !dbg !1315, !tbaa !783
  %446 = icmp eq i8 %445, 6, !dbg !1316
  br i1 %446, label %447, label %463, !dbg !1317

447:                                              ; preds = %444
  %448 = bitcast i32* %37 to i8*, !dbg !1318
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %448) #3, !dbg !1318
  call void @llvm.dbg.value(metadata i32 513, metadata !523, metadata !DIExpression()) #3, !dbg !1319
  store i32 513, i32* %37, align 4, !dbg !1320, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %37, metadata !523, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1319
  %449 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.16* @stats to i8*), i8* nonnull %448) #3, !dbg !1321
  call void @llvm.dbg.value(metadata i8* %449, metadata !526, metadata !DIExpression()) #3, !dbg !1319
  %450 = icmp eq i8* %449, null, !dbg !1322
  br i1 %450, label %462, label %451, !dbg !1324

451:                                              ; preds = %447
  %452 = load i8, i8* %414, align 4, !dbg !1325, !tbaa !875
  %453 = and i8 %452, 2, !dbg !1327
  %454 = icmp eq i8 %453, 0, !dbg !1327
  %455 = getelementptr inbounds i8, i8* %449, i64 8, !dbg !1328
  %456 = bitcast i8* %455 to i64*, !dbg !1328
  %457 = bitcast i8* %449 to i64*, !dbg !1328
  %458 = select i1 %454, i64* %456, i64* %457, !dbg !1328
  %459 = select i1 %454, i64* %456, i64* %457, !dbg !1328
  %460 = load i64, i64* %458, align 8, !dbg !1329, !tbaa !1172
  %461 = add i64 %460, 1, !dbg !1329
  store i64 %461, i64* %459, align 8, !dbg !1329, !tbaa !1172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %448) #3, !dbg !1330
  br label %463

462:                                              ; preds = %447
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %448) #3, !dbg !1330
  br label %570

463:                                              ; preds = %451, %444
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !465, metadata !DIExpression()) #3, !dbg !1331
  call void @llvm.dbg.value(metadata %struct.vip_meta* %249, metadata !466, metadata !DIExpression()) #3, !dbg !1331
  call void @llvm.dbg.value(metadata i1 false, metadata !467, metadata !DIExpression()) #3, !dbg !1331
  call void @llvm.dbg.value(metadata i8* %413, metadata !468, metadata !DIExpression()) #3, !dbg !1331
  %464 = bitcast %struct.real_pos_lru* %21 to i8*, !dbg !1332
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %464) #3, !dbg !1332
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %464, i8 0, i64 16, i1 false) #3, !dbg !662
  call void @llvm.dbg.value(metadata i8 0, metadata !469, metadata !DIExpression()) #3, !dbg !1331
  call void @llvm.dbg.value(metadata i8 0, metadata !470, metadata !DIExpression()) #3, !dbg !1331
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()) #3, !dbg !1331
  %465 = bitcast i32* %22 to i8*, !dbg !1333
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %465) #3, !dbg !1333
  %466 = bitcast i32* %20 to i8*, !dbg !1334
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %466) #3, !dbg !1334
  call void @llvm.dbg.value(metadata i32 514, metadata !1340, metadata !DIExpression()) #3, !dbg !1343
  store i32 514, i32* %20, align 4, !dbg !1344, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %20, metadata !1340, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1343
  %467 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.16* @stats to i8*), i8* nonnull %466) #3, !dbg !1345
  call void @llvm.dbg.value(metadata i8* %467, metadata !1341, metadata !DIExpression()) #3, !dbg !1343
  %468 = icmp eq i8* %467, null, !dbg !1346
  br i1 %468, label %483, label %469, !dbg !1348

469:                                              ; preds = %463
  call void @llvm.dbg.value(metadata i8* %467, metadata !1341, metadata !DIExpression()) #3, !dbg !1343
  %470 = call i64 inttoptr (i64 5 to i64 ()*)() #3, !dbg !1349
  %471 = getelementptr inbounds i8, i8* %467, i64 8, !dbg !1350
  %472 = bitcast i8* %471 to i64*, !dbg !1350
  %473 = load i64, i64* %472, align 8, !dbg !1350, !tbaa !1204
  %474 = sub i64 %470, %473, !dbg !1352
  %475 = icmp ugt i64 %474, 1000000000, !dbg !1353
  %476 = bitcast i8* %467 to i64*, !dbg !1354
  br i1 %475, label %477, label %478, !dbg !1355

477:                                              ; preds = %469
  store i64 1, i64* %476, align 8, !dbg !1356, !tbaa !1061
  store i64 %470, i64* %472, align 8, !dbg !1358, !tbaa !1204
  br label %482, !dbg !1359

478:                                              ; preds = %469
  %479 = load i64, i64* %476, align 8, !dbg !1360, !tbaa !1061
  %480 = add i64 %479, 1, !dbg !1360
  store i64 %480, i64* %476, align 8, !dbg !1360, !tbaa !1061
  %481 = icmp ugt i64 %480, 125000, !dbg !1362
  br i1 %481, label %483, label %482, !dbg !1364

482:                                              ; preds = %478, %477
  br label %483, !dbg !1365

483:                                              ; preds = %482, %478, %463
  %484 = phi i64 [ 0, %463 ], [ %470, %482 ], [ %470, %478 ], !dbg !1331
  %485 = phi i1 [ true, %463 ], [ false, %482 ], [ true, %478 ], !dbg !1343
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %466) #3, !dbg !1366
  call void @llvm.dbg.value(metadata i1 %485, metadata !469, metadata !DIExpression()) #3, !dbg !1331
  call void @llvm.dbg.value(metadata i1 false, metadata !475, metadata !DIExpression()) #3, !dbg !1367
  %486 = load i32, i32* %260, align 4, !dbg !1368, !tbaa !1042
  %487 = and i32 %486, 8, !dbg !1370
  %488 = icmp eq i32 %487, 0, !dbg !1370
  br i1 %488, label %489, label %493, !dbg !1371

489:                                              ; preds = %483
  %490 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1372
  %491 = load i32, i32* %490, align 4, !dbg !1372, !tbaa !879
  %492 = add i32 %491, -525483785, !dbg !1371
  br label %495, !dbg !1371

493:                                              ; preds = %483
  %494 = load i16, i16* %232, align 2, !dbg !1381, !tbaa !879
  store i16 %494, i16* %391, align 4, !dbg !1383, !tbaa !879
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %52, i8 0, i64 16, i1 false) #3, !dbg !1384
  br label %495, !dbg !1385

495:                                              ; preds = %493, %489
  %496 = phi i32 [ %492, %489 ], [ -525483785, %493 ]
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !1378, metadata !DIExpression()) #3, !dbg !1386
  call void @llvm.dbg.value(metadata i1 false, metadata !1379, metadata !DIExpression()) #3, !dbg !1386
  %497 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 2, i32 0, !dbg !1387
  %498 = load i32, i32* %497, align 4, !dbg !1387, !tbaa !879
  call void @llvm.dbg.value(metadata i32 undef, metadata !1389, metadata !DIExpression()) #3, !dbg !1396
  call void @llvm.dbg.value(metadata i32 %498, metadata !1394, metadata !DIExpression()) #3, !dbg !1396
  call void @llvm.dbg.value(metadata i32 33554944, metadata !1395, metadata !DIExpression()) #3, !dbg !1396
  call void @llvm.dbg.value(metadata i32 undef, metadata !1398, metadata !DIExpression()) #3, !dbg !1406
  call void @llvm.dbg.value(metadata i32 %498, metadata !1403, metadata !DIExpression()) #3, !dbg !1406
  call void @llvm.dbg.value(metadata i32 0, metadata !1404, metadata !DIExpression()) #3, !dbg !1406
  call void @llvm.dbg.value(metadata i32 -525483785, metadata !1405, metadata !DIExpression()) #3, !dbg !1406
  call void @llvm.dbg.value(metadata i32 %496, metadata !1398, metadata !DIExpression()) #3, !dbg !1406
  %499 = add i32 %498, -525483785, !dbg !1408
  call void @llvm.dbg.value(metadata i32 %499, metadata !1403, metadata !DIExpression()) #3, !dbg !1406
  call void @llvm.dbg.value(metadata i32 -525483785, metadata !1404, metadata !DIExpression()) #3, !dbg !1406
  %500 = xor i32 %499, -525483785, !dbg !1409
  call void @llvm.dbg.value(metadata i32 %500, metadata !1404, metadata !DIExpression()) #3, !dbg !1406
  call void @llvm.dbg.value(metadata i32 %499, metadata !1411, metadata !DIExpression()) #3, !dbg !1417
  call void @llvm.dbg.value(metadata i32 14, metadata !1416, metadata !DIExpression()) #3, !dbg !1417
  %501 = shl i32 %499, 14, !dbg !1419
  %502 = lshr i32 %499, 18, !dbg !1420
  %503 = or i32 %502, %501, !dbg !1421
  %504 = sub i32 %500, %503, !dbg !1409
  call void @llvm.dbg.value(metadata i32 %504, metadata !1404, metadata !DIExpression()) #3, !dbg !1406
  %505 = xor i32 %504, %496, !dbg !1409
  call void @llvm.dbg.value(metadata i32 %505, metadata !1398, metadata !DIExpression()) #3, !dbg !1406
  call void @llvm.dbg.value(metadata i32 %504, metadata !1411, metadata !DIExpression()) #3, !dbg !1422
  call void @llvm.dbg.value(metadata i32 11, metadata !1416, metadata !DIExpression()) #3, !dbg !1422
  %506 = shl i32 %504, 11, !dbg !1424
  %507 = lshr i32 %504, 21, !dbg !1425
  %508 = or i32 %507, %506, !dbg !1426
  %509 = sub i32 %505, %508, !dbg !1409
  call void @llvm.dbg.value(metadata i32 %509, metadata !1398, metadata !DIExpression()) #3, !dbg !1406
  %510 = xor i32 %509, %499, !dbg !1409
  call void @llvm.dbg.value(metadata i32 %510, metadata !1403, metadata !DIExpression()) #3, !dbg !1406
  call void @llvm.dbg.value(metadata i32 %509, metadata !1411, metadata !DIExpression()) #3, !dbg !1427
  call void @llvm.dbg.value(metadata i32 25, metadata !1416, metadata !DIExpression()) #3, !dbg !1427
  %511 = shl i32 %509, 25, !dbg !1429
  %512 = lshr i32 %509, 7, !dbg !1430
  %513 = or i32 %512, %511, !dbg !1431
  %514 = sub i32 %510, %513, !dbg !1409
  call void @llvm.dbg.value(metadata i32 %514, metadata !1403, metadata !DIExpression()) #3, !dbg !1406
  %515 = xor i32 %514, %504, !dbg !1409
  call void @llvm.dbg.value(metadata i32 %515, metadata !1404, metadata !DIExpression()) #3, !dbg !1406
  call void @llvm.dbg.value(metadata i32 %514, metadata !1411, metadata !DIExpression()) #3, !dbg !1432
  call void @llvm.dbg.value(metadata i32 16, metadata !1416, metadata !DIExpression()) #3, !dbg !1432
  %516 = shl i32 %514, 16, !dbg !1434
  %517 = lshr i32 %514, 16, !dbg !1435
  %518 = or i32 %517, %516, !dbg !1436
  %519 = sub i32 %515, %518, !dbg !1409
  call void @llvm.dbg.value(metadata i32 %519, metadata !1404, metadata !DIExpression()) #3, !dbg !1406
  %520 = xor i32 %519, %509, !dbg !1409
  call void @llvm.dbg.value(metadata i32 %520, metadata !1398, metadata !DIExpression()) #3, !dbg !1406
  call void @llvm.dbg.value(metadata i32 %519, metadata !1411, metadata !DIExpression()) #3, !dbg !1437
  call void @llvm.dbg.value(metadata i32 4, metadata !1416, metadata !DIExpression()) #3, !dbg !1437
  %521 = shl i32 %519, 4, !dbg !1439
  %522 = lshr i32 %519, 28, !dbg !1440
  %523 = or i32 %522, %521, !dbg !1441
  %524 = sub i32 %520, %523, !dbg !1409
  call void @llvm.dbg.value(metadata i32 %524, metadata !1398, metadata !DIExpression()) #3, !dbg !1406
  %525 = xor i32 %524, %514, !dbg !1409
  call void @llvm.dbg.value(metadata i32 %525, metadata !1403, metadata !DIExpression()) #3, !dbg !1406
  call void @llvm.dbg.value(metadata i32 %524, metadata !1411, metadata !DIExpression()) #3, !dbg !1442
  call void @llvm.dbg.value(metadata i32 14, metadata !1416, metadata !DIExpression()) #3, !dbg !1442
  %526 = shl i32 %524, 14, !dbg !1444
  %527 = lshr i32 %524, 18, !dbg !1445
  %528 = or i32 %527, %526, !dbg !1446
  %529 = sub i32 %525, %528, !dbg !1409
  call void @llvm.dbg.value(metadata i32 %529, metadata !1403, metadata !DIExpression()) #3, !dbg !1406
  %530 = xor i32 %529, %519, !dbg !1409
  call void @llvm.dbg.value(metadata i32 %530, metadata !1404, metadata !DIExpression()) #3, !dbg !1406
  call void @llvm.dbg.value(metadata i32 %529, metadata !1411, metadata !DIExpression()) #3, !dbg !1447
  call void @llvm.dbg.value(metadata i32 24, metadata !1416, metadata !DIExpression()) #3, !dbg !1447
  %531 = shl i32 %529, 24, !dbg !1449
  %532 = lshr i32 %529, 8, !dbg !1450
  %533 = or i32 %532, %531, !dbg !1451
  %534 = sub i32 %530, %533, !dbg !1409
  call void @llvm.dbg.value(metadata i32 %534, metadata !1404, metadata !DIExpression()) #3, !dbg !1406
  %535 = urem i32 %534, 65537, !dbg !1452
  call void @llvm.dbg.value(metadata i32 %535, metadata !473, metadata !DIExpression()) #3, !dbg !1331
  %536 = getelementptr inbounds %struct.vip_meta, %struct.vip_meta* %249, i64 0, i32 1, !dbg !1453
  %537 = load i32, i32* %536, align 4, !dbg !1453, !tbaa !1454
  %538 = mul i32 %537, 65537, !dbg !1455
  %539 = add i32 %535, %538, !dbg !1456
  call void @llvm.dbg.value(metadata i32 %539, metadata !474, metadata !DIExpression()) #3, !dbg !1331
  store i32 %539, i32* %22, align 4, !dbg !1457, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %22, metadata !474, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1331
  %540 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.12* @ch_rings to i8*), i8* nonnull %465) #3, !dbg !1458
  call void @llvm.dbg.value(metadata i8* %540, metadata !471, metadata !DIExpression()) #3, !dbg !1331
  %541 = icmp eq i8* %540, null, !dbg !1459
  br i1 %541, label %564, label %542, !dbg !1461

542:                                              ; preds = %495
  %543 = bitcast i8* %540 to i32*, !dbg !1458
  call void @llvm.dbg.value(metadata i32* %543, metadata !471, metadata !DIExpression()) #3, !dbg !1331
  %544 = load i32, i32* %543, align 4, !dbg !1462, !tbaa !760
  call void @llvm.dbg.value(metadata i32 %544, metadata !474, metadata !DIExpression()) #3, !dbg !1331
  store i32 %544, i32* %22, align 4, !dbg !1463, !tbaa !760
  call void @llvm.dbg.value(metadata i32 %544, metadata !474, metadata !DIExpression()) #3, !dbg !1331
  %545 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 1, !dbg !1464
  store i32 %544, i32* %545, align 4, !dbg !1465, !tbaa !1210
  call void @llvm.dbg.value(metadata i32* %22, metadata !474, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1331
  %546 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.13* @reals to i8*), i8* nonnull %465) #3, !dbg !1466
  %547 = icmp eq i8* %546, null, !dbg !1467
  br i1 %547, label %564, label %548, !dbg !1469

548:                                              ; preds = %542
  %549 = icmp eq i8* %413, null, !dbg !1470
  br i1 %549, label %565, label %550, !dbg !1472

550:                                              ; preds = %548
  %551 = load i32, i32* %260, align 4, !dbg !1473, !tbaa !1042
  %552 = and i32 %551, 2, !dbg !1474
  %553 = icmp ne i32 %552, 0, !dbg !1474
  %554 = or i1 %485, %553, !dbg !1475
  br i1 %554, label %565, label %555, !dbg !1475

555:                                              ; preds = %550
  %556 = load i8, i8* %68, align 4, !dbg !1476, !tbaa !783
  %557 = icmp eq i8 %556, 17, !dbg !1479
  br i1 %557, label %558, label %560, !dbg !1480

558:                                              ; preds = %555
  call void @llvm.dbg.value(metadata i64 %484, metadata !472, metadata !DIExpression()) #3, !dbg !1331
  %559 = getelementptr inbounds %struct.real_pos_lru, %struct.real_pos_lru* %21, i64 0, i32 1, !dbg !1481
  store i64 %484, i64* %559, align 8, !dbg !1483, !tbaa !1299
  br label %560, !dbg !1484

560:                                              ; preds = %558, %555
  %561 = load i32, i32* %22, align 4, !dbg !1485, !tbaa !760
  call void @llvm.dbg.value(metadata i32 %561, metadata !474, metadata !DIExpression()) #3, !dbg !1331
  %562 = getelementptr inbounds %struct.real_pos_lru, %struct.real_pos_lru* %21, i64 0, i32 0, !dbg !1486
  store i32 %561, i32* %562, align 8, !dbg !1487, !tbaa !1309
  %563 = call i32 inttoptr (i64 2 to i32 (i8*, i8*, i8*, i64)*)(i8* nonnull %413, i8* nonnull %52, i8* nonnull %464, i64 0) #3, !dbg !1488
  br label %565, !dbg !1489

564:                                              ; preds = %542, %495
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %465) #3, !dbg !1490
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %464) #3, !dbg !1490
  br label %570, !dbg !1491

565:                                              ; preds = %560, %550, %548
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %465) #3, !dbg !1490
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %464) #3, !dbg !1490
  %566 = getelementptr inbounds i8, i8* %254, i64 8, !dbg !1492
  %567 = bitcast i8* %566 to i64*, !dbg !1492
  %568 = load i64, i64* %567, align 8, !dbg !1493, !tbaa !1204
  %569 = add i64 %568, 1, !dbg !1493
  store i64 %569, i64* %567, align 8, !dbg !1493, !tbaa !1204
  br label %571, !dbg !1494

570:                                              ; preds = %564, %462, %411
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %398) #3, !dbg !1495
  br label %758

571:                                              ; preds = %565, %438
  %572 = phi i8* [ %546, %565 ], [ %442, %438 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %398) #3, !dbg !1495
  br label %573

573:                                              ; preds = %571, %383
  %574 = phi i16 [ %392, %571 ], [ %389, %383 ]
  %575 = phi i16* [ %391, %571 ], [ %388, %383 ]
  %576 = phi i8* [ %572, %571 ], [ %363, %383 ]
  call void @llvm.dbg.value(metadata i32* %31, metadata !505, metadata !DIExpression(DW_OP_deref)) #3, !dbg !754
  %577 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.3* @ctl_array to i8*), i8* nonnull %55) #3, !dbg !1496
  call void @llvm.dbg.value(metadata i8* %577, metadata !494, metadata !DIExpression()) #3, !dbg !754
  %578 = icmp eq i8* %577, null, !dbg !1497
  br i1 %578, label %758, label %579, !dbg !1499

579:                                              ; preds = %573
  %580 = getelementptr inbounds %struct.vip_meta, %struct.vip_meta* %249, i64 0, i32 1, !dbg !1500
  %581 = load i32, i32* %580, align 4, !dbg !1500, !tbaa !1454
  call void @llvm.dbg.value(metadata i32 %581, metadata !504, metadata !DIExpression()) #3, !dbg !754
  store i32 %581, i32* %30, align 4, !dbg !1501, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %30, metadata !504, metadata !DIExpression(DW_OP_deref)) #3, !dbg !754
  %582 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.16* @stats to i8*), i8* nonnull %54) #3, !dbg !1502
  call void @llvm.dbg.value(metadata i8* %582, metadata !499, metadata !DIExpression()) #3, !dbg !754
  %583 = icmp eq i8* %582, null, !dbg !1503
  br i1 %583, label %758, label %584, !dbg !1505

584:                                              ; preds = %579
  call void @llvm.dbg.value(metadata i8* %582, metadata !499, metadata !DIExpression()) #3, !dbg !754
  %585 = bitcast i8* %582 to i64*, !dbg !1506
  %586 = load i64, i64* %585, align 8, !dbg !1507, !tbaa !1061
  %587 = add i64 %586, 1, !dbg !1507
  store i64 %587, i64* %585, align 8, !dbg !1507, !tbaa !1061
  call void @llvm.dbg.value(metadata i16 %72, metadata !506, metadata !DIExpression()) #3, !dbg !754
  %588 = zext i16 %72 to i64, !dbg !1508
  %589 = getelementptr inbounds i8, i8* %582, i64 8, !dbg !1509
  %590 = bitcast i8* %589 to i64*, !dbg !1509
  %591 = load i64, i64* %590, align 8, !dbg !1510, !tbaa !1204
  %592 = add i64 %591, %588, !dbg !1510
  store i64 %592, i64* %590, align 8, !dbg !1510, !tbaa !1204
  %593 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 1, !dbg !1511
  %594 = bitcast i32* %593 to i8*, !dbg !1512
  %595 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.15* @reals_stats to i8*), i8* nonnull %594) #3, !dbg !1513
  call void @llvm.dbg.value(metadata i8* %595, metadata !499, metadata !DIExpression()) #3, !dbg !754
  %596 = icmp eq i8* %595, null, !dbg !1514
  br i1 %596, label %758, label %597, !dbg !1516

597:                                              ; preds = %584
  call void @llvm.dbg.value(metadata i8* %595, metadata !499, metadata !DIExpression()) #3, !dbg !754
  %598 = bitcast i8* %595 to i64*, !dbg !1517
  %599 = load i64, i64* %598, align 8, !dbg !1518, !tbaa !1061
  %600 = add i64 %599, 1, !dbg !1518
  store i64 %600, i64* %598, align 8, !dbg !1518, !tbaa !1061
  call void @llvm.dbg.value(metadata i16 %72, metadata !506, metadata !DIExpression()) #3, !dbg !754
  %601 = getelementptr inbounds i8, i8* %595, i64 8, !dbg !1519
  %602 = bitcast i8* %601 to i64*, !dbg !1519
  %603 = load i64, i64* %602, align 8, !dbg !1520, !tbaa !1204
  %604 = add i64 %603, %588, !dbg !1520
  store i64 %604, i64* %602, align 8, !dbg !1520, !tbaa !1204
  store i16 %574, i16* %575, align 4, !dbg !1521, !tbaa !879
  call void @llvm.dbg.value(metadata i8* %576, metadata !495, metadata !DIExpression()) #3, !dbg !754
  %605 = getelementptr inbounds i8, i8* %576, i64 16, !dbg !1522
  %606 = load i8, i8* %605, align 4, !dbg !1522, !tbaa !1524
  %607 = and i8 %606, 1, !dbg !1526
  %608 = icmp eq i8 %607, 0, !dbg !1526
  call void @llvm.dbg.value(metadata i16 %72, metadata !506, metadata !DIExpression()) #3, !dbg !754
  call void @llvm.dbg.value(metadata i16 %72, metadata !506, metadata !DIExpression()) #3, !dbg !754
  br i1 %608, label %662, label %609, !dbg !1527

609:                                              ; preds = %597
  call void @llvm.dbg.value(metadata %struct.__sk_buff* %0, metadata !1528, metadata !DIExpression()) #3, !dbg !1548
  call void @llvm.dbg.value(metadata i8* %577, metadata !1534, metadata !DIExpression()) #3, !dbg !1548
  call void @llvm.dbg.value(metadata i1 false, metadata !1535, metadata !DIExpression()) #3, !dbg !1548
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !1536, metadata !DIExpression()) #3, !dbg !1548
  call void @llvm.dbg.value(metadata i8* %576, metadata !1537, metadata !DIExpression()) #3, !dbg !1548
  call void @llvm.dbg.value(metadata i16 %72, metadata !1538, metadata !DIExpression()) #3, !dbg !1548
  %610 = bitcast %struct.__sk_buff* %0 to i8*, !dbg !1552
  %611 = call i32 inttoptr (i64 44 to i32 (i8*, i32)*)(i8* %610, i32 -40) #3, !dbg !1554
  %612 = icmp eq i32 %611, 0, !dbg !1554
  br i1 %612, label %613, label %758, !dbg !1555

613:                                              ; preds = %609
  %614 = load i32, i32* %38, align 4, !dbg !1556, !tbaa !735
  %615 = zext i32 %614 to i64, !dbg !1557
  %616 = inttoptr i64 %615 to i8*, !dbg !1558
  call void @llvm.dbg.value(metadata i8* %616, metadata !1539, metadata !DIExpression()) #3, !dbg !1548
  %617 = load i32, i32* %42, align 8, !dbg !1559, !tbaa !744
  %618 = zext i32 %617 to i64, !dbg !1560
  call void @llvm.dbg.value(metadata i64 %618, metadata !1540, metadata !DIExpression()) #3, !dbg !1548
  %619 = inttoptr i64 %615 to %struct.ethhdr*, !dbg !1561
  call void @llvm.dbg.value(metadata %struct.ethhdr* %619, metadata !1542, metadata !DIExpression()) #3, !dbg !1548
  %620 = getelementptr i8, i8* %616, i64 14, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %620, metadata !1541, metadata !DIExpression()) #3, !dbg !1548
  %621 = getelementptr i8, i8* %616, i64 40, !dbg !1563
  call void @llvm.dbg.value(metadata i8* %621, metadata !1543, metadata !DIExpression()) #3, !dbg !1548
  %622 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %619, i64 1, !dbg !1564
  %623 = inttoptr i64 %618 to %struct.ethhdr*, !dbg !1566
  %624 = icmp ugt %struct.ethhdr* %622, %623, !dbg !1567
  br i1 %624, label %758, label %625, !dbg !1568

625:                                              ; preds = %613
  %626 = getelementptr i8, i8* %616, i64 54, !dbg !1569
  %627 = bitcast i8* %626 to %struct.ethhdr*, !dbg !1569
  %628 = icmp ugt %struct.ethhdr* %627, %623, !dbg !1570
  br i1 %628, label %758, label %629, !dbg !1571

629:                                              ; preds = %625
  %630 = bitcast i8* %626 to %struct.ipv6hdr*, !dbg !1572
  %631 = inttoptr i64 %618 to %struct.ipv6hdr*, !dbg !1573
  %632 = icmp ugt %struct.ipv6hdr* %630, %631, !dbg !1574
  br i1 %632, label %758, label %633, !dbg !1575

633:                                              ; preds = %629
  %634 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %619, i64 0, i32 0, i64 0, !dbg !1576
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %634, i8* nonnull align 8 dereferenceable(6) %577, i64 6, i1 false) #3, !dbg !1576
  %635 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %619, i64 0, i32 1, i64 0, !dbg !1577
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %635, i8* nonnull align 1 dereferenceable(6) %621, i64 6, i1 false) #3, !dbg !1577
  %636 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %619, i64 0, i32 2, !dbg !1578
  store i16 -8826, i16* %636, align 1, !dbg !1579, !tbaa !1580
  call void @llvm.dbg.value(metadata i8 4, metadata !1547, metadata !DIExpression()) #3, !dbg !1548
  %637 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1582
  %638 = load i32, i32* %637, align 4, !dbg !1582, !tbaa !879
  %639 = load i16, i16* %575, align 4, !dbg !1585, !tbaa !879
  %640 = zext i16 %639 to i32, !dbg !1585
  %641 = xor i32 %638, %640, !dbg !1586
  call void @llvm.dbg.value(metadata i32 %641, metadata !1545, metadata !DIExpression()) #3, !dbg !1548
  call void @llvm.dbg.value(metadata i16 %72, metadata !1544, metadata !DIExpression()) #3, !dbg !1548
  call void @llvm.dbg.value(metadata i8 4, metadata !1547, metadata !DIExpression()) #3, !dbg !1548
  call void @llvm.dbg.value(metadata i32 %641, metadata !1545, metadata !DIExpression()) #3, !dbg !1548
  call void @llvm.dbg.value(metadata i16 %72, metadata !1544, metadata !DIExpression()) #3, !dbg !1548
  call void @llvm.dbg.value(metadata i32 1, metadata !1546, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #3, !dbg !1548
  call void @llvm.dbg.value(metadata i32 0, metadata !1546, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #3, !dbg !1548
  call void @llvm.dbg.value(metadata i32 0, metadata !1546, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #3, !dbg !1548
  call void @llvm.dbg.value(metadata i32 %641, metadata !1546, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #3, !dbg !1548
  %642 = load i8, i8* %65, align 1, !dbg !1587, !tbaa !776
  call void @llvm.dbg.value(metadata i8* %620, metadata !1588, metadata !DIExpression()) #3, !dbg !1599
  call void @llvm.dbg.value(metadata i8 %642, metadata !1594, metadata !DIExpression()) #3, !dbg !1599
  call void @llvm.dbg.value(metadata i32* undef, metadata !1595, metadata !DIExpression()) #3, !dbg !1599
  call void @llvm.dbg.value(metadata i8* %576, metadata !1596, metadata !DIExpression()) #3, !dbg !1599
  call void @llvm.dbg.value(metadata i16 %72, metadata !1597, metadata !DIExpression()) #3, !dbg !1599
  call void @llvm.dbg.value(metadata i8 4, metadata !1598, metadata !DIExpression()) #3, !dbg !1599
  %643 = getelementptr i8, i8* %616, i64 15, !dbg !1601
  %644 = getelementptr i8, i8* %616, i64 16, !dbg !1601
  %645 = bitcast i8* %644 to i16*, !dbg !1601
  store i16 0, i16* %645, align 1, !dbg !1601
  %646 = lshr i8 %642, 4, !dbg !1602
  %647 = or i8 %646, 96, !dbg !1603
  store i8 %647, i8* %620, align 4, !dbg !1603
  %648 = shl i8 %642, 4, !dbg !1604
  store i8 %648, i8* %643, align 1, !dbg !1605, !tbaa !879
  %649 = getelementptr i8, i8* %616, i64 20, !dbg !1606
  store i8 4, i8* %649, align 2, !dbg !1607, !tbaa !1608
  %650 = getelementptr i8, i8* %616, i64 18, !dbg !1611
  %651 = bitcast i8* %650 to i16*, !dbg !1611
  store i16 %71, i16* %651, align 4, !dbg !1612, !tbaa !1613
  %652 = getelementptr i8, i8* %616, i64 21, !dbg !1614
  store i8 64, i8* %652, align 1, !dbg !1615, !tbaa !1616
  %653 = getelementptr i8, i8* %616, i64 22, !dbg !1617
  %654 = bitcast i8* %653 to i32*, !dbg !1617
  store i32 1, i32* %654, align 4, !dbg !1617
  %655 = getelementptr i8, i8* %616, i64 26, !dbg !1617
  %656 = bitcast i8* %655 to i32*, !dbg !1617
  store i32 0, i32* %656, align 4, !dbg !1617
  %657 = getelementptr i8, i8* %616, i64 30, !dbg !1617
  %658 = bitcast i8* %657 to i32*, !dbg !1617
  store i32 0, i32* %658, align 4, !dbg !1617
  %659 = getelementptr i8, i8* %616, i64 34, !dbg !1617
  %660 = bitcast i8* %659 to i32*, !dbg !1617
  store i32 %641, i32* %660, align 4, !dbg !1617
  %661 = getelementptr i8, i8* %616, i64 38, !dbg !1618
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %661, i8* nonnull align 4 dereferenceable(16) %576, i64 16, i1 false) #3, !dbg !1618
  br label %758, !dbg !1619

662:                                              ; preds = %597
  call void @llvm.dbg.value(metadata %struct.__sk_buff* %0, metadata !1620, metadata !DIExpression()) #3, !dbg !1635
  call void @llvm.dbg.value(metadata i8* %577, metadata !1625, metadata !DIExpression()) #3, !dbg !1635
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !1626, metadata !DIExpression()) #3, !dbg !1635
  call void @llvm.dbg.value(metadata i8* %576, metadata !1627, metadata !DIExpression()) #3, !dbg !1635
  call void @llvm.dbg.value(metadata i16 %72, metadata !1628, metadata !DIExpression()) #3, !dbg !1635
  %663 = call i16 @llvm.bswap.i16(i16 %574) #3
  %664 = zext i16 %663 to i32, !dbg !1639
  call void @llvm.dbg.value(metadata i32 %664, metadata !1634, metadata !DIExpression()) #3, !dbg !1635
  %665 = shl nuw i32 %664, 16, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %665, metadata !1634, metadata !DIExpression()) #3, !dbg !1635
  %666 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1641
  %667 = load i32, i32* %666, align 4, !dbg !1641, !tbaa !879
  call void @llvm.dbg.value(metadata i32 undef, metadata !1634, metadata !DIExpression()) #3, !dbg !1635
  %668 = bitcast %struct.__sk_buff* %0 to i8*, !dbg !1642
  %669 = call i32 inttoptr (i64 44 to i32 (i8*, i32)*)(i8* %668, i32 -20) #3, !dbg !1644
  %670 = icmp eq i32 %669, 0, !dbg !1644
  br i1 %670, label %671, label %758, !dbg !1645

671:                                              ; preds = %662
  %672 = load i32, i32* %38, align 4, !dbg !1646, !tbaa !735
  %673 = zext i32 %672 to i64, !dbg !1647
  %674 = inttoptr i64 %673 to i8*, !dbg !1648
  call void @llvm.dbg.value(metadata i8* %674, metadata !1629, metadata !DIExpression()) #3, !dbg !1635
  %675 = load i32, i32* %42, align 8, !dbg !1649, !tbaa !744
  %676 = zext i32 %675 to i64, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %676, metadata !1630, metadata !DIExpression()) #3, !dbg !1635
  %677 = inttoptr i64 %673 to %struct.ethhdr*, !dbg !1651
  call void @llvm.dbg.value(metadata %struct.ethhdr* %677, metadata !1632, metadata !DIExpression()) #3, !dbg !1635
  %678 = getelementptr i8, i8* %674, i64 14, !dbg !1652
  call void @llvm.dbg.value(metadata i8* %678, metadata !1631, metadata !DIExpression()) #3, !dbg !1635
  %679 = getelementptr i8, i8* %674, i64 20, !dbg !1653
  call void @llvm.dbg.value(metadata i8* %679, metadata !1633, metadata !DIExpression()) #3, !dbg !1635
  %680 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %677, i64 1, !dbg !1654
  %681 = inttoptr i64 %676 to %struct.ethhdr*, !dbg !1656
  %682 = icmp ugt %struct.ethhdr* %680, %681, !dbg !1657
  br i1 %682, label %758, label %683, !dbg !1658

683:                                              ; preds = %671
  %684 = getelementptr i8, i8* %674, i64 34, !dbg !1659
  %685 = bitcast i8* %684 to %struct.ethhdr*, !dbg !1659
  %686 = icmp ugt %struct.ethhdr* %685, %681, !dbg !1660
  br i1 %686, label %758, label %687, !dbg !1661

687:                                              ; preds = %683
  %688 = bitcast i8* %684 to %struct.iphdr*, !dbg !1662
  %689 = inttoptr i64 %676 to %struct.iphdr*, !dbg !1663
  %690 = icmp ugt %struct.iphdr* %688, %689, !dbg !1664
  br i1 %690, label %758, label %691, !dbg !1665

691:                                              ; preds = %687
  %692 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %677, i64 0, i32 0, i64 0, !dbg !1666
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %692, i8* nonnull align 8 dereferenceable(6) %577, i64 6, i1 false) #3, !dbg !1666
  %693 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %677, i64 0, i32 1, i64 0, !dbg !1667
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %693, i8* nonnull align 1 dereferenceable(6) %679, i64 6, i1 false) #3, !dbg !1667
  %694 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %677, i64 0, i32 2, !dbg !1668
  store i16 8, i16* %694, align 1, !dbg !1669, !tbaa !1580
  %695 = load i8, i8* %65, align 1, !dbg !1670, !tbaa !776
  %696 = and i32 %667, -65536, !dbg !1671
  %697 = xor i32 %696, %665, !dbg !1671
  %698 = or i32 %697, 4268, !dbg !1672
  %699 = bitcast i8* %576 to i32*, !dbg !1673
  %700 = load i32, i32* %699, align 4, !dbg !1673, !tbaa !879
  call void @llvm.dbg.value(metadata i8* %678, metadata !1674, metadata !DIExpression()) #3, !dbg !1685
  call void @llvm.dbg.value(metadata i8 %695, metadata !1679, metadata !DIExpression()) #3, !dbg !1685
  call void @llvm.dbg.value(metadata i32 %698, metadata !1680, metadata !DIExpression()) #3, !dbg !1685
  call void @llvm.dbg.value(metadata i32 %700, metadata !1681, metadata !DIExpression()) #3, !dbg !1685
  call void @llvm.dbg.value(metadata i16 %72, metadata !1682, metadata !DIExpression()) #3, !dbg !1685
  call void @llvm.dbg.value(metadata i8 4, metadata !1683, metadata !DIExpression()) #3, !dbg !1685
  call void @llvm.dbg.value(metadata i64 0, metadata !1684, metadata !DIExpression()) #3, !dbg !1685
  store i8 69, i8* %678, align 4, !dbg !1687
  %701 = bitcast i8* %679 to i16*, !dbg !1688
  store i16 0, i16* %701, align 2, !dbg !1689, !tbaa !788
  %702 = getelementptr i8, i8* %674, i64 23, !dbg !1690
  store i8 4, i8* %702, align 1, !dbg !1691, !tbaa !780
  %703 = getelementptr i8, i8* %674, i64 24, !dbg !1692
  %704 = bitcast i8* %703 to i16*, !dbg !1692
  %705 = getelementptr i8, i8* %674, i64 15, !dbg !1693
  store i8 %695, i8* %705, align 1, !dbg !1694, !tbaa !771
  %706 = add i16 %72, 20, !dbg !1695
  %707 = call i16 @llvm.bswap.i16(i16 %706) #3
  %708 = getelementptr i8, i8* %674, i64 16, !dbg !1696
  %709 = bitcast i8* %708 to i16*, !dbg !1696
  store i16 %707, i16* %709, align 2, !dbg !1697, !tbaa !785
  %710 = getelementptr i8, i8* %674, i64 30, !dbg !1698
  %711 = bitcast i8* %710 to i32*, !dbg !1698
  store i32 %700, i32* %711, align 4, !dbg !1699, !tbaa !811
  %712 = getelementptr i8, i8* %674, i64 26, !dbg !1700
  %713 = bitcast i8* %712 to i32*, !dbg !1700
  store i32 %698, i32* %713, align 4, !dbg !1701, !tbaa !813
  %714 = getelementptr i8, i8* %674, i64 22, !dbg !1702
  store i8 64, i8* %714, align 4, !dbg !1703, !tbaa !809
  call void @llvm.dbg.value(metadata i8* %678, metadata !817, metadata !DIExpression()) #3, !dbg !1704
  %715 = bitcast i8* %678 to i16*, !dbg !1706
  call void @llvm.dbg.value(metadata i16* %715, metadata !825, metadata !DIExpression()) #3, !dbg !1704
  call void @llvm.dbg.value(metadata i32 0, metadata !826, metadata !DIExpression()) #3, !dbg !1707
  %716 = load i16, i16* %715, align 2, !dbg !1708, !tbaa !835
  %717 = zext i16 %716 to i64, !dbg !1708
  call void @llvm.dbg.value(metadata i32 1, metadata !826, metadata !DIExpression()) #3, !dbg !1707
  %718 = getelementptr i8, i8* %674, i64 18, !dbg !1709
  %719 = bitcast i8* %718 to i16*, !dbg !1709
  call void @llvm.dbg.value(metadata i16* %719, metadata !825, metadata !DIExpression()) #3, !dbg !1704
  %720 = zext i16 %707 to i64, !dbg !1708
  call void @llvm.dbg.value(metadata i32 2, metadata !826, metadata !DIExpression()) #3, !dbg !1707
  %721 = load i16, i16* %719, align 2, !dbg !1708, !tbaa !835
  %722 = zext i16 %721 to i64, !dbg !1708
  call void @llvm.dbg.value(metadata i32 3, metadata !826, metadata !DIExpression()) #3, !dbg !1707
  %723 = bitcast i8* %714 to i16*, !dbg !1709
  call void @llvm.dbg.value(metadata i16* %723, metadata !825, metadata !DIExpression()) #3, !dbg !1704
  call void @llvm.dbg.value(metadata i32 4, metadata !826, metadata !DIExpression()) #3, !dbg !1707
  %724 = load i16, i16* %723, align 2, !dbg !1708, !tbaa !835
  %725 = zext i16 %724 to i64, !dbg !1708
  call void @llvm.dbg.value(metadata i32 5, metadata !826, metadata !DIExpression()) #3, !dbg !1707
  call void @llvm.dbg.value(metadata i32 6, metadata !826, metadata !DIExpression()) #3, !dbg !1707
  call void @llvm.dbg.value(metadata i32 7, metadata !826, metadata !DIExpression()) #3, !dbg !1707
  %726 = lshr exact i32 %697, 16, !dbg !1708
  %727 = zext i32 %726 to i64, !dbg !1708
  call void @llvm.dbg.value(metadata i32 8, metadata !826, metadata !DIExpression()) #3, !dbg !1707
  %728 = and i32 %700, 65535, !dbg !1708
  %729 = zext i32 %728 to i64, !dbg !1708
  call void @llvm.dbg.value(metadata i32 9, metadata !826, metadata !DIExpression()) #3, !dbg !1707
  %730 = lshr i32 %700, 16, !dbg !1708
  %731 = zext i32 %730 to i64, !dbg !1708
  %732 = add nuw nsw i64 %720, 4268, !dbg !1710
  %733 = add nuw nsw i64 %732, %727, !dbg !1710
  %734 = add nuw nsw i64 %733, %729, !dbg !1710
  %735 = add nuw nsw i64 %734, %731, !dbg !1710
  %736 = add nuw nsw i64 %735, %717, !dbg !1710
  %737 = add nuw nsw i64 %736, %722, !dbg !1710
  %738 = add nuw nsw i64 %737, %725, !dbg !1710
  call void @llvm.dbg.value(metadata i32 10, metadata !826, metadata !DIExpression()) #3, !dbg !1707
  call void @llvm.dbg.value(metadata i32 0, metadata !838, metadata !DIExpression()) #3, !dbg !1711
  call void @llvm.dbg.value(metadata i64 %738, metadata !843, metadata !DIExpression()) #3, !dbg !1711
  %739 = lshr i64 %738, 16, !dbg !1713
  %740 = icmp eq i64 %739, 0, !dbg !1713
  %741 = and i64 %738, 65535, !dbg !1714
  %742 = add nuw nsw i64 %741, %739, !dbg !1714
  %743 = select i1 %740, i64 %738, i64 %742, !dbg !1714
  call void @llvm.dbg.value(metadata i64 %743, metadata !843, metadata !DIExpression()) #3, !dbg !1711
  call void @llvm.dbg.value(metadata i32 1, metadata !838, metadata !DIExpression()) #3, !dbg !1711
  %744 = lshr i64 %743, 16, !dbg !1713
  %745 = icmp eq i64 %744, 0, !dbg !1713
  %746 = and i64 %743, 65535, !dbg !1714
  %747 = add nuw nsw i64 %746, %744, !dbg !1714
  %748 = select i1 %745, i64 %743, i64 %747, !dbg !1714
  call void @llvm.dbg.value(metadata i64 %748, metadata !843, metadata !DIExpression()) #3, !dbg !1711
  call void @llvm.dbg.value(metadata i32 2, metadata !838, metadata !DIExpression()) #3, !dbg !1711
  %749 = lshr i64 %748, 16, !dbg !1713
  %750 = icmp eq i64 %749, 0, !dbg !1713
  %751 = and i64 %748, 65535, !dbg !1714
  %752 = add nuw nsw i64 %751, %749, !dbg !1714
  %753 = select i1 %750, i64 %748, i64 %752, !dbg !1714
  call void @llvm.dbg.value(metadata i64 %753, metadata !843, metadata !DIExpression()) #3, !dbg !1711
  call void @llvm.dbg.value(metadata i32 3, metadata !838, metadata !DIExpression()) #3, !dbg !1711
  %754 = lshr i64 %753, 16, !dbg !1713
  %755 = add nuw nsw i64 %754, %753, !dbg !1714
  call void @llvm.dbg.value(metadata i64 %755, metadata !843, metadata !DIExpression()) #3, !dbg !1711
  call void @llvm.dbg.value(metadata i32 4, metadata !838, metadata !DIExpression()) #3, !dbg !1711
  call void @llvm.dbg.value(metadata i64 %755, metadata !1684, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_xor, DW_OP_stack_value)) #3, !dbg !1685
  %756 = trunc i64 %755 to i16, !dbg !1715
  %757 = xor i16 %756, -1, !dbg !1715
  store i16 %757, i16* %704, align 2, !dbg !1716, !tbaa !854
  br label %758, !dbg !1717

758:                                              ; preds = %691, %687, %683, %671, %662, %633, %629, %625, %613, %609, %584, %579, %573, %570, %378, %252
  %759 = phi i32 [ 2, %378 ], [ 2, %252 ], [ 2, %573 ], [ 2, %579 ], [ 2, %584 ], [ 2, %570 ], [ 3, %691 ], [ 3, %633 ], [ 2, %609 ], [ 2, %629 ], [ 2, %625 ], [ 2, %613 ], [ 2, %662 ], [ 2, %687 ], [ 2, %683 ], [ 2, %671 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %253) #3, !dbg !1718
  br label %760

760:                                              ; preds = %51, %58, %62, %80, %83, %85, %145, %148, %171, %176, %204, %238, %248, %758
  %761 = phi i32 [ %759, %758 ], [ 0, %171 ], [ 0, %238 ], [ 2, %248 ], [ 2, %176 ], [ 2, %204 ], [ 3, %85 ], [ 2, %80 ], [ 0, %83 ], [ 2, %145 ], [ 2, %148 ], [ 2, %62 ], [ 2, %58 ], [ 2, %51 ], !dbg !754
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %55) #3, !dbg !1718
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %54) #3, !dbg !1718
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %53) #3, !dbg !1718
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %52) #3, !dbg !1718
  br label %1508, !dbg !1719

762:                                              ; preds = %48
  call void @llvm.dbg.value(metadata %struct.__sk_buff* %0, metadata !489, metadata !DIExpression()) #3, !dbg !1720
  call void @llvm.dbg.value(metadata i64 14, metadata !490, metadata !DIExpression()) #3, !dbg !1720
  call void @llvm.dbg.value(metadata i1 true, metadata !491, metadata !DIExpression()) #3, !dbg !1720
  call void @llvm.dbg.value(metadata i8* %41, metadata !492, metadata !DIExpression()) #3, !dbg !1720
  call void @llvm.dbg.value(metadata i8* %45, metadata !493, metadata !DIExpression()) #3, !dbg !1720
  call void @llvm.dbg.value(metadata %struct.real_definition* null, metadata !495, metadata !DIExpression()) #3, !dbg !1720
  %763 = bitcast %struct.packet_description* %10 to i8*, !dbg !1721
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %763) #3, !dbg !1721
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(48) %763, i8 0, i64 48, i1 false) #3, !dbg !660
  %764 = bitcast %struct.vip_definition* %11 to i8*, !dbg !1722
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %764) #3, !dbg !1722
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(20) %764, i8 0, i64 20, i1 false) #3, !dbg !661
  %765 = bitcast i32* %12 to i8*, !dbg !1723
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %765) #3, !dbg !1723
  %766 = bitcast i32* %13 to i8*, !dbg !1724
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %766) #3, !dbg !1724
  call void @llvm.dbg.value(metadata i32 0, metadata !505, metadata !DIExpression()) #3, !dbg !1720
  store i32 0, i32* %13, align 4, !dbg !1725, !tbaa !760
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !633, metadata !DIExpression()) #3, !dbg !1726
  call void @llvm.dbg.value(metadata i64 14, metadata !635, metadata !DIExpression()) #3, !dbg !1726
  call void @llvm.dbg.value(metadata i8* %41, metadata !637, metadata !DIExpression()) #3, !dbg !1726
  call void @llvm.dbg.value(metadata i8* %45, metadata !638, metadata !DIExpression()) #3, !dbg !1726
  call void @llvm.dbg.value(metadata i1 true, metadata !639, metadata !DIExpression()) #3, !dbg !1726
  call void @llvm.dbg.value(metadata i8* %46, metadata !658, metadata !DIExpression()) #3, !dbg !1726
  %767 = getelementptr i8, i8* %41, i64 54, !dbg !1727
  %768 = icmp ugt i8* %767, %45, !dbg !1729
  br i1 %768, label %1506, label %769, !dbg !1730

769:                                              ; preds = %762
  call void @llvm.dbg.value(metadata i64 40, metadata !640, metadata !DIExpression()) #3, !dbg !1726
  %770 = getelementptr i8, i8* %41, i64 20, !dbg !1731
  %771 = load i8, i8* %770, align 2, !dbg !1731, !tbaa !1608
  %772 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 3, !dbg !1732
  store i8 %771, i8* %772, align 4, !dbg !1733, !tbaa !783
  %773 = load i8, i8* %46, align 4, !dbg !1734
  %774 = shl i8 %773, 4, !dbg !1735
  %775 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 3, !dbg !1736
  store i8 %774, i8* %775, align 1, !dbg !1737, !tbaa !776
  %776 = getelementptr i8, i8* %41, i64 15, !dbg !1738
  %777 = load i8, i8* %776, align 1, !dbg !1739, !tbaa !879
  %778 = lshr i8 %777, 4, !dbg !1740
  %779 = or i8 %778, %774, !dbg !1741
  store i8 %779, i8* %775, align 1, !dbg !1742, !tbaa !776
  %780 = getelementptr i8, i8* %41, i64 18, !dbg !1743
  %781 = bitcast i8* %780 to i16*, !dbg !1743
  %782 = load i16, i16* %781, align 4, !dbg !1743, !tbaa !1613
  %783 = tail call i16 @llvm.bswap.i16(i16 %782) #3
  call void @llvm.dbg.value(metadata i64 54, metadata !635, metadata !DIExpression()) #3, !dbg !1726
  switch i8 %771, label %807 [
    i8 44, label %1506
    i8 58, label %784
  ], !dbg !1744

784:                                              ; preds = %769
  call void @llvm.dbg.value(metadata i8* %41, metadata !616, metadata !DIExpression()) #3, !dbg !1745
  call void @llvm.dbg.value(metadata i8* %45, metadata !617, metadata !DIExpression()) #3, !dbg !1745
  call void @llvm.dbg.value(metadata i64 54, metadata !618, metadata !DIExpression()) #3, !dbg !1745
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !619, metadata !DIExpression()) #3, !dbg !1745
  call void @llvm.dbg.value(metadata i8* %41, metadata !620, metadata !DIExpression(DW_OP_plus_uconst, 54, DW_OP_stack_value)) #3, !dbg !1745
  %785 = getelementptr i8, i8* %41, i64 62, !dbg !1746
  %786 = icmp ugt i8* %785, %45, !dbg !1748
  br i1 %786, label %1506, label %787, !dbg !1749

787:                                              ; preds = %784
  call void @llvm.dbg.value(metadata i8* %767, metadata !620, metadata !DIExpression()) #3, !dbg !1745
  call void @llvm.dbg.value(metadata i8* %767, metadata !620, metadata !DIExpression()) #3, !dbg !1745
  %788 = load i8, i8* %767, align 4, !dbg !1750, !tbaa !1751
  switch i8 %788, label %1506 [
    i8 -128, label %789
    i8 2, label %800
    i8 1, label %800
  ], !dbg !1753

789:                                              ; preds = %787
  call void @llvm.dbg.value(metadata i8* %41, metadata !537, metadata !DIExpression()) #3, !dbg !1754
  call void @llvm.dbg.value(metadata i8* %45, metadata !538, metadata !DIExpression()) #3, !dbg !1754
  %790 = bitcast [4 x i32]* %9 to i8*, !dbg !1755
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %790), !dbg !1755
  call void @llvm.dbg.value(metadata i64 0, metadata !607, metadata !DIExpression()) #3, !dbg !1754
  call void @llvm.dbg.value(metadata i64 14, metadata !607, metadata !DIExpression()) #3, !dbg !1754
  call void @llvm.dbg.value(metadata i8* %41, metadata !539, metadata !DIExpression(DW_OP_plus_uconst, 14, DW_OP_stack_value)) #3, !dbg !1754
  call void @llvm.dbg.value(metadata i64 54, metadata !607, metadata !DIExpression()) #3, !dbg !1754
  call void @llvm.dbg.value(metadata i8* %767, metadata !566, metadata !DIExpression()) #3, !dbg !1754
  store i8 -127, i8* %767, align 4, !dbg !1756, !tbaa !1751
  %791 = getelementptr i8, i8* %41, i64 56, !dbg !1757
  %792 = bitcast i8* %791 to i16*, !dbg !1757
  %793 = load i16, i16* %792, align 2, !dbg !1758, !tbaa !1759
  %794 = add i16 %793, -1, !dbg !1758
  store i16 %794, i16* %792, align 2, !dbg !1758, !tbaa !1759
  %795 = getelementptr i8, i8* %41, i64 21, !dbg !1760
  store i8 64, i8* %795, align 1, !dbg !1761, !tbaa !1616
  %796 = getelementptr i8, i8* %41, i64 22, !dbg !1762
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %790, i8* nonnull align 4 dereferenceable(16) %796, i64 16, i1 false) #3, !dbg !1763
  %797 = getelementptr i8, i8* %41, i64 38, !dbg !1764
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %796, i8* nonnull align 4 dereferenceable(16) %797, i64 16, i1 false) #3, !dbg !1765
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %797, i8* nonnull align 4 dereferenceable(16) %790, i64 16, i1 false) #3, !dbg !1766
  call void @llvm.dbg.value(metadata i8* %41, metadata !669, metadata !DIExpression()) #3, !dbg !1767
  call void @llvm.dbg.value(metadata i8* undef, metadata !670, metadata !DIExpression()) #3, !dbg !1767
  %798 = getelementptr inbounds [6 x i8], [6 x i8]* %27, i64 0, i64 0, !dbg !1768
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %798), !dbg !1768
  call void @llvm.dbg.value(metadata i8* %41, metadata !671, metadata !DIExpression()) #3, !dbg !1767
  %799 = getelementptr inbounds i8, i8* %41, i64 6, !dbg !1769
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %798, i8* nonnull align 1 dereferenceable(6) %799, i64 6, i1 false) #3, !dbg !1770
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %799, i8* nonnull align 1 dereferenceable(6) %41, i64 6, i1 false) #3, !dbg !1771
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %41, i8* nonnull align 1 dereferenceable(6) %798, i64 6, i1 false) #3, !dbg !1772
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %798), !dbg !1773
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %790), !dbg !1774
  br label %1506, !dbg !1775

800:                                              ; preds = %787, %787
  call void @llvm.dbg.value(metadata i64 62, metadata !618, metadata !DIExpression()) #3, !dbg !1745
  call void @llvm.dbg.value(metadata i8* %41, metadata !621, metadata !DIExpression(DW_OP_plus_uconst, 62, DW_OP_stack_value)) #3, !dbg !1745
  %801 = getelementptr i8, i8* %41, i64 102, !dbg !1776
  %802 = icmp ugt i8* %801, %45, !dbg !1778
  br i1 %802, label %1506, label %803, !dbg !1779

803:                                              ; preds = %800
  call void @llvm.dbg.value(metadata i8* %41, metadata !621, metadata !DIExpression(DW_OP_plus_uconst, 62, DW_OP_stack_value)) #3, !dbg !1745
  call void @llvm.dbg.value(metadata i8* %41, metadata !621, metadata !DIExpression(DW_OP_plus_uconst, 62, DW_OP_stack_value)) #3, !dbg !1745
  %804 = getelementptr i8, i8* %41, i64 68, !dbg !1780
  %805 = load i8, i8* %804, align 2, !dbg !1780, !tbaa !1608
  store i8 %805, i8* %772, align 4, !dbg !1781, !tbaa !783
  %806 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 2, !dbg !1782
  store i8 1, i8* %806, align 4, !dbg !1783, !tbaa !875
  call void @llvm.dbg.value(metadata i32 -1, metadata !641, metadata !DIExpression()) #3, !dbg !1726
  br label %807, !dbg !1784

807:                                              ; preds = %769, %803
  %808 = phi i64 [ 86, %803 ], [ 22, %769 ]
  %809 = phi i64 [ 70, %803 ], [ 38, %769 ]
  %810 = phi i8 [ 1, %803 ], [ 0, %769 ]
  %811 = phi i8 [ %805, %803 ], [ %771, %769 ], !dbg !1785
  %812 = getelementptr i8, i8* %41, i64 %808, !dbg !1786
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %763, i8* nonnull align 4 dereferenceable(16) %812, i64 16, i1 false) #3, !dbg !1786
  %813 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 1, i32 0, i64 0, !dbg !1786
  %814 = bitcast i32* %813 to i8*, !dbg !1786
  %815 = getelementptr i8, i8* %41, i64 %809, !dbg !1786
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %814, i8* nonnull align 4 dereferenceable(16) %815, i64 16, i1 false) #3, !dbg !1786
  call void @llvm.dbg.value(metadata i32 -1, metadata !503, metadata !DIExpression()) #3, !dbg !1720
  call void @llvm.dbg.value(metadata i8 %811, metadata !501, metadata !DIExpression()) #3, !dbg !1720
  switch i8 %811, label %1506 [
    i8 6, label %816
    i8 17, label %844
  ], !dbg !1787

816:                                              ; preds = %807
  call void @llvm.dbg.value(metadata i8* %41, metadata !890, metadata !DIExpression()) #3, !dbg !1788
  call void @llvm.dbg.value(metadata i8* %45, metadata !895, metadata !DIExpression()) #3, !dbg !1788
  call void @llvm.dbg.value(metadata i1 true, metadata !896, metadata !DIExpression()) #3, !dbg !1788
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !897, metadata !DIExpression()) #3, !dbg !1788
  %817 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 2, !dbg !1790
  %818 = icmp ne i8 %810, 0, !dbg !1791
  call void @llvm.dbg.value(metadata i1 %818, metadata !898, metadata !DIExpression()) #3, !dbg !1788
  call void @llvm.dbg.value(metadata i1 true, metadata !929, metadata !DIExpression()) #3, !dbg !1792
  call void @llvm.dbg.value(metadata i1 %818, metadata !934, metadata !DIExpression()) #3, !dbg !1792
  call void @llvm.dbg.value(metadata i64 14, metadata !935, metadata !DIExpression()) #3, !dbg !1792
  %819 = select i1 %818, i64 102, i64 54, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %819, metadata !899, metadata !DIExpression()) #3, !dbg !1788
  %820 = getelementptr i8, i8* %41, i64 %819, !dbg !1795
  call void @llvm.dbg.value(metadata i8* %820, metadata !900, metadata !DIExpression()) #3, !dbg !1788
  %821 = getelementptr inbounds i8, i8* %820, i64 20, !dbg !1796
  %822 = icmp ugt i8* %821, %45, !dbg !1797
  br i1 %822, label %1506, label %823, !dbg !1798

823:                                              ; preds = %816
  %824 = getelementptr inbounds i8, i8* %820, i64 12, !dbg !1799
  %825 = bitcast i8* %824 to i16*, !dbg !1799
  %826 = load i16, i16* %825, align 4, !dbg !1799
  %827 = and i16 %826, 512, !dbg !1799
  %828 = icmp eq i16 %827, 0, !dbg !1800
  br i1 %828, label %831, label %829, !dbg !1801

829:                                              ; preds = %823
  %830 = or i8 %810, 2, !dbg !1802
  store i8 %830, i8* %817, align 4, !dbg !1802, !tbaa !875
  br label %831, !dbg !1803

831:                                              ; preds = %829, %823
  br i1 %818, label %838, label %832, !dbg !1804

832:                                              ; preds = %831
  %833 = bitcast i8* %820 to i16*, !dbg !1805
  %834 = load i16, i16* %833, align 4, !dbg !1805, !tbaa !955
  %835 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 2, !dbg !1806
  %836 = bitcast %union.anon.11* %835 to i16*, !dbg !1807
  store i16 %834, i16* %836, align 4, !dbg !1808, !tbaa !879
  %837 = getelementptr inbounds i8, i8* %820, i64 2, !dbg !1809
  br label %863, !dbg !1810

838:                                              ; preds = %831
  %839 = getelementptr inbounds i8, i8* %820, i64 2, !dbg !1811
  %840 = bitcast i8* %839 to i16*, !dbg !1811
  %841 = load i16, i16* %840, align 2, !dbg !1811, !tbaa !964
  %842 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 2, !dbg !1812
  %843 = bitcast %union.anon.11* %842 to i16*, !dbg !1813
  store i16 %841, i16* %843, align 4, !dbg !1814, !tbaa !879
  br label %863

844:                                              ; preds = %807
  call void @llvm.dbg.value(metadata i8* %41, metadata !968, metadata !DIExpression()) #3, !dbg !1815
  call void @llvm.dbg.value(metadata i8* %45, metadata !971, metadata !DIExpression()) #3, !dbg !1815
  call void @llvm.dbg.value(metadata i1 true, metadata !972, metadata !DIExpression()) #3, !dbg !1815
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !973, metadata !DIExpression()) #3, !dbg !1815
  %845 = icmp ne i8 %810, 0, !dbg !1817
  call void @llvm.dbg.value(metadata i1 %845, metadata !974, metadata !DIExpression()) #3, !dbg !1815
  call void @llvm.dbg.value(metadata i1 true, metadata !929, metadata !DIExpression()) #3, !dbg !1818
  call void @llvm.dbg.value(metadata i1 %845, metadata !934, metadata !DIExpression()) #3, !dbg !1818
  call void @llvm.dbg.value(metadata i64 14, metadata !935, metadata !DIExpression()) #3, !dbg !1818
  %846 = select i1 %845, i64 102, i64 54, !dbg !1820
  call void @llvm.dbg.value(metadata i64 %846, metadata !975, metadata !DIExpression()) #3, !dbg !1815
  %847 = getelementptr i8, i8* %41, i64 %846, !dbg !1821
  call void @llvm.dbg.value(metadata i8* %847, metadata !976, metadata !DIExpression()) #3, !dbg !1815
  %848 = getelementptr inbounds i8, i8* %847, i64 8, !dbg !1822
  %849 = icmp ugt i8* %848, %45, !dbg !1823
  br i1 %849, label %1506, label %850, !dbg !1824

850:                                              ; preds = %844
  br i1 %845, label %857, label %851, !dbg !1825

851:                                              ; preds = %850
  %852 = bitcast i8* %847 to i16*, !dbg !1826
  %853 = load i16, i16* %852, align 2, !dbg !1826, !tbaa !1003
  %854 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 2, !dbg !1827
  %855 = bitcast %union.anon.11* %854 to i16*, !dbg !1828
  store i16 %853, i16* %855, align 4, !dbg !1829, !tbaa !879
  %856 = getelementptr inbounds i8, i8* %847, i64 2, !dbg !1830
  br label %863, !dbg !1831

857:                                              ; preds = %850
  %858 = getelementptr inbounds i8, i8* %847, i64 2, !dbg !1832
  %859 = bitcast i8* %858 to i16*, !dbg !1832
  %860 = load i16, i16* %859, align 2, !dbg !1832, !tbaa !1012
  %861 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 2, !dbg !1833
  %862 = bitcast %union.anon.11* %861 to i16*, !dbg !1834
  store i16 %860, i16* %862, align 4, !dbg !1835, !tbaa !879
  br label %863

863:                                              ; preds = %857, %851, %838, %832
  %864 = phi %union.anon.11* [ %861, %857 ], [ %854, %851 ], [ %842, %838 ], [ %835, %832 ]
  %865 = phi i8* [ %847, %857 ], [ %856, %851 ], [ %820, %838 ], [ %837, %832 ]
  %866 = bitcast i8* %865 to i16*, !dbg !1836
  %867 = load i16, i16* %866, align 2, !dbg !1836, !tbaa !835
  %868 = bitcast %union.anon.11* %864 to [2 x i16]*, !dbg !1836
  %869 = getelementptr inbounds [2 x i16], [2 x i16]* %868, i64 0, i64 1, !dbg !1836
  store i16 %867, i16* %869, align 2, !dbg !1836, !tbaa !879
  %870 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 1, i32 0, i64 0, !dbg !1837
  %871 = bitcast i32* %870 to i8*, !dbg !1838
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %764, i8* nonnull align 4 dereferenceable(16) %871, i64 16, i1 false) #3, !dbg !1838
  %872 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 2, !dbg !1840
  %873 = getelementptr inbounds [2 x i16], [2 x i16]* %868, i64 0, i64 1, !dbg !1841
  %874 = getelementptr inbounds %struct.vip_definition, %struct.vip_definition* %11, i64 0, i32 1, !dbg !1842
  store i16 %867, i16* %874, align 4, !dbg !1843, !tbaa !1025
  %875 = getelementptr inbounds %struct.vip_definition, %struct.vip_definition* %11, i64 0, i32 2, !dbg !1844
  store i8 %811, i8* %875, align 2, !dbg !1845, !tbaa !1029
  %876 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.5* @vip_map to i8*), i8* nonnull %764) #3, !dbg !1846
  %877 = bitcast i8* %876 to %struct.vip_meta*, !dbg !1846
  call void @llvm.dbg.value(metadata %struct.vip_meta* %877, metadata !498, metadata !DIExpression()) #3, !dbg !1720
  %878 = icmp eq i8* %876, null, !dbg !1847
  br i1 %878, label %879, label %889, !dbg !1848

879:                                              ; preds = %863
  store i16 0, i16* %874, align 4, !dbg !1849, !tbaa !1025
  %880 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.5* @vip_map to i8*), i8* nonnull %764) #3, !dbg !1850
  %881 = bitcast i8* %880 to %struct.vip_meta*, !dbg !1850
  call void @llvm.dbg.value(metadata %struct.vip_meta* %881, metadata !498, metadata !DIExpression()) #3, !dbg !1720
  %882 = icmp eq i8* %880, null, !dbg !1851
  br i1 %882, label %1506, label %883, !dbg !1852

883:                                              ; preds = %879
  %884 = bitcast i8* %880 to i32*, !dbg !1853
  %885 = load i32, i32* %884, align 4, !dbg !1853, !tbaa !1042
  %886 = and i32 %885, 8, !dbg !1854
  %887 = icmp eq i32 %886, 0, !dbg !1854
  br i1 %887, label %888, label %889, !dbg !1855

888:                                              ; preds = %883
  store i16 0, i16* %873, align 2, !dbg !1856, !tbaa !879
  br label %889, !dbg !1857

889:                                              ; preds = %888, %883, %863
  %890 = phi %struct.vip_meta* [ %877, %863 ], [ %881, %883 ], [ %881, %888 ], !dbg !1720
  call void @llvm.dbg.value(metadata %struct.vip_meta* %890, metadata !498, metadata !DIExpression()) #3, !dbg !1720
  %891 = sub nsw i64 %44, %40, !dbg !1858
  %892 = icmp sgt i64 %891, 1514, !dbg !1859
  br i1 %892, label %1506, label %893, !dbg !1860

893:                                              ; preds = %889
  %894 = bitcast i32* %14 to i8*, !dbg !1861
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %894) #3, !dbg !1861
  call void @llvm.dbg.value(metadata i32 512, metadata !507, metadata !DIExpression()) #3, !dbg !1720
  store i32 512, i32* %14, align 4, !dbg !1862, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %14, metadata !507, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1720
  %895 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.16* @stats to i8*), i8* nonnull %894) #3, !dbg !1863
  call void @llvm.dbg.value(metadata i8* %895, metadata !499, metadata !DIExpression()) #3, !dbg !1720
  %896 = icmp eq i8* %895, null, !dbg !1864
  br i1 %896, label %1504, label %897, !dbg !1865

897:                                              ; preds = %893
  %898 = bitcast i8* %895 to i64*, !dbg !1866
  %899 = load i64, i64* %898, align 8, !dbg !1867, !tbaa !1061
  %900 = add i64 %899, 1, !dbg !1867
  store i64 %900, i64* %898, align 8, !dbg !1867, !tbaa !1061
  %901 = getelementptr inbounds %struct.vip_meta, %struct.vip_meta* %890, i64 0, i32 0, !dbg !1868
  %902 = load i32, i32* %901, align 4, !dbg !1868, !tbaa !1042
  %903 = and i32 %902, 4, !dbg !1869
  %904 = icmp eq i32 %903, 0, !dbg !1869
  br i1 %904, label %1031, label %905, !dbg !1870

905:                                              ; preds = %897
  %906 = bitcast i32* %15 to i8*, !dbg !1871
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %906) #3, !dbg !1871
  call void @llvm.dbg.value(metadata i32 519, metadata !508, metadata !DIExpression()) #3, !dbg !1872
  store i32 519, i32* %15, align 4, !dbg !1873, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %15, metadata !508, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1872
  %907 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.16* @stats to i8*), i8* nonnull %906) #3, !dbg !1874
  call void @llvm.dbg.value(metadata i8* %907, metadata !511, metadata !DIExpression()) #3, !dbg !1872
  %908 = icmp eq i8* %907, null, !dbg !1875
  br i1 %908, label %1019, label %909, !dbg !1876

909:                                              ; preds = %905
  call void @llvm.dbg.value(metadata i8* %41, metadata !1073, metadata !DIExpression()) #3, !dbg !1877
  call void @llvm.dbg.value(metadata i8* %45, metadata !1078, metadata !DIExpression()) #3, !dbg !1877
  call void @llvm.dbg.value(metadata i1 true, metadata !1079, metadata !DIExpression()) #3, !dbg !1877
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !1080, metadata !DIExpression()) #3, !dbg !1877
  %910 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 2, !dbg !1879
  %911 = load i8, i8* %910, align 4, !dbg !1879, !tbaa !875
  %912 = and i8 %911, 1, !dbg !1880
  %913 = icmp eq i8 %912, 0, !dbg !1881
  call void @llvm.dbg.value(metadata i1 %913, metadata !1081, metadata !DIExpression()) #3, !dbg !1877
  call void @llvm.dbg.value(metadata i1 true, metadata !929, metadata !DIExpression()) #3, !dbg !1882
  call void @llvm.dbg.value(metadata i1 %913, metadata !934, metadata !DIExpression()) #3, !dbg !1882
  call void @llvm.dbg.value(metadata i64 14, metadata !935, metadata !DIExpression()) #3, !dbg !1882
  %914 = select i1 %913, i64 54, i64 102, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %914, metadata !1082, metadata !DIExpression()) #3, !dbg !1877
  %915 = getelementptr i8, i8* %41, i64 %914, !dbg !1885
  %916 = getelementptr i8, i8* %915, i64 8, !dbg !1886
  %917 = getelementptr i8, i8* %916, i64 1, !dbg !1887
  %918 = icmp ugt i8* %917, %45, !dbg !1888
  br i1 %918, label %1015, label %919, !dbg !1889

919:                                              ; preds = %909
  call void @llvm.dbg.value(metadata i8* %916, metadata !1083, metadata !DIExpression()) #3, !dbg !1877
  call void @llvm.dbg.value(metadata i8* %916, metadata !1084, metadata !DIExpression()) #3, !dbg !1877
  call void @llvm.dbg.value(metadata i8* null, metadata !1085, metadata !DIExpression()) #3, !dbg !1877
  %920 = load i8, i8* %916, align 1, !dbg !1890, !tbaa !879
  %921 = zext i8 %920 to i32, !dbg !1890
  %922 = and i32 %921, 128, !dbg !1891
  %923 = icmp eq i32 %922, 0, !dbg !1892
  br i1 %923, label %935, label %924, !dbg !1893

924:                                              ; preds = %919
  %925 = getelementptr inbounds i8, i8* %916, i64 14, !dbg !1894
  %926 = icmp ugt i8* %925, %45, !dbg !1895
  %927 = and i32 %921, 32, !dbg !1896
  %928 = icmp eq i32 %927, 0, !dbg !1897
  %929 = or i1 %926, %928, !dbg !1898
  br i1 %929, label %1015, label %930, !dbg !1898

930:                                              ; preds = %924
  call void @llvm.dbg.value(metadata i8* %916, metadata !1086, metadata !DIExpression()) #3, !dbg !1899
  %931 = getelementptr inbounds i8, i8* %916, i64 5, !dbg !1900
  %932 = load i8, i8* %931, align 1, !dbg !1900, !tbaa !1122
  %933 = icmp ult i8 %932, 8, !dbg !1901
  %934 = getelementptr inbounds i8, i8* %916, i64 6, !dbg !1902
  br i1 %933, label %1015, label %938

935:                                              ; preds = %919
  %936 = getelementptr inbounds i8, i8* %916, i64 9, !dbg !1903
  %937 = icmp ugt i8* %936, %45, !dbg !1904
  br i1 %937, label %1015, label %938, !dbg !1905

938:                                              ; preds = %935, %930
  %939 = phi i8* [ %917, %935 ], [ %934, %930 ]
  %940 = load i8, i8* %939, align 1, !dbg !1906, !tbaa !879
  %941 = lshr i8 %940, 6, !dbg !1907
  call void @llvm.dbg.value(metadata i8 %941, metadata !1089, metadata !DIExpression()) #3, !dbg !1877
  %942 = trunc i8 %941 to i2, !dbg !1908
  switch i2 %942, label %1015 [
    i2 1, label %943
    i2 -2, label %955
  ], !dbg !1908

943:                                              ; preds = %938
  %944 = and i8 %940, 63, !dbg !1909
  %945 = zext i8 %944 to i32, !dbg !1909
  %946 = shl nuw nsw i32 %945, 10, !dbg !1910
  %947 = getelementptr inbounds i8, i8* %939, i64 1, !dbg !1911
  %948 = load i8, i8* %947, align 1, !dbg !1911, !tbaa !879
  %949 = zext i8 %948 to i32, !dbg !1911
  %950 = shl nuw nsw i32 %949, 2, !dbg !1912
  %951 = or i32 %950, %946, !dbg !1913
  %952 = getelementptr inbounds i8, i8* %939, i64 2, !dbg !1914
  %953 = load i8, i8* %952, align 1, !dbg !1914, !tbaa !879
  %954 = lshr i8 %953, 6, !dbg !1915
  br label %967, !dbg !1916

955:                                              ; preds = %938
  %956 = getelementptr inbounds i8, i8* %939, i64 1, !dbg !1917
  %957 = load i8, i8* %956, align 1, !dbg !1917, !tbaa !879
  %958 = zext i8 %957 to i32, !dbg !1917
  %959 = shl nuw nsw i32 %958, 16, !dbg !1918
  %960 = getelementptr inbounds i8, i8* %939, i64 2, !dbg !1919
  %961 = load i8, i8* %960, align 1, !dbg !1919, !tbaa !879
  %962 = zext i8 %961 to i32, !dbg !1919
  %963 = shl nuw nsw i32 %962, 8, !dbg !1920
  %964 = or i32 %963, %959, !dbg !1921
  %965 = getelementptr inbounds i8, i8* %939, i64 3, !dbg !1922
  %966 = load i8, i8* %965, align 1, !dbg !1922, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %971, metadata !1090, metadata !DIExpression()) #3, !dbg !1923
  br label %967

967:                                              ; preds = %955, %943
  %968 = phi i8 [ %966, %955 ], [ %954, %943 ]
  %969 = phi i32 [ %964, %955 ], [ %951, %943 ]
  %970 = zext i8 %968 to i32, !dbg !1924
  %971 = or i32 %969, %970, !dbg !1924
  call void @llvm.dbg.value(metadata i32 %971, metadata !512, metadata !DIExpression()) #3, !dbg !1872
  %972 = icmp sgt i32 %971, 0, !dbg !1925
  br i1 %972, label %973, label %1015, !dbg !1926

973:                                              ; preds = %967
  call void @llvm.dbg.value(metadata i32 %971, metadata !1153, metadata !DIExpression()) #3, !dbg !1927
  %974 = bitcast i32* %8 to i8*, !dbg !1929
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %974) #3, !dbg !1929
  call void @llvm.dbg.value(metadata i32 520, metadata !1158, metadata !DIExpression()) #3, !dbg !1927
  store i32 520, i32* %8, align 4, !dbg !1930, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %8, metadata !1158, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1927
  %975 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.16* @stats to i8*), i8* nonnull %974) #3, !dbg !1931
  call void @llvm.dbg.value(metadata i8* %975, metadata !1159, metadata !DIExpression()) #3, !dbg !1927
  %976 = icmp eq i8* %975, null, !dbg !1932
  br i1 %976, label %984, label %977, !dbg !1933

977:                                              ; preds = %973
  %978 = icmp sgt i32 %971, 65535, !dbg !1934
  %979 = getelementptr inbounds i8, i8* %975, i64 8, !dbg !1935
  %980 = select i1 %978, i8* %979, i8* %975, !dbg !1935
  %981 = bitcast i8* %980 to i64*, !dbg !1936
  %982 = load i64, i64* %981, align 8, !dbg !1936, !tbaa !1172
  %983 = add i64 %982, 1, !dbg !1936
  store i64 %983, i64* %981, align 8, !dbg !1936, !tbaa !1172
  br label %984, !dbg !1937

984:                                              ; preds = %977, %973
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %974) #3, !dbg !1937
  %985 = bitcast i32* %16 to i8*, !dbg !1938
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %985) #3, !dbg !1938
  call void @llvm.dbg.value(metadata i32 %971, metadata !513, metadata !DIExpression()) #3, !dbg !1939
  store i32 %971, i32* %16, align 4, !dbg !1940, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %16, metadata !513, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1939
  %986 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.17* @server_id_map to i8*), i8* nonnull %985) #3, !dbg !1941
  call void @llvm.dbg.value(metadata i8* %986, metadata !516, metadata !DIExpression()) #3, !dbg !1939
  %987 = icmp eq i8* %986, null, !dbg !1942
  br i1 %987, label %1020, label %988, !dbg !1943

988:                                              ; preds = %984
  %989 = bitcast i8* %986 to i32*, !dbg !1941
  call void @llvm.dbg.value(metadata i32* %989, metadata !516, metadata !DIExpression()) #3, !dbg !1939
  %990 = load i32, i32* %989, align 4, !dbg !1944, !tbaa !760
  call void @llvm.dbg.value(metadata i32 %990, metadata !513, metadata !DIExpression()) #3, !dbg !1939
  store i32 %990, i32* %16, align 4, !dbg !1945, !tbaa !760
  %991 = icmp eq i32 %990, 0, !dbg !1946
  br i1 %991, label %992, label %1002, !dbg !1947

992:                                              ; preds = %988
  %993 = bitcast i32* %7 to i8*, !dbg !1948
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %993) #3, !dbg !1948
  call void @llvm.dbg.value(metadata i32 521, metadata !1192, metadata !DIExpression()) #3, !dbg !1950
  store i32 521, i32* %7, align 4, !dbg !1951, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %7, metadata !1192, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1950
  %994 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.16* @stats to i8*), i8* nonnull %993) #3, !dbg !1952
  call void @llvm.dbg.value(metadata i8* %994, metadata !1193, metadata !DIExpression()) #3, !dbg !1950
  %995 = icmp eq i8* %994, null, !dbg !1953
  br i1 %995, label %1001, label %996, !dbg !1954

996:                                              ; preds = %992
  call void @llvm.dbg.value(metadata i8* %994, metadata !1193, metadata !DIExpression()) #3, !dbg !1950
  %997 = getelementptr inbounds i8, i8* %994, i64 8, !dbg !1955
  %998 = bitcast i8* %997 to i64*, !dbg !1955
  %999 = load i64, i64* %998, align 8, !dbg !1956, !tbaa !1204
  %1000 = add i64 %999, 1, !dbg !1956
  store i64 %1000, i64* %998, align 8, !dbg !1956, !tbaa !1204
  br label %1001, !dbg !1957

1001:                                             ; preds = %996, %992
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %993) #3, !dbg !1957
  br label %1020, !dbg !1958

1002:                                             ; preds = %988
  %1003 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 1, !dbg !1959
  store i32 %990, i32* %1003, align 4, !dbg !1960, !tbaa !1210
  call void @llvm.dbg.value(metadata i32* %16, metadata !513, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1939
  %1004 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.13* @reals to i8*), i8* nonnull %985) #3, !dbg !1961
  call void @llvm.dbg.value(metadata i8* %1004, metadata !495, metadata !DIExpression()) #3, !dbg !1720
  %1005 = icmp eq i8* %1004, null, !dbg !1962
  br i1 %1005, label %1006, label %1024, !dbg !1963

1006:                                             ; preds = %1002
  %1007 = bitcast i32* %6 to i8*, !dbg !1964
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1007) #3, !dbg !1964
  call void @llvm.dbg.value(metadata i32 521, metadata !1218, metadata !DIExpression()) #3, !dbg !1966
  store i32 521, i32* %6, align 4, !dbg !1967, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %6, metadata !1218, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1966
  %1008 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.16* @stats to i8*), i8* nonnull %1007) #3, !dbg !1968
  call void @llvm.dbg.value(metadata i8* %1008, metadata !1219, metadata !DIExpression()) #3, !dbg !1966
  %1009 = icmp eq i8* %1008, null, !dbg !1969
  br i1 %1009, label %1014, label %1010, !dbg !1970

1010:                                             ; preds = %1006
  call void @llvm.dbg.value(metadata i8* %1008, metadata !1219, metadata !DIExpression()) #3, !dbg !1966
  %1011 = bitcast i8* %1008 to i64*, !dbg !1971
  %1012 = load i64, i64* %1011, align 8, !dbg !1972, !tbaa !1061
  %1013 = add i64 %1012, 1, !dbg !1972
  store i64 %1013, i64* %1011, align 8, !dbg !1972, !tbaa !1061
  br label %1014, !dbg !1973

1014:                                             ; preds = %1010, %1006
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1007) #3, !dbg !1973
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %985) #3, !dbg !1974
  br label %1019

1015:                                             ; preds = %967, %938, %935, %930, %924, %909
  %1016 = bitcast i8* %907 to i64*, !dbg !1975
  %1017 = load i64, i64* %1016, align 8, !dbg !1976, !tbaa !1061
  %1018 = add i64 %1017, 1, !dbg !1976
  store i64 %1018, i64* %1016, align 8, !dbg !1976, !tbaa !1061
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %906) #3, !dbg !1977
  br label %1031, !dbg !1978

1019:                                             ; preds = %1014, %905
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %906) #3, !dbg !1977
  br label %1504

1020:                                             ; preds = %984, %1001
  %1021 = bitcast i8* %907 to i64*, !dbg !1979
  %1022 = load i64, i64* %1021, align 8, !dbg !1979, !tbaa !1061
  %1023 = add i64 %1022, 1, !dbg !1979
  store i64 %1023, i64* %1021, align 8, !dbg !1979, !tbaa !1061
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %985) #3, !dbg !1974
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %906) #3, !dbg !1977
  call void @llvm.dbg.value(metadata i16 %1030, metadata !502, metadata !DIExpression()) #3, !dbg !1720
  call void @llvm.dbg.value(metadata i8* %1004, metadata !495, metadata !DIExpression()) #3, !dbg !1720
  br label %1031, !dbg !1978

1024:                                             ; preds = %1002
  %1025 = getelementptr inbounds i8, i8* %907, i64 8, !dbg !1980
  %1026 = bitcast i8* %1025 to i64*, !dbg !1980
  %1027 = load i64, i64* %1026, align 8, !dbg !1981, !tbaa !1204
  %1028 = add i64 %1027, 1, !dbg !1981
  store i64 %1028, i64* %1026, align 8, !dbg !1981, !tbaa !1204
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %985) #3, !dbg !1974
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %906) #3, !dbg !1977
  %1029 = bitcast %union.anon.11* %872 to i16*, !dbg !1982
  %1030 = load i16, i16* %1029, align 4, !dbg !1982, !tbaa !879
  call void @llvm.dbg.value(metadata i16 %1030, metadata !502, metadata !DIExpression()) #3, !dbg !1720
  call void @llvm.dbg.value(metadata i8* %1004, metadata !495, metadata !DIExpression()) #3, !dbg !1720
  br label %1317, !dbg !1978

1031:                                             ; preds = %897, %1020, %1015
  %1032 = bitcast %union.anon.11* %872 to i16*, !dbg !1982
  %1033 = load i16, i16* %1032, align 4, !dbg !1982, !tbaa !879
  %1034 = load i32, i32* %901, align 4, !dbg !1983, !tbaa !1042
  %1035 = and i32 %1034, 1, !dbg !1984
  %1036 = icmp eq i32 %1035, 0, !dbg !1984
  br i1 %1036, label %1038, label %1037, !dbg !1985

1037:                                             ; preds = %1031
  store i16 0, i16* %1032, align 4, !dbg !1986, !tbaa !879
  br label %1038, !dbg !1987

1038:                                             ; preds = %1037, %1031
  %1039 = bitcast i32* %17 to i8*, !dbg !1988
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1039) #3, !dbg !1988
  %1040 = call i64 inttoptr (i64 8 to i64 ()*)() #3, !dbg !1989
  %1041 = trunc i64 %1040 to i32, !dbg !1989
  call void @llvm.dbg.value(metadata i32 %1041, metadata !517, metadata !DIExpression()) #3, !dbg !1990
  store i32 %1041, i32* %17, align 4, !dbg !1991, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %17, metadata !517, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1990
  %1042 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.7* @lru_mapping to i8*), i8* nonnull %1039) #3, !dbg !1992
  call void @llvm.dbg.value(metadata i8* %1042, metadata !518, metadata !DIExpression()) #3, !dbg !1990
  %1043 = icmp eq i8* %1042, null, !dbg !1993
  br i1 %1043, label %1044, label %1053, !dbg !1994

1044:                                             ; preds = %1038
  call void @llvm.dbg.value(metadata i8* bitcast (%struct.anon.8* @fallback_cache to i8*), metadata !518, metadata !DIExpression()) #3, !dbg !1990
  %1045 = bitcast i32* %18 to i8*, !dbg !1995
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1045) #3, !dbg !1995
  call void @llvm.dbg.value(metadata i32 515, metadata !519, metadata !DIExpression()) #3, !dbg !1996
  store i32 515, i32* %18, align 4, !dbg !1997, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %18, metadata !519, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1996
  %1046 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.16* @stats to i8*), i8* nonnull %1045) #3, !dbg !1998
  call void @llvm.dbg.value(metadata i8* %1046, metadata !522, metadata !DIExpression()) #3, !dbg !1996
  %1047 = icmp eq i8* %1046, null, !dbg !1999
  br i1 %1047, label %1052, label %1048, !dbg !2000

1048:                                             ; preds = %1044
  call void @llvm.dbg.value(metadata i8* %1046, metadata !522, metadata !DIExpression()) #3, !dbg !1996
  %1049 = bitcast i8* %1046 to i64*, !dbg !2001
  %1050 = load i64, i64* %1049, align 8, !dbg !2002, !tbaa !1061
  %1051 = add i64 %1050, 1, !dbg !2002
  store i64 %1051, i64* %1049, align 8, !dbg !2002, !tbaa !1061
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1045) #3, !dbg !2003
  br label %1053

1052:                                             ; preds = %1044
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1045) #3, !dbg !2003
  br label %1314

1053:                                             ; preds = %1048, %1038
  %1054 = phi i8* [ %1042, %1038 ], [ bitcast (%struct.anon.8* @fallback_cache to i8*), %1048 ], !dbg !1990
  call void @llvm.dbg.value(metadata i8* %1054, metadata !518, metadata !DIExpression()) #3, !dbg !1990
  %1055 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 2, !dbg !2004
  %1056 = load i8, i8* %1055, align 4, !dbg !2004, !tbaa !875
  %1057 = and i8 %1056, 2, !dbg !2005
  %1058 = icmp eq i8 %1057, 0, !dbg !2005
  br i1 %1058, label %1059, label %1085, !dbg !2006

1059:                                             ; preds = %1053
  %1060 = load i32, i32* %901, align 4, !dbg !2007, !tbaa !1042
  %1061 = and i32 %1060, 2, !dbg !2008
  %1062 = icmp eq i32 %1061, 0, !dbg !2008
  br i1 %1062, label %1063, label %1085, !dbg !2009

1063:                                             ; preds = %1059
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !1272, metadata !DIExpression()) #3, !dbg !2010
  call void @llvm.dbg.value(metadata i8* %1054, metadata !1278, metadata !DIExpression()) #3, !dbg !2010
  call void @llvm.dbg.value(metadata i8 0, metadata !1279, metadata !DIExpression()) #3, !dbg !2010
  %1064 = bitcast i32* %5 to i8*, !dbg !2012
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1064) #3, !dbg !2012
  %1065 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* %1054, i8* nonnull %763) #3, !dbg !2013
  call void @llvm.dbg.value(metadata i8* %1065, metadata !1280, metadata !DIExpression()) #3, !dbg !2010
  %1066 = icmp eq i8* %1065, null, !dbg !2014
  br i1 %1066, label %1078, label %1067, !dbg !2015

1067:                                             ; preds = %1063
  %1068 = load i8, i8* %772, align 4, !dbg !2016, !tbaa !783
  %1069 = icmp eq i8 %1068, 17, !dbg !2017
  br i1 %1069, label %1070, label %1079, !dbg !2018

1070:                                             ; preds = %1067
  %1071 = call i64 inttoptr (i64 5 to i64 ()*)() #3, !dbg !2019
  call void @llvm.dbg.value(metadata i64 %1071, metadata !1281, metadata !DIExpression()) #3, !dbg !2010
  %1072 = getelementptr inbounds i8, i8* %1065, i64 8, !dbg !2020
  %1073 = bitcast i8* %1072 to i64*, !dbg !2020
  %1074 = load i64, i64* %1073, align 8, !dbg !2020, !tbaa !1299
  %1075 = sub i64 %1071, %1074, !dbg !2021
  %1076 = icmp ugt i64 %1075, 30000000000, !dbg !2022
  br i1 %1076, label %1078, label %1077, !dbg !2023

1077:                                             ; preds = %1070
  store i64 %1071, i64* %1073, align 8, !dbg !2024, !tbaa !1299
  br label %1079, !dbg !2025

1078:                                             ; preds = %1070, %1063
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1064) #3, !dbg !2026
  call void @llvm.dbg.value(metadata i8* %1083, metadata !495, metadata !DIExpression()) #3, !dbg !1720
  br label %1085, !dbg !2027

1079:                                             ; preds = %1077, %1067
  %1080 = bitcast i8* %1065 to i32*, !dbg !2028
  %1081 = load i32, i32* %1080, align 8, !dbg !2028, !tbaa !1309
  call void @llvm.dbg.value(metadata i32 %1081, metadata !1282, metadata !DIExpression()) #3, !dbg !2010
  store i32 %1081, i32* %5, align 4, !dbg !2029, !tbaa !760
  %1082 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 1, !dbg !2030
  store i32 %1081, i32* %1082, align 4, !dbg !2031, !tbaa !1210
  call void @llvm.dbg.value(metadata i32* %5, metadata !1282, metadata !DIExpression(DW_OP_deref)) #3, !dbg !2010
  %1083 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.13* @reals to i8*), i8* nonnull %1064) #3, !dbg !2032
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1064) #3, !dbg !2026
  call void @llvm.dbg.value(metadata i8* %1083, metadata !495, metadata !DIExpression()) #3, !dbg !1720
  %1084 = icmp eq i8* %1083, null, !dbg !2033
  br i1 %1084, label %1085, label %1315, !dbg !2027

1085:                                             ; preds = %1079, %1078, %1059, %1053
  %1086 = load i8, i8* %772, align 4, !dbg !2034, !tbaa !783
  %1087 = icmp eq i8 %1086, 6, !dbg !2035
  br i1 %1087, label %1088, label %1104, !dbg !2036

1088:                                             ; preds = %1085
  %1089 = bitcast i32* %19 to i8*, !dbg !2037
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1089) #3, !dbg !2037
  call void @llvm.dbg.value(metadata i32 513, metadata !523, metadata !DIExpression()) #3, !dbg !2038
  store i32 513, i32* %19, align 4, !dbg !2039, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %19, metadata !523, metadata !DIExpression(DW_OP_deref)) #3, !dbg !2038
  %1090 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.16* @stats to i8*), i8* nonnull %1089) #3, !dbg !2040
  call void @llvm.dbg.value(metadata i8* %1090, metadata !526, metadata !DIExpression()) #3, !dbg !2038
  %1091 = icmp eq i8* %1090, null, !dbg !2041
  br i1 %1091, label %1103, label %1092, !dbg !2042

1092:                                             ; preds = %1088
  %1093 = load i8, i8* %1055, align 4, !dbg !2043, !tbaa !875
  %1094 = and i8 %1093, 2, !dbg !2044
  %1095 = icmp eq i8 %1094, 0, !dbg !2044
  %1096 = getelementptr inbounds i8, i8* %1090, i64 8, !dbg !2045
  %1097 = bitcast i8* %1096 to i64*, !dbg !2045
  %1098 = bitcast i8* %1090 to i64*, !dbg !2045
  %1099 = select i1 %1095, i64* %1097, i64* %1098, !dbg !2045
  %1100 = select i1 %1095, i64* %1097, i64* %1098, !dbg !2045
  %1101 = load i64, i64* %1099, align 8, !dbg !2046, !tbaa !1172
  %1102 = add i64 %1101, 1, !dbg !2046
  store i64 %1102, i64* %1100, align 8, !dbg !2046, !tbaa !1172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1089) #3, !dbg !2047
  br label %1104

1103:                                             ; preds = %1088
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1089) #3, !dbg !2047
  br label %1314

1104:                                             ; preds = %1092, %1085
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !465, metadata !DIExpression()) #3, !dbg !2048
  call void @llvm.dbg.value(metadata %struct.vip_meta* %890, metadata !466, metadata !DIExpression()) #3, !dbg !2048
  call void @llvm.dbg.value(metadata i1 true, metadata !467, metadata !DIExpression()) #3, !dbg !2048
  call void @llvm.dbg.value(metadata i8* %1054, metadata !468, metadata !DIExpression()) #3, !dbg !2048
  %1105 = bitcast %struct.real_pos_lru* %3 to i8*, !dbg !2049
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1105) #3, !dbg !2049
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %1105, i8 0, i64 16, i1 false) #3, !dbg !478
  call void @llvm.dbg.value(metadata i8 0, metadata !469, metadata !DIExpression()) #3, !dbg !2048
  call void @llvm.dbg.value(metadata i8 0, metadata !470, metadata !DIExpression()) #3, !dbg !2048
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()) #3, !dbg !2048
  %1106 = bitcast i32* %4 to i8*, !dbg !2050
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1106) #3, !dbg !2050
  %1107 = bitcast i32* %2 to i8*, !dbg !2051
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1107) #3, !dbg !2051
  call void @llvm.dbg.value(metadata i32 514, metadata !1340, metadata !DIExpression()) #3, !dbg !2053
  store i32 514, i32* %2, align 4, !dbg !2054, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %2, metadata !1340, metadata !DIExpression(DW_OP_deref)) #3, !dbg !2053
  %1108 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.16* @stats to i8*), i8* nonnull %1107) #3, !dbg !2055
  call void @llvm.dbg.value(metadata i8* %1108, metadata !1341, metadata !DIExpression()) #3, !dbg !2053
  %1109 = icmp eq i8* %1108, null, !dbg !2056
  br i1 %1109, label %1124, label %1110, !dbg !2057

1110:                                             ; preds = %1104
  call void @llvm.dbg.value(metadata i8* %1108, metadata !1341, metadata !DIExpression()) #3, !dbg !2053
  %1111 = call i64 inttoptr (i64 5 to i64 ()*)() #3, !dbg !2058
  %1112 = getelementptr inbounds i8, i8* %1108, i64 8, !dbg !2059
  %1113 = bitcast i8* %1112 to i64*, !dbg !2059
  %1114 = load i64, i64* %1113, align 8, !dbg !2059, !tbaa !1204
  %1115 = sub i64 %1111, %1114, !dbg !2060
  %1116 = icmp ugt i64 %1115, 1000000000, !dbg !2061
  %1117 = bitcast i8* %1108 to i64*, !dbg !2062
  br i1 %1116, label %1118, label %1119, !dbg !2063

1118:                                             ; preds = %1110
  store i64 1, i64* %1117, align 8, !dbg !2064, !tbaa !1061
  store i64 %1111, i64* %1113, align 8, !dbg !2065, !tbaa !1204
  br label %1123, !dbg !2066

1119:                                             ; preds = %1110
  %1120 = load i64, i64* %1117, align 8, !dbg !2067, !tbaa !1061
  %1121 = add i64 %1120, 1, !dbg !2067
  store i64 %1121, i64* %1117, align 8, !dbg !2067, !tbaa !1061
  %1122 = icmp ugt i64 %1121, 125000, !dbg !2068
  br i1 %1122, label %1124, label %1123, !dbg !2069

1123:                                             ; preds = %1119, %1118
  br label %1124, !dbg !2070

1124:                                             ; preds = %1123, %1119, %1104
  %1125 = phi i64 [ 0, %1104 ], [ %1111, %1123 ], [ %1111, %1119 ], !dbg !2048
  %1126 = phi i1 [ true, %1104 ], [ false, %1123 ], [ true, %1119 ], !dbg !2053
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1107) #3, !dbg !2071
  call void @llvm.dbg.value(metadata i1 %1126, metadata !469, metadata !DIExpression()) #3, !dbg !2048
  call void @llvm.dbg.value(metadata i1 true, metadata !475, metadata !DIExpression()) #3, !dbg !2072
  %1127 = load i32, i32* %901, align 4, !dbg !2073, !tbaa !1042
  %1128 = and i32 %1127, 8, !dbg !2074
  %1129 = icmp eq i32 %1128, 0, !dbg !2074
  br i1 %1129, label %1130, label %1154, !dbg !2075

1130:                                             ; preds = %1124
  %1131 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2076
  %1132 = load i32, i32* %1131, align 4, !dbg !2076, !tbaa !879
  %1133 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !2078
  %1134 = load i32, i32* %1133, align 4, !dbg !2097, !tbaa !760
  %1135 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !2078
  %1136 = load i32, i32* %1135, align 4, !dbg !2098, !tbaa !760
  %1137 = getelementptr inbounds i8, i8* %763, i64 15, !dbg !2099
  %1138 = load i8, i8* %1137, align 1, !dbg !2101, !tbaa !879
  %1139 = getelementptr inbounds i8, i8* %763, i64 14, !dbg !2099
  %1140 = load i8, i8* %1139, align 2, !dbg !2102, !tbaa !879
  %1141 = getelementptr inbounds i8, i8* %763, i64 13, !dbg !2099
  %1142 = load i8, i8* %1141, align 1, !dbg !2103, !tbaa !879
  %1143 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !2104
  %1144 = bitcast i32* %1143 to i8*, !dbg !2104
  %1145 = load i8, i8* %1144, align 4, !dbg !2105, !tbaa !879
  %1146 = add i32 %1134, -559038209, !dbg !2075
  %1147 = zext i8 %1138 to i32, !dbg !2075
  %1148 = shl nuw i32 %1147, 24, !dbg !2075
  %1149 = zext i8 %1140 to i32, !dbg !2075
  %1150 = shl nuw nsw i32 %1149, 16, !dbg !2075
  %1151 = zext i8 %1142 to i32, !dbg !2075
  %1152 = shl nuw nsw i32 %1151, 8, !dbg !2075
  %1153 = zext i8 %1145 to i32, !dbg !2075
  br label %1156, !dbg !2075

1154:                                             ; preds = %1124
  %1155 = load i16, i16* %873, align 2, !dbg !2106, !tbaa !879
  store i16 %1155, i16* %1032, align 4, !dbg !2107, !tbaa !879
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %763, i8 0, i64 16, i1 false) #3, !dbg !2108
  br label %1156, !dbg !2109

1156:                                             ; preds = %1154, %1130
  %1157 = phi i32 [ %1153, %1130 ], [ 0, %1154 ]
  %1158 = phi i32 [ %1152, %1130 ], [ 0, %1154 ]
  %1159 = phi i32 [ %1150, %1130 ], [ 0, %1154 ]
  %1160 = phi i32 [ %1148, %1130 ], [ 0, %1154 ]
  %1161 = phi i32 [ %1136, %1130 ], [ 0, %1154 ], !dbg !2098
  %1162 = phi i32 [ %1146, %1130 ], [ -559038209, %1154 ]
  %1163 = phi i32 [ %1132, %1130 ], [ 0, %1154 ], !dbg !2076
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !1378, metadata !DIExpression()) #3, !dbg !2110
  call void @llvm.dbg.value(metadata i1 true, metadata !1379, metadata !DIExpression()) #3, !dbg !2110
  call void @llvm.dbg.value(metadata i8* %763, metadata !2086, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 512, metadata !2088, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i8* %763, metadata !2092, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 -559038209, metadata !2091, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 -559038209, metadata !2090, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 -559038209, metadata !2089, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 undef, metadata !2087, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %1163, metadata !2089, metadata !DIExpression(DW_OP_constu, 559038209, DW_OP_minus, DW_OP_stack_value)) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %1162, metadata !2090, metadata !DIExpression()) #3, !dbg !2104
  %1164 = add i32 %1161, -559038209, !dbg !2111
  call void @llvm.dbg.value(metadata i32 %1164, metadata !2091, metadata !DIExpression()) #3, !dbg !2104
  %1165 = sub i32 %1163, %1161, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %1165, metadata !2089, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %1164, metadata !1411, metadata !DIExpression()) #3, !dbg !2114
  call void @llvm.dbg.value(metadata i32 4, metadata !1416, metadata !DIExpression()) #3, !dbg !2114
  %1166 = shl i32 %1164, 4, !dbg !2116
  %1167 = lshr i32 %1164, 28, !dbg !2117
  %1168 = or i32 %1167, %1166, !dbg !2118
  %1169 = xor i32 %1168, %1165, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %1169, metadata !2089, metadata !DIExpression()) #3, !dbg !2104
  %1170 = add i32 %1164, %1162, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %1170, metadata !2091, metadata !DIExpression()) #3, !dbg !2104
  %1171 = sub i32 %1162, %1169, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %1171, metadata !2090, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %1169, metadata !1411, metadata !DIExpression()) #3, !dbg !2119
  call void @llvm.dbg.value(metadata i32 6, metadata !1416, metadata !DIExpression()) #3, !dbg !2119
  %1172 = shl i32 %1169, 6, !dbg !2121
  %1173 = lshr i32 %1169, 26, !dbg !2122
  %1174 = or i32 %1173, %1172, !dbg !2123
  %1175 = xor i32 %1174, %1171, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %1175, metadata !2090, metadata !DIExpression()) #3, !dbg !2104
  %1176 = add i32 %1169, %1170, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %1176, metadata !2089, metadata !DIExpression()) #3, !dbg !2104
  %1177 = sub i32 %1170, %1175, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %1177, metadata !2091, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %1175, metadata !1411, metadata !DIExpression()) #3, !dbg !2124
  call void @llvm.dbg.value(metadata i32 8, metadata !1416, metadata !DIExpression()) #3, !dbg !2124
  %1178 = shl i32 %1175, 8, !dbg !2126
  %1179 = lshr i32 %1175, 24, !dbg !2127
  %1180 = or i32 %1179, %1178, !dbg !2128
  %1181 = xor i32 %1180, %1177, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %1181, metadata !2091, metadata !DIExpression()) #3, !dbg !2104
  %1182 = add i32 %1175, %1176, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %1182, metadata !2090, metadata !DIExpression()) #3, !dbg !2104
  %1183 = sub i32 %1176, %1181, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %1183, metadata !2089, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %1181, metadata !1411, metadata !DIExpression()) #3, !dbg !2129
  call void @llvm.dbg.value(metadata i32 16, metadata !1416, metadata !DIExpression()) #3, !dbg !2129
  %1184 = shl i32 %1181, 16, !dbg !2131
  %1185 = lshr i32 %1181, 16, !dbg !2132
  %1186 = or i32 %1185, %1184, !dbg !2133
  %1187 = xor i32 %1186, %1183, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %1187, metadata !2089, metadata !DIExpression()) #3, !dbg !2104
  %1188 = add i32 %1181, %1182, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %1188, metadata !2091, metadata !DIExpression()) #3, !dbg !2104
  %1189 = sub i32 %1182, %1187, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %1189, metadata !2090, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %1187, metadata !1411, metadata !DIExpression()) #3, !dbg !2134
  call void @llvm.dbg.value(metadata i32 19, metadata !1416, metadata !DIExpression()) #3, !dbg !2134
  %1190 = shl i32 %1187, 19, !dbg !2136
  %1191 = lshr i32 %1187, 13, !dbg !2137
  %1192 = or i32 %1191, %1190, !dbg !2138
  %1193 = xor i32 %1192, %1189, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %1193, metadata !2090, metadata !DIExpression()) #3, !dbg !2104
  %1194 = add i32 %1187, %1188, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %1194, metadata !2089, metadata !DIExpression()) #3, !dbg !2104
  %1195 = sub i32 %1188, %1193, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %1195, metadata !2091, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %1193, metadata !1411, metadata !DIExpression()) #3, !dbg !2139
  call void @llvm.dbg.value(metadata i32 4, metadata !1416, metadata !DIExpression()) #3, !dbg !2139
  %1196 = shl i32 %1193, 4, !dbg !2141
  %1197 = lshr i32 %1193, 28, !dbg !2142
  %1198 = or i32 %1197, %1196, !dbg !2143
  call void @llvm.dbg.value(metadata i32 undef, metadata !2091, metadata !DIExpression()) #3, !dbg !2104
  %1199 = add i32 %1193, %1194, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %1199, metadata !2090, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 undef, metadata !2087, metadata !DIExpression(DW_OP_constu, 12, DW_OP_minus, DW_OP_stack_value)) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 undef, metadata !2091, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %1199, metadata !2090, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 undef, metadata !2089, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 undef, metadata !2089, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 undef, metadata !2089, metadata !DIExpression()) #3, !dbg !2104
  %1200 = or i32 %1159, %1160, !dbg !2144
  %1201 = or i32 %1200, %1158, !dbg !2145
  %1202 = or i32 %1201, %1157, !dbg !2146
  %1203 = add i32 %1194, %1202, !dbg !2147
  call void @llvm.dbg.value(metadata i32 %1203, metadata !2089, metadata !DIExpression()) #3, !dbg !2104
  %1204 = xor i32 %1199, %1195, !dbg !2112
  %1205 = xor i32 %1204, %1198, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %1205, metadata !2091, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %1199, metadata !1411, metadata !DIExpression()) #3, !dbg !2150
  call void @llvm.dbg.value(metadata i32 14, metadata !1416, metadata !DIExpression()) #3, !dbg !2150
  %1206 = shl i32 %1199, 14, !dbg !2152
  %1207 = lshr i32 %1199, 18, !dbg !2153
  %1208 = or i32 %1207, %1206, !dbg !2154
  %1209 = sub i32 %1205, %1208, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %1209, metadata !2091, metadata !DIExpression()) #3, !dbg !2104
  %1210 = xor i32 %1209, %1203, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %1210, metadata !2089, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %1209, metadata !1411, metadata !DIExpression()) #3, !dbg !2155
  call void @llvm.dbg.value(metadata i32 11, metadata !1416, metadata !DIExpression()) #3, !dbg !2155
  %1211 = shl i32 %1209, 11, !dbg !2157
  %1212 = lshr i32 %1209, 21, !dbg !2158
  %1213 = or i32 %1212, %1211, !dbg !2159
  %1214 = sub i32 %1210, %1213, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %1214, metadata !2089, metadata !DIExpression()) #3, !dbg !2104
  %1215 = xor i32 %1214, %1199, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %1215, metadata !2090, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %1214, metadata !1411, metadata !DIExpression()) #3, !dbg !2160
  call void @llvm.dbg.value(metadata i32 25, metadata !1416, metadata !DIExpression()) #3, !dbg !2160
  %1216 = shl i32 %1214, 25, !dbg !2162
  %1217 = lshr i32 %1214, 7, !dbg !2163
  %1218 = or i32 %1217, %1216, !dbg !2164
  %1219 = sub i32 %1215, %1218, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %1219, metadata !2090, metadata !DIExpression()) #3, !dbg !2104
  %1220 = xor i32 %1219, %1209, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %1220, metadata !2091, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %1219, metadata !1411, metadata !DIExpression()) #3, !dbg !2165
  call void @llvm.dbg.value(metadata i32 16, metadata !1416, metadata !DIExpression()) #3, !dbg !2165
  %1221 = shl i32 %1219, 16, !dbg !2167
  %1222 = lshr i32 %1219, 16, !dbg !2168
  %1223 = or i32 %1222, %1221, !dbg !2169
  %1224 = sub i32 %1220, %1223, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %1224, metadata !2091, metadata !DIExpression()) #3, !dbg !2104
  %1225 = xor i32 %1224, %1214, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %1225, metadata !2089, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %1224, metadata !1411, metadata !DIExpression()) #3, !dbg !2170
  call void @llvm.dbg.value(metadata i32 4, metadata !1416, metadata !DIExpression()) #3, !dbg !2170
  %1226 = shl i32 %1224, 4, !dbg !2172
  %1227 = lshr i32 %1224, 28, !dbg !2173
  %1228 = or i32 %1227, %1226, !dbg !2174
  %1229 = sub i32 %1225, %1228, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %1229, metadata !2089, metadata !DIExpression()) #3, !dbg !2104
  %1230 = xor i32 %1229, %1219, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %1230, metadata !2090, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %1229, metadata !1411, metadata !DIExpression()) #3, !dbg !2175
  call void @llvm.dbg.value(metadata i32 14, metadata !1416, metadata !DIExpression()) #3, !dbg !2175
  %1231 = shl i32 %1229, 14, !dbg !2177
  %1232 = lshr i32 %1229, 18, !dbg !2178
  %1233 = or i32 %1232, %1231, !dbg !2179
  %1234 = sub i32 %1230, %1233, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %1234, metadata !2090, metadata !DIExpression()) #3, !dbg !2104
  %1235 = xor i32 %1234, %1224, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %1235, metadata !2091, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %1234, metadata !1411, metadata !DIExpression()) #3, !dbg !2180
  call void @llvm.dbg.value(metadata i32 24, metadata !1416, metadata !DIExpression()) #3, !dbg !2180
  %1236 = shl i32 %1234, 24, !dbg !2182
  %1237 = lshr i32 %1234, 8, !dbg !2183
  %1238 = or i32 %1237, %1236, !dbg !2184
  call void @llvm.dbg.value(metadata i32 undef, metadata !2091, metadata !DIExpression()) #3, !dbg !2104
  call void @llvm.dbg.value(metadata i32 undef, metadata !2091, metadata !DIExpression()) #3, !dbg !2104
  %1239 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 2, i32 0, !dbg !2185
  %1240 = load i32, i32* %1239, align 4, !dbg !2185, !tbaa !879
  call void @llvm.dbg.value(metadata i32 undef, metadata !1389, metadata !DIExpression()) #3, !dbg !2186
  call void @llvm.dbg.value(metadata i32 %1240, metadata !1394, metadata !DIExpression()) #3, !dbg !2186
  call void @llvm.dbg.value(metadata i32 33554944, metadata !1395, metadata !DIExpression()) #3, !dbg !2186
  call void @llvm.dbg.value(metadata i32 undef, metadata !1398, metadata !DIExpression()) #3, !dbg !2188
  call void @llvm.dbg.value(metadata i32 %1240, metadata !1403, metadata !DIExpression()) #3, !dbg !2188
  call void @llvm.dbg.value(metadata i32 0, metadata !1404, metadata !DIExpression()) #3, !dbg !2188
  call void @llvm.dbg.value(metadata i32 -525483785, metadata !1405, metadata !DIExpression()) #3, !dbg !2188
  %1241 = add i32 %1235, -525483785, !dbg !2148
  %1242 = sub i32 %1241, %1238, !dbg !2190
  call void @llvm.dbg.value(metadata i32 %1242, metadata !1398, metadata !DIExpression()) #3, !dbg !2188
  %1243 = add i32 %1240, -525483785, !dbg !2191
  call void @llvm.dbg.value(metadata i32 %1243, metadata !1403, metadata !DIExpression()) #3, !dbg !2188
  call void @llvm.dbg.value(metadata i32 -525483785, metadata !1404, metadata !DIExpression()) #3, !dbg !2188
  %1244 = xor i32 %1243, -525483785, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %1244, metadata !1404, metadata !DIExpression()) #3, !dbg !2188
  call void @llvm.dbg.value(metadata i32 %1243, metadata !1411, metadata !DIExpression()) #3, !dbg !2193
  call void @llvm.dbg.value(metadata i32 14, metadata !1416, metadata !DIExpression()) #3, !dbg !2193
  %1245 = shl i32 %1243, 14, !dbg !2195
  %1246 = lshr i32 %1243, 18, !dbg !2196
  %1247 = or i32 %1246, %1245, !dbg !2197
  %1248 = sub i32 %1244, %1247, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %1248, metadata !1404, metadata !DIExpression()) #3, !dbg !2188
  %1249 = xor i32 %1242, %1248, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %1249, metadata !1398, metadata !DIExpression()) #3, !dbg !2188
  call void @llvm.dbg.value(metadata i32 %1248, metadata !1411, metadata !DIExpression()) #3, !dbg !2198
  call void @llvm.dbg.value(metadata i32 11, metadata !1416, metadata !DIExpression()) #3, !dbg !2198
  %1250 = shl i32 %1248, 11, !dbg !2200
  %1251 = lshr i32 %1248, 21, !dbg !2201
  %1252 = or i32 %1251, %1250, !dbg !2202
  %1253 = sub i32 %1249, %1252, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %1253, metadata !1398, metadata !DIExpression()) #3, !dbg !2188
  %1254 = xor i32 %1253, %1243, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %1254, metadata !1403, metadata !DIExpression()) #3, !dbg !2188
  call void @llvm.dbg.value(metadata i32 %1253, metadata !1411, metadata !DIExpression()) #3, !dbg !2203
  call void @llvm.dbg.value(metadata i32 25, metadata !1416, metadata !DIExpression()) #3, !dbg !2203
  %1255 = shl i32 %1253, 25, !dbg !2205
  %1256 = lshr i32 %1253, 7, !dbg !2206
  %1257 = or i32 %1256, %1255, !dbg !2207
  %1258 = sub i32 %1254, %1257, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %1258, metadata !1403, metadata !DIExpression()) #3, !dbg !2188
  %1259 = xor i32 %1258, %1248, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %1259, metadata !1404, metadata !DIExpression()) #3, !dbg !2188
  call void @llvm.dbg.value(metadata i32 %1258, metadata !1411, metadata !DIExpression()) #3, !dbg !2208
  call void @llvm.dbg.value(metadata i32 16, metadata !1416, metadata !DIExpression()) #3, !dbg !2208
  %1260 = shl i32 %1258, 16, !dbg !2210
  %1261 = lshr i32 %1258, 16, !dbg !2211
  %1262 = or i32 %1261, %1260, !dbg !2212
  %1263 = sub i32 %1259, %1262, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %1263, metadata !1404, metadata !DIExpression()) #3, !dbg !2188
  %1264 = xor i32 %1263, %1253, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %1264, metadata !1398, metadata !DIExpression()) #3, !dbg !2188
  call void @llvm.dbg.value(metadata i32 %1263, metadata !1411, metadata !DIExpression()) #3, !dbg !2213
  call void @llvm.dbg.value(metadata i32 4, metadata !1416, metadata !DIExpression()) #3, !dbg !2213
  %1265 = shl i32 %1263, 4, !dbg !2215
  %1266 = lshr i32 %1263, 28, !dbg !2216
  %1267 = or i32 %1266, %1265, !dbg !2217
  %1268 = sub i32 %1264, %1267, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %1268, metadata !1398, metadata !DIExpression()) #3, !dbg !2188
  %1269 = xor i32 %1268, %1258, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %1269, metadata !1403, metadata !DIExpression()) #3, !dbg !2188
  call void @llvm.dbg.value(metadata i32 %1268, metadata !1411, metadata !DIExpression()) #3, !dbg !2218
  call void @llvm.dbg.value(metadata i32 14, metadata !1416, metadata !DIExpression()) #3, !dbg !2218
  %1270 = shl i32 %1268, 14, !dbg !2220
  %1271 = lshr i32 %1268, 18, !dbg !2221
  %1272 = or i32 %1271, %1270, !dbg !2222
  %1273 = sub i32 %1269, %1272, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %1273, metadata !1403, metadata !DIExpression()) #3, !dbg !2188
  %1274 = xor i32 %1273, %1263, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %1274, metadata !1404, metadata !DIExpression()) #3, !dbg !2188
  call void @llvm.dbg.value(metadata i32 %1273, metadata !1411, metadata !DIExpression()) #3, !dbg !2223
  call void @llvm.dbg.value(metadata i32 24, metadata !1416, metadata !DIExpression()) #3, !dbg !2223
  %1275 = shl i32 %1273, 24, !dbg !2225
  %1276 = lshr i32 %1273, 8, !dbg !2226
  %1277 = or i32 %1276, %1275, !dbg !2227
  %1278 = sub i32 %1274, %1277, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %1278, metadata !1404, metadata !DIExpression()) #3, !dbg !2188
  %1279 = urem i32 %1278, 65537, !dbg !2228
  call void @llvm.dbg.value(metadata i32 %1279, metadata !473, metadata !DIExpression()) #3, !dbg !2048
  %1280 = getelementptr inbounds %struct.vip_meta, %struct.vip_meta* %890, i64 0, i32 1, !dbg !2229
  %1281 = load i32, i32* %1280, align 4, !dbg !2229, !tbaa !1454
  %1282 = mul i32 %1281, 65537, !dbg !2230
  %1283 = add i32 %1279, %1282, !dbg !2231
  call void @llvm.dbg.value(metadata i32 %1283, metadata !474, metadata !DIExpression()) #3, !dbg !2048
  store i32 %1283, i32* %4, align 4, !dbg !2232, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %4, metadata !474, metadata !DIExpression(DW_OP_deref)) #3, !dbg !2048
  %1284 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.12* @ch_rings to i8*), i8* nonnull %1106) #3, !dbg !2233
  call void @llvm.dbg.value(metadata i8* %1284, metadata !471, metadata !DIExpression()) #3, !dbg !2048
  %1285 = icmp eq i8* %1284, null, !dbg !2234
  br i1 %1285, label %1308, label %1286, !dbg !2235

1286:                                             ; preds = %1156
  %1287 = bitcast i8* %1284 to i32*, !dbg !2233
  call void @llvm.dbg.value(metadata i32* %1287, metadata !471, metadata !DIExpression()) #3, !dbg !2048
  %1288 = load i32, i32* %1287, align 4, !dbg !2236, !tbaa !760
  call void @llvm.dbg.value(metadata i32 %1288, metadata !474, metadata !DIExpression()) #3, !dbg !2048
  store i32 %1288, i32* %4, align 4, !dbg !2237, !tbaa !760
  call void @llvm.dbg.value(metadata i32 %1288, metadata !474, metadata !DIExpression()) #3, !dbg !2048
  %1289 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 1, !dbg !2238
  store i32 %1288, i32* %1289, align 4, !dbg !2239, !tbaa !1210
  call void @llvm.dbg.value(metadata i32* %4, metadata !474, metadata !DIExpression(DW_OP_deref)) #3, !dbg !2048
  %1290 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.13* @reals to i8*), i8* nonnull %1106) #3, !dbg !2240
  %1291 = icmp eq i8* %1290, null, !dbg !2241
  br i1 %1291, label %1308, label %1292, !dbg !2242

1292:                                             ; preds = %1286
  %1293 = icmp eq i8* %1054, null, !dbg !2243
  br i1 %1293, label %1309, label %1294, !dbg !2244

1294:                                             ; preds = %1292
  %1295 = load i32, i32* %901, align 4, !dbg !2245, !tbaa !1042
  %1296 = and i32 %1295, 2, !dbg !2246
  %1297 = icmp ne i32 %1296, 0, !dbg !2246
  %1298 = or i1 %1126, %1297, !dbg !2247
  br i1 %1298, label %1309, label %1299, !dbg !2247

1299:                                             ; preds = %1294
  %1300 = load i8, i8* %772, align 4, !dbg !2248, !tbaa !783
  %1301 = icmp eq i8 %1300, 17, !dbg !2249
  br i1 %1301, label %1302, label %1304, !dbg !2250

1302:                                             ; preds = %1299
  call void @llvm.dbg.value(metadata i64 %1125, metadata !472, metadata !DIExpression()) #3, !dbg !2048
  %1303 = getelementptr inbounds %struct.real_pos_lru, %struct.real_pos_lru* %3, i64 0, i32 1, !dbg !2251
  store i64 %1125, i64* %1303, align 8, !dbg !2252, !tbaa !1299
  br label %1304, !dbg !2253

1304:                                             ; preds = %1302, %1299
  %1305 = load i32, i32* %4, align 4, !dbg !2254, !tbaa !760
  call void @llvm.dbg.value(metadata i32 %1305, metadata !474, metadata !DIExpression()) #3, !dbg !2048
  %1306 = getelementptr inbounds %struct.real_pos_lru, %struct.real_pos_lru* %3, i64 0, i32 0, !dbg !2255
  store i32 %1305, i32* %1306, align 8, !dbg !2256, !tbaa !1309
  %1307 = call i32 inttoptr (i64 2 to i32 (i8*, i8*, i8*, i64)*)(i8* nonnull %1054, i8* nonnull %763, i8* nonnull %1105, i64 0) #3, !dbg !2257
  br label %1309, !dbg !2258

1308:                                             ; preds = %1286, %1156
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1106) #3, !dbg !2259
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1105) #3, !dbg !2259
  br label %1314, !dbg !2260

1309:                                             ; preds = %1304, %1294, %1292
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1106) #3, !dbg !2259
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1105) #3, !dbg !2259
  %1310 = getelementptr inbounds i8, i8* %895, i64 8, !dbg !2261
  %1311 = bitcast i8* %1310 to i64*, !dbg !2261
  %1312 = load i64, i64* %1311, align 8, !dbg !2262, !tbaa !1204
  %1313 = add i64 %1312, 1, !dbg !2262
  store i64 %1313, i64* %1311, align 8, !dbg !2262, !tbaa !1204
  br label %1315, !dbg !2263

1314:                                             ; preds = %1308, %1103, %1052
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1039) #3, !dbg !2264
  br label %1504

1315:                                             ; preds = %1309, %1079
  %1316 = phi i8* [ %1290, %1309 ], [ %1083, %1079 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1039) #3, !dbg !2264
  br label %1317

1317:                                             ; preds = %1315, %1024
  %1318 = phi i16 [ %1033, %1315 ], [ %1030, %1024 ]
  %1319 = phi i16* [ %1032, %1315 ], [ %1029, %1024 ]
  %1320 = phi i8* [ %1316, %1315 ], [ %1004, %1024 ]
  call void @llvm.dbg.value(metadata i32* %13, metadata !505, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1720
  %1321 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.3* @ctl_array to i8*), i8* nonnull %766) #3, !dbg !2265
  call void @llvm.dbg.value(metadata i8* %1321, metadata !494, metadata !DIExpression()) #3, !dbg !1720
  %1322 = icmp eq i8* %1321, null, !dbg !2266
  br i1 %1322, label %1504, label %1323, !dbg !2267

1323:                                             ; preds = %1317
  %1324 = getelementptr inbounds %struct.vip_meta, %struct.vip_meta* %890, i64 0, i32 1, !dbg !2268
  %1325 = load i32, i32* %1324, align 4, !dbg !2268, !tbaa !1454
  call void @llvm.dbg.value(metadata i32 %1325, metadata !504, metadata !DIExpression()) #3, !dbg !1720
  store i32 %1325, i32* %12, align 4, !dbg !2269, !tbaa !760
  call void @llvm.dbg.value(metadata i32* %12, metadata !504, metadata !DIExpression(DW_OP_deref)) #3, !dbg !1720
  %1326 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.16* @stats to i8*), i8* nonnull %765) #3, !dbg !2270
  call void @llvm.dbg.value(metadata i8* %1326, metadata !499, metadata !DIExpression()) #3, !dbg !1720
  %1327 = icmp eq i8* %1326, null, !dbg !2271
  br i1 %1327, label %1504, label %1328, !dbg !2272

1328:                                             ; preds = %1323
  call void @llvm.dbg.value(metadata i8* %1326, metadata !499, metadata !DIExpression()) #3, !dbg !1720
  %1329 = bitcast i8* %1326 to i64*, !dbg !2273
  %1330 = load i64, i64* %1329, align 8, !dbg !2274, !tbaa !1061
  %1331 = add i64 %1330, 1, !dbg !2274
  store i64 %1331, i64* %1329, align 8, !dbg !2274, !tbaa !1061
  call void @llvm.dbg.value(metadata i16 %783, metadata !506, metadata !DIExpression()) #3, !dbg !1720
  %1332 = zext i16 %783 to i64, !dbg !2275
  %1333 = getelementptr inbounds i8, i8* %1326, i64 8, !dbg !2276
  %1334 = bitcast i8* %1333 to i64*, !dbg !2276
  %1335 = load i64, i64* %1334, align 8, !dbg !2277, !tbaa !1204
  %1336 = add i64 %1335, %1332, !dbg !2277
  store i64 %1336, i64* %1334, align 8, !dbg !2277, !tbaa !1204
  %1337 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 1, !dbg !2278
  %1338 = bitcast i32* %1337 to i8*, !dbg !2279
  %1339 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon.15* @reals_stats to i8*), i8* nonnull %1338) #3, !dbg !2280
  call void @llvm.dbg.value(metadata i8* %1339, metadata !499, metadata !DIExpression()) #3, !dbg !1720
  %1340 = icmp eq i8* %1339, null, !dbg !2281
  br i1 %1340, label %1504, label %1341, !dbg !2282

1341:                                             ; preds = %1328
  call void @llvm.dbg.value(metadata i8* %1339, metadata !499, metadata !DIExpression()) #3, !dbg !1720
  %1342 = bitcast i8* %1339 to i64*, !dbg !2283
  %1343 = load i64, i64* %1342, align 8, !dbg !2284, !tbaa !1061
  %1344 = add i64 %1343, 1, !dbg !2284
  store i64 %1344, i64* %1342, align 8, !dbg !2284, !tbaa !1061
  call void @llvm.dbg.value(metadata i16 %783, metadata !506, metadata !DIExpression()) #3, !dbg !1720
  %1345 = getelementptr inbounds i8, i8* %1339, i64 8, !dbg !2285
  %1346 = bitcast i8* %1345 to i64*, !dbg !2285
  %1347 = load i64, i64* %1346, align 8, !dbg !2286, !tbaa !1204
  %1348 = add i64 %1347, %1332, !dbg !2286
  store i64 %1348, i64* %1346, align 8, !dbg !2286, !tbaa !1204
  store i16 %1318, i16* %1319, align 4, !dbg !2287, !tbaa !879
  call void @llvm.dbg.value(metadata i8* %1320, metadata !495, metadata !DIExpression()) #3, !dbg !1720
  %1349 = getelementptr inbounds i8, i8* %1320, i64 16, !dbg !2288
  %1350 = load i8, i8* %1349, align 4, !dbg !2288, !tbaa !1524
  %1351 = and i8 %1350, 1, !dbg !2289
  %1352 = icmp eq i8 %1351, 0, !dbg !2289
  call void @llvm.dbg.value(metadata i16 %783, metadata !506, metadata !DIExpression()) #3, !dbg !1720
  call void @llvm.dbg.value(metadata i16 %783, metadata !506, metadata !DIExpression()) #3, !dbg !1720
  br i1 %1352, label %1408, label %1353, !dbg !2290

1353:                                             ; preds = %1341
  call void @llvm.dbg.value(metadata %struct.__sk_buff* %0, metadata !1528, metadata !DIExpression()) #3, !dbg !2291
  call void @llvm.dbg.value(metadata i8* %1321, metadata !1534, metadata !DIExpression()) #3, !dbg !2291
  call void @llvm.dbg.value(metadata i1 true, metadata !1535, metadata !DIExpression()) #3, !dbg !2291
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !1536, metadata !DIExpression()) #3, !dbg !2291
  call void @llvm.dbg.value(metadata i8* %1320, metadata !1537, metadata !DIExpression()) #3, !dbg !2291
  call void @llvm.dbg.value(metadata i16 %783, metadata !1538, metadata !DIExpression()) #3, !dbg !2291
  %1354 = bitcast %struct.__sk_buff* %0 to i8*, !dbg !2293
  %1355 = call i32 inttoptr (i64 44 to i32 (i8*, i32)*)(i8* %1354, i32 -40) #3, !dbg !2294
  %1356 = icmp eq i32 %1355, 0, !dbg !2294
  br i1 %1356, label %1357, label %1504, !dbg !2295

1357:                                             ; preds = %1353
  %1358 = load i32, i32* %38, align 4, !dbg !2296, !tbaa !735
  %1359 = zext i32 %1358 to i64, !dbg !2297
  %1360 = inttoptr i64 %1359 to i8*, !dbg !2298
  call void @llvm.dbg.value(metadata i8* %1360, metadata !1539, metadata !DIExpression()) #3, !dbg !2291
  %1361 = load i32, i32* %42, align 8, !dbg !2299, !tbaa !744
  %1362 = zext i32 %1361 to i64, !dbg !2300
  call void @llvm.dbg.value(metadata i64 %1362, metadata !1540, metadata !DIExpression()) #3, !dbg !2291
  %1363 = inttoptr i64 %1359 to %struct.ethhdr*, !dbg !2301
  call void @llvm.dbg.value(metadata %struct.ethhdr* %1363, metadata !1542, metadata !DIExpression()) #3, !dbg !2291
  %1364 = getelementptr i8, i8* %1360, i64 14, !dbg !2302
  call void @llvm.dbg.value(metadata i8* %1364, metadata !1541, metadata !DIExpression()) #3, !dbg !2291
  %1365 = getelementptr i8, i8* %1360, i64 40, !dbg !2303
  call void @llvm.dbg.value(metadata i8* %1365, metadata !1543, metadata !DIExpression()) #3, !dbg !2291
  %1366 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %1363, i64 1, !dbg !2304
  %1367 = inttoptr i64 %1362 to %struct.ethhdr*, !dbg !2305
  %1368 = icmp ugt %struct.ethhdr* %1366, %1367, !dbg !2306
  br i1 %1368, label %1504, label %1369, !dbg !2307

1369:                                             ; preds = %1357
  %1370 = getelementptr i8, i8* %1360, i64 54, !dbg !2308
  %1371 = bitcast i8* %1370 to %struct.ethhdr*, !dbg !2308
  %1372 = icmp ugt %struct.ethhdr* %1371, %1367, !dbg !2309
  br i1 %1372, label %1504, label %1373, !dbg !2310

1373:                                             ; preds = %1369
  %1374 = bitcast i8* %1370 to %struct.ipv6hdr*, !dbg !2311
  %1375 = inttoptr i64 %1362 to %struct.ipv6hdr*, !dbg !2312
  %1376 = icmp ugt %struct.ipv6hdr* %1374, %1375, !dbg !2313
  br i1 %1376, label %1504, label %1377, !dbg !2314

1377:                                             ; preds = %1373
  %1378 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %1363, i64 0, i32 0, i64 0, !dbg !2315
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %1378, i8* nonnull align 8 dereferenceable(6) %1321, i64 6, i1 false) #3, !dbg !2315
  %1379 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %1363, i64 0, i32 1, i64 0, !dbg !2316
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %1379, i8* nonnull align 1 dereferenceable(6) %1365, i64 6, i1 false) #3, !dbg !2316
  %1380 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %1363, i64 0, i32 2, !dbg !2317
  store i16 -8826, i16* %1380, align 1, !dbg !2318, !tbaa !1580
  call void @llvm.dbg.value(metadata i8 41, metadata !1547, metadata !DIExpression()) #3, !dbg !2291
  %1381 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !2319
  %1382 = load i32, i32* %1381, align 4, !dbg !2319, !tbaa !879
  %1383 = load i16, i16* %1319, align 4, !dbg !2321, !tbaa !879
  %1384 = zext i16 %1383 to i32, !dbg !2321
  %1385 = xor i32 %1382, %1384, !dbg !2322
  call void @llvm.dbg.value(metadata i32 %1385, metadata !1545, metadata !DIExpression()) #3, !dbg !2291
  %1386 = add i16 %783, 40, !dbg !2323
  call void @llvm.dbg.value(metadata i16 %1386, metadata !1544, metadata !DIExpression()) #3, !dbg !2291
  call void @llvm.dbg.value(metadata i8 41, metadata !1547, metadata !DIExpression()) #3, !dbg !2291
  call void @llvm.dbg.value(metadata i32 %1385, metadata !1545, metadata !DIExpression()) #3, !dbg !2291
  call void @llvm.dbg.value(metadata i16 %1386, metadata !1544, metadata !DIExpression()) #3, !dbg !2291
  call void @llvm.dbg.value(metadata i32 1, metadata !1546, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #3, !dbg !2291
  call void @llvm.dbg.value(metadata i32 0, metadata !1546, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #3, !dbg !2291
  call void @llvm.dbg.value(metadata i32 0, metadata !1546, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #3, !dbg !2291
  call void @llvm.dbg.value(metadata i32 %1385, metadata !1546, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #3, !dbg !2291
  %1387 = load i8, i8* %775, align 1, !dbg !2324, !tbaa !776
  call void @llvm.dbg.value(metadata i8* %1364, metadata !1588, metadata !DIExpression()) #3, !dbg !2325
  call void @llvm.dbg.value(metadata i8 %1387, metadata !1594, metadata !DIExpression()) #3, !dbg !2325
  call void @llvm.dbg.value(metadata i32* undef, metadata !1595, metadata !DIExpression()) #3, !dbg !2325
  call void @llvm.dbg.value(metadata i8* %1320, metadata !1596, metadata !DIExpression()) #3, !dbg !2325
  call void @llvm.dbg.value(metadata i16 %1386, metadata !1597, metadata !DIExpression()) #3, !dbg !2325
  call void @llvm.dbg.value(metadata i8 41, metadata !1598, metadata !DIExpression()) #3, !dbg !2325
  %1388 = getelementptr i8, i8* %1360, i64 15, !dbg !2327
  %1389 = getelementptr i8, i8* %1360, i64 16, !dbg !2327
  %1390 = bitcast i8* %1389 to i16*, !dbg !2327
  store i16 0, i16* %1390, align 1, !dbg !2327
  %1391 = lshr i8 %1387, 4, !dbg !2328
  %1392 = or i8 %1391, 96, !dbg !2329
  store i8 %1392, i8* %1364, align 4, !dbg !2329
  %1393 = shl i8 %1387, 4, !dbg !2330
  store i8 %1393, i8* %1388, align 1, !dbg !2331, !tbaa !879
  %1394 = getelementptr i8, i8* %1360, i64 20, !dbg !2332
  store i8 41, i8* %1394, align 2, !dbg !2333, !tbaa !1608
  %1395 = call i16 @llvm.bswap.i16(i16 %1386) #3
  %1396 = getelementptr i8, i8* %1360, i64 18, !dbg !2334
  %1397 = bitcast i8* %1396 to i16*, !dbg !2334
  store i16 %1395, i16* %1397, align 4, !dbg !2335, !tbaa !1613
  %1398 = getelementptr i8, i8* %1360, i64 21, !dbg !2336
  store i8 64, i8* %1398, align 1, !dbg !2337, !tbaa !1616
  %1399 = getelementptr i8, i8* %1360, i64 22, !dbg !2338
  %1400 = bitcast i8* %1399 to i32*, !dbg !2338
  store i32 1, i32* %1400, align 4, !dbg !2338
  %1401 = getelementptr i8, i8* %1360, i64 26, !dbg !2338
  %1402 = bitcast i8* %1401 to i32*, !dbg !2338
  store i32 0, i32* %1402, align 4, !dbg !2338
  %1403 = getelementptr i8, i8* %1360, i64 30, !dbg !2338
  %1404 = bitcast i8* %1403 to i32*, !dbg !2338
  store i32 0, i32* %1404, align 4, !dbg !2338
  %1405 = getelementptr i8, i8* %1360, i64 34, !dbg !2338
  %1406 = bitcast i8* %1405 to i32*, !dbg !2338
  store i32 %1385, i32* %1406, align 4, !dbg !2338
  %1407 = getelementptr i8, i8* %1360, i64 38, !dbg !2339
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %1407, i8* nonnull align 4 dereferenceable(16) %1320, i64 16, i1 false) #3, !dbg !2339
  br label %1504, !dbg !2340

1408:                                             ; preds = %1341
  call void @llvm.dbg.value(metadata %struct.__sk_buff* %0, metadata !1620, metadata !DIExpression()) #3, !dbg !2341
  call void @llvm.dbg.value(metadata i8* %1321, metadata !1625, metadata !DIExpression()) #3, !dbg !2341
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !1626, metadata !DIExpression()) #3, !dbg !2341
  call void @llvm.dbg.value(metadata i8* %1320, metadata !1627, metadata !DIExpression()) #3, !dbg !2341
  call void @llvm.dbg.value(metadata i16 %783, metadata !1628, metadata !DIExpression()) #3, !dbg !2341
  %1409 = call i16 @llvm.bswap.i16(i16 %1318) #3
  %1410 = zext i16 %1409 to i32, !dbg !2343
  call void @llvm.dbg.value(metadata i32 %1410, metadata !1634, metadata !DIExpression()) #3, !dbg !2341
  %1411 = shl nuw i32 %1410, 16, !dbg !2344
  call void @llvm.dbg.value(metadata i32 %1411, metadata !1634, metadata !DIExpression()) #3, !dbg !2341
  %1412 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2345
  %1413 = load i32, i32* %1412, align 4, !dbg !2345, !tbaa !879
  call void @llvm.dbg.value(metadata i32 undef, metadata !1634, metadata !DIExpression()) #3, !dbg !2341
  %1414 = bitcast %struct.__sk_buff* %0 to i8*, !dbg !2346
  %1415 = call i32 inttoptr (i64 44 to i32 (i8*, i32)*)(i8* %1414, i32 -20) #3, !dbg !2347
  %1416 = icmp eq i32 %1415, 0, !dbg !2347
  br i1 %1416, label %1417, label %1504, !dbg !2348

1417:                                             ; preds = %1408
  %1418 = load i32, i32* %38, align 4, !dbg !2349, !tbaa !735
  %1419 = zext i32 %1418 to i64, !dbg !2350
  %1420 = inttoptr i64 %1419 to i8*, !dbg !2351
  call void @llvm.dbg.value(metadata i8* %1420, metadata !1629, metadata !DIExpression()) #3, !dbg !2341
  %1421 = load i32, i32* %42, align 8, !dbg !2352, !tbaa !744
  %1422 = zext i32 %1421 to i64, !dbg !2353
  call void @llvm.dbg.value(metadata i64 %1422, metadata !1630, metadata !DIExpression()) #3, !dbg !2341
  %1423 = inttoptr i64 %1419 to %struct.ethhdr*, !dbg !2354
  call void @llvm.dbg.value(metadata %struct.ethhdr* %1423, metadata !1632, metadata !DIExpression()) #3, !dbg !2341
  %1424 = getelementptr i8, i8* %1420, i64 14, !dbg !2355
  call void @llvm.dbg.value(metadata i8* %1424, metadata !1631, metadata !DIExpression()) #3, !dbg !2341
  %1425 = getelementptr i8, i8* %1420, i64 20, !dbg !2356
  call void @llvm.dbg.value(metadata i8* %1425, metadata !1633, metadata !DIExpression()) #3, !dbg !2341
  %1426 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %1423, i64 1, !dbg !2357
  %1427 = inttoptr i64 %1422 to %struct.ethhdr*, !dbg !2358
  %1428 = icmp ugt %struct.ethhdr* %1426, %1427, !dbg !2359
  br i1 %1428, label %1504, label %1429, !dbg !2360

1429:                                             ; preds = %1417
  %1430 = getelementptr i8, i8* %1420, i64 34, !dbg !2361
  %1431 = bitcast i8* %1430 to %struct.ethhdr*, !dbg !2361
  %1432 = icmp ugt %struct.ethhdr* %1431, %1427, !dbg !2362
  br i1 %1432, label %1504, label %1433, !dbg !2363

1433:                                             ; preds = %1429
  %1434 = bitcast i8* %1430 to %struct.iphdr*, !dbg !2364
  %1435 = inttoptr i64 %1422 to %struct.iphdr*, !dbg !2365
  %1436 = icmp ugt %struct.iphdr* %1434, %1435, !dbg !2366
  br i1 %1436, label %1504, label %1437, !dbg !2367

1437:                                             ; preds = %1433
  %1438 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %1423, i64 0, i32 0, i64 0, !dbg !2368
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %1438, i8* nonnull align 8 dereferenceable(6) %1321, i64 6, i1 false) #3, !dbg !2368
  %1439 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %1423, i64 0, i32 1, i64 0, !dbg !2369
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %1439, i8* nonnull align 1 dereferenceable(6) %1425, i64 6, i1 false) #3, !dbg !2369
  %1440 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %1423, i64 0, i32 2, !dbg !2370
  store i16 8, i16* %1440, align 1, !dbg !2371, !tbaa !1580
  %1441 = load i8, i8* %775, align 1, !dbg !2372, !tbaa !776
  %1442 = and i32 %1413, -65536, !dbg !2373
  %1443 = xor i32 %1442, %1411, !dbg !2373
  %1444 = or i32 %1443, 4268, !dbg !2374
  %1445 = bitcast i8* %1320 to i32*, !dbg !2375
  %1446 = load i32, i32* %1445, align 4, !dbg !2375, !tbaa !879
  call void @llvm.dbg.value(metadata i8* %1424, metadata !1674, metadata !DIExpression()) #3, !dbg !2376
  call void @llvm.dbg.value(metadata i8 %1441, metadata !1679, metadata !DIExpression()) #3, !dbg !2376
  call void @llvm.dbg.value(metadata i32 %1444, metadata !1680, metadata !DIExpression()) #3, !dbg !2376
  call void @llvm.dbg.value(metadata i32 %1446, metadata !1681, metadata !DIExpression()) #3, !dbg !2376
  call void @llvm.dbg.value(metadata i16 %783, metadata !1682, metadata !DIExpression()) #3, !dbg !2376
  call void @llvm.dbg.value(metadata i8 4, metadata !1683, metadata !DIExpression()) #3, !dbg !2376
  call void @llvm.dbg.value(metadata i64 0, metadata !1684, metadata !DIExpression()) #3, !dbg !2376
  store i8 69, i8* %1424, align 4, !dbg !2378
  %1447 = bitcast i8* %1425 to i16*, !dbg !2379
  store i16 0, i16* %1447, align 2, !dbg !2380, !tbaa !788
  %1448 = getelementptr i8, i8* %1420, i64 23, !dbg !2381
  store i8 4, i8* %1448, align 1, !dbg !2382, !tbaa !780
  %1449 = getelementptr i8, i8* %1420, i64 24, !dbg !2383
  %1450 = bitcast i8* %1449 to i16*, !dbg !2383
  %1451 = getelementptr i8, i8* %1420, i64 15, !dbg !2384
  store i8 %1441, i8* %1451, align 1, !dbg !2385, !tbaa !771
  %1452 = add i16 %783, 20, !dbg !2386
  %1453 = call i16 @llvm.bswap.i16(i16 %1452) #3
  %1454 = getelementptr i8, i8* %1420, i64 16, !dbg !2387
  %1455 = bitcast i8* %1454 to i16*, !dbg !2387
  store i16 %1453, i16* %1455, align 2, !dbg !2388, !tbaa !785
  %1456 = getelementptr i8, i8* %1420, i64 30, !dbg !2389
  %1457 = bitcast i8* %1456 to i32*, !dbg !2389
  store i32 %1446, i32* %1457, align 4, !dbg !2390, !tbaa !811
  %1458 = getelementptr i8, i8* %1420, i64 26, !dbg !2391
  %1459 = bitcast i8* %1458 to i32*, !dbg !2391
  store i32 %1444, i32* %1459, align 4, !dbg !2392, !tbaa !813
  %1460 = getelementptr i8, i8* %1420, i64 22, !dbg !2393
  store i8 64, i8* %1460, align 4, !dbg !2394, !tbaa !809
  call void @llvm.dbg.value(metadata i8* %1424, metadata !817, metadata !DIExpression()) #3, !dbg !2395
  %1461 = bitcast i8* %1424 to i16*, !dbg !2397
  call void @llvm.dbg.value(metadata i16* %1461, metadata !825, metadata !DIExpression()) #3, !dbg !2395
  call void @llvm.dbg.value(metadata i32 0, metadata !826, metadata !DIExpression()) #3, !dbg !2398
  %1462 = load i16, i16* %1461, align 2, !dbg !2399, !tbaa !835
  %1463 = zext i16 %1462 to i64, !dbg !2399
  call void @llvm.dbg.value(metadata i32 1, metadata !826, metadata !DIExpression()) #3, !dbg !2398
  %1464 = getelementptr i8, i8* %1420, i64 18, !dbg !2400
  %1465 = bitcast i8* %1464 to i16*, !dbg !2400
  call void @llvm.dbg.value(metadata i16* %1465, metadata !825, metadata !DIExpression()) #3, !dbg !2395
  %1466 = zext i16 %1453 to i64, !dbg !2399
  call void @llvm.dbg.value(metadata i32 2, metadata !826, metadata !DIExpression()) #3, !dbg !2398
  %1467 = load i16, i16* %1465, align 2, !dbg !2399, !tbaa !835
  %1468 = zext i16 %1467 to i64, !dbg !2399
  call void @llvm.dbg.value(metadata i32 3, metadata !826, metadata !DIExpression()) #3, !dbg !2398
  %1469 = bitcast i8* %1460 to i16*, !dbg !2400
  call void @llvm.dbg.value(metadata i16* %1469, metadata !825, metadata !DIExpression()) #3, !dbg !2395
  call void @llvm.dbg.value(metadata i32 4, metadata !826, metadata !DIExpression()) #3, !dbg !2398
  %1470 = load i16, i16* %1469, align 2, !dbg !2399, !tbaa !835
  %1471 = zext i16 %1470 to i64, !dbg !2399
  call void @llvm.dbg.value(metadata i32 5, metadata !826, metadata !DIExpression()) #3, !dbg !2398
  call void @llvm.dbg.value(metadata i32 6, metadata !826, metadata !DIExpression()) #3, !dbg !2398
  call void @llvm.dbg.value(metadata i32 7, metadata !826, metadata !DIExpression()) #3, !dbg !2398
  %1472 = lshr exact i32 %1443, 16, !dbg !2399
  %1473 = zext i32 %1472 to i64, !dbg !2399
  call void @llvm.dbg.value(metadata i32 8, metadata !826, metadata !DIExpression()) #3, !dbg !2398
  %1474 = and i32 %1446, 65535, !dbg !2399
  %1475 = zext i32 %1474 to i64, !dbg !2399
  call void @llvm.dbg.value(metadata i32 9, metadata !826, metadata !DIExpression()) #3, !dbg !2398
  %1476 = lshr i32 %1446, 16, !dbg !2399
  %1477 = zext i32 %1476 to i64, !dbg !2399
  %1478 = add nuw nsw i64 %1466, 4268, !dbg !2401
  %1479 = add nuw nsw i64 %1478, %1473, !dbg !2401
  %1480 = add nuw nsw i64 %1479, %1475, !dbg !2401
  %1481 = add nuw nsw i64 %1480, %1477, !dbg !2401
  %1482 = add nuw nsw i64 %1481, %1463, !dbg !2401
  %1483 = add nuw nsw i64 %1482, %1468, !dbg !2401
  %1484 = add nuw nsw i64 %1483, %1471, !dbg !2401
  call void @llvm.dbg.value(metadata i32 10, metadata !826, metadata !DIExpression()) #3, !dbg !2398
  call void @llvm.dbg.value(metadata i32 0, metadata !838, metadata !DIExpression()) #3, !dbg !2402
  call void @llvm.dbg.value(metadata i64 %1484, metadata !843, metadata !DIExpression()) #3, !dbg !2402
  %1485 = lshr i64 %1484, 16, !dbg !2404
  %1486 = icmp eq i64 %1485, 0, !dbg !2404
  %1487 = and i64 %1484, 65535, !dbg !2405
  %1488 = add nuw nsw i64 %1487, %1485, !dbg !2405
  %1489 = select i1 %1486, i64 %1484, i64 %1488, !dbg !2405
  call void @llvm.dbg.value(metadata i64 %1489, metadata !843, metadata !DIExpression()) #3, !dbg !2402
  call void @llvm.dbg.value(metadata i32 1, metadata !838, metadata !DIExpression()) #3, !dbg !2402
  %1490 = lshr i64 %1489, 16, !dbg !2404
  %1491 = icmp eq i64 %1490, 0, !dbg !2404
  %1492 = and i64 %1489, 65535, !dbg !2405
  %1493 = add nuw nsw i64 %1492, %1490, !dbg !2405
  %1494 = select i1 %1491, i64 %1489, i64 %1493, !dbg !2405
  call void @llvm.dbg.value(metadata i64 %1494, metadata !843, metadata !DIExpression()) #3, !dbg !2402
  call void @llvm.dbg.value(metadata i32 2, metadata !838, metadata !DIExpression()) #3, !dbg !2402
  %1495 = lshr i64 %1494, 16, !dbg !2404
  %1496 = icmp eq i64 %1495, 0, !dbg !2404
  %1497 = and i64 %1494, 65535, !dbg !2405
  %1498 = add nuw nsw i64 %1497, %1495, !dbg !2405
  %1499 = select i1 %1496, i64 %1494, i64 %1498, !dbg !2405
  call void @llvm.dbg.value(metadata i64 %1499, metadata !843, metadata !DIExpression()) #3, !dbg !2402
  call void @llvm.dbg.value(metadata i32 3, metadata !838, metadata !DIExpression()) #3, !dbg !2402
  %1500 = lshr i64 %1499, 16, !dbg !2404
  %1501 = add nuw nsw i64 %1500, %1499, !dbg !2405
  call void @llvm.dbg.value(metadata i64 %1501, metadata !843, metadata !DIExpression()) #3, !dbg !2402
  call void @llvm.dbg.value(metadata i32 4, metadata !838, metadata !DIExpression()) #3, !dbg !2402
  call void @llvm.dbg.value(metadata i64 %1501, metadata !1684, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_xor, DW_OP_stack_value)) #3, !dbg !2376
  %1502 = trunc i64 %1501 to i16, !dbg !2406
  %1503 = xor i16 %1502, -1, !dbg !2406
  store i16 %1503, i16* %1450, align 2, !dbg !2407, !tbaa !854
  br label %1504, !dbg !2408

1504:                                             ; preds = %1437, %1433, %1429, %1417, %1408, %1377, %1373, %1369, %1357, %1353, %1328, %1323, %1317, %1314, %1019, %893
  %1505 = phi i32 [ 2, %1019 ], [ 2, %893 ], [ 2, %1317 ], [ 2, %1323 ], [ 2, %1328 ], [ 2, %1314 ], [ 3, %1437 ], [ 3, %1377 ], [ 2, %1353 ], [ 2, %1373 ], [ 2, %1369 ], [ 2, %1357 ], [ 2, %1408 ], [ 2, %1433 ], [ 2, %1429 ], [ 2, %1417 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %894) #3, !dbg !2409
  br label %1506

1506:                                             ; preds = %762, %769, %784, %787, %789, %800, %807, %816, %844, %879, %889, %1504
  %1507 = phi i32 [ %1505, %1504 ], [ 0, %807 ], [ 0, %879 ], [ 2, %889 ], [ 2, %816 ], [ 2, %844 ], [ 3, %789 ], [ 2, %784 ], [ 0, %787 ], [ 2, %800 ], [ 2, %769 ], [ 2, %762 ], !dbg !1720
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %766) #3, !dbg !2409
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %765) #3, !dbg !2409
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %764) #3, !dbg !2409
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %763) #3, !dbg !2409
  br label %1508, !dbg !2410

1508:                                             ; preds = %48, %1, %1506, %760
  %1509 = phi i32 [ %761, %760 ], [ %1507, %1506 ], [ 2, %1 ], [ 0, %48 ], !dbg !733
  ret i32 %1509, !dbg !2411
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!339, !340, !341}
!llvm.ident = !{!342}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_license", scope: !2, file: !3, line: 735, type: !337, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !73, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "extracted.c", directory: "/home/sayandes/github/hook-point-transformer/src/katran-test/extraction")
!4 = !{!5, !35}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 28, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/linux/in.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!9 = !DIEnumerator(name: "IPPROTO_IP", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4, isUnsigned: true)
!13 = !DIEnumerator(name: "IPPROTO_TCP", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "IPPROTO_EGP", value: 8, isUnsigned: true)
!15 = !DIEnumerator(name: "IPPROTO_PUP", value: 12, isUnsigned: true)
!16 = !DIEnumerator(name: "IPPROTO_UDP", value: 17, isUnsigned: true)
!17 = !DIEnumerator(name: "IPPROTO_IDP", value: 22, isUnsigned: true)
!18 = !DIEnumerator(name: "IPPROTO_TP", value: 29, isUnsigned: true)
!19 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33, isUnsigned: true)
!20 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41, isUnsigned: true)
!21 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46, isUnsigned: true)
!22 = !DIEnumerator(name: "IPPROTO_GRE", value: 47, isUnsigned: true)
!23 = !DIEnumerator(name: "IPPROTO_ESP", value: 50, isUnsigned: true)
!24 = !DIEnumerator(name: "IPPROTO_AH", value: 51, isUnsigned: true)
!25 = !DIEnumerator(name: "IPPROTO_MTP", value: 92, isUnsigned: true)
!26 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94, isUnsigned: true)
!27 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98, isUnsigned: true)
!28 = !DIEnumerator(name: "IPPROTO_PIM", value: 103, isUnsigned: true)
!29 = !DIEnumerator(name: "IPPROTO_COMP", value: 108, isUnsigned: true)
!30 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132, isUnsigned: true)
!31 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136, isUnsigned: true)
!32 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137, isUnsigned: true)
!33 = !DIEnumerator(name: "IPPROTO_RAW", value: 255, isUnsigned: true)
!34 = !DIEnumerator(name: "IPPROTO_MAX", value: 256, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdp_action", file: !36, line: 3112, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "./bpf.h", directory: "/home/sayandes/github/hook-point-transformer/src/katran-test/extraction")
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "XDP_ABORTED", value: 0, isUnsigned: true)
!39 = !DIEnumerator(name: "XDP_DROP", value: 1, isUnsigned: true)
!40 = !DIEnumerator(name: "XDP_PASS", value: 2, isUnsigned: true)
!41 = !DIEnumerator(name: "XDP_TX", value: 3, isUnsigned: true)
!42 = !DIEnumerator(name: "XDP_REDIRECT", value: 4, isUnsigned: true)
!43 = !{!44, !45, !46, !49, !50, !64, !69, !70, !72}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !47, line: 24, baseType: !48)
!47 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "")
!48 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quic_long_header", file: !52, line: 20, size: 112, elements: !53)
!52 = !DIFile(filename: "./pckt_parsing.h", directory: "/home/sayandes/github/hook-point-transformer/src/katran-test/extraction")
!53 = !{!54, !57, !59, !60}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !51, file: !52, line: 21, baseType: !55, size: 8)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !47, line: 21, baseType: !56)
!56 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !51, file: !52, line: 22, baseType: !58, size: 32, offset: 8)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !47, line: 27, baseType: !7)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id_lens", scope: !51, file: !52, line: 23, baseType: !55, size: 8, offset: 40)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "dst_connection_id", scope: !51, file: !52, line: 24, baseType: !61, size: 64, offset: 48)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 8)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quic_short_header", file: !52, line: 26, size: 72, elements: !66)
!66 = !{!67, !68}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !52, line: 27, baseType: !55, size: 8)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "connection_id", scope: !65, file: !52, line: 28, baseType: !61, size: 64, offset: 8)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !71, line: 47, baseType: !7)
!71 = !DIFile(filename: "./jhash.h", directory: "/home/sayandes/github/hook-point-transformer/src/katran-test/extraction")
!72 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!73 = !{!0, !74, !112, !150, !169, !211, !224, !246, !262, !275, !288, !298, !314, !320, !325, !327, !332}
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "ctl_array", scope: !2, file: !76, line: 13, type: !77, isLocal: false, isDefinition: true)
!76 = !DIFile(filename: "./control_data_maps.h", directory: "/home/sayandes/github/hook-point-transformer/src/katran-test/extraction")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 7, size: 320, elements: !78)
!78 = !{!79, !84, !86, !102, !107}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !76, line: 8, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 64, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 2)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !77, file: !76, line: 9, baseType: !85, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !77, file: !76, line: 10, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_value", file: !89, line: 24, size: 64, elements: !90)
!89 = !DIFile(filename: "./balancer_structs.h", directory: "/home/sayandes/github/hook-point-transformer/src/katran-test/extraction")
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !89, line: 25, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !89, line: 25, size: 64, elements: !93)
!93 = !{!94, !97, !98}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !92, file: !89, line: 26, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !47, line: 31, baseType: !96)
!96 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !92, file: !89, line: 27, baseType: !58, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "mac", scope: !92, file: !89, line: 28, baseType: !99, size: 48)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 48, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 6)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !77, file: !76, line: 11, baseType: !103, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 512, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 16)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "map_flags", scope: !77, file: !76, line: 12, baseType: !108, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 0)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "vip_map", scope: !2, file: !114, line: 13, type: !115, isLocal: false, isDefinition: true)
!114 = !DIFile(filename: "./balancer_maps.h", directory: "/home/sayandes/github/hook-point-transformer/src/katran-test/extraction")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 7, size: 320, elements: !116)
!116 = !{!117, !122, !138, !144, !149}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !114, line: 8, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 32, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 1)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !115, file: !114, line: 9, baseType: !123, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vip_definition", file: !89, line: 31, size: 160, elements: !125)
!125 = !{!126, !136, !137}
!126 = !DIDerivedType(tag: DW_TAG_member, scope: !124, file: !89, line: 32, baseType: !127, size: 128)
!127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !124, file: !89, line: 32, size: 128, elements: !128)
!128 = !{!129, !132}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !127, file: !89, line: 33, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !131, line: 27, baseType: !58)
!131 = !DIFile(filename: "/usr/include/linux/types.h", directory: "")
!132 = !DIDerivedType(tag: DW_TAG_member, name: "vipv6", scope: !127, file: !89, line: 34, baseType: !133, size: 128)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 128, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 4)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !124, file: !89, line: 36, baseType: !46, size: 16, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !124, file: !89, line: 37, baseType: !55, size: 8, offset: 144)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !115, file: !114, line: 10, baseType: !139, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vip_meta", file: !89, line: 39, size: 64, elements: !141)
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !89, line: 40, baseType: !58, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "vip_num", scope: !140, file: !89, line: 41, baseType: !58, size: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !115, file: !114, line: 11, baseType: !145, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 16384, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 512)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "map_flags", scope: !115, file: !114, line: 12, baseType: !108, size: 64, offset: 256)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "lru_mapping", scope: !2, file: !114, line: 20, type: !152, isLocal: false, isDefinition: true)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 14, size: 320, elements: !153)
!153 = !{!154, !159, !162, !163, !168}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !152, file: !114, line: 15, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 384, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 12)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !152, file: !114, line: 16, baseType: !160, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 128, elements: !134)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "value_size", scope: !152, file: !114, line: 17, baseType: !160, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !152, file: !114, line: 18, baseType: !164, size: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 4096, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "map_flags", scope: !152, file: !114, line: 19, baseType: !108, size: 64, offset: 256)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "fallback_cache", scope: !2, file: !114, line: 27, type: !171, isLocal: false, isDefinition: true)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 21, size: 320, elements: !172)
!172 = !{!173, !178, !199, !205, !210}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !171, file: !114, line: 22, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 288, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 9)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !171, file: !114, line: 23, baseType: !179, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flow_key", file: !89, line: 3, size: 320, elements: !181)
!181 = !{!182, !187, !192, !198}
!182 = !DIDerivedType(tag: DW_TAG_member, scope: !180, file: !89, line: 4, baseType: !183, size: 128)
!183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !180, file: !89, line: 4, size: 128, elements: !184)
!184 = !{!185, !186}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !183, file: !89, line: 5, baseType: !130, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "srcv6", scope: !183, file: !89, line: 6, baseType: !133, size: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, scope: !180, file: !89, line: 8, baseType: !188, size: 128, offset: 128)
!188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !180, file: !89, line: 8, size: 128, elements: !189)
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !188, file: !89, line: 9, baseType: !130, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "dstv6", scope: !188, file: !89, line: 10, baseType: !133, size: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, scope: !180, file: !89, line: 12, baseType: !193, size: 32, offset: 256)
!193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !180, file: !89, line: 12, size: 32, elements: !194)
!194 = !{!195, !196}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !193, file: !89, line: 13, baseType: !58, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "port16", scope: !193, file: !89, line: 14, baseType: !197, size: 32)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !82)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !180, file: !89, line: 16, baseType: !55, size: 8, offset: 288)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !171, file: !114, line: 24, baseType: !200, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_pos_lru", file: !89, line: 43, size: 128, elements: !202)
!202 = !{!203, !204}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !201, file: !89, line: 44, baseType: !58, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !201, file: !89, line: 45, baseType: !95, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !171, file: !114, line: 25, baseType: !206, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 32000, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 1000)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "map_flags", scope: !171, file: !114, line: 26, baseType: !108, size: 64, offset: 256)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "ch_rings", scope: !2, file: !114, line: 34, type: !213, isLocal: false, isDefinition: true)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 28, size: 320, elements: !214)
!214 = !{!215, !216, !217, !218, !223}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !213, file: !114, line: 29, baseType: !80, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !213, file: !114, line: 30, baseType: !85, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !213, file: !114, line: 31, baseType: !85, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !213, file: !114, line: 32, baseType: !219, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 1073758208, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 33554944)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "map_flags", scope: !213, file: !114, line: 33, baseType: !108, size: 64, offset: 256)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(name: "reals", scope: !2, file: !114, line: 41, type: !226, isLocal: false, isDefinition: true)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 35, size: 320, elements: !227)
!227 = !{!228, !229, !230, !240, !245}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !226, file: !114, line: 36, baseType: !80, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !226, file: !114, line: 37, baseType: !85, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !226, file: !114, line: 38, baseType: !231, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_definition", file: !89, line: 47, size: 160, elements: !233)
!233 = !{!234, !239}
!234 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !89, line: 48, baseType: !235, size: 128)
!235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !232, file: !89, line: 48, size: 128, elements: !236)
!236 = !{!237, !238}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !235, file: !89, line: 49, baseType: !130, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "dstv6", scope: !235, file: !89, line: 50, baseType: !133, size: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !232, file: !89, line: 52, baseType: !55, size: 8, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !226, file: !114, line: 39, baseType: !241, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 131072, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 4096)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "map_flags", scope: !226, file: !114, line: 40, baseType: !108, size: 64, offset: 256)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "reals_stats", scope: !2, file: !114, line: 48, type: !248, isLocal: false, isDefinition: true)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 42, size: 320, elements: !249)
!249 = !{!250, !253, !254, !260, !261}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !248, file: !114, line: 43, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 192, elements: !100)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !248, file: !114, line: 44, baseType: !85, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !248, file: !114, line: 45, baseType: !255, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lb_stats", file: !89, line: 54, size: 128, elements: !257)
!257 = !{!258, !259}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !256, file: !89, line: 55, baseType: !95, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !256, file: !89, line: 56, baseType: !95, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !248, file: !114, line: 46, baseType: !241, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "map_flags", scope: !248, file: !114, line: 47, baseType: !108, size: 64, offset: 256)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "stats", scope: !2, file: !114, line: 55, type: !264, isLocal: false, isDefinition: true)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 49, size: 320, elements: !265)
!265 = !{!266, !267, !268, !269, !274}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !264, file: !114, line: 50, baseType: !251, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !264, file: !114, line: 51, baseType: !85, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !264, file: !114, line: 52, baseType: !255, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !264, file: !114, line: 53, baseType: !270, size: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 32768, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 1024)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "map_flags", scope: !264, file: !114, line: 54, baseType: !108, size: 64, offset: 256)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "server_id_map", scope: !2, file: !114, line: 62, type: !277, isLocal: false, isDefinition: true)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 56, size: 320, elements: !278)
!278 = !{!279, !280, !281, !282, !287}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !277, file: !114, line: 57, baseType: !80, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !277, file: !114, line: 58, baseType: !85, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !277, file: !114, line: 59, baseType: !85, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !277, file: !114, line: 60, baseType: !283, size: 64, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 536870848, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 16777214)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "map_flags", scope: !277, file: !114, line: 61, baseType: !108, size: 64, offset: 256)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(name: "flow_debug_maps", scope: !2, file: !290, line: 13, type: !291, isLocal: false, isDefinition: true)
!290 = !DIFile(filename: "./flow_debug_maps.h", directory: "/home/sayandes/github/hook-point-transformer/src/katran-test/extraction")
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !290, line: 7, size: 320, elements: !292)
!292 = !{!293, !294, !295, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !291, file: !290, line: 8, baseType: !155, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !291, file: !290, line: 9, baseType: !160, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "value_size", scope: !291, file: !290, line: 10, baseType: !160, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !291, file: !290, line: 11, baseType: !164, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "map_flags", scope: !291, file: !290, line: 12, baseType: !108, size: 64, offset: 256)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "decap_counters", scope: !2, file: !300, line: 19, type: !301, isLocal: false, isDefinition: true)
!300 = !DIFile(filename: "./decap_maps.h", directory: "/home/sayandes/github/hook-point-transformer/src/katran-test/extraction")
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !300, line: 13, size: 320, elements: !302)
!302 = !{!303, !304, !305, !312, !313}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !301, file: !300, line: 14, baseType: !251, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !301, file: !300, line: 15, baseType: !85, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !301, file: !300, line: 16, baseType: !306, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decap_stats", file: !300, line: 8, size: 192, elements: !308)
!308 = !{!309, !310, !311}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "decap_v4", scope: !307, file: !300, line: 9, baseType: !95, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "decap_v6", scope: !307, file: !300, line: 10, baseType: !95, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !307, file: !300, line: 11, baseType: !95, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !301, file: !300, line: 17, baseType: !270, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "map_flags", scope: !301, file: !300, line: 18, baseType: !108, size: 64, offset: 256)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "bpf_map_lookup_elem", scope: !2, file: !316, line: 11, type: !317, isLocal: true, isDefinition: true)
!316 = !DIFile(filename: "./bpf_helpers.h", directory: "/home/sayandes/github/hook-point-transformer/src/katran-test/extraction")
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!44, !44, !44}
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "bpf_get_smp_processor_id", scope: !2, file: !316, line: 21, type: !322, isLocal: true, isDefinition: true)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!96}
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "bpf_ktime_get_ns", scope: !2, file: !316, line: 18, type: !322, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(name: "bpf_map_update_elem", scope: !2, file: !316, line: 12, type: !329, isLocal: true, isDefinition: true)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!72, !44, !44, !44, !96}
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(name: "bpf_xdp_adjust_head", scope: !2, file: !316, line: 38, type: !334, isLocal: true, isDefinition: true)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!72, !44, !72}
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 32, elements: !134)
!338 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!339 = !{i32 7, !"Dwarf Version", i32 4}
!340 = !{i32 2, !"Debug Info Version", i32 3}
!341 = !{i32 1, !"wchar_size", i32 4}
!342 = !{!"clang version 10.0.0-4ubuntu1 "}
!343 = distinct !DISubprogram(name: "balancer_ingress", scope: !3, file: !3, line: 713, type: !344, scopeLine: 713, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !435)
!344 = !DISubroutineType(types: !345)
!345 = !{!72, !346}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sk_buff", file: !36, line: 2934, size: 1408, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !365, !366, !367, !368, !369, !370, !371, !372, !373, !375, !376, !377, !378, !379, !412, !413, !414, !415}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !347, file: !36, line: 2935, baseType: !58, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !347, file: !36, line: 2936, baseType: !58, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !347, file: !36, line: 2937, baseType: !58, size: 32, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "queue_mapping", scope: !347, file: !36, line: 2938, baseType: !58, size: 32, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !347, file: !36, line: 2939, baseType: !58, size: 32, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_present", scope: !347, file: !36, line: 2940, baseType: !58, size: 32, offset: 160)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !347, file: !36, line: 2941, baseType: !58, size: 32, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !347, file: !36, line: 2942, baseType: !58, size: 32, offset: 224)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !347, file: !36, line: 2943, baseType: !58, size: 32, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ingress_ifindex", scope: !347, file: !36, line: 2944, baseType: !58, size: 32, offset: 288)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !347, file: !36, line: 2945, baseType: !58, size: 32, offset: 320)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !347, file: !36, line: 2946, baseType: !58, size: 32, offset: 352)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !347, file: !36, line: 2947, baseType: !362, size: 160, offset: 384)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 160, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 5)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !347, file: !36, line: 2948, baseType: !58, size: 32, offset: 544)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tc_classid", scope: !347, file: !36, line: 2949, baseType: !58, size: 32, offset: 576)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !347, file: !36, line: 2950, baseType: !58, size: 32, offset: 608)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "data_end", scope: !347, file: !36, line: 2951, baseType: !58, size: 32, offset: 640)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !347, file: !36, line: 2952, baseType: !58, size: 32, offset: 672)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !347, file: !36, line: 2955, baseType: !58, size: 32, offset: 704)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip4", scope: !347, file: !36, line: 2956, baseType: !58, size: 32, offset: 736)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip4", scope: !347, file: !36, line: 2957, baseType: !58, size: 32, offset: 768)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip6", scope: !347, file: !36, line: 2958, baseType: !374, size: 128, offset: 800)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 128, elements: !134)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip6", scope: !347, file: !36, line: 2959, baseType: !374, size: 128, offset: 928)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "remote_port", scope: !347, file: !36, line: 2960, baseType: !58, size: 32, offset: 1056)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "local_port", scope: !347, file: !36, line: 2961, baseType: !58, size: 32, offset: 1088)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "data_meta", scope: !347, file: !36, line: 2964, baseType: !58, size: 32, offset: 1120)
!379 = !DIDerivedType(tag: DW_TAG_member, scope: !347, file: !36, line: 2965, baseType: !380, size: 64, align: 64, offset: 1152)
!380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !347, file: !36, line: 2965, size: 64, align: 64, elements: !381)
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "flow_keys", scope: !380, file: !36, line: 2965, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_flow_keys", file: !36, line: 3515, size: 448, elements: !385)
!385 = !{!386, !387, !388, !389, !390, !391, !392, !393, !395, !396, !397, !410, !411}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "nhoff", scope: !384, file: !36, line: 3516, baseType: !46, size: 16)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "thoff", scope: !384, file: !36, line: 3517, baseType: !46, size: 16, offset: 16)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "addr_proto", scope: !384, file: !36, line: 3518, baseType: !46, size: 16, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "is_frag", scope: !384, file: !36, line: 3519, baseType: !55, size: 8, offset: 48)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "is_first_frag", scope: !384, file: !36, line: 3520, baseType: !55, size: 8, offset: 56)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "is_encap", scope: !384, file: !36, line: 3521, baseType: !55, size: 8, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ip_proto", scope: !384, file: !36, line: 3522, baseType: !55, size: 8, offset: 72)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "n_proto", scope: !384, file: !36, line: 3523, baseType: !394, size: 16, offset: 80)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !131, line: 25, baseType: !46)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sport", scope: !384, file: !36, line: 3524, baseType: !394, size: 16, offset: 96)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "dport", scope: !384, file: !36, line: 3525, baseType: !394, size: 16, offset: 112)
!397 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !36, line: 3526, baseType: !398, size: 256, offset: 128)
!398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !384, file: !36, line: 3526, size: 256, elements: !399)
!399 = !{!400, !405}
!400 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !36, line: 3527, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !398, file: !36, line: 3527, size: 64, elements: !402)
!402 = !{!403, !404}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_src", scope: !401, file: !36, line: 3528, baseType: !130, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_dst", scope: !401, file: !36, line: 3529, baseType: !130, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !36, line: 3531, baseType: !406, size: 256)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !398, file: !36, line: 3531, size: 256, elements: !407)
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_src", scope: !406, file: !36, line: 3532, baseType: !374, size: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_dst", scope: !406, file: !36, line: 3533, baseType: !374, size: 128, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !384, file: !36, line: 3536, baseType: !58, size: 32, offset: 384)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "flow_label", scope: !384, file: !36, line: 3537, baseType: !130, size: 32, offset: 416)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !347, file: !36, line: 2966, baseType: !95, size: 64, offset: 1216)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "wire_len", scope: !347, file: !36, line: 2967, baseType: !58, size: 32, offset: 1280)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "gso_segs", scope: !347, file: !36, line: 2968, baseType: !58, size: 32, offset: 1312)
!415 = !DIDerivedType(tag: DW_TAG_member, scope: !347, file: !36, line: 2969, baseType: !416, size: 64, align: 64, offset: 1344)
!416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !347, file: !36, line: 2969, size: 64, align: 64, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !416, file: !36, line: 2969, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_sock", file: !36, line: 3022, size: 608, elements: !421)
!421 = !{!422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "bound_dev_if", scope: !420, file: !36, line: 3023, baseType: !58, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !420, file: !36, line: 3024, baseType: !58, size: 32, offset: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !420, file: !36, line: 3025, baseType: !58, size: 32, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !420, file: !36, line: 3026, baseType: !58, size: 32, offset: 96)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !420, file: !36, line: 3027, baseType: !58, size: 32, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !420, file: !36, line: 3028, baseType: !58, size: 32, offset: 160)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "src_ip4", scope: !420, file: !36, line: 3030, baseType: !58, size: 32, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "src_ip6", scope: !420, file: !36, line: 3031, baseType: !374, size: 128, offset: 224)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "src_port", scope: !420, file: !36, line: 3032, baseType: !58, size: 32, offset: 352)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "dst_port", scope: !420, file: !36, line: 3033, baseType: !58, size: 32, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "dst_ip4", scope: !420, file: !36, line: 3034, baseType: !58, size: 32, offset: 416)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "dst_ip6", scope: !420, file: !36, line: 3035, baseType: !374, size: 128, offset: 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !420, file: !36, line: 3036, baseType: !58, size: 32, offset: 576)
!435 = !{!436, !437, !438, !439, !448, !449}
!436 = !DILocalVariable(name: "ctx", arg: 1, scope: !343, file: !3, line: 713, type: !346)
!437 = !DILocalVariable(name: "data", scope: !343, file: !3, line: 714, type: !44)
!438 = !DILocalVariable(name: "data_end", scope: !343, file: !3, line: 715, type: !44)
!439 = !DILocalVariable(name: "eth", scope: !343, file: !3, line: 716, type: !440)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ethhdr", file: !442, line: 163, size: 112, elements: !443)
!442 = !DIFile(filename: "/usr/include/linux/if_ether.h", directory: "")
!443 = !{!444, !446, !447}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "h_dest", scope: !441, file: !442, line: 164, baseType: !445, size: 48)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 48, elements: !100)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "h_source", scope: !441, file: !442, line: 165, baseType: !445, size: 48, offset: 48)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "h_proto", scope: !441, file: !442, line: 166, baseType: !394, size: 16, offset: 96)
!448 = !DILocalVariable(name: "eth_proto", scope: !343, file: !3, line: 717, type: !58)
!449 = !DILocalVariable(name: "nh_off", scope: !343, file: !3, line: 718, type: !58)
!450 = !DILocalVariable(name: "new_dst_lru", scope: !451, file: !3, line: 350, type: !201)
!451 = distinct !DISubprogram(name: "get_packet_dst", scope: !3, file: !3, line: 349, type: !452, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !463)
!452 = !DISubroutineType(types: !453)
!453 = !{!454, !455, !456, !139, !454, !44}
!454 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "packet_description", file: !89, line: 18, size: 384, elements: !458)
!458 = !{!459, !460, !461, !462}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !457, file: !89, line: 19, baseType: !180, size: 320)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "real_index", scope: !457, file: !89, line: 20, baseType: !58, size: 32, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !457, file: !89, line: 21, baseType: !55, size: 8, offset: 352)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !457, file: !89, line: 22, baseType: !55, size: 8, offset: 360)
!463 = !{!464, !465, !466, !467, !468, !450, !469, !470, !471, !472, !473, !474, !475}
!464 = !DILocalVariable(name: "real", arg: 1, scope: !451, file: !3, line: 349, type: !455)
!465 = !DILocalVariable(name: "pckt", arg: 2, scope: !451, file: !3, line: 349, type: !456)
!466 = !DILocalVariable(name: "vip_info", arg: 3, scope: !451, file: !3, line: 349, type: !139)
!467 = !DILocalVariable(name: "is_ipv6", arg: 4, scope: !451, file: !3, line: 349, type: !454)
!468 = !DILocalVariable(name: "lru_map", arg: 5, scope: !451, file: !3, line: 349, type: !44)
!469 = !DILocalVariable(name: "under_flood", scope: !451, file: !3, line: 351, type: !454)
!470 = !DILocalVariable(name: "src_found", scope: !451, file: !3, line: 352, type: !454)
!471 = !DILocalVariable(name: "real_pos", scope: !451, file: !3, line: 353, type: !85)
!472 = !DILocalVariable(name: "cur_time", scope: !451, file: !3, line: 354, type: !95)
!473 = !DILocalVariable(name: "hash", scope: !451, file: !3, line: 355, type: !58)
!474 = !DILocalVariable(name: "key", scope: !451, file: !3, line: 356, type: !58)
!475 = !DILocalVariable(name: "hash_16bytes", scope: !476, file: !3, line: 390, type: !454)
!476 = distinct !DILexicalBlock(scope: !477, file: !3, line: 389, column: 21)
!477 = distinct !DILexicalBlock(scope: !451, file: !3, line: 389, column: 9)
!478 = !DILocation(line: 350, column: 25, scope: !451, inlinedAt: !479)
!479 = distinct !DILocation(line: 670, column: 18, scope: !480, inlinedAt: !527)
!480 = distinct !DILexicalBlock(scope: !481, file: !3, line: 670, column: 17)
!481 = distinct !DILexicalBlock(scope: !482, file: !3, line: 655, column: 19)
!482 = distinct !DILexicalBlock(scope: !483, file: !3, line: 655, column: 13)
!483 = distinct !DILexicalBlock(scope: !484, file: !3, line: 614, column: 15)
!484 = distinct !DILexicalBlock(scope: !485, file: !3, line: 614, column: 9)
!485 = distinct !DISubprogram(name: "process_packet", scope: !3, file: !3, line: 470, type: !486, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{!72, !346, !95, !454}
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !511, !512, !513, !516, !517, !518, !519, !522, !523, !526}
!489 = !DILocalVariable(name: "xdp", arg: 1, scope: !485, file: !3, line: 470, type: !346)
!490 = !DILocalVariable(name: "off", arg: 2, scope: !485, file: !3, line: 470, type: !95)
!491 = !DILocalVariable(name: "is_ipv6", arg: 3, scope: !485, file: !3, line: 470, type: !454)
!492 = !DILocalVariable(name: "data", scope: !485, file: !3, line: 471, type: !44)
!493 = !DILocalVariable(name: "data_end", scope: !485, file: !3, line: 472, type: !44)
!494 = !DILocalVariable(name: "cval", scope: !485, file: !3, line: 473, type: !87)
!495 = !DILocalVariable(name: "dst", scope: !485, file: !3, line: 474, type: !231)
!496 = !DILocalVariable(name: "pckt", scope: !485, file: !3, line: 475, type: !457)
!497 = !DILocalVariable(name: "vip", scope: !485, file: !3, line: 476, type: !124)
!498 = !DILocalVariable(name: "vip_info", scope: !485, file: !3, line: 477, type: !139)
!499 = !DILocalVariable(name: "data_stats", scope: !485, file: !3, line: 478, type: !255)
!500 = !DILocalVariable(name: "iph_len", scope: !485, file: !3, line: 479, type: !95)
!501 = !DILocalVariable(name: "protocol", scope: !485, file: !3, line: 480, type: !55)
!502 = !DILocalVariable(name: "original_sport", scope: !485, file: !3, line: 481, type: !46)
!503 = !DILocalVariable(name: "action", scope: !485, file: !3, line: 482, type: !72)
!504 = !DILocalVariable(name: "vip_num", scope: !485, file: !3, line: 483, type: !58)
!505 = !DILocalVariable(name: "mac_addr_pos", scope: !485, file: !3, line: 484, type: !58)
!506 = !DILocalVariable(name: "pkt_bytes", scope: !485, file: !3, line: 485, type: !46)
!507 = !DILocalVariable(name: "stats_key", scope: !485, file: !3, line: 570, type: !58)
!508 = !DILocalVariable(name: "quic_stats_key", scope: !509, file: !3, line: 577, type: !58)
!509 = distinct !DILexicalBlock(scope: !510, file: !3, line: 576, column: 41)
!510 = distinct !DILexicalBlock(scope: !485, file: !3, line: 576, column: 9)
!511 = !DILocalVariable(name: "quic_stats", scope: !509, file: !3, line: 578, type: !255)
!512 = !DILocalVariable(name: "real_index", scope: !509, file: !3, line: 582, type: !72)
!513 = !DILocalVariable(name: "key", scope: !514, file: !3, line: 586, type: !58)
!514 = distinct !DILexicalBlock(scope: !515, file: !3, line: 584, column: 29)
!515 = distinct !DILexicalBlock(scope: !509, file: !3, line: 584, column: 13)
!516 = !DILocalVariable(name: "real_pos", scope: !514, file: !3, line: 587, type: !85)
!517 = !DILocalVariable(name: "cpu_num", scope: !483, file: !3, line: 618, type: !58)
!518 = !DILocalVariable(name: "lru_map", scope: !483, file: !3, line: 619, type: !44)
!519 = !DILocalVariable(name: "lru_stats_key", scope: !520, file: !3, line: 622, type: !58)
!520 = distinct !DILexicalBlock(scope: !521, file: !3, line: 620, column: 23)
!521 = distinct !DILexicalBlock(scope: !483, file: !3, line: 620, column: 13)
!522 = !DILocalVariable(name: "lru_stats", scope: !520, file: !3, line: 623, type: !255)
!523 = !DILocalVariable(name: "lru_stats_key", scope: !524, file: !3, line: 657, type: !58)
!524 = distinct !DILexicalBlock(scope: !525, file: !3, line: 656, column: 49)
!525 = distinct !DILexicalBlock(scope: !481, file: !3, line: 656, column: 17)
!526 = !DILocalVariable(name: "lru_stats", scope: !524, file: !3, line: 658, type: !255)
!527 = distinct !DILocation(line: 728, column: 16, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !3, line: 727, column: 42)
!529 = distinct !DILexicalBlock(scope: !530, file: !3, line: 727, column: 14)
!530 = distinct !DILexicalBlock(scope: !343, file: !3, line: 724, column: 9)
!531 = !DILocalVariable(name: "tmp_addr", scope: !532, file: !533, line: 64, type: !133)
!532 = distinct !DISubprogram(name: "send_icmp6_reply", scope: !533, file: !533, line: 61, type: !534, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !536)
!533 = !DIFile(filename: "./handle_icmp.h", directory: "/home/sayandes/github/hook-point-transformer/src/katran-test/extraction")
!534 = !DISubroutineType(types: !535)
!535 = !{!72, !44, !44}
!536 = !{!537, !538, !539, !566, !531, !607}
!537 = !DILocalVariable(name: "data", arg: 1, scope: !532, file: !533, line: 61, type: !44)
!538 = !DILocalVariable(name: "data_end", arg: 2, scope: !532, file: !533, line: 61, type: !44)
!539 = !DILocalVariable(name: "ip6h", scope: !532, file: !533, line: 62, type: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6hdr", file: !542, line: 116, size: 320, elements: !543)
!542 = !DIFile(filename: "/usr/include/linux/ipv6.h", directory: "")
!543 = !{!544, !545, !546, !550, !551, !552, !553, !565}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !541, file: !542, line: 118, baseType: !55, size: 4, flags: DIFlagBitField, extraData: i64 0)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !541, file: !542, line: 119, baseType: !55, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "flow_lbl", scope: !541, file: !542, line: 126, baseType: !547, size: 24, offset: 8)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 24, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 3)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "payload_len", scope: !541, file: !542, line: 128, baseType: !394, size: 16, offset: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "nexthdr", scope: !541, file: !542, line: 129, baseType: !55, size: 8, offset: 48)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "hop_limit", scope: !541, file: !542, line: 130, baseType: !55, size: 8, offset: 56)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !541, file: !542, line: 132, baseType: !554, size: 128, offset: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !555, line: 33, size: 128, elements: !556)
!555 = !DIFile(filename: "/usr/include/linux/in6.h", directory: "")
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "in6_u", scope: !554, file: !555, line: 40, baseType: !558, size: 128)
!558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !554, file: !555, line: 34, size: 128, elements: !559)
!559 = !{!560, !562, !564}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr8", scope: !558, file: !555, line: 35, baseType: !561, size: 128)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 128, elements: !105)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr16", scope: !558, file: !555, line: 37, baseType: !563, size: 128)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 128, elements: !62)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr32", scope: !558, file: !555, line: 38, baseType: !133, size: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !541, file: !542, line: 133, baseType: !554, size: 128, offset: 192)
!566 = !DILocalVariable(name: "icmp_hdr", scope: !532, file: !533, line: 63, type: !567)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmp6hdr", file: !569, line: 8, size: 64, elements: !570)
!569 = !DIFile(filename: "/usr/include/linux/icmpv6.h", directory: "")
!570 = !{!571, !572, !573, !575}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_type", scope: !568, file: !569, line: 10, baseType: !55, size: 8)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_code", scope: !568, file: !569, line: 11, baseType: !55, size: 8, offset: 8)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_cksum", scope: !568, file: !569, line: 12, baseType: !574, size: 16, offset: 16)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sum16", file: !131, line: 31, baseType: !46)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_dataun", scope: !568, file: !569, line: 63, baseType: !576, size: 32, offset: 32)
!576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !568, file: !569, line: 15, size: 32, elements: !577)
!577 = !{!578, !580, !582, !584, !589, !597}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "un_data32", scope: !576, file: !569, line: 16, baseType: !579, size: 32)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 32, elements: !120)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "un_data16", scope: !576, file: !569, line: 17, baseType: !581, size: 32)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 32, elements: !82)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "un_data8", scope: !576, file: !569, line: 18, baseType: !583, size: 32)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 32, elements: !134)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "u_echo", scope: !576, file: !569, line: 23, baseType: !585, size: 32)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_echo", file: !569, line: 20, size: 32, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !585, file: !569, line: 21, baseType: !394, size: 16)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !585, file: !569, line: 22, baseType: !394, size: 16, offset: 16)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "u_nd_advt", scope: !576, file: !569, line: 40, baseType: !590, size: 32)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_nd_advt", file: !569, line: 25, size: 32, elements: !591)
!591 = !{!592, !593, !594, !595, !596}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !590, file: !569, line: 27, baseType: !58, size: 5, flags: DIFlagBitField, extraData: i64 0)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "override", scope: !590, file: !569, line: 28, baseType: !58, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "solicited", scope: !590, file: !569, line: 29, baseType: !58, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "router", scope: !590, file: !569, line: 30, baseType: !58, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !590, file: !569, line: 31, baseType: !58, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "u_nd_ra", scope: !576, file: !569, line: 61, baseType: !598, size: 32)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_nd_ra", file: !569, line: 42, size: 32, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !605, !606}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "hop_limit", scope: !598, file: !569, line: 43, baseType: !55, size: 8)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !598, file: !569, line: 45, baseType: !55, size: 3, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "router_pref", scope: !598, file: !569, line: 46, baseType: !55, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "home_agent", scope: !598, file: !569, line: 47, baseType: !55, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !598, file: !569, line: 48, baseType: !55, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 8)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !598, file: !569, line: 49, baseType: !55, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "rt_lifetime", scope: !598, file: !569, line: 60, baseType: !394, size: 16, offset: 16)
!607 = !DILocalVariable(name: "off", scope: !532, file: !533, line: 65, type: !95)
!608 = !DILocation(line: 64, column: 12, scope: !532, inlinedAt: !609)
!609 = distinct !DILocation(line: 193, column: 16, scope: !610, inlinedAt: !622)
!610 = distinct !DILexicalBlock(scope: !611, file: !533, line: 192, column: 54)
!611 = distinct !DILexicalBlock(scope: !612, file: !533, line: 192, column: 9)
!612 = distinct !DISubprogram(name: "parse_icmpv6", scope: !533, file: !533, line: 185, type: !613, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !615)
!613 = !DISubroutineType(types: !614)
!614 = !{!72, !44, !44, !95, !456}
!615 = !{!616, !617, !618, !619, !620, !621}
!616 = !DILocalVariable(name: "data", arg: 1, scope: !612, file: !533, line: 185, type: !44)
!617 = !DILocalVariable(name: "data_end", arg: 2, scope: !612, file: !533, line: 185, type: !44)
!618 = !DILocalVariable(name: "off", arg: 3, scope: !612, file: !533, line: 185, type: !95)
!619 = !DILocalVariable(name: "pckt", arg: 4, scope: !612, file: !533, line: 185, type: !456)
!620 = !DILocalVariable(name: "icmp_hdr", scope: !612, file: !533, line: 186, type: !567)
!621 = !DILocalVariable(name: "ip6h", scope: !612, file: !533, line: 187, type: !540)
!622 = distinct !DILocation(line: 112, column: 22, scope: !623, inlinedAt: !659)
!623 = distinct !DILexicalBlock(scope: !624, file: !3, line: 111, column: 47)
!624 = distinct !DILexicalBlock(scope: !625, file: !3, line: 111, column: 18)
!625 = distinct !DILexicalBlock(scope: !626, file: !3, line: 108, column: 13)
!626 = distinct !DILexicalBlock(scope: !627, file: !3, line: 96, column: 18)
!627 = distinct !DILexicalBlock(scope: !628, file: !3, line: 96, column: 9)
!628 = distinct !DISubprogram(name: "process_l3_headers", scope: !3, file: !3, line: 91, type: !629, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !632)
!629 = !DISubroutineType(types: !630)
!630 = !{!72, !456, !631, !95, !49, !44, !44, !454}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!632 = !{!633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !658}
!633 = !DILocalVariable(name: "pckt", arg: 1, scope: !628, file: !3, line: 91, type: !456)
!634 = !DILocalVariable(name: "protocol", arg: 2, scope: !628, file: !3, line: 91, type: !631)
!635 = !DILocalVariable(name: "off", arg: 3, scope: !628, file: !3, line: 91, type: !95)
!636 = !DILocalVariable(name: "pkt_bytes", arg: 4, scope: !628, file: !3, line: 91, type: !49)
!637 = !DILocalVariable(name: "data", arg: 5, scope: !628, file: !3, line: 91, type: !44)
!638 = !DILocalVariable(name: "data_end", arg: 6, scope: !628, file: !3, line: 91, type: !44)
!639 = !DILocalVariable(name: "is_ipv6", arg: 7, scope: !628, file: !3, line: 91, type: !454)
!640 = !DILocalVariable(name: "iph_len", scope: !628, file: !3, line: 92, type: !95)
!641 = !DILocalVariable(name: "action", scope: !628, file: !3, line: 93, type: !72)
!642 = !DILocalVariable(name: "iph", scope: !628, file: !3, line: 94, type: !643)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iphdr", file: !645, line: 86, size: 160, elements: !646)
!645 = !DIFile(filename: "/usr/include/linux/ip.h", directory: "")
!646 = !{!647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ihl", scope: !644, file: !645, line: 88, baseType: !55, size: 4, flags: DIFlagBitField, extraData: i64 0)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !644, file: !645, line: 89, baseType: !55, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !644, file: !645, line: 96, baseType: !55, size: 8, offset: 8)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !644, file: !645, line: 97, baseType: !394, size: 16, offset: 16)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !644, file: !645, line: 98, baseType: !394, size: 16, offset: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "frag_off", scope: !644, file: !645, line: 99, baseType: !394, size: 16, offset: 48)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !644, file: !645, line: 100, baseType: !55, size: 8, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !644, file: !645, line: 101, baseType: !55, size: 8, offset: 72)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !644, file: !645, line: 102, baseType: !574, size: 16, offset: 80)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !644, file: !645, line: 103, baseType: !130, size: 32, offset: 96)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !644, file: !645, line: 104, baseType: !130, size: 32, offset: 128)
!658 = !DILocalVariable(name: "ip6h", scope: !628, file: !3, line: 95, type: !540)
!659 = distinct !DILocation(line: 486, column: 14, scope: !485, inlinedAt: !527)
!660 = !DILocation(line: 475, column: 31, scope: !485, inlinedAt: !527)
!661 = !DILocation(line: 476, column: 27, scope: !485, inlinedAt: !527)
!662 = !DILocation(line: 350, column: 25, scope: !451, inlinedAt: !663)
!663 = distinct !DILocation(line: 670, column: 18, scope: !480, inlinedAt: !664)
!664 = distinct !DILocation(line: 725, column: 16, scope: !665)
!665 = distinct !DILexicalBlock(scope: !530, file: !3, line: 724, column: 35)
!666 = !DILocalVariable(name: "tmp_mac", scope: !667, file: !533, line: 20, type: !445)
!667 = distinct !DISubprogram(name: "swap_mac_and_send", scope: !533, file: !533, line: 18, type: !534, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !668)
!668 = !{!669, !670, !671, !666}
!669 = !DILocalVariable(name: "data", arg: 1, scope: !667, file: !533, line: 18, type: !44)
!670 = !DILocalVariable(name: "data_end", arg: 2, scope: !667, file: !533, line: 18, type: !44)
!671 = !DILocalVariable(name: "eth", scope: !667, file: !533, line: 19, type: !440)
!672 = !DILocation(line: 20, column: 19, scope: !667, inlinedAt: !673)
!673 = distinct !DILocation(line: 58, column: 12, scope: !674, inlinedAt: !705)
!674 = distinct !DISubprogram(name: "send_icmp_reply", scope: !533, file: !533, line: 36, type: !534, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !675)
!675 = !{!676, !677, !678, !679, !702, !703, !704}
!676 = !DILocalVariable(name: "data", arg: 1, scope: !674, file: !533, line: 36, type: !44)
!677 = !DILocalVariable(name: "data_end", arg: 2, scope: !674, file: !533, line: 36, type: !44)
!678 = !DILocalVariable(name: "iph", scope: !674, file: !533, line: 37, type: !643)
!679 = !DILocalVariable(name: "icmp_hdr", scope: !674, file: !533, line: 38, type: !680)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmphdr", file: !682, line: 69, size: 64, elements: !683)
!682 = !DIFile(filename: "/usr/include/linux/icmp.h", directory: "")
!683 = !{!684, !685, !686, !687}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !681, file: !682, line: 70, baseType: !55, size: 8)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !681, file: !682, line: 71, baseType: !55, size: 8, offset: 8)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !681, file: !682, line: 72, baseType: !574, size: 16, offset: 16)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "un", scope: !681, file: !682, line: 84, baseType: !688, size: 32, offset: 32)
!688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !681, file: !682, line: 73, size: 32, elements: !689)
!689 = !{!690, !695, !696, !701}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "echo", scope: !688, file: !682, line: 77, baseType: !691, size: 32)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !688, file: !682, line: 74, size: 32, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !691, file: !682, line: 75, baseType: !394, size: 16)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !691, file: !682, line: 76, baseType: !394, size: 16, offset: 16)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "gateway", scope: !688, file: !682, line: 78, baseType: !130, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !688, file: !682, line: 82, baseType: !697, size: 32)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !688, file: !682, line: 79, size: 32, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !697, file: !682, line: 80, baseType: !394, size: 16)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !697, file: !682, line: 81, baseType: !394, size: 16, offset: 16)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !688, file: !682, line: 83, baseType: !583, size: 32)
!702 = !DILocalVariable(name: "tmp_addr", scope: !674, file: !533, line: 39, type: !58)
!703 = !DILocalVariable(name: "csum", scope: !674, file: !533, line: 40, type: !95)
!704 = !DILocalVariable(name: "off", scope: !674, file: !533, line: 41, type: !95)
!705 = distinct !DILocation(line: 218, column: 16, scope: !706, inlinedAt: !716)
!706 = distinct !DILexicalBlock(scope: !707, file: !533, line: 217, column: 38)
!707 = distinct !DILexicalBlock(scope: !708, file: !533, line: 217, column: 9)
!708 = distinct !DISubprogram(name: "parse_icmp", scope: !533, file: !533, line: 210, type: !613, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !709)
!709 = !{!710, !711, !712, !713, !714, !715}
!710 = !DILocalVariable(name: "data", arg: 1, scope: !708, file: !533, line: 210, type: !44)
!711 = !DILocalVariable(name: "data_end", arg: 2, scope: !708, file: !533, line: 210, type: !44)
!712 = !DILocalVariable(name: "off", arg: 3, scope: !708, file: !533, line: 210, type: !95)
!713 = !DILocalVariable(name: "pckt", arg: 4, scope: !708, file: !533, line: 210, type: !456)
!714 = !DILocalVariable(name: "icmp_hdr", scope: !708, file: !533, line: 211, type: !680)
!715 = !DILocalVariable(name: "iph", scope: !708, file: !533, line: 212, type: !643)
!716 = distinct !DILocation(line: 139, column: 22, scope: !717, inlinedAt: !659)
!717 = distinct !DILexicalBlock(scope: !718, file: !3, line: 138, column: 40)
!718 = distinct !DILexicalBlock(scope: !719, file: !3, line: 138, column: 13)
!719 = distinct !DILexicalBlock(scope: !627, file: !3, line: 122, column: 10)
!720 = !DILocation(line: 20, column: 19, scope: !667, inlinedAt: !721)
!721 = distinct !DILocation(line: 79, column: 12, scope: !532, inlinedAt: !609)
!722 = !DILocation(line: 20, column: 19, scope: !667, inlinedAt: !723)
!723 = distinct !DILocation(line: 58, column: 12, scope: !674, inlinedAt: !724)
!724 = distinct !DILocation(line: 218, column: 16, scope: !706, inlinedAt: !725)
!725 = distinct !DILocation(line: 139, column: 22, scope: !717, inlinedAt: !726)
!726 = distinct !DILocation(line: 486, column: 14, scope: !485, inlinedAt: !664)
!727 = !DILocation(line: 20, column: 19, scope: !667, inlinedAt: !728)
!728 = distinct !DILocation(line: 79, column: 12, scope: !532, inlinedAt: !729)
!729 = distinct !DILocation(line: 193, column: 16, scope: !610, inlinedAt: !730)
!730 = distinct !DILocation(line: 112, column: 22, scope: !623, inlinedAt: !726)
!731 = !DILocation(line: 475, column: 31, scope: !485, inlinedAt: !664)
!732 = !DILocation(line: 476, column: 27, scope: !485, inlinedAt: !664)
!733 = !DILocation(line: 0, scope: !343)
!734 = !DILocation(line: 714, column: 39, scope: !343)
!735 = !{!736, !737, i64 76}
!736 = !{!"__sk_buff", !737, i64 0, !737, i64 4, !737, i64 8, !737, i64 12, !737, i64 16, !737, i64 20, !737, i64 24, !737, i64 28, !737, i64 32, !737, i64 36, !737, i64 40, !737, i64 44, !738, i64 48, !737, i64 68, !737, i64 72, !737, i64 76, !737, i64 80, !737, i64 84, !737, i64 88, !737, i64 92, !737, i64 96, !738, i64 100, !738, i64 116, !737, i64 132, !737, i64 136, !737, i64 140, !738, i64 144, !740, i64 152, !737, i64 160, !737, i64 164, !738, i64 168}
!737 = !{!"int", !738, i64 0}
!738 = !{!"omnipotent char", !739, i64 0}
!739 = !{!"Simple C/C++ TBAA"}
!740 = !{!"long long", !738, i64 0}
!741 = !DILocation(line: 714, column: 27, scope: !343)
!742 = !DILocation(line: 714, column: 18, scope: !343)
!743 = !DILocation(line: 715, column: 43, scope: !343)
!744 = !{!736, !737, i64 80}
!745 = !DILocation(line: 715, column: 31, scope: !343)
!746 = !DILocation(line: 715, column: 22, scope: !343)
!747 = !DILocation(line: 720, column: 14, scope: !748)
!748 = distinct !DILexicalBlock(scope: !343, file: !3, line: 720, column: 9)
!749 = !DILocation(line: 720, column: 23, scope: !748)
!750 = !DILocation(line: 720, column: 9, scope: !343)
!751 = !DILocation(line: 723, column: 22, scope: !343)
!752 = !{!736, !737, i64 16}
!753 = !DILocation(line: 724, column: 9, scope: !343)
!754 = !DILocation(line: 0, scope: !485, inlinedAt: !664)
!755 = !DILocation(line: 475, column: 5, scope: !485, inlinedAt: !664)
!756 = !DILocation(line: 476, column: 5, scope: !485, inlinedAt: !664)
!757 = !DILocation(line: 483, column: 5, scope: !485, inlinedAt: !664)
!758 = !DILocation(line: 484, column: 5, scope: !485, inlinedAt: !664)
!759 = !DILocation(line: 484, column: 11, scope: !485, inlinedAt: !664)
!760 = !{!737, !737, i64 0}
!761 = !DILocation(line: 0, scope: !628, inlinedAt: !726)
!762 = !DILocation(line: 124, column: 17, scope: !763, inlinedAt: !726)
!763 = distinct !DILexicalBlock(scope: !719, file: !3, line: 124, column: 13)
!764 = !DILocation(line: 124, column: 21, scope: !763, inlinedAt: !726)
!765 = !DILocation(line: 124, column: 13, scope: !719, inlinedAt: !726)
!766 = !DILocation(line: 127, column: 18, scope: !767, inlinedAt: !726)
!767 = distinct !DILexicalBlock(scope: !719, file: !3, line: 127, column: 13)
!768 = !DILocation(line: 127, column: 22, scope: !767, inlinedAt: !726)
!769 = !DILocation(line: 127, column: 13, scope: !719, inlinedAt: !726)
!770 = !DILocation(line: 130, column: 26, scope: !719, inlinedAt: !726)
!771 = !{!772, !738, i64 1}
!772 = !{!"iphdr", !738, i64 0, !738, i64 0, !738, i64 1, !773, i64 2, !773, i64 4, !773, i64 6, !738, i64 8, !738, i64 9, !773, i64 10, !737, i64 12, !737, i64 16}
!773 = !{!"short", !738, i64 0}
!774 = !DILocation(line: 130, column: 15, scope: !719, inlinedAt: !726)
!775 = !DILocation(line: 130, column: 19, scope: !719, inlinedAt: !726)
!776 = !{!777, !738, i64 45}
!777 = !{!"packet_description", !778, i64 0, !737, i64 40, !738, i64 44, !738, i64 45}
!778 = !{!"flow_key", !738, i64 0, !738, i64 16, !738, i64 32, !738, i64 36}
!779 = !DILocation(line: 131, column: 26, scope: !719, inlinedAt: !726)
!780 = !{!772, !738, i64 9}
!781 = !DILocation(line: 132, column: 20, scope: !719, inlinedAt: !726)
!782 = !DILocation(line: 132, column: 26, scope: !719, inlinedAt: !726)
!783 = !{!777, !738, i64 36}
!784 = !DILocation(line: 133, column: 22, scope: !719, inlinedAt: !726)
!785 = !{!772, !773, i64 2}
!786 = !DILocation(line: 135, column: 18, scope: !787, inlinedAt: !726)
!787 = distinct !DILexicalBlock(scope: !719, file: !3, line: 135, column: 13)
!788 = !{!772, !773, i64 6}
!789 = !DILocation(line: 135, column: 27, scope: !787, inlinedAt: !726)
!790 = !DILocation(line: 135, column: 13, scope: !719, inlinedAt: !726)
!791 = !DILocation(line: 138, column: 23, scope: !718, inlinedAt: !726)
!792 = !DILocation(line: 138, column: 13, scope: !719, inlinedAt: !726)
!793 = !DILocation(line: 0, scope: !708, inlinedAt: !725)
!794 = !DILocation(line: 214, column: 18, scope: !795, inlinedAt: !725)
!795 = distinct !DILexicalBlock(scope: !708, file: !533, line: 214, column: 9)
!796 = !DILocation(line: 214, column: 22, scope: !795, inlinedAt: !725)
!797 = !DILocation(line: 214, column: 9, scope: !708, inlinedAt: !725)
!798 = !DILocation(line: 217, column: 19, scope: !707, inlinedAt: !725)
!799 = !{!800, !738, i64 0}
!800 = !{!"icmphdr", !738, i64 0, !738, i64 1, !773, i64 2, !738, i64 4}
!801 = !DILocation(line: 217, column: 9, scope: !708, inlinedAt: !725)
!802 = !DILocation(line: 0, scope: !674, inlinedAt: !724)
!803 = !DILocation(line: 49, column: 20, scope: !674, inlinedAt: !724)
!804 = !DILocation(line: 50, column: 15, scope: !674, inlinedAt: !724)
!805 = !DILocation(line: 50, column: 24, scope: !674, inlinedAt: !724)
!806 = !{!800, !773, i64 2}
!807 = !DILocation(line: 51, column: 10, scope: !674, inlinedAt: !724)
!808 = !DILocation(line: 51, column: 14, scope: !674, inlinedAt: !724)
!809 = !{!772, !738, i64 8}
!810 = !DILocation(line: 52, column: 21, scope: !674, inlinedAt: !724)
!811 = !{!772, !737, i64 16}
!812 = !DILocation(line: 53, column: 23, scope: !674, inlinedAt: !724)
!813 = !{!772, !737, i64 12}
!814 = !DILocation(line: 53, column: 16, scope: !674, inlinedAt: !724)
!815 = !DILocation(line: 54, column: 16, scope: !674, inlinedAt: !724)
!816 = !DILocation(line: 55, column: 10, scope: !674, inlinedAt: !724)
!817 = !DILocalVariable(name: "iph", arg: 1, scope: !818, file: !819, line: 34, type: !44)
!818 = distinct !DISubprogram(name: "ipv4_csum_inline", scope: !819, file: !819, line: 34, type: !820, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !823)
!819 = !DIFile(filename: "./csum_helpers.h", directory: "/home/sayandes/github/hook-point-transformer/src/katran-test/extraction")
!820 = !DISubroutineType(types: !821)
!821 = !{null, !44, !822}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!823 = !{!817, !824, !825, !826}
!824 = !DILocalVariable(name: "csum", arg: 2, scope: !818, file: !819, line: 34, type: !822)
!825 = !DILocalVariable(name: "next_iph_u16", scope: !818, file: !819, line: 35, type: !49)
!826 = !DILocalVariable(name: "i", scope: !827, file: !819, line: 37, type: !72)
!827 = distinct !DILexicalBlock(scope: !818, file: !819, line: 37, column: 5)
!828 = !DILocation(line: 0, scope: !818, inlinedAt: !829)
!829 = distinct !DILocation(line: 56, column: 5, scope: !674, inlinedAt: !724)
!830 = !DILocation(line: 35, column: 27, scope: !818, inlinedAt: !829)
!831 = !DILocation(line: 0, scope: !827, inlinedAt: !829)
!832 = !DILocation(line: 38, column: 18, scope: !833, inlinedAt: !829)
!833 = distinct !DILexicalBlock(scope: !834, file: !819, line: 37, column: 58)
!834 = distinct !DILexicalBlock(scope: !827, file: !819, line: 37, column: 5)
!835 = !{!773, !773, i64 0}
!836 = !DILocation(line: 38, column: 31, scope: !833, inlinedAt: !829)
!837 = !DILocation(line: 38, column: 15, scope: !833, inlinedAt: !829)
!838 = !DILocalVariable(name: "i", scope: !839, file: !819, line: 16, type: !72)
!839 = distinct !DISubprogram(name: "csum_fold_helper", scope: !819, file: !819, line: 15, type: !840, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !842)
!840 = !DISubroutineType(types: !841)
!841 = !{!46, !95}
!842 = !{!843, !838}
!843 = !DILocalVariable(name: "csum", arg: 1, scope: !839, file: !819, line: 15, type: !95)
!844 = !DILocation(line: 0, scope: !839, inlinedAt: !845)
!845 = distinct !DILocation(line: 40, column: 13, scope: !818, inlinedAt: !829)
!846 = !DILocation(line: 19, column: 18, scope: !847, inlinedAt: !845)
!847 = distinct !DILexicalBlock(scope: !848, file: !819, line: 19, column: 13)
!848 = distinct !DILexicalBlock(scope: !849, file: !819, line: 18, column: 29)
!849 = distinct !DILexicalBlock(scope: !850, file: !819, line: 18, column: 5)
!850 = distinct !DILexicalBlock(scope: !839, file: !819, line: 18, column: 5)
!851 = !DILocation(line: 19, column: 13, scope: !848, inlinedAt: !845)
!852 = !DILocation(line: 57, column: 18, scope: !674, inlinedAt: !724)
!853 = !DILocation(line: 57, column: 16, scope: !674, inlinedAt: !724)
!854 = !{!772, !773, i64 10}
!855 = !DILocation(line: 0, scope: !667, inlinedAt: !723)
!856 = !DILocation(line: 20, column: 5, scope: !667, inlinedAt: !723)
!857 = !DILocation(line: 22, column: 29, scope: !667, inlinedAt: !723)
!858 = !DILocation(line: 22, column: 5, scope: !667, inlinedAt: !723)
!859 = !DILocation(line: 23, column: 5, scope: !667, inlinedAt: !723)
!860 = !DILocation(line: 24, column: 5, scope: !667, inlinedAt: !723)
!861 = !DILocation(line: 26, column: 1, scope: !667, inlinedAt: !723)
!862 = !DILocation(line: 218, column: 9, scope: !706, inlinedAt: !725)
!863 = !DILocation(line: 225, column: 13, scope: !864, inlinedAt: !725)
!864 = distinct !DILexicalBlock(scope: !708, file: !533, line: 225, column: 9)
!865 = !DILocation(line: 225, column: 17, scope: !864, inlinedAt: !725)
!866 = !DILocation(line: 225, column: 9, scope: !708, inlinedAt: !725)
!867 = !DILocation(line: 228, column: 14, scope: !868, inlinedAt: !725)
!868 = distinct !DILexicalBlock(scope: !708, file: !533, line: 228, column: 9)
!869 = !DILocation(line: 228, column: 18, scope: !868, inlinedAt: !725)
!870 = !DILocation(line: 228, column: 9, scope: !708, inlinedAt: !725)
!871 = !DILocation(line: 231, column: 29, scope: !708, inlinedAt: !725)
!872 = !DILocation(line: 231, column: 22, scope: !708, inlinedAt: !725)
!873 = !DILocation(line: 232, column: 11, scope: !708, inlinedAt: !725)
!874 = !DILocation(line: 232, column: 17, scope: !708, inlinedAt: !725)
!875 = !{!777, !738, i64 44}
!876 = !DILocation(line: 233, column: 27, scope: !708, inlinedAt: !725)
!877 = !DILocation(line: 233, column: 16, scope: !708, inlinedAt: !725)
!878 = !DILocation(line: 233, column: 20, scope: !708, inlinedAt: !725)
!879 = !{!738, !738, i64 0}
!880 = !DILocation(line: 234, column: 27, scope: !708, inlinedAt: !725)
!881 = !DILocation(line: 140, column: 17, scope: !717, inlinedAt: !726)
!882 = !DILocation(line: 145, column: 35, scope: !883, inlinedAt: !726)
!883 = distinct !DILexicalBlock(scope: !718, file: !3, line: 144, column: 14)
!884 = !DILocation(line: 145, column: 24, scope: !883, inlinedAt: !726)
!885 = !DILocation(line: 145, column: 28, scope: !883, inlinedAt: !726)
!886 = !DILocation(line: 146, column: 35, scope: !883, inlinedAt: !726)
!887 = !DILocation(line: 490, column: 26, scope: !485, inlinedAt: !664)
!888 = !DILocation(line: 0, scope: !718, inlinedAt: !726)
!889 = !DILocation(line: 509, column: 9, scope: !485, inlinedAt: !664)
!890 = !DILocalVariable(name: "data", arg: 1, scope: !891, file: !52, line: 67, type: !44)
!891 = distinct !DISubprogram(name: "parse_tcp", scope: !52, file: !52, line: 67, type: !892, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !894)
!892 = !DISubroutineType(types: !893)
!893 = !{!454, !44, !44, !454, !456}
!894 = !{!890, !895, !896, !897, !898, !899, !900}
!895 = !DILocalVariable(name: "data_end", arg: 2, scope: !891, file: !52, line: 67, type: !44)
!896 = !DILocalVariable(name: "is_ipv6", arg: 3, scope: !891, file: !52, line: 67, type: !454)
!897 = !DILocalVariable(name: "pckt", arg: 4, scope: !891, file: !52, line: 67, type: !456)
!898 = !DILocalVariable(name: "is_icmp", scope: !891, file: !52, line: 68, type: !454)
!899 = !DILocalVariable(name: "off", scope: !891, file: !52, line: 69, type: !95)
!900 = !DILocalVariable(name: "tcp", scope: !891, file: !52, line: 70, type: !901)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcphdr", file: !903, line: 25, size: 160, elements: !904)
!903 = !DIFile(filename: "/usr/include/linux/tcp.h", directory: "")
!904 = !{!905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !902, file: !903, line: 26, baseType: !394, size: 16)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !902, file: !903, line: 27, baseType: !394, size: 16, offset: 16)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !902, file: !903, line: 28, baseType: !130, size: 32, offset: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ack_seq", scope: !902, file: !903, line: 29, baseType: !130, size: 32, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "res1", scope: !902, file: !903, line: 31, baseType: !46, size: 4, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "doff", scope: !902, file: !903, line: 32, baseType: !46, size: 4, offset: 100, flags: DIFlagBitField, extraData: i64 96)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "fin", scope: !902, file: !903, line: 33, baseType: !46, size: 1, offset: 104, flags: DIFlagBitField, extraData: i64 96)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "syn", scope: !902, file: !903, line: 34, baseType: !46, size: 1, offset: 105, flags: DIFlagBitField, extraData: i64 96)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "rst", scope: !902, file: !903, line: 35, baseType: !46, size: 1, offset: 106, flags: DIFlagBitField, extraData: i64 96)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "psh", scope: !902, file: !903, line: 36, baseType: !46, size: 1, offset: 107, flags: DIFlagBitField, extraData: i64 96)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !902, file: !903, line: 37, baseType: !46, size: 1, offset: 108, flags: DIFlagBitField, extraData: i64 96)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "urg", scope: !902, file: !903, line: 38, baseType: !46, size: 1, offset: 109, flags: DIFlagBitField, extraData: i64 96)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ece", scope: !902, file: !903, line: 39, baseType: !46, size: 1, offset: 110, flags: DIFlagBitField, extraData: i64 96)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "cwr", scope: !902, file: !903, line: 40, baseType: !46, size: 1, offset: 111, flags: DIFlagBitField, extraData: i64 96)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !902, file: !903, line: 55, baseType: !394, size: 16, offset: 112)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !902, file: !903, line: 56, baseType: !574, size: 16, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "urg_ptr", scope: !902, file: !903, line: 57, baseType: !394, size: 16, offset: 144)
!922 = !DILocation(line: 0, scope: !891, inlinedAt: !923)
!923 = distinct !DILocation(line: 510, column: 14, scope: !924, inlinedAt: !664)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 510, column: 13)
!925 = distinct !DILexicalBlock(scope: !926, file: !3, line: 509, column: 34)
!926 = distinct !DILexicalBlock(scope: !485, file: !3, line: 509, column: 9)
!927 = !DILocation(line: 68, column: 29, scope: !891, inlinedAt: !923)
!928 = !DILocation(line: 68, column: 45, scope: !891, inlinedAt: !923)
!929 = !DILocalVariable(name: "is_ipv6", arg: 1, scope: !930, file: !52, line: 31, type: !454)
!930 = distinct !DISubprogram(name: "calc_offset", scope: !52, file: !52, line: 31, type: !931, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !933)
!931 = !DISubroutineType(types: !932)
!932 = !{!95, !454, !454}
!933 = !{!929, !934, !935}
!934 = !DILocalVariable(name: "is_icmp", arg: 2, scope: !930, file: !52, line: 31, type: !454)
!935 = !DILocalVariable(name: "off", scope: !930, file: !52, line: 32, type: !95)
!936 = !DILocation(line: 0, scope: !930, inlinedAt: !937)
!937 = distinct !DILocation(line: 69, column: 17, scope: !891, inlinedAt: !923)
!938 = !DILocation(line: 33, column: 9, scope: !930, inlinedAt: !937)
!939 = !DILocation(line: 71, column: 16, scope: !891, inlinedAt: !923)
!940 = !DILocation(line: 72, column: 13, scope: !941, inlinedAt: !923)
!941 = distinct !DILexicalBlock(scope: !891, file: !52, line: 72, column: 9)
!942 = !DILocation(line: 72, column: 17, scope: !941, inlinedAt: !923)
!943 = !DILocation(line: 72, column: 9, scope: !891, inlinedAt: !923)
!944 = !DILocation(line: 75, column: 14, scope: !945, inlinedAt: !923)
!945 = distinct !DILexicalBlock(scope: !891, file: !52, line: 75, column: 9)
!946 = !DILocation(line: 75, column: 9, scope: !945, inlinedAt: !923)
!947 = !DILocation(line: 75, column: 9, scope: !891, inlinedAt: !923)
!948 = !DILocation(line: 76, column: 21, scope: !949, inlinedAt: !923)
!949 = distinct !DILexicalBlock(scope: !945, file: !52, line: 75, column: 19)
!950 = !DILocation(line: 77, column: 5, scope: !949, inlinedAt: !923)
!951 = !DILocation(line: 78, column: 9, scope: !891, inlinedAt: !923)
!952 = !DILocation(line: 79, column: 37, scope: !953, inlinedAt: !923)
!953 = distinct !DILexicalBlock(scope: !954, file: !52, line: 78, column: 19)
!954 = distinct !DILexicalBlock(scope: !891, file: !52, line: 78, column: 9)
!955 = !{!956, !773, i64 0}
!956 = !{!"tcphdr", !773, i64 0, !773, i64 2, !737, i64 4, !737, i64 8, !773, i64 12, !773, i64 12, !773, i64 13, !773, i64 13, !773, i64 13, !773, i64 13, !773, i64 13, !773, i64 13, !773, i64 13, !773, i64 13, !773, i64 14, !773, i64 16, !773, i64 18}
!957 = !DILocation(line: 79, column: 20, scope: !953, inlinedAt: !923)
!958 = !DILocation(line: 79, column: 9, scope: !953, inlinedAt: !923)
!959 = !DILocation(line: 79, column: 30, scope: !953, inlinedAt: !923)
!960 = !DILocation(line: 80, column: 37, scope: !953, inlinedAt: !923)
!961 = !DILocation(line: 81, column: 5, scope: !953, inlinedAt: !923)
!962 = !DILocation(line: 83, column: 37, scope: !963, inlinedAt: !923)
!963 = distinct !DILexicalBlock(scope: !954, file: !52, line: 82, column: 10)
!964 = !{!956, !773, i64 2}
!965 = !DILocation(line: 83, column: 20, scope: !963, inlinedAt: !923)
!966 = !DILocation(line: 83, column: 9, scope: !963, inlinedAt: !923)
!967 = !DILocation(line: 83, column: 30, scope: !963, inlinedAt: !923)
!968 = !DILocalVariable(name: "data", arg: 1, scope: !969, file: !52, line: 48, type: !44)
!969 = distinct !DISubprogram(name: "parse_udp", scope: !52, file: !52, line: 48, type: !892, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !970)
!970 = !{!968, !971, !972, !973, !974, !975, !976}
!971 = !DILocalVariable(name: "data_end", arg: 2, scope: !969, file: !52, line: 48, type: !44)
!972 = !DILocalVariable(name: "is_ipv6", arg: 3, scope: !969, file: !52, line: 48, type: !454)
!973 = !DILocalVariable(name: "pckt", arg: 4, scope: !969, file: !52, line: 48, type: !456)
!974 = !DILocalVariable(name: "is_icmp", scope: !969, file: !52, line: 49, type: !454)
!975 = !DILocalVariable(name: "off", scope: !969, file: !52, line: 50, type: !95)
!976 = !DILocalVariable(name: "udp", scope: !969, file: !52, line: 51, type: !977)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "udphdr", file: !979, line: 23, size: 64, elements: !980)
!979 = !DIFile(filename: "/usr/include/linux/udp.h", directory: "")
!980 = !{!981, !982, !983, !984}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !978, file: !979, line: 24, baseType: !394, size: 16)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !978, file: !979, line: 25, baseType: !394, size: 16, offset: 16)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !978, file: !979, line: 26, baseType: !394, size: 16, offset: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !978, file: !979, line: 27, baseType: !574, size: 16, offset: 48)
!985 = !DILocation(line: 0, scope: !969, inlinedAt: !986)
!986 = distinct !DILocation(line: 515, column: 14, scope: !987, inlinedAt: !664)
!987 = distinct !DILexicalBlock(scope: !988, file: !3, line: 515, column: 13)
!988 = distinct !DILexicalBlock(scope: !989, file: !3, line: 514, column: 39)
!989 = distinct !DILexicalBlock(scope: !926, file: !3, line: 514, column: 14)
!990 = !DILocation(line: 49, column: 45, scope: !969, inlinedAt: !986)
!991 = !DILocation(line: 0, scope: !930, inlinedAt: !992)
!992 = distinct !DILocation(line: 50, column: 17, scope: !969, inlinedAt: !986)
!993 = !DILocation(line: 33, column: 9, scope: !930, inlinedAt: !992)
!994 = !DILocation(line: 52, column: 16, scope: !969, inlinedAt: !986)
!995 = !DILocation(line: 53, column: 13, scope: !996, inlinedAt: !986)
!996 = distinct !DILexicalBlock(scope: !969, file: !52, line: 53, column: 9)
!997 = !DILocation(line: 53, column: 17, scope: !996, inlinedAt: !986)
!998 = !DILocation(line: 53, column: 9, scope: !969, inlinedAt: !986)
!999 = !DILocation(line: 56, column: 9, scope: !969, inlinedAt: !986)
!1000 = !DILocation(line: 57, column: 37, scope: !1001, inlinedAt: !986)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !52, line: 56, column: 19)
!1002 = distinct !DILexicalBlock(scope: !969, file: !52, line: 56, column: 9)
!1003 = !{!1004, !773, i64 0}
!1004 = !{!"udphdr", !773, i64 0, !773, i64 2, !773, i64 4, !773, i64 6}
!1005 = !DILocation(line: 57, column: 20, scope: !1001, inlinedAt: !986)
!1006 = !DILocation(line: 57, column: 9, scope: !1001, inlinedAt: !986)
!1007 = !DILocation(line: 57, column: 30, scope: !1001, inlinedAt: !986)
!1008 = !DILocation(line: 58, column: 37, scope: !1001, inlinedAt: !986)
!1009 = !DILocation(line: 59, column: 5, scope: !1001, inlinedAt: !986)
!1010 = !DILocation(line: 61, column: 37, scope: !1011, inlinedAt: !986)
!1011 = distinct !DILexicalBlock(scope: !1002, file: !52, line: 60, column: 10)
!1012 = !{!1004, !773, i64 2}
!1013 = !DILocation(line: 61, column: 20, scope: !1011, inlinedAt: !986)
!1014 = !DILocation(line: 61, column: 9, scope: !1011, inlinedAt: !986)
!1015 = !DILocation(line: 61, column: 30, scope: !1011, inlinedAt: !986)
!1016 = !DILocation(line: 0, scope: !926, inlinedAt: !664)
!1017 = !DILocation(line: 536, column: 13, scope: !1018, inlinedAt: !664)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 535, column: 10)
!1019 = distinct !DILexicalBlock(scope: !485, file: !3, line: 532, column: 9)
!1020 = !DILocation(line: 536, column: 17, scope: !1018, inlinedAt: !664)
!1021 = !DILocation(line: 538, column: 26, scope: !485, inlinedAt: !664)
!1022 = !DILocation(line: 538, column: 16, scope: !485, inlinedAt: !664)
!1023 = !DILocation(line: 538, column: 9, scope: !485, inlinedAt: !664)
!1024 = !DILocation(line: 538, column: 14, scope: !485, inlinedAt: !664)
!1025 = !{!1026, !773, i64 16}
!1026 = !{!"vip_definition", !738, i64 0, !773, i64 16, !738, i64 18}
!1027 = !DILocation(line: 539, column: 9, scope: !485, inlinedAt: !664)
!1028 = !DILocation(line: 539, column: 15, scope: !485, inlinedAt: !664)
!1029 = !{!1026, !738, i64 18}
!1030 = !DILocation(line: 540, column: 16, scope: !485, inlinedAt: !664)
!1031 = !DILocation(line: 541, column: 10, scope: !1032, inlinedAt: !664)
!1032 = distinct !DILexicalBlock(scope: !485, file: !3, line: 541, column: 9)
!1033 = !DILocation(line: 541, column: 9, scope: !485, inlinedAt: !664)
!1034 = !DILocation(line: 542, column: 18, scope: !1035, inlinedAt: !664)
!1035 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 541, column: 20)
!1036 = !DILocation(line: 543, column: 20, scope: !1035, inlinedAt: !664)
!1037 = !DILocation(line: 544, column: 14, scope: !1038, inlinedAt: !664)
!1038 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 544, column: 13)
!1039 = !DILocation(line: 544, column: 13, scope: !1035, inlinedAt: !664)
!1040 = !DILocation(line: 547, column: 25, scope: !1041, inlinedAt: !664)
!1041 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 547, column: 13)
!1042 = !{!1043, !737, i64 0}
!1043 = !{!"vip_meta", !737, i64 0, !737, i64 4}
!1044 = !DILocation(line: 547, column: 31, scope: !1041, inlinedAt: !664)
!1045 = !DILocation(line: 547, column: 13, scope: !1035, inlinedAt: !664)
!1046 = !DILocation(line: 548, column: 33, scope: !1047, inlinedAt: !664)
!1047 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 547, column: 53)
!1048 = !DILocation(line: 549, column: 9, scope: !1047, inlinedAt: !664)
!1049 = !DILocation(line: 551, column: 18, scope: !1050, inlinedAt: !664)
!1050 = distinct !DILexicalBlock(scope: !485, file: !3, line: 551, column: 9)
!1051 = !DILocation(line: 551, column: 25, scope: !1050, inlinedAt: !664)
!1052 = !DILocation(line: 551, column: 9, scope: !485, inlinedAt: !664)
!1053 = !DILocation(line: 570, column: 5, scope: !485, inlinedAt: !664)
!1054 = !DILocation(line: 570, column: 11, scope: !485, inlinedAt: !664)
!1055 = !DILocation(line: 571, column: 18, scope: !485, inlinedAt: !664)
!1056 = !DILocation(line: 572, column: 10, scope: !1057, inlinedAt: !664)
!1057 = distinct !DILexicalBlock(scope: !485, file: !3, line: 572, column: 9)
!1058 = !DILocation(line: 572, column: 9, scope: !485, inlinedAt: !664)
!1059 = !DILocation(line: 575, column: 17, scope: !485, inlinedAt: !664)
!1060 = !DILocation(line: 575, column: 20, scope: !485, inlinedAt: !664)
!1061 = !{!1062, !740, i64 0}
!1062 = !{!"lb_stats", !740, i64 0, !740, i64 8}
!1063 = !DILocation(line: 576, column: 20, scope: !510, inlinedAt: !664)
!1064 = !DILocation(line: 576, column: 26, scope: !510, inlinedAt: !664)
!1065 = !DILocation(line: 576, column: 9, scope: !485, inlinedAt: !664)
!1066 = !DILocation(line: 577, column: 9, scope: !509, inlinedAt: !664)
!1067 = !DILocation(line: 0, scope: !509, inlinedAt: !664)
!1068 = !DILocation(line: 577, column: 15, scope: !509, inlinedAt: !664)
!1069 = !DILocation(line: 578, column: 39, scope: !509, inlinedAt: !664)
!1070 = !DILocation(line: 579, column: 14, scope: !1071, inlinedAt: !664)
!1071 = distinct !DILexicalBlock(scope: !509, file: !3, line: 579, column: 13)
!1072 = !DILocation(line: 579, column: 13, scope: !509, inlinedAt: !664)
!1073 = !DILocalVariable(name: "data", arg: 1, scope: !1074, file: !52, line: 204, type: !44)
!1074 = distinct !DISubprogram(name: "parse_quic", scope: !52, file: !52, line: 204, type: !1075, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!72, !44, !44, !454, !456}
!1077 = !{!1073, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1089, !1090}
!1078 = !DILocalVariable(name: "data_end", arg: 2, scope: !1074, file: !52, line: 204, type: !44)
!1079 = !DILocalVariable(name: "is_ipv6", arg: 3, scope: !1074, file: !52, line: 204, type: !454)
!1080 = !DILocalVariable(name: "pckt", arg: 4, scope: !1074, file: !52, line: 204, type: !456)
!1081 = !DILocalVariable(name: "is_icmp", scope: !1074, file: !52, line: 205, type: !454)
!1082 = !DILocalVariable(name: "off", scope: !1074, file: !52, line: 206, type: !95)
!1083 = !DILocalVariable(name: "quic_data", scope: !1074, file: !52, line: 210, type: !631)
!1084 = !DILocalVariable(name: "pkt_type", scope: !1074, file: !52, line: 211, type: !631)
!1085 = !DILocalVariable(name: "connId", scope: !1074, file: !52, line: 212, type: !631)
!1086 = !DILocalVariable(name: "long_header", scope: !1087, file: !52, line: 220, type: !50)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !52, line: 213, column: 61)
!1088 = distinct !DILexicalBlock(scope: !1074, file: !52, line: 213, column: 9)
!1089 = !DILocalVariable(name: "connIdVersion", scope: !1074, file: !52, line: 235, type: !55)
!1090 = !DILocalVariable(name: "cid", scope: !1091, file: !52, line: 240, type: !58)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !52, line: 239, column: 55)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !52, line: 239, column: 14)
!1093 = distinct !DILexicalBlock(scope: !1074, file: !52, line: 236, column: 9)
!1094 = !DILocation(line: 0, scope: !1074, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 583, column: 22, scope: !509, inlinedAt: !664)
!1096 = !DILocation(line: 205, column: 27, scope: !1074, inlinedAt: !1095)
!1097 = !DILocation(line: 205, column: 33, scope: !1074, inlinedAt: !1095)
!1098 = !DILocation(line: 205, column: 20, scope: !1074, inlinedAt: !1095)
!1099 = !DILocation(line: 0, scope: !930, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 206, column: 17, scope: !1074, inlinedAt: !1095)
!1101 = !DILocation(line: 33, column: 9, scope: !930, inlinedAt: !1100)
!1102 = !DILocation(line: 207, column: 15, scope: !1103, inlinedAt: !1095)
!1103 = distinct !DILexicalBlock(scope: !1074, file: !52, line: 207, column: 9)
!1104 = !DILocation(line: 207, column: 21, scope: !1103, inlinedAt: !1095)
!1105 = !DILocation(line: 207, column: 46, scope: !1103, inlinedAt: !1095)
!1106 = !DILocation(line: 207, column: 63, scope: !1103, inlinedAt: !1095)
!1107 = !DILocation(line: 207, column: 9, scope: !1074, inlinedAt: !1095)
!1108 = !DILocation(line: 213, column: 10, scope: !1088, inlinedAt: !1095)
!1109 = !DILocation(line: 213, column: 20, scope: !1088, inlinedAt: !1095)
!1110 = !DILocation(line: 213, column: 40, scope: !1088, inlinedAt: !1095)
!1111 = !DILocation(line: 213, column: 9, scope: !1074, inlinedAt: !1095)
!1112 = !DILocation(line: 214, column: 23, scope: !1113, inlinedAt: !1095)
!1113 = distinct !DILexicalBlock(scope: !1087, file: !52, line: 214, column: 13)
!1114 = !DILocation(line: 214, column: 58, scope: !1113, inlinedAt: !1095)
!1115 = !DILocation(line: 217, column: 24, scope: !1116, inlinedAt: !1095)
!1116 = distinct !DILexicalBlock(scope: !1087, file: !52, line: 217, column: 13)
!1117 = !DILocation(line: 217, column: 49, scope: !1116, inlinedAt: !1095)
!1118 = !DILocation(line: 214, column: 13, scope: !1087, inlinedAt: !1095)
!1119 = !DILocation(line: 0, scope: !1087, inlinedAt: !1095)
!1120 = !DILocation(line: 221, column: 26, scope: !1121, inlinedAt: !1095)
!1121 = distinct !DILexicalBlock(scope: !1087, file: !52, line: 221, column: 13)
!1122 = !{!1123, !738, i64 5}
!1123 = !{!"quic_long_header", !738, i64 0, !737, i64 1, !738, i64 5, !738, i64 6}
!1124 = !DILocation(line: 221, column: 39, scope: !1121, inlinedAt: !1095)
!1125 = !DILocation(line: 221, column: 13, scope: !1087, inlinedAt: !1095)
!1126 = !DILocation(line: 227, column: 23, scope: !1127, inlinedAt: !1095)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !52, line: 227, column: 13)
!1128 = distinct !DILexicalBlock(scope: !1088, file: !52, line: 226, column: 10)
!1129 = !DILocation(line: 227, column: 59, scope: !1127, inlinedAt: !1095)
!1130 = !DILocation(line: 227, column: 13, scope: !1128, inlinedAt: !1095)
!1131 = !DILocation(line: 235, column: 27, scope: !1074, inlinedAt: !1095)
!1132 = !DILocation(line: 235, column: 37, scope: !1074, inlinedAt: !1095)
!1133 = !DILocation(line: 236, column: 9, scope: !1074, inlinedAt: !1095)
!1134 = !DILocation(line: 237, column: 28, scope: !1135, inlinedAt: !1095)
!1135 = distinct !DILexicalBlock(scope: !1093, file: !52, line: 236, column: 50)
!1136 = !DILocation(line: 237, column: 36, scope: !1135, inlinedAt: !1095)
!1137 = !DILocation(line: 237, column: 46, scope: !1135, inlinedAt: !1095)
!1138 = !DILocation(line: 237, column: 56, scope: !1135, inlinedAt: !1095)
!1139 = !DILocation(line: 237, column: 43, scope: !1135, inlinedAt: !1095)
!1140 = !DILocation(line: 237, column: 65, scope: !1135, inlinedAt: !1095)
!1141 = !DILocation(line: 237, column: 75, scope: !1135, inlinedAt: !1095)
!1142 = !DILocation(line: 237, column: 9, scope: !1135, inlinedAt: !1095)
!1143 = !DILocation(line: 240, column: 22, scope: !1091, inlinedAt: !1095)
!1144 = !DILocation(line: 240, column: 32, scope: !1091, inlinedAt: !1095)
!1145 = !DILocation(line: 240, column: 42, scope: !1091, inlinedAt: !1095)
!1146 = !DILocation(line: 240, column: 52, scope: !1091, inlinedAt: !1095)
!1147 = !DILocation(line: 240, column: 39, scope: !1091, inlinedAt: !1095)
!1148 = !DILocation(line: 240, column: 61, scope: !1091, inlinedAt: !1095)
!1149 = !DILocation(line: 0, scope: !1091, inlinedAt: !1095)
!1150 = !DILocation(line: 0, scope: !1093, inlinedAt: !1095)
!1151 = !DILocation(line: 584, column: 24, scope: !515, inlinedAt: !664)
!1152 = !DILocation(line: 584, column: 13, scope: !509, inlinedAt: !664)
!1153 = !DILocalVariable(name: "host_id", arg: 1, scope: !1154, file: !3, line: 267, type: !72)
!1154 = distinct !DISubprogram(name: "increment_quic_cid_version_stats", scope: !3, file: !3, line: 267, type: !1155, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1157)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{null, !72}
!1157 = !{!1153, !1158, !1159}
!1158 = !DILocalVariable(name: "quic_version_stats_key", scope: !1154, file: !3, line: 268, type: !58)
!1159 = !DILocalVariable(name: "quic_version", scope: !1154, file: !3, line: 269, type: !255)
!1160 = !DILocation(line: 0, scope: !1154, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 585, column: 13, scope: !514, inlinedAt: !664)
!1162 = !DILocation(line: 268, column: 5, scope: !1154, inlinedAt: !1161)
!1163 = !DILocation(line: 268, column: 11, scope: !1154, inlinedAt: !1161)
!1164 = !DILocation(line: 269, column: 37, scope: !1154, inlinedAt: !1161)
!1165 = !DILocation(line: 270, column: 10, scope: !1166, inlinedAt: !1161)
!1166 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 270, column: 9)
!1167 = !DILocation(line: 270, column: 9, scope: !1154, inlinedAt: !1161)
!1168 = !DILocation(line: 273, column: 17, scope: !1169, inlinedAt: !1161)
!1169 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 273, column: 9)
!1170 = !DILocation(line: 273, column: 9, scope: !1154, inlinedAt: !1161)
!1171 = !DILocation(line: 0, scope: !1169, inlinedAt: !1161)
!1172 = !{!740, !740, i64 0}
!1173 = !DILocation(line: 279, column: 1, scope: !1154, inlinedAt: !1161)
!1174 = !DILocation(line: 586, column: 13, scope: !514, inlinedAt: !664)
!1175 = !DILocation(line: 0, scope: !514, inlinedAt: !664)
!1176 = !DILocation(line: 586, column: 19, scope: !514, inlinedAt: !664)
!1177 = !DILocation(line: 587, column: 31, scope: !514, inlinedAt: !664)
!1178 = !DILocation(line: 588, column: 17, scope: !1179, inlinedAt: !664)
!1179 = distinct !DILexicalBlock(scope: !514, file: !3, line: 588, column: 17)
!1180 = !DILocation(line: 588, column: 17, scope: !514, inlinedAt: !664)
!1181 = !DILocation(line: 589, column: 23, scope: !1182, inlinedAt: !664)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 588, column: 27)
!1183 = !DILocation(line: 589, column: 21, scope: !1182, inlinedAt: !664)
!1184 = !DILocation(line: 590, column: 25, scope: !1185, inlinedAt: !664)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 590, column: 21)
!1186 = !DILocation(line: 590, column: 21, scope: !1182, inlinedAt: !664)
!1187 = !DILocation(line: 282, column: 5, scope: !1188, inlinedAt: !1194)
!1188 = distinct !DISubprogram(name: "increment_quic_cid_drop_real_0", scope: !3, file: !3, line: 281, type: !1189, scopeLine: 281, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1191)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{null}
!1191 = !{!1192, !1193}
!1192 = !DILocalVariable(name: "quic_drop_stats_key", scope: !1188, file: !3, line: 282, type: !58)
!1193 = !DILocalVariable(name: "quic_drop", scope: !1188, file: !3, line: 283, type: !255)
!1194 = distinct !DILocation(line: 591, column: 21, scope: !1195, inlinedAt: !664)
!1195 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 590, column: 31)
!1196 = !DILocation(line: 0, scope: !1188, inlinedAt: !1194)
!1197 = !DILocation(line: 282, column: 11, scope: !1188, inlinedAt: !1194)
!1198 = !DILocation(line: 283, column: 34, scope: !1188, inlinedAt: !1194)
!1199 = !DILocation(line: 284, column: 10, scope: !1200, inlinedAt: !1194)
!1200 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 284, column: 9)
!1201 = !DILocation(line: 284, column: 9, scope: !1188, inlinedAt: !1194)
!1202 = !DILocation(line: 287, column: 16, scope: !1188, inlinedAt: !1194)
!1203 = !DILocation(line: 287, column: 19, scope: !1188, inlinedAt: !1194)
!1204 = !{!1062, !740, i64 8}
!1205 = !DILocation(line: 288, column: 1, scope: !1188, inlinedAt: !1194)
!1206 = !DILocation(line: 593, column: 17, scope: !1195, inlinedAt: !664)
!1207 = !DILocation(line: 595, column: 26, scope: !1208, inlinedAt: !664)
!1208 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 594, column: 22)
!1209 = !DILocation(line: 595, column: 37, scope: !1208, inlinedAt: !664)
!1210 = !{!777, !737, i64 40}
!1211 = !DILocation(line: 596, column: 27, scope: !1208, inlinedAt: !664)
!1212 = !DILocation(line: 597, column: 26, scope: !1213, inlinedAt: !664)
!1213 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 597, column: 25)
!1214 = !DILocation(line: 597, column: 25, scope: !1208, inlinedAt: !664)
!1215 = !DILocation(line: 291, column: 5, scope: !1216, inlinedAt: !1220)
!1216 = distinct !DISubprogram(name: "increment_quic_cid_drop_no_real", scope: !3, file: !3, line: 290, type: !1189, scopeLine: 290, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1217)
!1217 = !{!1218, !1219}
!1218 = !DILocalVariable(name: "quic_drop_stats_key", scope: !1216, file: !3, line: 291, type: !58)
!1219 = !DILocalVariable(name: "quic_drop", scope: !1216, file: !3, line: 292, type: !255)
!1220 = distinct !DILocation(line: 598, column: 25, scope: !1221, inlinedAt: !664)
!1221 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 597, column: 31)
!1222 = !DILocation(line: 0, scope: !1216, inlinedAt: !1220)
!1223 = !DILocation(line: 291, column: 11, scope: !1216, inlinedAt: !1220)
!1224 = !DILocation(line: 292, column: 34, scope: !1216, inlinedAt: !1220)
!1225 = !DILocation(line: 293, column: 10, scope: !1226, inlinedAt: !1220)
!1226 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 293, column: 9)
!1227 = !DILocation(line: 293, column: 9, scope: !1216, inlinedAt: !1220)
!1228 = !DILocation(line: 296, column: 16, scope: !1216, inlinedAt: !1220)
!1229 = !DILocation(line: 296, column: 19, scope: !1216, inlinedAt: !1220)
!1230 = !DILocation(line: 297, column: 1, scope: !1216, inlinedAt: !1220)
!1231 = !DILocation(line: 608, column: 9, scope: !515, inlinedAt: !664)
!1232 = !DILocation(line: 610, column: 25, scope: !1233, inlinedAt: !664)
!1233 = distinct !DILexicalBlock(scope: !515, file: !3, line: 609, column: 14)
!1234 = !DILocation(line: 610, column: 28, scope: !1233, inlinedAt: !664)
!1235 = !DILocation(line: 612, column: 5, scope: !510, inlinedAt: !664)
!1236 = !DILocation(line: 614, column: 9, scope: !485, inlinedAt: !664)
!1237 = !DILocation(line: 0, scope: !1179, inlinedAt: !664)
!1238 = !DILocation(line: 602, column: 33, scope: !1208, inlinedAt: !664)
!1239 = !DILocation(line: 602, column: 36, scope: !1208, inlinedAt: !664)
!1240 = !DILocation(line: 613, column: 22, scope: !485, inlinedAt: !664)
!1241 = !DILocation(line: 615, column: 24, scope: !1242, inlinedAt: !664)
!1242 = distinct !DILexicalBlock(scope: !483, file: !3, line: 615, column: 13)
!1243 = !DILocation(line: 615, column: 30, scope: !1242, inlinedAt: !664)
!1244 = !DILocation(line: 615, column: 13, scope: !483, inlinedAt: !664)
!1245 = !DILocation(line: 616, column: 33, scope: !1246, inlinedAt: !664)
!1246 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 615, column: 53)
!1247 = !DILocation(line: 617, column: 9, scope: !1246, inlinedAt: !664)
!1248 = !DILocation(line: 618, column: 9, scope: !483, inlinedAt: !664)
!1249 = !DILocation(line: 618, column: 25, scope: !483, inlinedAt: !664)
!1250 = !DILocation(line: 0, scope: !483, inlinedAt: !664)
!1251 = !DILocation(line: 618, column: 15, scope: !483, inlinedAt: !664)
!1252 = !DILocation(line: 619, column: 25, scope: !483, inlinedAt: !664)
!1253 = !DILocation(line: 620, column: 14, scope: !521, inlinedAt: !664)
!1254 = !DILocation(line: 620, column: 13, scope: !483, inlinedAt: !664)
!1255 = !DILocation(line: 622, column: 13, scope: !520, inlinedAt: !664)
!1256 = !DILocation(line: 0, scope: !520, inlinedAt: !664)
!1257 = !DILocation(line: 622, column: 19, scope: !520, inlinedAt: !664)
!1258 = !DILocation(line: 623, column: 42, scope: !520, inlinedAt: !664)
!1259 = !DILocation(line: 624, column: 18, scope: !1260, inlinedAt: !664)
!1260 = distinct !DILexicalBlock(scope: !520, file: !3, line: 624, column: 17)
!1261 = !DILocation(line: 624, column: 17, scope: !520, inlinedAt: !664)
!1262 = !DILocation(line: 627, column: 24, scope: !520, inlinedAt: !664)
!1263 = !DILocation(line: 627, column: 27, scope: !520, inlinedAt: !664)
!1264 = !DILocation(line: 628, column: 9, scope: !521, inlinedAt: !664)
!1265 = !DILocation(line: 644, column: 28, scope: !1266, inlinedAt: !664)
!1266 = distinct !DILexicalBlock(scope: !483, file: !3, line: 644, column: 13)
!1267 = !DILocation(line: 644, column: 34, scope: !1266, inlinedAt: !664)
!1268 = !DILocation(line: 644, column: 47, scope: !1266, inlinedAt: !664)
!1269 = !DILocation(line: 644, column: 62, scope: !1266, inlinedAt: !664)
!1270 = !DILocation(line: 644, column: 68, scope: !1266, inlinedAt: !664)
!1271 = !DILocation(line: 644, column: 13, scope: !483, inlinedAt: !664)
!1272 = !DILocalVariable(name: "pckt", arg: 2, scope: !1273, file: !3, line: 299, type: !456)
!1273 = distinct !DISubprogram(name: "connection_table_lookup", scope: !3, file: !3, line: 299, type: !1274, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1276)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{null, !455, !456, !44, !454}
!1276 = !{!1277, !1272, !1278, !1279, !1280, !1281, !1282}
!1277 = !DILocalVariable(name: "real", arg: 1, scope: !1273, file: !3, line: 299, type: !455)
!1278 = !DILocalVariable(name: "lru_map", arg: 3, scope: !1273, file: !3, line: 299, type: !44)
!1279 = !DILocalVariable(name: "isGlobalLru", arg: 4, scope: !1273, file: !3, line: 299, type: !454)
!1280 = !DILocalVariable(name: "dst_lru", scope: !1273, file: !3, line: 300, type: !200)
!1281 = !DILocalVariable(name: "cur_time", scope: !1273, file: !3, line: 301, type: !95)
!1282 = !DILocalVariable(name: "key", scope: !1273, file: !3, line: 302, type: !58)
!1283 = !DILocation(line: 0, scope: !1273, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 645, column: 13, scope: !1285, inlinedAt: !664)
!1285 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 644, column: 85)
!1286 = !DILocation(line: 302, column: 5, scope: !1273, inlinedAt: !1284)
!1287 = !DILocation(line: 303, column: 15, scope: !1273, inlinedAt: !1284)
!1288 = !DILocation(line: 304, column: 10, scope: !1289, inlinedAt: !1284)
!1289 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 304, column: 9)
!1290 = !DILocation(line: 304, column: 9, scope: !1273, inlinedAt: !1284)
!1291 = !DILocation(line: 307, column: 36, scope: !1292, inlinedAt: !1284)
!1292 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 307, column: 9)
!1293 = !DILocation(line: 307, column: 42, scope: !1292, inlinedAt: !1284)
!1294 = !DILocation(line: 307, column: 9, scope: !1273, inlinedAt: !1284)
!1295 = !DILocation(line: 308, column: 20, scope: !1296, inlinedAt: !1284)
!1296 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 307, column: 58)
!1297 = !DILocation(line: 309, column: 33, scope: !1298, inlinedAt: !1284)
!1298 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 309, column: 13)
!1299 = !{!1300, !740, i64 8}
!1300 = !{!"real_pos_lru", !737, i64 0, !740, i64 8}
!1301 = !DILocation(line: 309, column: 22, scope: !1298, inlinedAt: !1284)
!1302 = !DILocation(line: 309, column: 39, scope: !1298, inlinedAt: !1284)
!1303 = !DILocation(line: 309, column: 13, scope: !1296, inlinedAt: !1284)
!1304 = !DILocation(line: 312, column: 24, scope: !1296, inlinedAt: !1284)
!1305 = !DILocation(line: 313, column: 5, scope: !1296, inlinedAt: !1284)
!1306 = !DILocation(line: 318, column: 1, scope: !1273, inlinedAt: !1284)
!1307 = !DILocation(line: 655, column: 13, scope: !483, inlinedAt: !664)
!1308 = !DILocation(line: 314, column: 20, scope: !1273, inlinedAt: !1284)
!1309 = !{!1300, !737, i64 0}
!1310 = !DILocation(line: 314, column: 9, scope: !1273, inlinedAt: !1284)
!1311 = !DILocation(line: 315, column: 11, scope: !1273, inlinedAt: !1284)
!1312 = !DILocation(line: 315, column: 22, scope: !1273, inlinedAt: !1284)
!1313 = !DILocation(line: 316, column: 13, scope: !1273, inlinedAt: !1284)
!1314 = !DILocation(line: 655, column: 14, scope: !482, inlinedAt: !664)
!1315 = !DILocation(line: 656, column: 27, scope: !525, inlinedAt: !664)
!1316 = !DILocation(line: 656, column: 33, scope: !525, inlinedAt: !664)
!1317 = !DILocation(line: 656, column: 17, scope: !481, inlinedAt: !664)
!1318 = !DILocation(line: 657, column: 17, scope: !524, inlinedAt: !664)
!1319 = !DILocation(line: 0, scope: !524, inlinedAt: !664)
!1320 = !DILocation(line: 657, column: 23, scope: !524, inlinedAt: !664)
!1321 = !DILocation(line: 658, column: 46, scope: !524, inlinedAt: !664)
!1322 = !DILocation(line: 659, column: 22, scope: !1323, inlinedAt: !664)
!1323 = distinct !DILexicalBlock(scope: !524, file: !3, line: 659, column: 21)
!1324 = !DILocation(line: 659, column: 21, scope: !524, inlinedAt: !664)
!1325 = !DILocation(line: 662, column: 26, scope: !1326, inlinedAt: !664)
!1326 = distinct !DILexicalBlock(scope: !524, file: !3, line: 662, column: 21)
!1327 = !DILocation(line: 662, column: 32, scope: !1326, inlinedAt: !664)
!1328 = !DILocation(line: 662, column: 21, scope: !524, inlinedAt: !664)
!1329 = !DILocation(line: 0, scope: !1326, inlinedAt: !664)
!1330 = !DILocation(line: 669, column: 13, scope: !525, inlinedAt: !664)
!1331 = !DILocation(line: 0, scope: !451, inlinedAt: !663)
!1332 = !DILocation(line: 350, column: 5, scope: !451, inlinedAt: !663)
!1333 = !DILocation(line: 356, column: 5, scope: !451, inlinedAt: !663)
!1334 = !DILocation(line: 321, column: 5, scope: !1335, inlinedAt: !1342)
!1335 = distinct !DISubprogram(name: "is_under_flood", scope: !3, file: !3, line: 320, type: !1336, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1338)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!454, !822}
!1338 = !{!1339, !1340, !1341}
!1339 = !DILocalVariable(name: "cur_time", arg: 1, scope: !1335, file: !3, line: 320, type: !822)
!1340 = !DILocalVariable(name: "conn_rate_key", scope: !1335, file: !3, line: 321, type: !58)
!1341 = !DILocalVariable(name: "conn_rate_stats", scope: !1335, file: !3, line: 322, type: !255)
!1342 = distinct !DILocation(line: 357, column: 19, scope: !451, inlinedAt: !663)
!1343 = !DILocation(line: 0, scope: !1335, inlinedAt: !1342)
!1344 = !DILocation(line: 321, column: 11, scope: !1335, inlinedAt: !1342)
!1345 = !DILocation(line: 322, column: 40, scope: !1335, inlinedAt: !1342)
!1346 = !DILocation(line: 323, column: 10, scope: !1347, inlinedAt: !1342)
!1347 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 323, column: 9)
!1348 = !DILocation(line: 323, column: 9, scope: !1335, inlinedAt: !1342)
!1349 = !DILocation(line: 326, column: 17, scope: !1335, inlinedAt: !1342)
!1350 = !DILocation(line: 327, column: 39, scope: !1351, inlinedAt: !1342)
!1351 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 327, column: 9)
!1352 = !DILocation(line: 327, column: 20, scope: !1351, inlinedAt: !1342)
!1353 = !DILocation(line: 327, column: 43, scope: !1351, inlinedAt: !1342)
!1354 = !DILocation(line: 0, scope: !1351, inlinedAt: !1342)
!1355 = !DILocation(line: 327, column: 9, scope: !1335, inlinedAt: !1342)
!1356 = !DILocation(line: 328, column: 29, scope: !1357, inlinedAt: !1342)
!1357 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 327, column: 54)
!1358 = !DILocation(line: 329, column: 29, scope: !1357, inlinedAt: !1342)
!1359 = !DILocation(line: 330, column: 5, scope: !1357, inlinedAt: !1342)
!1360 = !DILocation(line: 332, column: 29, scope: !1361, inlinedAt: !1342)
!1361 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 331, column: 10)
!1362 = !DILocation(line: 333, column: 33, scope: !1363, inlinedAt: !1342)
!1363 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 333, column: 13)
!1364 = !DILocation(line: 333, column: 13, scope: !1361, inlinedAt: !1342)
!1365 = !DILocation(line: 337, column: 5, scope: !1335, inlinedAt: !1342)
!1366 = !DILocation(line: 338, column: 1, scope: !1335, inlinedAt: !1342)
!1367 = !DILocation(line: 0, scope: !476, inlinedAt: !663)
!1368 = !DILocation(line: 391, column: 23, scope: !1369, inlinedAt: !663)
!1369 = distinct !DILexicalBlock(scope: !476, file: !3, line: 391, column: 13)
!1370 = !DILocation(line: 391, column: 29, scope: !1369, inlinedAt: !663)
!1371 = !DILocation(line: 391, column: 13, scope: !476, inlinedAt: !663)
!1372 = !DILocation(line: 0, scope: !1373, inlinedAt: !1380)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 341, column: 9)
!1374 = distinct !DISubprogram(name: "get_packet_hash", scope: !3, file: !3, line: 340, type: !1375, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1377)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!58, !456, !454}
!1377 = !{!1378, !1379}
!1378 = !DILocalVariable(name: "pckt", arg: 1, scope: !1374, file: !3, line: 340, type: !456)
!1379 = !DILocalVariable(name: "hash_16bytes", arg: 2, scope: !1374, file: !3, line: 340, type: !454)
!1380 = distinct !DILocation(line: 395, column: 16, scope: !476, inlinedAt: !663)
!1381 = !DILocation(line: 392, column: 36, scope: !1382, inlinedAt: !663)
!1382 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 391, column: 50)
!1383 = !DILocation(line: 392, column: 34, scope: !1382, inlinedAt: !663)
!1384 = !DILocation(line: 393, column: 13, scope: !1382, inlinedAt: !663)
!1385 = !DILocation(line: 394, column: 9, scope: !1382, inlinedAt: !663)
!1386 = !DILocation(line: 0, scope: !1374, inlinedAt: !1380)
!1387 = !DILocation(line: 345, column: 57, scope: !1388, inlinedAt: !1380)
!1388 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 344, column: 10)
!1389 = !DILocalVariable(name: "a", arg: 1, scope: !1390, file: !71, line: 101, type: !70)
!1390 = distinct !DISubprogram(name: "jhash_2words", scope: !71, file: !71, line: 101, type: !1391, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1393)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!70, !70, !70, !70}
!1393 = !{!1389, !1394, !1395}
!1394 = !DILocalVariable(name: "b", arg: 2, scope: !1390, file: !71, line: 101, type: !70)
!1395 = !DILocalVariable(name: "initval", arg: 3, scope: !1390, file: !71, line: 101, type: !70)
!1396 = !DILocation(line: 0, scope: !1390, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 345, column: 16, scope: !1388, inlinedAt: !1380)
!1398 = !DILocalVariable(name: "a", arg: 1, scope: !1399, file: !71, line: 93, type: !70)
!1399 = distinct !DISubprogram(name: "__jhash_nwords", scope: !71, file: !71, line: 93, type: !1400, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1402)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!70, !70, !70, !70, !70}
!1402 = !{!1398, !1403, !1404, !1405}
!1403 = !DILocalVariable(name: "b", arg: 2, scope: !1399, file: !71, line: 93, type: !70)
!1404 = !DILocalVariable(name: "c", arg: 3, scope: !1399, file: !71, line: 93, type: !70)
!1405 = !DILocalVariable(name: "initval", arg: 4, scope: !1399, file: !71, line: 93, type: !70)
!1406 = !DILocation(line: 0, scope: !1399, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 102, column: 12, scope: !1390, inlinedAt: !1397)
!1408 = !DILocation(line: 95, column: 7, scope: !1399, inlinedAt: !1407)
!1409 = !DILocation(line: 97, column: 5, scope: !1410, inlinedAt: !1407)
!1410 = distinct !DILexicalBlock(scope: !1399, file: !71, line: 97, column: 5)
!1411 = !DILocalVariable(name: "word", arg: 1, scope: !1412, file: !71, line: 4, type: !58)
!1412 = distinct !DISubprogram(name: "rol32", scope: !71, file: !71, line: 4, type: !1413, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1415)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!58, !58, !7}
!1415 = !{!1411, !1416}
!1416 = !DILocalVariable(name: "shift", arg: 2, scope: !1412, file: !71, line: 4, type: !7)
!1417 = !DILocation(line: 0, scope: !1412, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 97, column: 5, scope: !1410, inlinedAt: !1407)
!1419 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !1418)
!1420 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !1418)
!1421 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !1418)
!1422 = !DILocation(line: 0, scope: !1412, inlinedAt: !1423)
!1423 = distinct !DILocation(line: 97, column: 5, scope: !1410, inlinedAt: !1407)
!1424 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !1423)
!1425 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !1423)
!1426 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !1423)
!1427 = !DILocation(line: 0, scope: !1412, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 97, column: 5, scope: !1410, inlinedAt: !1407)
!1429 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !1428)
!1430 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !1428)
!1431 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !1428)
!1432 = !DILocation(line: 0, scope: !1412, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 97, column: 5, scope: !1410, inlinedAt: !1407)
!1434 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !1433)
!1435 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !1433)
!1436 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !1433)
!1437 = !DILocation(line: 0, scope: !1412, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 97, column: 5, scope: !1410, inlinedAt: !1407)
!1439 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !1438)
!1440 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !1438)
!1441 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !1438)
!1442 = !DILocation(line: 0, scope: !1412, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 97, column: 5, scope: !1410, inlinedAt: !1407)
!1444 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !1443)
!1445 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !1443)
!1446 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !1443)
!1447 = !DILocation(line: 0, scope: !1412, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 97, column: 5, scope: !1410, inlinedAt: !1407)
!1449 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !1448)
!1450 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !1448)
!1451 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !1448)
!1452 = !DILocation(line: 395, column: 53, scope: !476, inlinedAt: !663)
!1453 = !DILocation(line: 396, column: 38, scope: !476, inlinedAt: !663)
!1454 = !{!1043, !737, i64 4}
!1455 = !DILocation(line: 396, column: 25, scope: !476, inlinedAt: !663)
!1456 = !DILocation(line: 396, column: 47, scope: !476, inlinedAt: !663)
!1457 = !DILocation(line: 396, column: 13, scope: !476, inlinedAt: !663)
!1458 = !DILocation(line: 397, column: 20, scope: !476, inlinedAt: !663)
!1459 = !DILocation(line: 398, column: 14, scope: !1460, inlinedAt: !663)
!1460 = distinct !DILexicalBlock(scope: !476, file: !3, line: 398, column: 13)
!1461 = !DILocation(line: 398, column: 13, scope: !476, inlinedAt: !663)
!1462 = !DILocation(line: 401, column: 15, scope: !476, inlinedAt: !663)
!1463 = !DILocation(line: 401, column: 13, scope: !476, inlinedAt: !663)
!1464 = !DILocation(line: 403, column: 11, scope: !451, inlinedAt: !663)
!1465 = !DILocation(line: 403, column: 22, scope: !451, inlinedAt: !663)
!1466 = !DILocation(line: 404, column: 13, scope: !451, inlinedAt: !663)
!1467 = !DILocation(line: 405, column: 10, scope: !1468, inlinedAt: !663)
!1468 = distinct !DILexicalBlock(scope: !451, file: !3, line: 405, column: 9)
!1469 = !DILocation(line: 405, column: 9, scope: !451, inlinedAt: !663)
!1470 = !DILocation(line: 408, column: 9, scope: !1471, inlinedAt: !663)
!1471 = distinct !DILexicalBlock(scope: !451, file: !3, line: 408, column: 9)
!1472 = !DILocation(line: 408, column: 17, scope: !1471, inlinedAt: !663)
!1473 = !DILocation(line: 408, column: 32, scope: !1471, inlinedAt: !663)
!1474 = !DILocation(line: 408, column: 38, scope: !1471, inlinedAt: !663)
!1475 = !DILocation(line: 408, column: 54, scope: !1471, inlinedAt: !663)
!1476 = !DILocation(line: 409, column: 24, scope: !1477, inlinedAt: !663)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 409, column: 13)
!1478 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 408, column: 71)
!1479 = !DILocation(line: 409, column: 30, scope: !1477, inlinedAt: !663)
!1480 = !DILocation(line: 409, column: 13, scope: !1478, inlinedAt: !663)
!1481 = !DILocation(line: 410, column: 25, scope: !1482, inlinedAt: !663)
!1482 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 409, column: 46)
!1483 = !DILocation(line: 410, column: 31, scope: !1482, inlinedAt: !663)
!1484 = !DILocation(line: 411, column: 9, scope: !1482, inlinedAt: !663)
!1485 = !DILocation(line: 412, column: 27, scope: !1478, inlinedAt: !663)
!1486 = !DILocation(line: 412, column: 21, scope: !1478, inlinedAt: !663)
!1487 = !DILocation(line: 412, column: 25, scope: !1478, inlinedAt: !663)
!1488 = !DILocation(line: 413, column: 9, scope: !1478, inlinedAt: !663)
!1489 = !DILocation(line: 414, column: 5, scope: !1478, inlinedAt: !663)
!1490 = !DILocation(line: 416, column: 1, scope: !451, inlinedAt: !663)
!1491 = !DILocation(line: 670, column: 17, scope: !481, inlinedAt: !664)
!1492 = !DILocation(line: 673, column: 25, scope: !481, inlinedAt: !664)
!1493 = !DILocation(line: 673, column: 28, scope: !481, inlinedAt: !664)
!1494 = !DILocation(line: 674, column: 9, scope: !481, inlinedAt: !664)
!1495 = !DILocation(line: 675, column: 5, scope: !484, inlinedAt: !664)
!1496 = !DILocation(line: 676, column: 12, scope: !485, inlinedAt: !664)
!1497 = !DILocation(line: 677, column: 10, scope: !1498, inlinedAt: !664)
!1498 = distinct !DILexicalBlock(scope: !485, file: !3, line: 677, column: 9)
!1499 = !DILocation(line: 677, column: 9, scope: !485, inlinedAt: !664)
!1500 = !DILocation(line: 680, column: 25, scope: !485, inlinedAt: !664)
!1501 = !DILocation(line: 680, column: 13, scope: !485, inlinedAt: !664)
!1502 = !DILocation(line: 681, column: 18, scope: !485, inlinedAt: !664)
!1503 = !DILocation(line: 682, column: 10, scope: !1504, inlinedAt: !664)
!1504 = distinct !DILexicalBlock(scope: !485, file: !3, line: 682, column: 9)
!1505 = !DILocation(line: 682, column: 9, scope: !485, inlinedAt: !664)
!1506 = !DILocation(line: 685, column: 17, scope: !485, inlinedAt: !664)
!1507 = !DILocation(line: 685, column: 20, scope: !485, inlinedAt: !664)
!1508 = !DILocation(line: 686, column: 23, scope: !485, inlinedAt: !664)
!1509 = !DILocation(line: 686, column: 17, scope: !485, inlinedAt: !664)
!1510 = !DILocation(line: 686, column: 20, scope: !485, inlinedAt: !664)
!1511 = !DILocation(line: 687, column: 59, scope: !485, inlinedAt: !664)
!1512 = !DILocation(line: 687, column: 53, scope: !485, inlinedAt: !664)
!1513 = !DILocation(line: 687, column: 18, scope: !485, inlinedAt: !664)
!1514 = !DILocation(line: 688, column: 10, scope: !1515, inlinedAt: !664)
!1515 = distinct !DILexicalBlock(scope: !485, file: !3, line: 688, column: 9)
!1516 = !DILocation(line: 688, column: 9, scope: !485, inlinedAt: !664)
!1517 = !DILocation(line: 691, column: 17, scope: !485, inlinedAt: !664)
!1518 = !DILocation(line: 691, column: 20, scope: !485, inlinedAt: !664)
!1519 = !DILocation(line: 692, column: 17, scope: !485, inlinedAt: !664)
!1520 = !DILocation(line: 692, column: 20, scope: !485, inlinedAt: !664)
!1521 = !DILocation(line: 698, column: 25, scope: !485, inlinedAt: !664)
!1522 = !DILocation(line: 699, column: 14, scope: !1523, inlinedAt: !664)
!1523 = distinct !DILexicalBlock(scope: !485, file: !3, line: 699, column: 9)
!1524 = !{!1525, !738, i64 16}
!1525 = !{!"real_definition", !738, i64 0, !738, i64 16}
!1526 = !DILocation(line: 699, column: 20, scope: !1523, inlinedAt: !664)
!1527 = !DILocation(line: 699, column: 9, scope: !485, inlinedAt: !664)
!1528 = !DILocalVariable(name: "xdp", arg: 1, scope: !1529, file: !1530, line: 20, type: !346)
!1529 = distinct !DISubprogram(name: "encap_v6", scope: !1530, file: !1530, line: 20, type: !1531, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1533)
!1530 = !DIFile(filename: "./pckt_encap.h", directory: "/home/sayandes/github/hook-point-transformer/src/katran-test/extraction")
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!454, !346, !87, !454, !456, !231, !58}
!1533 = !{!1528, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547}
!1534 = !DILocalVariable(name: "cval", arg: 2, scope: !1529, file: !1530, line: 20, type: !87)
!1535 = !DILocalVariable(name: "is_ipv6", arg: 3, scope: !1529, file: !1530, line: 20, type: !454)
!1536 = !DILocalVariable(name: "pckt", arg: 4, scope: !1529, file: !1530, line: 20, type: !456)
!1537 = !DILocalVariable(name: "dst", arg: 5, scope: !1529, file: !1530, line: 20, type: !231)
!1538 = !DILocalVariable(name: "pkt_bytes", arg: 6, scope: !1529, file: !1530, line: 20, type: !58)
!1539 = !DILocalVariable(name: "data", scope: !1529, file: !1530, line: 21, type: !44)
!1540 = !DILocalVariable(name: "data_end", scope: !1529, file: !1530, line: 22, type: !44)
!1541 = !DILocalVariable(name: "ip6h", scope: !1529, file: !1530, line: 23, type: !540)
!1542 = !DILocalVariable(name: "new_eth", scope: !1529, file: !1530, line: 24, type: !440)
!1543 = !DILocalVariable(name: "old_eth", scope: !1529, file: !1530, line: 25, type: !440)
!1544 = !DILocalVariable(name: "payload_len", scope: !1529, file: !1530, line: 26, type: !46)
!1545 = !DILocalVariable(name: "ip_suffix", scope: !1529, file: !1530, line: 27, type: !58)
!1546 = !DILocalVariable(name: "saddr", scope: !1529, file: !1530, line: 28, type: !374)
!1547 = !DILocalVariable(name: "proto", scope: !1529, file: !1530, line: 29, type: !55)
!1548 = !DILocation(line: 0, scope: !1529, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 700, column: 14, scope: !1550, inlinedAt: !664)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 700, column: 13)
!1551 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 699, column: 30)
!1552 = !DILocation(line: 30, column: 30, scope: !1553, inlinedAt: !1549)
!1553 = distinct !DILexicalBlock(scope: !1529, file: !1530, line: 30, column: 9)
!1554 = !DILocation(line: 30, column: 9, scope: !1553, inlinedAt: !1549)
!1555 = !DILocation(line: 30, column: 9, scope: !1529, inlinedAt: !1549)
!1556 = !DILocation(line: 33, column: 33, scope: !1529, inlinedAt: !1549)
!1557 = !DILocation(line: 33, column: 21, scope: !1529, inlinedAt: !1549)
!1558 = !DILocation(line: 33, column: 12, scope: !1529, inlinedAt: !1549)
!1559 = !DILocation(line: 34, column: 37, scope: !1529, inlinedAt: !1549)
!1560 = !DILocation(line: 34, column: 25, scope: !1529, inlinedAt: !1549)
!1561 = !DILocation(line: 35, column: 15, scope: !1529, inlinedAt: !1549)
!1562 = !DILocation(line: 36, column: 17, scope: !1529, inlinedAt: !1549)
!1563 = !DILocation(line: 37, column: 20, scope: !1529, inlinedAt: !1549)
!1564 = !DILocation(line: 38, column: 17, scope: !1565, inlinedAt: !1549)
!1565 = distinct !DILexicalBlock(scope: !1529, file: !1530, line: 38, column: 9)
!1566 = !DILocation(line: 38, column: 23, scope: !1565, inlinedAt: !1549)
!1567 = !DILocation(line: 38, column: 21, scope: !1565, inlinedAt: !1549)
!1568 = !DILocation(line: 38, column: 32, scope: !1565, inlinedAt: !1549)
!1569 = !DILocation(line: 38, column: 43, scope: !1565, inlinedAt: !1549)
!1570 = !DILocation(line: 38, column: 47, scope: !1565, inlinedAt: !1549)
!1571 = !DILocation(line: 38, column: 58, scope: !1565, inlinedAt: !1549)
!1572 = !DILocation(line: 38, column: 66, scope: !1565, inlinedAt: !1549)
!1573 = !DILocation(line: 38, column: 72, scope: !1565, inlinedAt: !1549)
!1574 = !DILocation(line: 38, column: 70, scope: !1565, inlinedAt: !1549)
!1575 = !DILocation(line: 38, column: 9, scope: !1529, inlinedAt: !1549)
!1576 = !DILocation(line: 41, column: 5, scope: !1529, inlinedAt: !1549)
!1577 = !DILocation(line: 42, column: 5, scope: !1529, inlinedAt: !1549)
!1578 = !DILocation(line: 43, column: 14, scope: !1529, inlinedAt: !1549)
!1579 = !DILocation(line: 43, column: 22, scope: !1529, inlinedAt: !1549)
!1580 = !{!1581, !773, i64 12}
!1581 = !{!"ethhdr", !738, i64 0, !738, i64 6, !773, i64 12}
!1582 = !DILocation(line: 51, column: 32, scope: !1583, inlinedAt: !1549)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !1530, line: 49, column: 10)
!1584 = distinct !DILexicalBlock(scope: !1529, file: !1530, line: 44, column: 9)
!1585 = !DILocation(line: 51, column: 38, scope: !1583, inlinedAt: !1549)
!1586 = !DILocation(line: 51, column: 36, scope: !1583, inlinedAt: !1549)
!1587 = !DILocation(line: 58, column: 34, scope: !1529, inlinedAt: !1549)
!1588 = !DILocalVariable(name: "ip6h", arg: 1, scope: !1589, file: !1590, line: 36, type: !540)
!1589 = distinct !DISubprogram(name: "create_v6_hdr", scope: !1590, file: !1590, line: 36, type: !1591, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1593)
!1590 = !DIFile(filename: "./encap_helpers.h", directory: "/home/sayandes/github/hook-point-transformer/src/katran-test/extraction")
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !540, !55, !85, !85, !46, !55}
!1593 = !{!1588, !1594, !1595, !1596, !1597, !1598}
!1594 = !DILocalVariable(name: "tc", arg: 2, scope: !1589, file: !1590, line: 36, type: !55)
!1595 = !DILocalVariable(name: "saddr", arg: 3, scope: !1589, file: !1590, line: 36, type: !85)
!1596 = !DILocalVariable(name: "daddr", arg: 4, scope: !1589, file: !1590, line: 36, type: !85)
!1597 = !DILocalVariable(name: "payload_len", arg: 5, scope: !1589, file: !1590, line: 36, type: !46)
!1598 = !DILocalVariable(name: "proto", arg: 6, scope: !1589, file: !1590, line: 36, type: !55)
!1599 = !DILocation(line: 0, scope: !1589, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 58, column: 5, scope: !1529, inlinedAt: !1549)
!1601 = !DILocation(line: 38, column: 5, scope: !1589, inlinedAt: !1600)
!1602 = !DILocation(line: 40, column: 34, scope: !1589, inlinedAt: !1600)
!1603 = !DILocation(line: 40, column: 20, scope: !1589, inlinedAt: !1600)
!1604 = !DILocation(line: 41, column: 37, scope: !1589, inlinedAt: !1600)
!1605 = !DILocation(line: 41, column: 23, scope: !1589, inlinedAt: !1600)
!1606 = !DILocation(line: 45, column: 11, scope: !1589, inlinedAt: !1600)
!1607 = !DILocation(line: 45, column: 19, scope: !1589, inlinedAt: !1600)
!1608 = !{!1609, !738, i64 6}
!1609 = !{!"ipv6hdr", !738, i64 0, !738, i64 0, !738, i64 1, !773, i64 4, !738, i64 6, !738, i64 7, !1610, i64 8, !1610, i64 24}
!1610 = !{!"in6_addr", !738, i64 0}
!1611 = !DILocation(line: 46, column: 11, scope: !1589, inlinedAt: !1600)
!1612 = !DILocation(line: 46, column: 23, scope: !1589, inlinedAt: !1600)
!1613 = !{!1609, !773, i64 4}
!1614 = !DILocation(line: 47, column: 11, scope: !1589, inlinedAt: !1600)
!1615 = !DILocation(line: 47, column: 21, scope: !1589, inlinedAt: !1600)
!1616 = !{!1609, !738, i64 7}
!1617 = !DILocation(line: 48, column: 5, scope: !1589, inlinedAt: !1600)
!1618 = !DILocation(line: 49, column: 5, scope: !1589, inlinedAt: !1600)
!1619 = !DILocation(line: 700, column: 13, scope: !1551, inlinedAt: !664)
!1620 = !DILocalVariable(name: "xdp", arg: 1, scope: !1621, file: !1530, line: 62, type: !346)
!1621 = distinct !DISubprogram(name: "encap_v4", scope: !1530, file: !1530, line: 62, type: !1622, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1624)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!454, !346, !87, !456, !231, !58}
!1624 = !{!1620, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634}
!1625 = !DILocalVariable(name: "cval", arg: 2, scope: !1621, file: !1530, line: 62, type: !87)
!1626 = !DILocalVariable(name: "pckt", arg: 3, scope: !1621, file: !1530, line: 62, type: !456)
!1627 = !DILocalVariable(name: "dst", arg: 4, scope: !1621, file: !1530, line: 62, type: !231)
!1628 = !DILocalVariable(name: "pkt_bytes", arg: 5, scope: !1621, file: !1530, line: 62, type: !58)
!1629 = !DILocalVariable(name: "data", scope: !1621, file: !1530, line: 63, type: !44)
!1630 = !DILocalVariable(name: "data_end", scope: !1621, file: !1530, line: 64, type: !44)
!1631 = !DILocalVariable(name: "iph", scope: !1621, file: !1530, line: 65, type: !643)
!1632 = !DILocalVariable(name: "new_eth", scope: !1621, file: !1530, line: 66, type: !440)
!1633 = !DILocalVariable(name: "old_eth", scope: !1621, file: !1530, line: 67, type: !440)
!1634 = !DILocalVariable(name: "ip_suffix", scope: !1621, file: !1530, line: 68, type: !58)
!1635 = !DILocation(line: 0, scope: !1621, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 705, column: 14, scope: !1637, inlinedAt: !664)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 705, column: 13)
!1638 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 704, column: 10)
!1639 = !DILocation(line: 68, column: 23, scope: !1621, inlinedAt: !1636)
!1640 = !DILocation(line: 69, column: 15, scope: !1621, inlinedAt: !1636)
!1641 = !DILocation(line: 70, column: 29, scope: !1621, inlinedAt: !1636)
!1642 = !DILocation(line: 71, column: 30, scope: !1643, inlinedAt: !1636)
!1643 = distinct !DILexicalBlock(scope: !1621, file: !1530, line: 71, column: 9)
!1644 = !DILocation(line: 71, column: 9, scope: !1643, inlinedAt: !1636)
!1645 = !DILocation(line: 71, column: 9, scope: !1621, inlinedAt: !1636)
!1646 = !DILocation(line: 74, column: 33, scope: !1621, inlinedAt: !1636)
!1647 = !DILocation(line: 74, column: 21, scope: !1621, inlinedAt: !1636)
!1648 = !DILocation(line: 74, column: 12, scope: !1621, inlinedAt: !1636)
!1649 = !DILocation(line: 75, column: 37, scope: !1621, inlinedAt: !1636)
!1650 = !DILocation(line: 75, column: 25, scope: !1621, inlinedAt: !1636)
!1651 = !DILocation(line: 76, column: 15, scope: !1621, inlinedAt: !1636)
!1652 = !DILocation(line: 77, column: 16, scope: !1621, inlinedAt: !1636)
!1653 = !DILocation(line: 78, column: 20, scope: !1621, inlinedAt: !1636)
!1654 = !DILocation(line: 79, column: 17, scope: !1655, inlinedAt: !1636)
!1655 = distinct !DILexicalBlock(scope: !1621, file: !1530, line: 79, column: 9)
!1656 = !DILocation(line: 79, column: 23, scope: !1655, inlinedAt: !1636)
!1657 = !DILocation(line: 79, column: 21, scope: !1655, inlinedAt: !1636)
!1658 = !DILocation(line: 79, column: 32, scope: !1655, inlinedAt: !1636)
!1659 = !DILocation(line: 79, column: 43, scope: !1655, inlinedAt: !1636)
!1660 = !DILocation(line: 79, column: 47, scope: !1655, inlinedAt: !1636)
!1661 = !DILocation(line: 79, column: 58, scope: !1655, inlinedAt: !1636)
!1662 = !DILocation(line: 79, column: 65, scope: !1655, inlinedAt: !1636)
!1663 = !DILocation(line: 79, column: 71, scope: !1655, inlinedAt: !1636)
!1664 = !DILocation(line: 79, column: 69, scope: !1655, inlinedAt: !1636)
!1665 = !DILocation(line: 79, column: 9, scope: !1621, inlinedAt: !1636)
!1666 = !DILocation(line: 82, column: 5, scope: !1621, inlinedAt: !1636)
!1667 = !DILocation(line: 83, column: 5, scope: !1621, inlinedAt: !1636)
!1668 = !DILocation(line: 84, column: 14, scope: !1621, inlinedAt: !1636)
!1669 = !DILocation(line: 84, column: 22, scope: !1621, inlinedAt: !1636)
!1670 = !DILocation(line: 85, column: 33, scope: !1621, inlinedAt: !1636)
!1671 = !DILocation(line: 85, column: 51, scope: !1621, inlinedAt: !1636)
!1672 = !DILocation(line: 85, column: 64, scope: !1621, inlinedAt: !1636)
!1673 = !DILocation(line: 85, column: 90, scope: !1621, inlinedAt: !1636)
!1674 = !DILocalVariable(name: "iph", arg: 1, scope: !1675, file: !1590, line: 16, type: !643)
!1675 = distinct !DISubprogram(name: "create_v4_hdr", scope: !1590, file: !1590, line: 16, type: !1676, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1678)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{null, !643, !55, !58, !58, !46, !55}
!1678 = !{!1674, !1679, !1680, !1681, !1682, !1683, !1684}
!1679 = !DILocalVariable(name: "tos", arg: 2, scope: !1675, file: !1590, line: 16, type: !55)
!1680 = !DILocalVariable(name: "saddr", arg: 3, scope: !1675, file: !1590, line: 16, type: !58)
!1681 = !DILocalVariable(name: "daddr", arg: 4, scope: !1675, file: !1590, line: 16, type: !58)
!1682 = !DILocalVariable(name: "pkt_bytes", arg: 5, scope: !1675, file: !1590, line: 16, type: !46)
!1683 = !DILocalVariable(name: "proto", arg: 6, scope: !1675, file: !1590, line: 16, type: !55)
!1684 = !DILocalVariable(name: "csum", scope: !1675, file: !1590, line: 17, type: !95)
!1685 = !DILocation(line: 0, scope: !1675, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 85, column: 5, scope: !1621, inlinedAt: !1636)
!1687 = !DILocation(line: 19, column: 14, scope: !1675, inlinedAt: !1686)
!1688 = !DILocation(line: 20, column: 10, scope: !1675, inlinedAt: !1686)
!1689 = !DILocation(line: 20, column: 19, scope: !1675, inlinedAt: !1686)
!1690 = !DILocation(line: 21, column: 10, scope: !1675, inlinedAt: !1686)
!1691 = !DILocation(line: 21, column: 19, scope: !1675, inlinedAt: !1686)
!1692 = !DILocation(line: 22, column: 10, scope: !1675, inlinedAt: !1686)
!1693 = !DILocation(line: 24, column: 10, scope: !1675, inlinedAt: !1686)
!1694 = !DILocation(line: 24, column: 14, scope: !1675, inlinedAt: !1686)
!1695 = !DILocation(line: 28, column: 20, scope: !1675, inlinedAt: !1686)
!1696 = !DILocation(line: 28, column: 10, scope: !1675, inlinedAt: !1686)
!1697 = !DILocation(line: 28, column: 18, scope: !1675, inlinedAt: !1686)
!1698 = !DILocation(line: 29, column: 10, scope: !1675, inlinedAt: !1686)
!1699 = !DILocation(line: 29, column: 16, scope: !1675, inlinedAt: !1686)
!1700 = !DILocation(line: 30, column: 10, scope: !1675, inlinedAt: !1686)
!1701 = !DILocation(line: 30, column: 16, scope: !1675, inlinedAt: !1686)
!1702 = !DILocation(line: 31, column: 10, scope: !1675, inlinedAt: !1686)
!1703 = !DILocation(line: 31, column: 14, scope: !1675, inlinedAt: !1686)
!1704 = !DILocation(line: 0, scope: !818, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 32, column: 5, scope: !1675, inlinedAt: !1686)
!1706 = !DILocation(line: 35, column: 27, scope: !818, inlinedAt: !1705)
!1707 = !DILocation(line: 0, scope: !827, inlinedAt: !1705)
!1708 = !DILocation(line: 38, column: 18, scope: !833, inlinedAt: !1705)
!1709 = !DILocation(line: 38, column: 31, scope: !833, inlinedAt: !1705)
!1710 = !DILocation(line: 38, column: 15, scope: !833, inlinedAt: !1705)
!1711 = !DILocation(line: 0, scope: !839, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 40, column: 13, scope: !818, inlinedAt: !1705)
!1713 = !DILocation(line: 19, column: 18, scope: !847, inlinedAt: !1712)
!1714 = !DILocation(line: 19, column: 13, scope: !848, inlinedAt: !1712)
!1715 = !DILocation(line: 33, column: 18, scope: !1675, inlinedAt: !1686)
!1716 = !DILocation(line: 33, column: 16, scope: !1675, inlinedAt: !1686)
!1717 = !DILocation(line: 705, column: 13, scope: !1638, inlinedAt: !664)
!1718 = !DILocation(line: 710, column: 1, scope: !485, inlinedAt: !664)
!1719 = !DILocation(line: 725, column: 9, scope: !665)
!1720 = !DILocation(line: 0, scope: !485, inlinedAt: !527)
!1721 = !DILocation(line: 475, column: 5, scope: !485, inlinedAt: !527)
!1722 = !DILocation(line: 476, column: 5, scope: !485, inlinedAt: !527)
!1723 = !DILocation(line: 483, column: 5, scope: !485, inlinedAt: !527)
!1724 = !DILocation(line: 484, column: 5, scope: !485, inlinedAt: !527)
!1725 = !DILocation(line: 484, column: 11, scope: !485, inlinedAt: !527)
!1726 = !DILocation(line: 0, scope: !628, inlinedAt: !659)
!1727 = !DILocation(line: 98, column: 18, scope: !1728, inlinedAt: !659)
!1728 = distinct !DILexicalBlock(scope: !626, file: !3, line: 98, column: 13)
!1729 = !DILocation(line: 98, column: 22, scope: !1728, inlinedAt: !659)
!1730 = !DILocation(line: 98, column: 13, scope: !626, inlinedAt: !659)
!1731 = !DILocation(line: 102, column: 27, scope: !626, inlinedAt: !659)
!1732 = !DILocation(line: 103, column: 20, scope: !626, inlinedAt: !659)
!1733 = !DILocation(line: 103, column: 26, scope: !626, inlinedAt: !659)
!1734 = !DILocation(line: 104, column: 28, scope: !626, inlinedAt: !659)
!1735 = !DILocation(line: 104, column: 37, scope: !626, inlinedAt: !659)
!1736 = !DILocation(line: 104, column: 15, scope: !626, inlinedAt: !659)
!1737 = !DILocation(line: 104, column: 19, scope: !626, inlinedAt: !659)
!1738 = !DILocation(line: 105, column: 41, scope: !626, inlinedAt: !659)
!1739 = !DILocation(line: 105, column: 35, scope: !626, inlinedAt: !659)
!1740 = !DILocation(line: 105, column: 53, scope: !626, inlinedAt: !659)
!1741 = !DILocation(line: 105, column: 31, scope: !626, inlinedAt: !659)
!1742 = !DILocation(line: 105, column: 19, scope: !626, inlinedAt: !659)
!1743 = !DILocation(line: 106, column: 22, scope: !626, inlinedAt: !659)
!1744 = !DILocation(line: 108, column: 13, scope: !626, inlinedAt: !659)
!1745 = !DILocation(line: 0, scope: !612, inlinedAt: !622)
!1746 = !DILocation(line: 189, column: 18, scope: !1747, inlinedAt: !622)
!1747 = distinct !DILexicalBlock(scope: !612, file: !533, line: 189, column: 9)
!1748 = !DILocation(line: 189, column: 22, scope: !1747, inlinedAt: !622)
!1749 = !DILocation(line: 189, column: 9, scope: !612, inlinedAt: !622)
!1750 = !DILocation(line: 192, column: 19, scope: !611, inlinedAt: !622)
!1751 = !{!1752, !738, i64 0}
!1752 = !{!"icmp6hdr", !738, i64 0, !738, i64 1, !773, i64 2, !738, i64 4}
!1753 = !DILocation(line: 192, column: 9, scope: !612, inlinedAt: !622)
!1754 = !DILocation(line: 0, scope: !532, inlinedAt: !609)
!1755 = !DILocation(line: 64, column: 5, scope: !532, inlinedAt: !609)
!1756 = !DILocation(line: 73, column: 26, scope: !532, inlinedAt: !609)
!1757 = !DILocation(line: 74, column: 15, scope: !532, inlinedAt: !609)
!1758 = !DILocation(line: 74, column: 27, scope: !532, inlinedAt: !609)
!1759 = !{!1752, !773, i64 2}
!1760 = !DILocation(line: 75, column: 11, scope: !532, inlinedAt: !609)
!1761 = !DILocation(line: 75, column: 21, scope: !532, inlinedAt: !609)
!1762 = !DILocation(line: 76, column: 31, scope: !532, inlinedAt: !609)
!1763 = !DILocation(line: 76, column: 5, scope: !532, inlinedAt: !609)
!1764 = !DILocation(line: 77, column: 46, scope: !532, inlinedAt: !609)
!1765 = !DILocation(line: 77, column: 5, scope: !532, inlinedAt: !609)
!1766 = !DILocation(line: 78, column: 5, scope: !532, inlinedAt: !609)
!1767 = !DILocation(line: 0, scope: !667, inlinedAt: !721)
!1768 = !DILocation(line: 20, column: 5, scope: !667, inlinedAt: !721)
!1769 = !DILocation(line: 22, column: 29, scope: !667, inlinedAt: !721)
!1770 = !DILocation(line: 22, column: 5, scope: !667, inlinedAt: !721)
!1771 = !DILocation(line: 23, column: 5, scope: !667, inlinedAt: !721)
!1772 = !DILocation(line: 24, column: 5, scope: !667, inlinedAt: !721)
!1773 = !DILocation(line: 26, column: 1, scope: !667, inlinedAt: !721)
!1774 = !DILocation(line: 80, column: 1, scope: !532, inlinedAt: !609)
!1775 = !DILocation(line: 193, column: 9, scope: !610, inlinedAt: !622)
!1776 = !DILocation(line: 200, column: 14, scope: !1777, inlinedAt: !622)
!1777 = distinct !DILexicalBlock(scope: !612, file: !533, line: 200, column: 9)
!1778 = !DILocation(line: 200, column: 18, scope: !1777, inlinedAt: !622)
!1779 = !DILocation(line: 200, column: 9, scope: !612, inlinedAt: !622)
!1780 = !DILocation(line: 203, column: 30, scope: !612, inlinedAt: !622)
!1781 = !DILocation(line: 203, column: 22, scope: !612, inlinedAt: !622)
!1782 = !DILocation(line: 204, column: 11, scope: !612, inlinedAt: !622)
!1783 = !DILocation(line: 204, column: 17, scope: !612, inlinedAt: !622)
!1784 = !DILocation(line: 113, column: 17, scope: !623, inlinedAt: !659)
!1785 = !DILocation(line: 490, column: 26, scope: !485, inlinedAt: !527)
!1786 = !DILocation(line: 0, scope: !624, inlinedAt: !659)
!1787 = !DILocation(line: 509, column: 9, scope: !485, inlinedAt: !527)
!1788 = !DILocation(line: 0, scope: !891, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 510, column: 14, scope: !924, inlinedAt: !527)
!1790 = !DILocation(line: 68, column: 29, scope: !891, inlinedAt: !1789)
!1791 = !DILocation(line: 68, column: 45, scope: !891, inlinedAt: !1789)
!1792 = !DILocation(line: 0, scope: !930, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 69, column: 17, scope: !891, inlinedAt: !1789)
!1794 = !DILocation(line: 33, column: 9, scope: !930, inlinedAt: !1793)
!1795 = !DILocation(line: 71, column: 16, scope: !891, inlinedAt: !1789)
!1796 = !DILocation(line: 72, column: 13, scope: !941, inlinedAt: !1789)
!1797 = !DILocation(line: 72, column: 17, scope: !941, inlinedAt: !1789)
!1798 = !DILocation(line: 72, column: 9, scope: !891, inlinedAt: !1789)
!1799 = !DILocation(line: 75, column: 14, scope: !945, inlinedAt: !1789)
!1800 = !DILocation(line: 75, column: 9, scope: !945, inlinedAt: !1789)
!1801 = !DILocation(line: 75, column: 9, scope: !891, inlinedAt: !1789)
!1802 = !DILocation(line: 76, column: 21, scope: !949, inlinedAt: !1789)
!1803 = !DILocation(line: 77, column: 5, scope: !949, inlinedAt: !1789)
!1804 = !DILocation(line: 78, column: 9, scope: !891, inlinedAt: !1789)
!1805 = !DILocation(line: 79, column: 37, scope: !953, inlinedAt: !1789)
!1806 = !DILocation(line: 79, column: 20, scope: !953, inlinedAt: !1789)
!1807 = !DILocation(line: 79, column: 9, scope: !953, inlinedAt: !1789)
!1808 = !DILocation(line: 79, column: 30, scope: !953, inlinedAt: !1789)
!1809 = !DILocation(line: 80, column: 37, scope: !953, inlinedAt: !1789)
!1810 = !DILocation(line: 81, column: 5, scope: !953, inlinedAt: !1789)
!1811 = !DILocation(line: 83, column: 37, scope: !963, inlinedAt: !1789)
!1812 = !DILocation(line: 83, column: 20, scope: !963, inlinedAt: !1789)
!1813 = !DILocation(line: 83, column: 9, scope: !963, inlinedAt: !1789)
!1814 = !DILocation(line: 83, column: 30, scope: !963, inlinedAt: !1789)
!1815 = !DILocation(line: 0, scope: !969, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 515, column: 14, scope: !987, inlinedAt: !527)
!1817 = !DILocation(line: 49, column: 45, scope: !969, inlinedAt: !1816)
!1818 = !DILocation(line: 0, scope: !930, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 50, column: 17, scope: !969, inlinedAt: !1816)
!1820 = !DILocation(line: 33, column: 9, scope: !930, inlinedAt: !1819)
!1821 = !DILocation(line: 52, column: 16, scope: !969, inlinedAt: !1816)
!1822 = !DILocation(line: 53, column: 13, scope: !996, inlinedAt: !1816)
!1823 = !DILocation(line: 53, column: 17, scope: !996, inlinedAt: !1816)
!1824 = !DILocation(line: 53, column: 9, scope: !969, inlinedAt: !1816)
!1825 = !DILocation(line: 56, column: 9, scope: !969, inlinedAt: !1816)
!1826 = !DILocation(line: 57, column: 37, scope: !1001, inlinedAt: !1816)
!1827 = !DILocation(line: 57, column: 20, scope: !1001, inlinedAt: !1816)
!1828 = !DILocation(line: 57, column: 9, scope: !1001, inlinedAt: !1816)
!1829 = !DILocation(line: 57, column: 30, scope: !1001, inlinedAt: !1816)
!1830 = !DILocation(line: 58, column: 37, scope: !1001, inlinedAt: !1816)
!1831 = !DILocation(line: 59, column: 5, scope: !1001, inlinedAt: !1816)
!1832 = !DILocation(line: 61, column: 37, scope: !1011, inlinedAt: !1816)
!1833 = !DILocation(line: 61, column: 20, scope: !1011, inlinedAt: !1816)
!1834 = !DILocation(line: 61, column: 9, scope: !1011, inlinedAt: !1816)
!1835 = !DILocation(line: 61, column: 30, scope: !1011, inlinedAt: !1816)
!1836 = !DILocation(line: 0, scope: !926, inlinedAt: !527)
!1837 = !DILocation(line: 0, scope: !1019, inlinedAt: !527)
!1838 = !DILocation(line: 533, column: 9, scope: !1839, inlinedAt: !527)
!1839 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 532, column: 18)
!1840 = !DILocation(line: 538, column: 26, scope: !485, inlinedAt: !527)
!1841 = !DILocation(line: 538, column: 16, scope: !485, inlinedAt: !527)
!1842 = !DILocation(line: 538, column: 9, scope: !485, inlinedAt: !527)
!1843 = !DILocation(line: 538, column: 14, scope: !485, inlinedAt: !527)
!1844 = !DILocation(line: 539, column: 9, scope: !485, inlinedAt: !527)
!1845 = !DILocation(line: 539, column: 15, scope: !485, inlinedAt: !527)
!1846 = !DILocation(line: 540, column: 16, scope: !485, inlinedAt: !527)
!1847 = !DILocation(line: 541, column: 10, scope: !1032, inlinedAt: !527)
!1848 = !DILocation(line: 541, column: 9, scope: !485, inlinedAt: !527)
!1849 = !DILocation(line: 542, column: 18, scope: !1035, inlinedAt: !527)
!1850 = !DILocation(line: 543, column: 20, scope: !1035, inlinedAt: !527)
!1851 = !DILocation(line: 544, column: 14, scope: !1038, inlinedAt: !527)
!1852 = !DILocation(line: 544, column: 13, scope: !1035, inlinedAt: !527)
!1853 = !DILocation(line: 547, column: 25, scope: !1041, inlinedAt: !527)
!1854 = !DILocation(line: 547, column: 31, scope: !1041, inlinedAt: !527)
!1855 = !DILocation(line: 547, column: 13, scope: !1035, inlinedAt: !527)
!1856 = !DILocation(line: 548, column: 33, scope: !1047, inlinedAt: !527)
!1857 = !DILocation(line: 549, column: 9, scope: !1047, inlinedAt: !527)
!1858 = !DILocation(line: 551, column: 18, scope: !1050, inlinedAt: !527)
!1859 = !DILocation(line: 551, column: 25, scope: !1050, inlinedAt: !527)
!1860 = !DILocation(line: 551, column: 9, scope: !485, inlinedAt: !527)
!1861 = !DILocation(line: 570, column: 5, scope: !485, inlinedAt: !527)
!1862 = !DILocation(line: 570, column: 11, scope: !485, inlinedAt: !527)
!1863 = !DILocation(line: 571, column: 18, scope: !485, inlinedAt: !527)
!1864 = !DILocation(line: 572, column: 10, scope: !1057, inlinedAt: !527)
!1865 = !DILocation(line: 572, column: 9, scope: !485, inlinedAt: !527)
!1866 = !DILocation(line: 575, column: 17, scope: !485, inlinedAt: !527)
!1867 = !DILocation(line: 575, column: 20, scope: !485, inlinedAt: !527)
!1868 = !DILocation(line: 576, column: 20, scope: !510, inlinedAt: !527)
!1869 = !DILocation(line: 576, column: 26, scope: !510, inlinedAt: !527)
!1870 = !DILocation(line: 576, column: 9, scope: !485, inlinedAt: !527)
!1871 = !DILocation(line: 577, column: 9, scope: !509, inlinedAt: !527)
!1872 = !DILocation(line: 0, scope: !509, inlinedAt: !527)
!1873 = !DILocation(line: 577, column: 15, scope: !509, inlinedAt: !527)
!1874 = !DILocation(line: 578, column: 39, scope: !509, inlinedAt: !527)
!1875 = !DILocation(line: 579, column: 14, scope: !1071, inlinedAt: !527)
!1876 = !DILocation(line: 579, column: 13, scope: !509, inlinedAt: !527)
!1877 = !DILocation(line: 0, scope: !1074, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 583, column: 22, scope: !509, inlinedAt: !527)
!1879 = !DILocation(line: 205, column: 27, scope: !1074, inlinedAt: !1878)
!1880 = !DILocation(line: 205, column: 33, scope: !1074, inlinedAt: !1878)
!1881 = !DILocation(line: 205, column: 20, scope: !1074, inlinedAt: !1878)
!1882 = !DILocation(line: 0, scope: !930, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 206, column: 17, scope: !1074, inlinedAt: !1878)
!1884 = !DILocation(line: 33, column: 9, scope: !930, inlinedAt: !1883)
!1885 = !DILocation(line: 207, column: 15, scope: !1103, inlinedAt: !1878)
!1886 = !DILocation(line: 207, column: 21, scope: !1103, inlinedAt: !1878)
!1887 = !DILocation(line: 207, column: 46, scope: !1103, inlinedAt: !1878)
!1888 = !DILocation(line: 207, column: 63, scope: !1103, inlinedAt: !1878)
!1889 = !DILocation(line: 207, column: 9, scope: !1074, inlinedAt: !1878)
!1890 = !DILocation(line: 213, column: 10, scope: !1088, inlinedAt: !1878)
!1891 = !DILocation(line: 213, column: 20, scope: !1088, inlinedAt: !1878)
!1892 = !DILocation(line: 213, column: 40, scope: !1088, inlinedAt: !1878)
!1893 = !DILocation(line: 213, column: 9, scope: !1074, inlinedAt: !1878)
!1894 = !DILocation(line: 214, column: 23, scope: !1113, inlinedAt: !1878)
!1895 = !DILocation(line: 214, column: 58, scope: !1113, inlinedAt: !1878)
!1896 = !DILocation(line: 217, column: 24, scope: !1116, inlinedAt: !1878)
!1897 = !DILocation(line: 217, column: 49, scope: !1116, inlinedAt: !1878)
!1898 = !DILocation(line: 214, column: 13, scope: !1087, inlinedAt: !1878)
!1899 = !DILocation(line: 0, scope: !1087, inlinedAt: !1878)
!1900 = !DILocation(line: 221, column: 26, scope: !1121, inlinedAt: !1878)
!1901 = !DILocation(line: 221, column: 39, scope: !1121, inlinedAt: !1878)
!1902 = !DILocation(line: 221, column: 13, scope: !1087, inlinedAt: !1878)
!1903 = !DILocation(line: 227, column: 23, scope: !1127, inlinedAt: !1878)
!1904 = !DILocation(line: 227, column: 59, scope: !1127, inlinedAt: !1878)
!1905 = !DILocation(line: 227, column: 13, scope: !1128, inlinedAt: !1878)
!1906 = !DILocation(line: 235, column: 27, scope: !1074, inlinedAt: !1878)
!1907 = !DILocation(line: 235, column: 37, scope: !1074, inlinedAt: !1878)
!1908 = !DILocation(line: 236, column: 9, scope: !1074, inlinedAt: !1878)
!1909 = !DILocation(line: 237, column: 28, scope: !1135, inlinedAt: !1878)
!1910 = !DILocation(line: 237, column: 36, scope: !1135, inlinedAt: !1878)
!1911 = !DILocation(line: 237, column: 46, scope: !1135, inlinedAt: !1878)
!1912 = !DILocation(line: 237, column: 56, scope: !1135, inlinedAt: !1878)
!1913 = !DILocation(line: 237, column: 43, scope: !1135, inlinedAt: !1878)
!1914 = !DILocation(line: 237, column: 65, scope: !1135, inlinedAt: !1878)
!1915 = !DILocation(line: 237, column: 75, scope: !1135, inlinedAt: !1878)
!1916 = !DILocation(line: 237, column: 9, scope: !1135, inlinedAt: !1878)
!1917 = !DILocation(line: 240, column: 22, scope: !1091, inlinedAt: !1878)
!1918 = !DILocation(line: 240, column: 32, scope: !1091, inlinedAt: !1878)
!1919 = !DILocation(line: 240, column: 42, scope: !1091, inlinedAt: !1878)
!1920 = !DILocation(line: 240, column: 52, scope: !1091, inlinedAt: !1878)
!1921 = !DILocation(line: 240, column: 39, scope: !1091, inlinedAt: !1878)
!1922 = !DILocation(line: 240, column: 61, scope: !1091, inlinedAt: !1878)
!1923 = !DILocation(line: 0, scope: !1091, inlinedAt: !1878)
!1924 = !DILocation(line: 0, scope: !1093, inlinedAt: !1878)
!1925 = !DILocation(line: 584, column: 24, scope: !515, inlinedAt: !527)
!1926 = !DILocation(line: 584, column: 13, scope: !509, inlinedAt: !527)
!1927 = !DILocation(line: 0, scope: !1154, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 585, column: 13, scope: !514, inlinedAt: !527)
!1929 = !DILocation(line: 268, column: 5, scope: !1154, inlinedAt: !1928)
!1930 = !DILocation(line: 268, column: 11, scope: !1154, inlinedAt: !1928)
!1931 = !DILocation(line: 269, column: 37, scope: !1154, inlinedAt: !1928)
!1932 = !DILocation(line: 270, column: 10, scope: !1166, inlinedAt: !1928)
!1933 = !DILocation(line: 270, column: 9, scope: !1154, inlinedAt: !1928)
!1934 = !DILocation(line: 273, column: 17, scope: !1169, inlinedAt: !1928)
!1935 = !DILocation(line: 273, column: 9, scope: !1154, inlinedAt: !1928)
!1936 = !DILocation(line: 0, scope: !1169, inlinedAt: !1928)
!1937 = !DILocation(line: 279, column: 1, scope: !1154, inlinedAt: !1928)
!1938 = !DILocation(line: 586, column: 13, scope: !514, inlinedAt: !527)
!1939 = !DILocation(line: 0, scope: !514, inlinedAt: !527)
!1940 = !DILocation(line: 586, column: 19, scope: !514, inlinedAt: !527)
!1941 = !DILocation(line: 587, column: 31, scope: !514, inlinedAt: !527)
!1942 = !DILocation(line: 588, column: 17, scope: !1179, inlinedAt: !527)
!1943 = !DILocation(line: 588, column: 17, scope: !514, inlinedAt: !527)
!1944 = !DILocation(line: 589, column: 23, scope: !1182, inlinedAt: !527)
!1945 = !DILocation(line: 589, column: 21, scope: !1182, inlinedAt: !527)
!1946 = !DILocation(line: 590, column: 25, scope: !1185, inlinedAt: !527)
!1947 = !DILocation(line: 590, column: 21, scope: !1182, inlinedAt: !527)
!1948 = !DILocation(line: 282, column: 5, scope: !1188, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 591, column: 21, scope: !1195, inlinedAt: !527)
!1950 = !DILocation(line: 0, scope: !1188, inlinedAt: !1949)
!1951 = !DILocation(line: 282, column: 11, scope: !1188, inlinedAt: !1949)
!1952 = !DILocation(line: 283, column: 34, scope: !1188, inlinedAt: !1949)
!1953 = !DILocation(line: 284, column: 10, scope: !1200, inlinedAt: !1949)
!1954 = !DILocation(line: 284, column: 9, scope: !1188, inlinedAt: !1949)
!1955 = !DILocation(line: 287, column: 16, scope: !1188, inlinedAt: !1949)
!1956 = !DILocation(line: 287, column: 19, scope: !1188, inlinedAt: !1949)
!1957 = !DILocation(line: 288, column: 1, scope: !1188, inlinedAt: !1949)
!1958 = !DILocation(line: 593, column: 17, scope: !1195, inlinedAt: !527)
!1959 = !DILocation(line: 595, column: 26, scope: !1208, inlinedAt: !527)
!1960 = !DILocation(line: 595, column: 37, scope: !1208, inlinedAt: !527)
!1961 = !DILocation(line: 596, column: 27, scope: !1208, inlinedAt: !527)
!1962 = !DILocation(line: 597, column: 26, scope: !1213, inlinedAt: !527)
!1963 = !DILocation(line: 597, column: 25, scope: !1208, inlinedAt: !527)
!1964 = !DILocation(line: 291, column: 5, scope: !1216, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 598, column: 25, scope: !1221, inlinedAt: !527)
!1966 = !DILocation(line: 0, scope: !1216, inlinedAt: !1965)
!1967 = !DILocation(line: 291, column: 11, scope: !1216, inlinedAt: !1965)
!1968 = !DILocation(line: 292, column: 34, scope: !1216, inlinedAt: !1965)
!1969 = !DILocation(line: 293, column: 10, scope: !1226, inlinedAt: !1965)
!1970 = !DILocation(line: 293, column: 9, scope: !1216, inlinedAt: !1965)
!1971 = !DILocation(line: 296, column: 16, scope: !1216, inlinedAt: !1965)
!1972 = !DILocation(line: 296, column: 19, scope: !1216, inlinedAt: !1965)
!1973 = !DILocation(line: 297, column: 1, scope: !1216, inlinedAt: !1965)
!1974 = !DILocation(line: 608, column: 9, scope: !515, inlinedAt: !527)
!1975 = !DILocation(line: 610, column: 25, scope: !1233, inlinedAt: !527)
!1976 = !DILocation(line: 610, column: 28, scope: !1233, inlinedAt: !527)
!1977 = !DILocation(line: 612, column: 5, scope: !510, inlinedAt: !527)
!1978 = !DILocation(line: 614, column: 9, scope: !485, inlinedAt: !527)
!1979 = !DILocation(line: 0, scope: !1179, inlinedAt: !527)
!1980 = !DILocation(line: 602, column: 33, scope: !1208, inlinedAt: !527)
!1981 = !DILocation(line: 602, column: 36, scope: !1208, inlinedAt: !527)
!1982 = !DILocation(line: 613, column: 22, scope: !485, inlinedAt: !527)
!1983 = !DILocation(line: 615, column: 24, scope: !1242, inlinedAt: !527)
!1984 = !DILocation(line: 615, column: 30, scope: !1242, inlinedAt: !527)
!1985 = !DILocation(line: 615, column: 13, scope: !483, inlinedAt: !527)
!1986 = !DILocation(line: 616, column: 33, scope: !1246, inlinedAt: !527)
!1987 = !DILocation(line: 617, column: 9, scope: !1246, inlinedAt: !527)
!1988 = !DILocation(line: 618, column: 9, scope: !483, inlinedAt: !527)
!1989 = !DILocation(line: 618, column: 25, scope: !483, inlinedAt: !527)
!1990 = !DILocation(line: 0, scope: !483, inlinedAt: !527)
!1991 = !DILocation(line: 618, column: 15, scope: !483, inlinedAt: !527)
!1992 = !DILocation(line: 619, column: 25, scope: !483, inlinedAt: !527)
!1993 = !DILocation(line: 620, column: 14, scope: !521, inlinedAt: !527)
!1994 = !DILocation(line: 620, column: 13, scope: !483, inlinedAt: !527)
!1995 = !DILocation(line: 622, column: 13, scope: !520, inlinedAt: !527)
!1996 = !DILocation(line: 0, scope: !520, inlinedAt: !527)
!1997 = !DILocation(line: 622, column: 19, scope: !520, inlinedAt: !527)
!1998 = !DILocation(line: 623, column: 42, scope: !520, inlinedAt: !527)
!1999 = !DILocation(line: 624, column: 18, scope: !1260, inlinedAt: !527)
!2000 = !DILocation(line: 624, column: 17, scope: !520, inlinedAt: !527)
!2001 = !DILocation(line: 627, column: 24, scope: !520, inlinedAt: !527)
!2002 = !DILocation(line: 627, column: 27, scope: !520, inlinedAt: !527)
!2003 = !DILocation(line: 628, column: 9, scope: !521, inlinedAt: !527)
!2004 = !DILocation(line: 644, column: 28, scope: !1266, inlinedAt: !527)
!2005 = !DILocation(line: 644, column: 34, scope: !1266, inlinedAt: !527)
!2006 = !DILocation(line: 644, column: 47, scope: !1266, inlinedAt: !527)
!2007 = !DILocation(line: 644, column: 62, scope: !1266, inlinedAt: !527)
!2008 = !DILocation(line: 644, column: 68, scope: !1266, inlinedAt: !527)
!2009 = !DILocation(line: 644, column: 13, scope: !483, inlinedAt: !527)
!2010 = !DILocation(line: 0, scope: !1273, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 645, column: 13, scope: !1285, inlinedAt: !527)
!2012 = !DILocation(line: 302, column: 5, scope: !1273, inlinedAt: !2011)
!2013 = !DILocation(line: 303, column: 15, scope: !1273, inlinedAt: !2011)
!2014 = !DILocation(line: 304, column: 10, scope: !1289, inlinedAt: !2011)
!2015 = !DILocation(line: 304, column: 9, scope: !1273, inlinedAt: !2011)
!2016 = !DILocation(line: 307, column: 36, scope: !1292, inlinedAt: !2011)
!2017 = !DILocation(line: 307, column: 42, scope: !1292, inlinedAt: !2011)
!2018 = !DILocation(line: 307, column: 9, scope: !1273, inlinedAt: !2011)
!2019 = !DILocation(line: 308, column: 20, scope: !1296, inlinedAt: !2011)
!2020 = !DILocation(line: 309, column: 33, scope: !1298, inlinedAt: !2011)
!2021 = !DILocation(line: 309, column: 22, scope: !1298, inlinedAt: !2011)
!2022 = !DILocation(line: 309, column: 39, scope: !1298, inlinedAt: !2011)
!2023 = !DILocation(line: 309, column: 13, scope: !1296, inlinedAt: !2011)
!2024 = !DILocation(line: 312, column: 24, scope: !1296, inlinedAt: !2011)
!2025 = !DILocation(line: 313, column: 5, scope: !1296, inlinedAt: !2011)
!2026 = !DILocation(line: 318, column: 1, scope: !1273, inlinedAt: !2011)
!2027 = !DILocation(line: 655, column: 13, scope: !483, inlinedAt: !527)
!2028 = !DILocation(line: 314, column: 20, scope: !1273, inlinedAt: !2011)
!2029 = !DILocation(line: 314, column: 9, scope: !1273, inlinedAt: !2011)
!2030 = !DILocation(line: 315, column: 11, scope: !1273, inlinedAt: !2011)
!2031 = !DILocation(line: 315, column: 22, scope: !1273, inlinedAt: !2011)
!2032 = !DILocation(line: 316, column: 13, scope: !1273, inlinedAt: !2011)
!2033 = !DILocation(line: 655, column: 14, scope: !482, inlinedAt: !527)
!2034 = !DILocation(line: 656, column: 27, scope: !525, inlinedAt: !527)
!2035 = !DILocation(line: 656, column: 33, scope: !525, inlinedAt: !527)
!2036 = !DILocation(line: 656, column: 17, scope: !481, inlinedAt: !527)
!2037 = !DILocation(line: 657, column: 17, scope: !524, inlinedAt: !527)
!2038 = !DILocation(line: 0, scope: !524, inlinedAt: !527)
!2039 = !DILocation(line: 657, column: 23, scope: !524, inlinedAt: !527)
!2040 = !DILocation(line: 658, column: 46, scope: !524, inlinedAt: !527)
!2041 = !DILocation(line: 659, column: 22, scope: !1323, inlinedAt: !527)
!2042 = !DILocation(line: 659, column: 21, scope: !524, inlinedAt: !527)
!2043 = !DILocation(line: 662, column: 26, scope: !1326, inlinedAt: !527)
!2044 = !DILocation(line: 662, column: 32, scope: !1326, inlinedAt: !527)
!2045 = !DILocation(line: 662, column: 21, scope: !524, inlinedAt: !527)
!2046 = !DILocation(line: 0, scope: !1326, inlinedAt: !527)
!2047 = !DILocation(line: 669, column: 13, scope: !525, inlinedAt: !527)
!2048 = !DILocation(line: 0, scope: !451, inlinedAt: !479)
!2049 = !DILocation(line: 350, column: 5, scope: !451, inlinedAt: !479)
!2050 = !DILocation(line: 356, column: 5, scope: !451, inlinedAt: !479)
!2051 = !DILocation(line: 321, column: 5, scope: !1335, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 357, column: 19, scope: !451, inlinedAt: !479)
!2053 = !DILocation(line: 0, scope: !1335, inlinedAt: !2052)
!2054 = !DILocation(line: 321, column: 11, scope: !1335, inlinedAt: !2052)
!2055 = !DILocation(line: 322, column: 40, scope: !1335, inlinedAt: !2052)
!2056 = !DILocation(line: 323, column: 10, scope: !1347, inlinedAt: !2052)
!2057 = !DILocation(line: 323, column: 9, scope: !1335, inlinedAt: !2052)
!2058 = !DILocation(line: 326, column: 17, scope: !1335, inlinedAt: !2052)
!2059 = !DILocation(line: 327, column: 39, scope: !1351, inlinedAt: !2052)
!2060 = !DILocation(line: 327, column: 20, scope: !1351, inlinedAt: !2052)
!2061 = !DILocation(line: 327, column: 43, scope: !1351, inlinedAt: !2052)
!2062 = !DILocation(line: 0, scope: !1351, inlinedAt: !2052)
!2063 = !DILocation(line: 327, column: 9, scope: !1335, inlinedAt: !2052)
!2064 = !DILocation(line: 328, column: 29, scope: !1357, inlinedAt: !2052)
!2065 = !DILocation(line: 329, column: 29, scope: !1357, inlinedAt: !2052)
!2066 = !DILocation(line: 330, column: 5, scope: !1357, inlinedAt: !2052)
!2067 = !DILocation(line: 332, column: 29, scope: !1361, inlinedAt: !2052)
!2068 = !DILocation(line: 333, column: 33, scope: !1363, inlinedAt: !2052)
!2069 = !DILocation(line: 333, column: 13, scope: !1361, inlinedAt: !2052)
!2070 = !DILocation(line: 337, column: 5, scope: !1335, inlinedAt: !2052)
!2071 = !DILocation(line: 338, column: 1, scope: !1335, inlinedAt: !2052)
!2072 = !DILocation(line: 0, scope: !476, inlinedAt: !479)
!2073 = !DILocation(line: 391, column: 23, scope: !1369, inlinedAt: !479)
!2074 = !DILocation(line: 391, column: 29, scope: !1369, inlinedAt: !479)
!2075 = !DILocation(line: 391, column: 13, scope: !476, inlinedAt: !479)
!2076 = !DILocation(line: 0, scope: !1373, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 395, column: 16, scope: !476, inlinedAt: !479)
!2078 = !DILocation(line: 0, scope: !2079, inlinedAt: !2095)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !71, line: 53, column: 25)
!2080 = distinct !DISubprogram(name: "jhash", scope: !71, file: !71, line: 49, type: !2081, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2085)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!70, !2083, !70, !70}
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2085 = !{!2086, !2087, !2088, !2089, !2090, !2091, !2092}
!2086 = !DILocalVariable(name: "key", arg: 1, scope: !2080, file: !71, line: 49, type: !2083)
!2087 = !DILocalVariable(name: "length", arg: 2, scope: !2080, file: !71, line: 49, type: !70)
!2088 = !DILocalVariable(name: "initval", arg: 3, scope: !2080, file: !71, line: 49, type: !70)
!2089 = !DILocalVariable(name: "a", scope: !2080, file: !71, line: 50, type: !70)
!2090 = !DILocalVariable(name: "b", scope: !2080, file: !71, line: 50, type: !70)
!2091 = !DILocalVariable(name: "c", scope: !2080, file: !71, line: 50, type: !70)
!2092 = !DILocalVariable(name: "k", scope: !2080, file: !71, line: 51, type: !2093)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!2095 = distinct !DILocation(line: 342, column: 30, scope: !2096, inlinedAt: !2077)
!2096 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 341, column: 23)
!2097 = !DILocation(line: 55, column: 14, scope: !2079, inlinedAt: !2095)
!2098 = !DILocation(line: 56, column: 14, scope: !2079, inlinedAt: !2095)
!2099 = !DILocation(line: 0, scope: !2100, inlinedAt: !2095)
!2100 = distinct !DILexicalBlock(scope: !2080, file: !71, line: 61, column: 21)
!2101 = !DILocation(line: 79, column: 20, scope: !2100, inlinedAt: !2095)
!2102 = !DILocation(line: 81, column: 20, scope: !2100, inlinedAt: !2095)
!2103 = !DILocation(line: 83, column: 20, scope: !2100, inlinedAt: !2095)
!2104 = !DILocation(line: 0, scope: !2080, inlinedAt: !2095)
!2105 = !DILocation(line: 85, column: 14, scope: !2100, inlinedAt: !2095)
!2106 = !DILocation(line: 392, column: 36, scope: !1382, inlinedAt: !479)
!2107 = !DILocation(line: 392, column: 34, scope: !1382, inlinedAt: !479)
!2108 = !DILocation(line: 393, column: 13, scope: !1382, inlinedAt: !479)
!2109 = !DILocation(line: 394, column: 9, scope: !1382, inlinedAt: !479)
!2110 = !DILocation(line: 0, scope: !1374, inlinedAt: !2077)
!2111 = !DILocation(line: 56, column: 11, scope: !2079, inlinedAt: !2095)
!2112 = !DILocation(line: 57, column: 9, scope: !2113, inlinedAt: !2095)
!2113 = distinct !DILexicalBlock(scope: !2079, file: !71, line: 57, column: 9)
!2114 = !DILocation(line: 0, scope: !1412, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 57, column: 9, scope: !2113, inlinedAt: !2095)
!2116 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !2115)
!2117 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !2115)
!2118 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !2115)
!2119 = !DILocation(line: 0, scope: !1412, inlinedAt: !2120)
!2120 = distinct !DILocation(line: 57, column: 9, scope: !2113, inlinedAt: !2095)
!2121 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !2120)
!2122 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !2120)
!2123 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !2120)
!2124 = !DILocation(line: 0, scope: !1412, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 57, column: 9, scope: !2113, inlinedAt: !2095)
!2126 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !2125)
!2127 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !2125)
!2128 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !2125)
!2129 = !DILocation(line: 0, scope: !1412, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 57, column: 9, scope: !2113, inlinedAt: !2095)
!2131 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !2130)
!2132 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !2130)
!2133 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !2130)
!2134 = !DILocation(line: 0, scope: !1412, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 57, column: 9, scope: !2113, inlinedAt: !2095)
!2136 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !2135)
!2137 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !2135)
!2138 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !2135)
!2139 = !DILocation(line: 0, scope: !1412, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 57, column: 9, scope: !2113, inlinedAt: !2095)
!2141 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !2140)
!2142 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !2140)
!2143 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !2140)
!2144 = !DILocation(line: 79, column: 11, scope: !2100, inlinedAt: !2095)
!2145 = !DILocation(line: 81, column: 11, scope: !2100, inlinedAt: !2095)
!2146 = !DILocation(line: 83, column: 11, scope: !2100, inlinedAt: !2095)
!2147 = !DILocation(line: 85, column: 11, scope: !2100, inlinedAt: !2095)
!2148 = !DILocation(line: 86, column: 9, scope: !2149, inlinedAt: !2095)
!2149 = distinct !DILexicalBlock(scope: !2100, file: !71, line: 86, column: 9)
!2150 = !DILocation(line: 0, scope: !1412, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 86, column: 9, scope: !2149, inlinedAt: !2095)
!2152 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !2151)
!2153 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !2151)
!2154 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !2151)
!2155 = !DILocation(line: 0, scope: !1412, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 86, column: 9, scope: !2149, inlinedAt: !2095)
!2157 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !2156)
!2158 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !2156)
!2159 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !2156)
!2160 = !DILocation(line: 0, scope: !1412, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 86, column: 9, scope: !2149, inlinedAt: !2095)
!2162 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !2161)
!2163 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !2161)
!2164 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !2161)
!2165 = !DILocation(line: 0, scope: !1412, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 86, column: 9, scope: !2149, inlinedAt: !2095)
!2167 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !2166)
!2168 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !2166)
!2169 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !2166)
!2170 = !DILocation(line: 0, scope: !1412, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 86, column: 9, scope: !2149, inlinedAt: !2095)
!2172 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !2171)
!2173 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !2171)
!2174 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !2171)
!2175 = !DILocation(line: 0, scope: !1412, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 86, column: 9, scope: !2149, inlinedAt: !2095)
!2177 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !2176)
!2178 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !2176)
!2179 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !2176)
!2180 = !DILocation(line: 0, scope: !1412, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 86, column: 9, scope: !2149, inlinedAt: !2095)
!2182 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !2181)
!2183 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !2181)
!2184 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !2181)
!2185 = !DILocation(line: 342, column: 91, scope: !2096, inlinedAt: !2077)
!2186 = !DILocation(line: 0, scope: !1390, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 342, column: 16, scope: !2096, inlinedAt: !2077)
!2188 = !DILocation(line: 0, scope: !1399, inlinedAt: !2189)
!2189 = distinct !DILocation(line: 102, column: 12, scope: !1390, inlinedAt: !2187)
!2190 = !DILocation(line: 94, column: 7, scope: !1399, inlinedAt: !2189)
!2191 = !DILocation(line: 95, column: 7, scope: !1399, inlinedAt: !2189)
!2192 = !DILocation(line: 97, column: 5, scope: !1410, inlinedAt: !2189)
!2193 = !DILocation(line: 0, scope: !1412, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 97, column: 5, scope: !1410, inlinedAt: !2189)
!2195 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !2194)
!2196 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !2194)
!2197 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !2194)
!2198 = !DILocation(line: 0, scope: !1412, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 97, column: 5, scope: !1410, inlinedAt: !2189)
!2200 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !2199)
!2201 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !2199)
!2202 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !2199)
!2203 = !DILocation(line: 0, scope: !1412, inlinedAt: !2204)
!2204 = distinct !DILocation(line: 97, column: 5, scope: !1410, inlinedAt: !2189)
!2205 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !2204)
!2206 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !2204)
!2207 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !2204)
!2208 = !DILocation(line: 0, scope: !1412, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 97, column: 5, scope: !1410, inlinedAt: !2189)
!2210 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !2209)
!2211 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !2209)
!2212 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !2209)
!2213 = !DILocation(line: 0, scope: !1412, inlinedAt: !2214)
!2214 = distinct !DILocation(line: 97, column: 5, scope: !1410, inlinedAt: !2189)
!2215 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !2214)
!2216 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !2214)
!2217 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !2214)
!2218 = !DILocation(line: 0, scope: !1412, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 97, column: 5, scope: !1410, inlinedAt: !2189)
!2220 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !2219)
!2221 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !2219)
!2222 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !2219)
!2223 = !DILocation(line: 0, scope: !1412, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 97, column: 5, scope: !1410, inlinedAt: !2189)
!2225 = !DILocation(line: 5, column: 18, scope: !1412, inlinedAt: !2224)
!2226 = !DILocation(line: 5, column: 36, scope: !1412, inlinedAt: !2224)
!2227 = !DILocation(line: 5, column: 28, scope: !1412, inlinedAt: !2224)
!2228 = !DILocation(line: 395, column: 53, scope: !476, inlinedAt: !479)
!2229 = !DILocation(line: 396, column: 38, scope: !476, inlinedAt: !479)
!2230 = !DILocation(line: 396, column: 25, scope: !476, inlinedAt: !479)
!2231 = !DILocation(line: 396, column: 47, scope: !476, inlinedAt: !479)
!2232 = !DILocation(line: 396, column: 13, scope: !476, inlinedAt: !479)
!2233 = !DILocation(line: 397, column: 20, scope: !476, inlinedAt: !479)
!2234 = !DILocation(line: 398, column: 14, scope: !1460, inlinedAt: !479)
!2235 = !DILocation(line: 398, column: 13, scope: !476, inlinedAt: !479)
!2236 = !DILocation(line: 401, column: 15, scope: !476, inlinedAt: !479)
!2237 = !DILocation(line: 401, column: 13, scope: !476, inlinedAt: !479)
!2238 = !DILocation(line: 403, column: 11, scope: !451, inlinedAt: !479)
!2239 = !DILocation(line: 403, column: 22, scope: !451, inlinedAt: !479)
!2240 = !DILocation(line: 404, column: 13, scope: !451, inlinedAt: !479)
!2241 = !DILocation(line: 405, column: 10, scope: !1468, inlinedAt: !479)
!2242 = !DILocation(line: 405, column: 9, scope: !451, inlinedAt: !479)
!2243 = !DILocation(line: 408, column: 9, scope: !1471, inlinedAt: !479)
!2244 = !DILocation(line: 408, column: 17, scope: !1471, inlinedAt: !479)
!2245 = !DILocation(line: 408, column: 32, scope: !1471, inlinedAt: !479)
!2246 = !DILocation(line: 408, column: 38, scope: !1471, inlinedAt: !479)
!2247 = !DILocation(line: 408, column: 54, scope: !1471, inlinedAt: !479)
!2248 = !DILocation(line: 409, column: 24, scope: !1477, inlinedAt: !479)
!2249 = !DILocation(line: 409, column: 30, scope: !1477, inlinedAt: !479)
!2250 = !DILocation(line: 409, column: 13, scope: !1478, inlinedAt: !479)
!2251 = !DILocation(line: 410, column: 25, scope: !1482, inlinedAt: !479)
!2252 = !DILocation(line: 410, column: 31, scope: !1482, inlinedAt: !479)
!2253 = !DILocation(line: 411, column: 9, scope: !1482, inlinedAt: !479)
!2254 = !DILocation(line: 412, column: 27, scope: !1478, inlinedAt: !479)
!2255 = !DILocation(line: 412, column: 21, scope: !1478, inlinedAt: !479)
!2256 = !DILocation(line: 412, column: 25, scope: !1478, inlinedAt: !479)
!2257 = !DILocation(line: 413, column: 9, scope: !1478, inlinedAt: !479)
!2258 = !DILocation(line: 414, column: 5, scope: !1478, inlinedAt: !479)
!2259 = !DILocation(line: 416, column: 1, scope: !451, inlinedAt: !479)
!2260 = !DILocation(line: 670, column: 17, scope: !481, inlinedAt: !527)
!2261 = !DILocation(line: 673, column: 25, scope: !481, inlinedAt: !527)
!2262 = !DILocation(line: 673, column: 28, scope: !481, inlinedAt: !527)
!2263 = !DILocation(line: 674, column: 9, scope: !481, inlinedAt: !527)
!2264 = !DILocation(line: 675, column: 5, scope: !484, inlinedAt: !527)
!2265 = !DILocation(line: 676, column: 12, scope: !485, inlinedAt: !527)
!2266 = !DILocation(line: 677, column: 10, scope: !1498, inlinedAt: !527)
!2267 = !DILocation(line: 677, column: 9, scope: !485, inlinedAt: !527)
!2268 = !DILocation(line: 680, column: 25, scope: !485, inlinedAt: !527)
!2269 = !DILocation(line: 680, column: 13, scope: !485, inlinedAt: !527)
!2270 = !DILocation(line: 681, column: 18, scope: !485, inlinedAt: !527)
!2271 = !DILocation(line: 682, column: 10, scope: !1504, inlinedAt: !527)
!2272 = !DILocation(line: 682, column: 9, scope: !485, inlinedAt: !527)
!2273 = !DILocation(line: 685, column: 17, scope: !485, inlinedAt: !527)
!2274 = !DILocation(line: 685, column: 20, scope: !485, inlinedAt: !527)
!2275 = !DILocation(line: 686, column: 23, scope: !485, inlinedAt: !527)
!2276 = !DILocation(line: 686, column: 17, scope: !485, inlinedAt: !527)
!2277 = !DILocation(line: 686, column: 20, scope: !485, inlinedAt: !527)
!2278 = !DILocation(line: 687, column: 59, scope: !485, inlinedAt: !527)
!2279 = !DILocation(line: 687, column: 53, scope: !485, inlinedAt: !527)
!2280 = !DILocation(line: 687, column: 18, scope: !485, inlinedAt: !527)
!2281 = !DILocation(line: 688, column: 10, scope: !1515, inlinedAt: !527)
!2282 = !DILocation(line: 688, column: 9, scope: !485, inlinedAt: !527)
!2283 = !DILocation(line: 691, column: 17, scope: !485, inlinedAt: !527)
!2284 = !DILocation(line: 691, column: 20, scope: !485, inlinedAt: !527)
!2285 = !DILocation(line: 692, column: 17, scope: !485, inlinedAt: !527)
!2286 = !DILocation(line: 692, column: 20, scope: !485, inlinedAt: !527)
!2287 = !DILocation(line: 698, column: 25, scope: !485, inlinedAt: !527)
!2288 = !DILocation(line: 699, column: 14, scope: !1523, inlinedAt: !527)
!2289 = !DILocation(line: 699, column: 20, scope: !1523, inlinedAt: !527)
!2290 = !DILocation(line: 699, column: 9, scope: !485, inlinedAt: !527)
!2291 = !DILocation(line: 0, scope: !1529, inlinedAt: !2292)
!2292 = distinct !DILocation(line: 700, column: 14, scope: !1550, inlinedAt: !527)
!2293 = !DILocation(line: 30, column: 30, scope: !1553, inlinedAt: !2292)
!2294 = !DILocation(line: 30, column: 9, scope: !1553, inlinedAt: !2292)
!2295 = !DILocation(line: 30, column: 9, scope: !1529, inlinedAt: !2292)
!2296 = !DILocation(line: 33, column: 33, scope: !1529, inlinedAt: !2292)
!2297 = !DILocation(line: 33, column: 21, scope: !1529, inlinedAt: !2292)
!2298 = !DILocation(line: 33, column: 12, scope: !1529, inlinedAt: !2292)
!2299 = !DILocation(line: 34, column: 37, scope: !1529, inlinedAt: !2292)
!2300 = !DILocation(line: 34, column: 25, scope: !1529, inlinedAt: !2292)
!2301 = !DILocation(line: 35, column: 15, scope: !1529, inlinedAt: !2292)
!2302 = !DILocation(line: 36, column: 17, scope: !1529, inlinedAt: !2292)
!2303 = !DILocation(line: 37, column: 20, scope: !1529, inlinedAt: !2292)
!2304 = !DILocation(line: 38, column: 17, scope: !1565, inlinedAt: !2292)
!2305 = !DILocation(line: 38, column: 23, scope: !1565, inlinedAt: !2292)
!2306 = !DILocation(line: 38, column: 21, scope: !1565, inlinedAt: !2292)
!2307 = !DILocation(line: 38, column: 32, scope: !1565, inlinedAt: !2292)
!2308 = !DILocation(line: 38, column: 43, scope: !1565, inlinedAt: !2292)
!2309 = !DILocation(line: 38, column: 47, scope: !1565, inlinedAt: !2292)
!2310 = !DILocation(line: 38, column: 58, scope: !1565, inlinedAt: !2292)
!2311 = !DILocation(line: 38, column: 66, scope: !1565, inlinedAt: !2292)
!2312 = !DILocation(line: 38, column: 72, scope: !1565, inlinedAt: !2292)
!2313 = !DILocation(line: 38, column: 70, scope: !1565, inlinedAt: !2292)
!2314 = !DILocation(line: 38, column: 9, scope: !1529, inlinedAt: !2292)
!2315 = !DILocation(line: 41, column: 5, scope: !1529, inlinedAt: !2292)
!2316 = !DILocation(line: 42, column: 5, scope: !1529, inlinedAt: !2292)
!2317 = !DILocation(line: 43, column: 14, scope: !1529, inlinedAt: !2292)
!2318 = !DILocation(line: 43, column: 22, scope: !1529, inlinedAt: !2292)
!2319 = !DILocation(line: 46, column: 21, scope: !2320, inlinedAt: !2292)
!2320 = distinct !DILexicalBlock(scope: !1584, file: !1530, line: 44, column: 18)
!2321 = !DILocation(line: 46, column: 43, scope: !2320, inlinedAt: !2292)
!2322 = !DILocation(line: 46, column: 41, scope: !2320, inlinedAt: !2292)
!2323 = !DILocation(line: 47, column: 33, scope: !2320, inlinedAt: !2292)
!2324 = !DILocation(line: 58, column: 34, scope: !1529, inlinedAt: !2292)
!2325 = !DILocation(line: 0, scope: !1589, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 58, column: 5, scope: !1529, inlinedAt: !2292)
!2327 = !DILocation(line: 38, column: 5, scope: !1589, inlinedAt: !2326)
!2328 = !DILocation(line: 40, column: 34, scope: !1589, inlinedAt: !2326)
!2329 = !DILocation(line: 40, column: 20, scope: !1589, inlinedAt: !2326)
!2330 = !DILocation(line: 41, column: 37, scope: !1589, inlinedAt: !2326)
!2331 = !DILocation(line: 41, column: 23, scope: !1589, inlinedAt: !2326)
!2332 = !DILocation(line: 45, column: 11, scope: !1589, inlinedAt: !2326)
!2333 = !DILocation(line: 45, column: 19, scope: !1589, inlinedAt: !2326)
!2334 = !DILocation(line: 46, column: 11, scope: !1589, inlinedAt: !2326)
!2335 = !DILocation(line: 46, column: 23, scope: !1589, inlinedAt: !2326)
!2336 = !DILocation(line: 47, column: 11, scope: !1589, inlinedAt: !2326)
!2337 = !DILocation(line: 47, column: 21, scope: !1589, inlinedAt: !2326)
!2338 = !DILocation(line: 48, column: 5, scope: !1589, inlinedAt: !2326)
!2339 = !DILocation(line: 49, column: 5, scope: !1589, inlinedAt: !2326)
!2340 = !DILocation(line: 700, column: 13, scope: !1551, inlinedAt: !527)
!2341 = !DILocation(line: 0, scope: !1621, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 705, column: 14, scope: !1637, inlinedAt: !527)
!2343 = !DILocation(line: 68, column: 23, scope: !1621, inlinedAt: !2342)
!2344 = !DILocation(line: 69, column: 15, scope: !1621, inlinedAt: !2342)
!2345 = !DILocation(line: 70, column: 29, scope: !1621, inlinedAt: !2342)
!2346 = !DILocation(line: 71, column: 30, scope: !1643, inlinedAt: !2342)
!2347 = !DILocation(line: 71, column: 9, scope: !1643, inlinedAt: !2342)
!2348 = !DILocation(line: 71, column: 9, scope: !1621, inlinedAt: !2342)
!2349 = !DILocation(line: 74, column: 33, scope: !1621, inlinedAt: !2342)
!2350 = !DILocation(line: 74, column: 21, scope: !1621, inlinedAt: !2342)
!2351 = !DILocation(line: 74, column: 12, scope: !1621, inlinedAt: !2342)
!2352 = !DILocation(line: 75, column: 37, scope: !1621, inlinedAt: !2342)
!2353 = !DILocation(line: 75, column: 25, scope: !1621, inlinedAt: !2342)
!2354 = !DILocation(line: 76, column: 15, scope: !1621, inlinedAt: !2342)
!2355 = !DILocation(line: 77, column: 16, scope: !1621, inlinedAt: !2342)
!2356 = !DILocation(line: 78, column: 20, scope: !1621, inlinedAt: !2342)
!2357 = !DILocation(line: 79, column: 17, scope: !1655, inlinedAt: !2342)
!2358 = !DILocation(line: 79, column: 23, scope: !1655, inlinedAt: !2342)
!2359 = !DILocation(line: 79, column: 21, scope: !1655, inlinedAt: !2342)
!2360 = !DILocation(line: 79, column: 32, scope: !1655, inlinedAt: !2342)
!2361 = !DILocation(line: 79, column: 43, scope: !1655, inlinedAt: !2342)
!2362 = !DILocation(line: 79, column: 47, scope: !1655, inlinedAt: !2342)
!2363 = !DILocation(line: 79, column: 58, scope: !1655, inlinedAt: !2342)
!2364 = !DILocation(line: 79, column: 65, scope: !1655, inlinedAt: !2342)
!2365 = !DILocation(line: 79, column: 71, scope: !1655, inlinedAt: !2342)
!2366 = !DILocation(line: 79, column: 69, scope: !1655, inlinedAt: !2342)
!2367 = !DILocation(line: 79, column: 9, scope: !1621, inlinedAt: !2342)
!2368 = !DILocation(line: 82, column: 5, scope: !1621, inlinedAt: !2342)
!2369 = !DILocation(line: 83, column: 5, scope: !1621, inlinedAt: !2342)
!2370 = !DILocation(line: 84, column: 14, scope: !1621, inlinedAt: !2342)
!2371 = !DILocation(line: 84, column: 22, scope: !1621, inlinedAt: !2342)
!2372 = !DILocation(line: 85, column: 33, scope: !1621, inlinedAt: !2342)
!2373 = !DILocation(line: 85, column: 51, scope: !1621, inlinedAt: !2342)
!2374 = !DILocation(line: 85, column: 64, scope: !1621, inlinedAt: !2342)
!2375 = !DILocation(line: 85, column: 90, scope: !1621, inlinedAt: !2342)
!2376 = !DILocation(line: 0, scope: !1675, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 85, column: 5, scope: !1621, inlinedAt: !2342)
!2378 = !DILocation(line: 19, column: 14, scope: !1675, inlinedAt: !2377)
!2379 = !DILocation(line: 20, column: 10, scope: !1675, inlinedAt: !2377)
!2380 = !DILocation(line: 20, column: 19, scope: !1675, inlinedAt: !2377)
!2381 = !DILocation(line: 21, column: 10, scope: !1675, inlinedAt: !2377)
!2382 = !DILocation(line: 21, column: 19, scope: !1675, inlinedAt: !2377)
!2383 = !DILocation(line: 22, column: 10, scope: !1675, inlinedAt: !2377)
!2384 = !DILocation(line: 24, column: 10, scope: !1675, inlinedAt: !2377)
!2385 = !DILocation(line: 24, column: 14, scope: !1675, inlinedAt: !2377)
!2386 = !DILocation(line: 28, column: 20, scope: !1675, inlinedAt: !2377)
!2387 = !DILocation(line: 28, column: 10, scope: !1675, inlinedAt: !2377)
!2388 = !DILocation(line: 28, column: 18, scope: !1675, inlinedAt: !2377)
!2389 = !DILocation(line: 29, column: 10, scope: !1675, inlinedAt: !2377)
!2390 = !DILocation(line: 29, column: 16, scope: !1675, inlinedAt: !2377)
!2391 = !DILocation(line: 30, column: 10, scope: !1675, inlinedAt: !2377)
!2392 = !DILocation(line: 30, column: 16, scope: !1675, inlinedAt: !2377)
!2393 = !DILocation(line: 31, column: 10, scope: !1675, inlinedAt: !2377)
!2394 = !DILocation(line: 31, column: 14, scope: !1675, inlinedAt: !2377)
!2395 = !DILocation(line: 0, scope: !818, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 32, column: 5, scope: !1675, inlinedAt: !2377)
!2397 = !DILocation(line: 35, column: 27, scope: !818, inlinedAt: !2396)
!2398 = !DILocation(line: 0, scope: !827, inlinedAt: !2396)
!2399 = !DILocation(line: 38, column: 18, scope: !833, inlinedAt: !2396)
!2400 = !DILocation(line: 38, column: 31, scope: !833, inlinedAt: !2396)
!2401 = !DILocation(line: 38, column: 15, scope: !833, inlinedAt: !2396)
!2402 = !DILocation(line: 0, scope: !839, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 40, column: 13, scope: !818, inlinedAt: !2396)
!2404 = !DILocation(line: 19, column: 18, scope: !847, inlinedAt: !2403)
!2405 = !DILocation(line: 19, column: 13, scope: !848, inlinedAt: !2403)
!2406 = !DILocation(line: 33, column: 18, scope: !1675, inlinedAt: !2377)
!2407 = !DILocation(line: 33, column: 16, scope: !1675, inlinedAt: !2377)
!2408 = !DILocation(line: 705, column: 13, scope: !1638, inlinedAt: !527)
!2409 = !DILocation(line: 710, column: 1, scope: !485, inlinedAt: !527)
!2410 = !DILocation(line: 728, column: 9, scope: !528)
!2411 = !DILocation(line: 733, column: 1, scope: !343)
