; ModuleID = '<stdin>'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GumboInternalOptions = type { i8* (i8*, i64)*, void (i8*, i8*)*, i8*, i32, i8, i32, i32, i32 }
%struct.GumboInternalOutput = type { %struct.GumboInternalNode*, %struct.GumboInternalNode*, %struct.GumboVector }
%struct.GumboInternalNode = type { i32, %struct.GumboInternalNode*, i64, i32, %union.anon }
%union.anon = type { %struct.GumboElement }
%struct.GumboElement = type { %struct.GumboVector, i32, i32, %struct.GumboStringPiece, %struct.GumboStringPiece, %struct.GumboSourcePosition, %struct.GumboSourcePosition, %struct.GumboVector }
%struct.GumboStringPiece = type { i8*, i64 }
%struct.GumboSourcePosition = type { i32, i32, i32 }
%struct.GumboVector = type { i8**, i32, i32 }
%struct.GumboText = type { i8*, %struct.GumboStringPiece, %struct.GumboSourcePosition }

@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@kGumboDefaultOptions = external dso_local constant %struct.GumboInternalOptions, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"root->type == GUMBO_NODE_ELEMENT\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"../examples/get_title.c\00", align 1
@__PRETTY_FUNCTION__.find_title = private unnamed_addr constant [42 x i8] c"const char *find_title(const GumboNode *)\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"root->v.element.children.length >= 2\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"head != NULL\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"<empty title>\00", align 1
@.str.7 = private unnamed_addr constant [81 x i8] c"title_text->type == GUMBO_NODE_TEXT || title_text->type == GUMBO_NODE_WHITESPACE\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"<no title found>\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @klee_make_symbolic(i8* %0, i64 %1, i8* %2) #0 !dbg !200 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i64, align 8
  %.addr2 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !212
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !209, metadata !DIExpression()), !dbg !216
  store i64 %1, i64* %.addr1, align 8, !tbaa !217
  call void @llvm.dbg.declare(metadata i64* %.addr1, metadata !210, metadata !DIExpression()), !dbg !219
  store i8* %2, i8** %.addr2, align 8, !tbaa !212
  call void @llvm.dbg.declare(metadata i8** %.addr2, metadata !211, metadata !DIExpression()), !dbg !220
  ret void, !dbg !221
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local void @klee_assume(i32 %uintptr_t) #0 !dbg !222 {
entry:
  %uintptr_t.addr = alloca i32, align 4
  store i32 %uintptr_t, i32* %uintptr_t.addr, align 4, !tbaa !228
  call void @llvm.dbg.declare(metadata i32* %uintptr_t.addr, metadata !227, metadata !DIExpression()), !dbg !230
  ret void, !dbg !231
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !232 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %input = alloca i8*, align 8
  %input_length = alloca i32, align 4
  %output = alloca %struct.GumboInternalOutput*, align 8
  %title = alloca i8*, align 8
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !228
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !237, metadata !DIExpression()), !dbg !314
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !212
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !238, metadata !DIExpression()), !dbg !315
  %0 = bitcast i8** %input to i8*, !dbg !316
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #6, !dbg !316
  call void @llvm.dbg.declare(metadata i8** %input, metadata !239, metadata !DIExpression()), !dbg !317
  %call = call noalias align 16 i8* @malloc(i64 20) #6, !dbg !318
  store i8* %call, i8** %input, align 8, !dbg !317, !tbaa !212
  %1 = load i8*, i8** %input, align 8, !dbg !319, !tbaa !212
  call void @klee_make_symbolic(i8* %1, i64 20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !320
  %2 = load i8*, i8** %input, align 8, !dbg !321, !tbaa !212
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 19, !dbg !321
  %3 = load i8, i8* %arrayidx, align 1, !dbg !321, !tbaa !322
  %conv = sext i8 %3 to i32, !dbg !321
  %cmp = icmp eq i32 %conv, 0, !dbg !323
  %conv1 = zext i1 %cmp to i32, !dbg !323
  call void @klee_assume(i32 %conv1), !dbg !324
  %4 = bitcast i32* %input_length to i8*, !dbg !325
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #6, !dbg !325
  call void @llvm.dbg.declare(metadata i32* %input_length, metadata !240, metadata !DIExpression()), !dbg !326
  store i32 19, i32* %input_length, align 4, !dbg !326, !tbaa !228
  %5 = bitcast %struct.GumboInternalOutput** %output to i8*, !dbg !327
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #6, !dbg !327
  call void @llvm.dbg.declare(metadata %struct.GumboInternalOutput** %output, metadata !241, metadata !DIExpression()), !dbg !328
  %6 = load i8*, i8** %input, align 8, !dbg !329, !tbaa !212
  %7 = load i32, i32* %input_length, align 4, !dbg !330, !tbaa !228
  %conv2 = sext i32 %7 to i64, !dbg !330
  %call3 = call %struct.GumboInternalOutput* @gumbo_parse_with_options(%struct.GumboInternalOptions* @kGumboDefaultOptions, i8* %6, i64 %conv2), !dbg !331
  store %struct.GumboInternalOutput* %call3, %struct.GumboInternalOutput** %output, align 8, !dbg !328, !tbaa !212
  %8 = bitcast i8** %title to i8*, !dbg !332
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #6, !dbg !332
  call void @llvm.dbg.declare(metadata i8** %title, metadata !313, metadata !DIExpression()), !dbg !333
  %9 = load %struct.GumboInternalOutput*, %struct.GumboInternalOutput** %output, align 8, !dbg !334, !tbaa !212
  %root = getelementptr inbounds %struct.GumboInternalOutput, %struct.GumboInternalOutput* %9, i32 0, i32 1, !dbg !335
  %10 = load %struct.GumboInternalNode*, %struct.GumboInternalNode** %root, align 8, !dbg !335, !tbaa !336
  %call4 = call i8* @find_title(%struct.GumboInternalNode* %10), !dbg !339
  store i8* %call4, i8** %title, align 8, !dbg !333, !tbaa !212
  %11 = load i8*, i8** %title, align 8, !dbg !340, !tbaa !212
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %11), !dbg !341
  %12 = load %struct.GumboInternalOutput*, %struct.GumboInternalOutput** %output, align 8, !dbg !342, !tbaa !212
  call void @gumbo_destroy_output(%struct.GumboInternalOptions* @kGumboDefaultOptions, %struct.GumboInternalOutput* %12), !dbg !343
  %13 = load i8*, i8** %input, align 8, !dbg !344, !tbaa !212
  call void @free(i8* %13) #6, !dbg !345
  %14 = bitcast i8** %title to i8*, !dbg !346
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %14) #6, !dbg !346
  %15 = bitcast %struct.GumboInternalOutput** %output to i8*, !dbg !346
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %15) #6, !dbg !346
  %16 = bitcast i32* %input_length to i8*, !dbg !346
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #6, !dbg !346
  %17 = bitcast i8** %input to i8*, !dbg !346
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %17) #6, !dbg !346
  ret i32 0, !dbg !346
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #3

declare !dbg !347 dso_local %struct.GumboInternalOutput* @gumbo_parse_with_options(%struct.GumboInternalOptions*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal i8* @find_title(%struct.GumboInternalNode* %root) #0 !dbg !372 {
entry:
  %retval = alloca i8*, align 8
  %root.addr = alloca %struct.GumboInternalNode*, align 8
  %root_children = alloca %struct.GumboVector*, align 8
  %head = alloca %struct.GumboInternalNode*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %child = alloca %struct.GumboInternalNode*, align 8
  %head_children = alloca %struct.GumboVector*, align 8
  %i25 = alloca i32, align 4
  %child31 = alloca %struct.GumboInternalNode*, align 8
  %title_text = alloca %struct.GumboInternalNode*, align 8
  store %struct.GumboInternalNode* %root, %struct.GumboInternalNode** %root.addr, align 8, !tbaa !212
  call void @llvm.dbg.declare(metadata %struct.GumboInternalNode** %root.addr, metadata !378, metadata !DIExpression()), !dbg !398
  %0 = load %struct.GumboInternalNode*, %struct.GumboInternalNode** %root.addr, align 8, !dbg !399, !tbaa !212
  %type = getelementptr inbounds %struct.GumboInternalNode, %struct.GumboInternalNode* %0, i32 0, i32 0, !dbg !399
  %1 = load i32, i32* %type, align 8, !dbg !399, !tbaa !402
  %cmp = icmp eq i32 %1, 1, !dbg !399
  br i1 %cmp, label %if.then, label %if.else, !dbg !404

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !404

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.find_title, i64 0, i64 0)) #7, !dbg !399
  unreachable, !dbg !399

if.end:                                           ; preds = %if.then
  %2 = load %struct.GumboInternalNode*, %struct.GumboInternalNode** %root.addr, align 8, !dbg !405, !tbaa !212
  %v = getelementptr inbounds %struct.GumboInternalNode, %struct.GumboInternalNode* %2, i32 0, i32 4, !dbg !405
  %element = bitcast %union.anon* %v to %struct.GumboElement*, !dbg !405
  %children = getelementptr inbounds %struct.GumboElement, %struct.GumboElement* %element, i32 0, i32 0, !dbg !405
  %length = getelementptr inbounds %struct.GumboVector, %struct.GumboVector* %children, i32 0, i32 1, !dbg !405
  %3 = load i32, i32* %length, align 8, !dbg !405, !tbaa !322
  %cmp1 = icmp uge i32 %3, 2, !dbg !405
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !408

if.then2:                                         ; preds = %if.end
  br label %if.end4, !dbg !408

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.find_title, i64 0, i64 0)) #7, !dbg !405
  unreachable, !dbg !405

if.end4:                                          ; preds = %if.then2
  %4 = bitcast %struct.GumboVector** %root_children to i8*, !dbg !409
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #6, !dbg !409
  call void @llvm.dbg.declare(metadata %struct.GumboVector** %root_children, metadata !379, metadata !DIExpression()), !dbg !410
  %5 = load %struct.GumboInternalNode*, %struct.GumboInternalNode** %root.addr, align 8, !dbg !411, !tbaa !212
  %v5 = getelementptr inbounds %struct.GumboInternalNode, %struct.GumboInternalNode* %5, i32 0, i32 4, !dbg !412
  %element6 = bitcast %union.anon* %v5 to %struct.GumboElement*, !dbg !413
  %children7 = getelementptr inbounds %struct.GumboElement, %struct.GumboElement* %element6, i32 0, i32 0, !dbg !414
  store %struct.GumboVector* %children7, %struct.GumboVector** %root_children, align 8, !dbg !410, !tbaa !212
  %6 = bitcast %struct.GumboInternalNode** %head to i8*, !dbg !415
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #6, !dbg !415
  call void @llvm.dbg.declare(metadata %struct.GumboInternalNode** %head, metadata !382, metadata !DIExpression()), !dbg !416
  store %struct.GumboInternalNode* null, %struct.GumboInternalNode** %head, align 8, !dbg !416, !tbaa !212
  %7 = bitcast i32* %i to i8*, !dbg !417
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #6, !dbg !417
  call void @llvm.dbg.declare(metadata i32* %i, metadata !383, metadata !DIExpression()), !dbg !418
  store i32 0, i32* %i, align 4, !dbg !418, !tbaa !228
  br label %for.cond, !dbg !417

for.cond:                                         ; preds = %for.inc, %if.end4
  %8 = load i32, i32* %i, align 4, !dbg !419, !tbaa !228
  %9 = load %struct.GumboVector*, %struct.GumboVector** %root_children, align 8, !dbg !420, !tbaa !212
  %length8 = getelementptr inbounds %struct.GumboVector, %struct.GumboVector* %9, i32 0, i32 1, !dbg !421
  %10 = load i32, i32* %length8, align 8, !dbg !421, !tbaa !422
  %cmp9 = icmp ult i32 %8, %10, !dbg !423
  br i1 %cmp9, label %for.body, label %for.cond.cleanup, !dbg !424

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, i32* %cleanup.dest.slot, align 4
  br label %cleanup17, !dbg !424

for.body:                                         ; preds = %for.cond
  %11 = bitcast %struct.GumboInternalNode** %child to i8*, !dbg !425
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #6, !dbg !425
  call void @llvm.dbg.declare(metadata %struct.GumboInternalNode** %child, metadata !385, metadata !DIExpression()), !dbg !426
  %12 = load %struct.GumboVector*, %struct.GumboVector** %root_children, align 8, !dbg !427, !tbaa !212
  %data = getelementptr inbounds %struct.GumboVector, %struct.GumboVector* %12, i32 0, i32 0, !dbg !428
  %13 = load i8**, i8*** %data, align 8, !dbg !428, !tbaa !429
  %14 = load i32, i32* %i, align 4, !dbg !430, !tbaa !228
  %idxprom = sext i32 %14 to i64, !dbg !427
  %arrayidx = getelementptr inbounds i8*, i8** %13, i64 %idxprom, !dbg !427
  %15 = load i8*, i8** %arrayidx, align 8, !dbg !427, !tbaa !212
  %16 = bitcast i8* %15 to %struct.GumboInternalNode*, !dbg !427
  store %struct.GumboInternalNode* %16, %struct.GumboInternalNode** %child, align 8, !dbg !426, !tbaa !212
  %17 = load %struct.GumboInternalNode*, %struct.GumboInternalNode** %child, align 8, !dbg !431, !tbaa !212
  %type10 = getelementptr inbounds %struct.GumboInternalNode, %struct.GumboInternalNode* %17, i32 0, i32 0, !dbg !433
  %18 = load i32, i32* %type10, align 8, !dbg !433, !tbaa !402
  %cmp11 = icmp eq i32 %18, 1, !dbg !434
  br i1 %cmp11, label %land.lhs.true, label %if.end16, !dbg !435

land.lhs.true:                                    ; preds = %for.body
  %19 = load %struct.GumboInternalNode*, %struct.GumboInternalNode** %child, align 8, !dbg !436, !tbaa !212
  %v12 = getelementptr inbounds %struct.GumboInternalNode, %struct.GumboInternalNode* %19, i32 0, i32 4, !dbg !437
  %element13 = bitcast %union.anon* %v12 to %struct.GumboElement*, !dbg !438
  %tag = getelementptr inbounds %struct.GumboElement, %struct.GumboElement* %element13, i32 0, i32 1, !dbg !439
  %20 = load i32, i32* %tag, align 8, !dbg !439, !tbaa !322
  %cmp14 = icmp eq i32 %20, 1, !dbg !440
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !441

if.then15:                                        ; preds = %land.lhs.true
  %21 = load %struct.GumboInternalNode*, %struct.GumboInternalNode** %child, align 8, !dbg !442, !tbaa !212
  store %struct.GumboInternalNode* %21, %struct.GumboInternalNode** %head, align 8, !dbg !444, !tbaa !212
  store i32 2, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !445

if.end16:                                         ; preds = %land.lhs.true, %for.body
  store i32 0, i32* %cleanup.dest.slot, align 4, !dbg !446
  br label %cleanup, !dbg !446

cleanup:                                          ; preds = %if.end16, %if.then15
  %22 = bitcast %struct.GumboInternalNode** %child to i8*, !dbg !446
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %22) #6, !dbg !446
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !447

for.inc:                                          ; preds = %cleanup.cont
  %23 = load i32, i32* %i, align 4, !dbg !448, !tbaa !228
  %inc = add nsw i32 %23, 1, !dbg !448
  store i32 %inc, i32* %i, align 4, !dbg !448, !tbaa !228
  br label %for.cond, !dbg !449, !llvm.loop !450

cleanup17:                                        ; preds = %cleanup, %for.cond.cleanup
  %24 = bitcast i32* %i to i8*, !dbg !449
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #6, !dbg !449
  br label %for.end

for.end:                                          ; preds = %cleanup17
  %25 = load %struct.GumboInternalNode*, %struct.GumboInternalNode** %head, align 8, !dbg !454, !tbaa !212
  %cmp18 = icmp ne %struct.GumboInternalNode* %25, null, !dbg !454
  br i1 %cmp18, label %if.then19, label %if.else20, !dbg !457

if.then19:                                        ; preds = %for.end
  br label %if.end21, !dbg !457

if.else20:                                        ; preds = %for.end
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 56, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.find_title, i64 0, i64 0)) #7, !dbg !454
  unreachable, !dbg !454

if.end21:                                         ; preds = %if.then19
  %26 = bitcast %struct.GumboVector** %head_children to i8*, !dbg !458
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %26) #6, !dbg !458
  call void @llvm.dbg.declare(metadata %struct.GumboVector** %head_children, metadata !388, metadata !DIExpression()), !dbg !459
  %27 = load %struct.GumboInternalNode*, %struct.GumboInternalNode** %head, align 8, !dbg !460, !tbaa !212
  %v22 = getelementptr inbounds %struct.GumboInternalNode, %struct.GumboInternalNode* %27, i32 0, i32 4, !dbg !461
  %element23 = bitcast %union.anon* %v22 to %struct.GumboElement*, !dbg !462
  %children24 = getelementptr inbounds %struct.GumboElement, %struct.GumboElement* %element23, i32 0, i32 0, !dbg !463
  store %struct.GumboVector* %children24, %struct.GumboVector** %head_children, align 8, !dbg !459, !tbaa !212
  %28 = bitcast i32* %i25 to i8*, !dbg !464
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %28) #6, !dbg !464
  call void @llvm.dbg.declare(metadata i32* %i25, metadata !390, metadata !DIExpression()), !dbg !465
  store i32 0, i32* %i25, align 4, !dbg !465, !tbaa !228
  br label %for.cond26, !dbg !464

for.cond26:                                       ; preds = %for.inc69, %if.end21
  %29 = load i32, i32* %i25, align 4, !dbg !466, !tbaa !228
  %30 = load %struct.GumboVector*, %struct.GumboVector** %head_children, align 8, !dbg !467, !tbaa !212
  %length27 = getelementptr inbounds %struct.GumboVector, %struct.GumboVector* %30, i32 0, i32 1, !dbg !468
  %31 = load i32, i32* %length27, align 8, !dbg !468, !tbaa !422
  %cmp28 = icmp ult i32 %29, %31, !dbg !469
  br i1 %cmp28, label %for.body30, label %for.cond.cleanup29, !dbg !470

for.cond.cleanup29:                               ; preds = %for.cond26
  store i32 5, i32* %cleanup.dest.slot, align 4
  br label %cleanup71, !dbg !470

for.body30:                                       ; preds = %for.cond26
  %32 = bitcast %struct.GumboInternalNode** %child31 to i8*, !dbg !471
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %32) #6, !dbg !471
  call void @llvm.dbg.declare(metadata %struct.GumboInternalNode** %child31, metadata !392, metadata !DIExpression()), !dbg !472
  %33 = load %struct.GumboVector*, %struct.GumboVector** %head_children, align 8, !dbg !473, !tbaa !212
  %data32 = getelementptr inbounds %struct.GumboVector, %struct.GumboVector* %33, i32 0, i32 0, !dbg !474
  %34 = load i8**, i8*** %data32, align 8, !dbg !474, !tbaa !429
  %35 = load i32, i32* %i25, align 4, !dbg !475, !tbaa !228
  %idxprom33 = sext i32 %35 to i64, !dbg !473
  %arrayidx34 = getelementptr inbounds i8*, i8** %34, i64 %idxprom33, !dbg !473
  %36 = load i8*, i8** %arrayidx34, align 8, !dbg !473, !tbaa !212
  %37 = bitcast i8* %36 to %struct.GumboInternalNode*, !dbg !473
  store %struct.GumboInternalNode* %37, %struct.GumboInternalNode** %child31, align 8, !dbg !472, !tbaa !212
  %38 = load %struct.GumboInternalNode*, %struct.GumboInternalNode** %child31, align 8, !dbg !476, !tbaa !212
  %type35 = getelementptr inbounds %struct.GumboInternalNode, %struct.GumboInternalNode* %38, i32 0, i32 0, !dbg !477
  %39 = load i32, i32* %type35, align 8, !dbg !477, !tbaa !402
  %cmp36 = icmp eq i32 %39, 1, !dbg !478
  br i1 %cmp36, label %land.lhs.true37, label %if.end65, !dbg !479

land.lhs.true37:                                  ; preds = %for.body30
  %40 = load %struct.GumboInternalNode*, %struct.GumboInternalNode** %child31, align 8, !dbg !480, !tbaa !212
  %v38 = getelementptr inbounds %struct.GumboInternalNode, %struct.GumboInternalNode* %40, i32 0, i32 4, !dbg !481
  %element39 = bitcast %union.anon* %v38 to %struct.GumboElement*, !dbg !482
  %tag40 = getelementptr inbounds %struct.GumboElement, %struct.GumboElement* %element39, i32 0, i32 1, !dbg !483
  %41 = load i32, i32* %tag40, align 8, !dbg !483, !tbaa !322
  %cmp41 = icmp eq i32 %41, 2, !dbg !484
  br i1 %cmp41, label %if.then42, label %if.end65, !dbg !485

if.then42:                                        ; preds = %land.lhs.true37
  %42 = load %struct.GumboInternalNode*, %struct.GumboInternalNode** %child31, align 8, !dbg !486, !tbaa !212
  %v43 = getelementptr inbounds %struct.GumboInternalNode, %struct.GumboInternalNode* %42, i32 0, i32 4, !dbg !488
  %element44 = bitcast %union.anon* %v43 to %struct.GumboElement*, !dbg !489
  %children45 = getelementptr inbounds %struct.GumboElement, %struct.GumboElement* %element44, i32 0, i32 0, !dbg !490
  %length46 = getelementptr inbounds %struct.GumboVector, %struct.GumboVector* %children45, i32 0, i32 1, !dbg !491
  %43 = load i32, i32* %length46, align 8, !dbg !491, !tbaa !322
  %cmp47 = icmp ne i32 %43, 1, !dbg !492
  br i1 %cmp47, label %if.then48, label %if.end49, !dbg !493

if.then48:                                        ; preds = %if.then42
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8** %retval, align 8, !dbg !494
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup66, !dbg !494

if.end49:                                         ; preds = %if.then42
  %44 = bitcast %struct.GumboInternalNode** %title_text to i8*, !dbg !496
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %44) #6, !dbg !496
  call void @llvm.dbg.declare(metadata %struct.GumboInternalNode** %title_text, metadata !395, metadata !DIExpression()), !dbg !497
  %45 = load %struct.GumboInternalNode*, %struct.GumboInternalNode** %child31, align 8, !dbg !498, !tbaa !212
  %v50 = getelementptr inbounds %struct.GumboInternalNode, %struct.GumboInternalNode* %45, i32 0, i32 4, !dbg !499
  %element51 = bitcast %union.anon* %v50 to %struct.GumboElement*, !dbg !500
  %children52 = getelementptr inbounds %struct.GumboElement, %struct.GumboElement* %element51, i32 0, i32 0, !dbg !501
  %data53 = getelementptr inbounds %struct.GumboVector, %struct.GumboVector* %children52, i32 0, i32 0, !dbg !502
  %46 = load i8**, i8*** %data53, align 8, !dbg !502, !tbaa !322
  %arrayidx54 = getelementptr inbounds i8*, i8** %46, i64 0, !dbg !498
  %47 = load i8*, i8** %arrayidx54, align 8, !dbg !498, !tbaa !212
  %48 = bitcast i8* %47 to %struct.GumboInternalNode*, !dbg !498
  store %struct.GumboInternalNode* %48, %struct.GumboInternalNode** %title_text, align 8, !dbg !497, !tbaa !212
  %49 = load %struct.GumboInternalNode*, %struct.GumboInternalNode** %title_text, align 8, !dbg !503, !tbaa !212
  %type55 = getelementptr inbounds %struct.GumboInternalNode, %struct.GumboInternalNode* %49, i32 0, i32 0, !dbg !503
  %50 = load i32, i32* %type55, align 8, !dbg !503, !tbaa !402
  %cmp56 = icmp eq i32 %50, 2, !dbg !503
  br i1 %cmp56, label %if.then59, label %lor.lhs.false, !dbg !503

lor.lhs.false:                                    ; preds = %if.end49
  %51 = load %struct.GumboInternalNode*, %struct.GumboInternalNode** %title_text, align 8, !dbg !503, !tbaa !212
  %type57 = getelementptr inbounds %struct.GumboInternalNode, %struct.GumboInternalNode* %51, i32 0, i32 0, !dbg !503
  %52 = load i32, i32* %type57, align 8, !dbg !503, !tbaa !402
  %cmp58 = icmp eq i32 %52, 5, !dbg !503
  br i1 %cmp58, label %if.then59, label %if.else60, !dbg !506

if.then59:                                        ; preds = %lor.lhs.false, %if.end49
  br label %if.end61, !dbg !506

if.else60:                                        ; preds = %lor.lhs.false
  call void @__assert_fail(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.find_title, i64 0, i64 0)) #7, !dbg !503
  unreachable, !dbg !503

if.end61:                                         ; preds = %if.then59
  %53 = load %struct.GumboInternalNode*, %struct.GumboInternalNode** %title_text, align 8, !dbg !507, !tbaa !212
  %v62 = getelementptr inbounds %struct.GumboInternalNode, %struct.GumboInternalNode* %53, i32 0, i32 4, !dbg !508
  %text = bitcast %union.anon* %v62 to %struct.GumboText*, !dbg !509
  %text63 = getelementptr inbounds %struct.GumboText, %struct.GumboText* %text, i32 0, i32 0, !dbg !510
  %54 = load i8*, i8** %text63, align 8, !dbg !510, !tbaa !322
  store i8* %54, i8** %retval, align 8, !dbg !511
  store i32 1, i32* %cleanup.dest.slot, align 4
  %55 = bitcast %struct.GumboInternalNode** %title_text to i8*, !dbg !512
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %55) #6, !dbg !512
  br label %cleanup66

if.end65:                                         ; preds = %land.lhs.true37, %for.body30
  store i32 0, i32* %cleanup.dest.slot, align 4, !dbg !513
  br label %cleanup66, !dbg !513

cleanup66:                                        ; preds = %if.end65, %if.end61, %if.then48
  %56 = bitcast %struct.GumboInternalNode** %child31 to i8*, !dbg !513
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %56) #6, !dbg !513
  %cleanup.dest67 = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest67, label %cleanup71 [
    i32 0, label %cleanup.cont68
  ]

cleanup.cont68:                                   ; preds = %cleanup66
  br label %for.inc69, !dbg !514

for.inc69:                                        ; preds = %cleanup.cont68
  %57 = load i32, i32* %i25, align 4, !dbg !515, !tbaa !228
  %inc70 = add nsw i32 %57, 1, !dbg !515
  store i32 %inc70, i32* %i25, align 4, !dbg !515, !tbaa !228
  br label %for.cond26, !dbg !516, !llvm.loop !517

cleanup71:                                        ; preds = %cleanup66, %for.cond.cleanup29
  %58 = bitcast i32* %i25 to i8*, !dbg !516
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #6, !dbg !516
  %cleanup.dest72 = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest72, label %cleanup74 [
    i32 5, label %for.end73
  ]

for.end73:                                        ; preds = %cleanup71
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8** %retval, align 8, !dbg !519
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup74, !dbg !519

cleanup74:                                        ; preds = %for.end73, %cleanup71
  %59 = bitcast %struct.GumboVector** %head_children to i8*, !dbg !520
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %59) #6, !dbg !520
  %60 = bitcast %struct.GumboInternalNode** %head to i8*, !dbg !520
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %60) #6, !dbg !520
  %61 = bitcast %struct.GumboVector** %root_children to i8*, !dbg !520
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %61) #6, !dbg !520
  %62 = load i8*, i8** %retval, align 8, !dbg !520
  ret i8* %62, !dbg !520
}

declare dso_local i32 @printf(i8*, ...) #4

declare !dbg !521 dso_local void @gumbo_destroy_output(%struct.GumboInternalOptions*, %struct.GumboInternalOutput*) #4

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!195}
!llvm.module.flags = !{!196, !197, !198, !199}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (git@github.com:charitha22/llvm-project-rocm.git e58f918745aeb5db2256d6110be8dd5255e5f113)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !191, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../examples/get_title.c", directory: "/home/min/a/cgusthin/git/klee/benchmarks/gumbo-parser/obj-llvm")
!2 = !{!3, !14, !27, !32, !186}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 291, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "../src/gumbo.h", directory: "/home/min/a/cgusthin/git/klee/benchmarks/gumbo-parser/obj-llvm")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13}
!7 = !DIEnumerator(name: "GUMBO_NODE_DOCUMENT", value: 0)
!8 = !DIEnumerator(name: "GUMBO_NODE_ELEMENT", value: 1)
!9 = !DIEnumerator(name: "GUMBO_NODE_TEXT", value: 2)
!10 = !DIEnumerator(name: "GUMBO_NODE_CDATA", value: 3)
!11 = !DIEnumerator(name: "GUMBO_NODE_COMMENT", value: 4)
!12 = !DIEnumerator(name: "GUMBO_NODE_WHITESPACE", value: 5)
!13 = !DIEnumerator(name: "GUMBO_NODE_TEMPLATE", value: 6)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 348, baseType: !5, size: 32, elements: !15)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!16 = !DIEnumerator(name: "GUMBO_INSERTION_NORMAL", value: 0)
!17 = !DIEnumerator(name: "GUMBO_INSERTION_BY_PARSER", value: 1)
!18 = !DIEnumerator(name: "GUMBO_INSERTION_IMPLICIT_END_TAG", value: 2)
!19 = !DIEnumerator(name: "GUMBO_INSERTION_IMPLIED", value: 8)
!20 = !DIEnumerator(name: "GUMBO_INSERTION_CONVERTED_FROM_END_TAG", value: 16)
!21 = !DIEnumerator(name: "GUMBO_INSERTION_FROM_ISINDEX", value: 32)
!22 = !DIEnumerator(name: "GUMBO_INSERTION_FROM_IMAGE", value: 64)
!23 = !DIEnumerator(name: "GUMBO_INSERTION_RECONSTRUCTED_FORMATTING_ELEMENT", value: 128)
!24 = !DIEnumerator(name: "GUMBO_INSERTION_ADOPTION_AGENCY_CLONED", value: 256)
!25 = !DIEnumerator(name: "GUMBO_INSERTION_ADOPTION_AGENCY_MOVED", value: 512)
!26 = !DIEnumerator(name: "GUMBO_INSERTION_FOSTER_PARENTED", value: 1024)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 321, baseType: !5, size: 32, elements: !28)
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "GUMBO_DOCTYPE_NO_QUIRKS", value: 0)
!30 = !DIEnumerator(name: "GUMBO_DOCTYPE_QUIRKS", value: 1)
!31 = !DIEnumerator(name: "GUMBO_DOCTYPE_LIMITED_QUIRKS", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 156, baseType: !5, size: 32, elements: !33)
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185}
!34 = !DIEnumerator(name: "GUMBO_TAG_HTML", value: 0)
!35 = !DIEnumerator(name: "GUMBO_TAG_HEAD", value: 1)
!36 = !DIEnumerator(name: "GUMBO_TAG_TITLE", value: 2)
!37 = !DIEnumerator(name: "GUMBO_TAG_BASE", value: 3)
!38 = !DIEnumerator(name: "GUMBO_TAG_LINK", value: 4)
!39 = !DIEnumerator(name: "GUMBO_TAG_META", value: 5)
!40 = !DIEnumerator(name: "GUMBO_TAG_STYLE", value: 6)
!41 = !DIEnumerator(name: "GUMBO_TAG_SCRIPT", value: 7)
!42 = !DIEnumerator(name: "GUMBO_TAG_NOSCRIPT", value: 8)
!43 = !DIEnumerator(name: "GUMBO_TAG_TEMPLATE", value: 9)
!44 = !DIEnumerator(name: "GUMBO_TAG_BODY", value: 10)
!45 = !DIEnumerator(name: "GUMBO_TAG_ARTICLE", value: 11)
!46 = !DIEnumerator(name: "GUMBO_TAG_SECTION", value: 12)
!47 = !DIEnumerator(name: "GUMBO_TAG_NAV", value: 13)
!48 = !DIEnumerator(name: "GUMBO_TAG_ASIDE", value: 14)
!49 = !DIEnumerator(name: "GUMBO_TAG_H1", value: 15)
!50 = !DIEnumerator(name: "GUMBO_TAG_H2", value: 16)
!51 = !DIEnumerator(name: "GUMBO_TAG_H3", value: 17)
!52 = !DIEnumerator(name: "GUMBO_TAG_H4", value: 18)
!53 = !DIEnumerator(name: "GUMBO_TAG_H5", value: 19)
!54 = !DIEnumerator(name: "GUMBO_TAG_H6", value: 20)
!55 = !DIEnumerator(name: "GUMBO_TAG_HGROUP", value: 21)
!56 = !DIEnumerator(name: "GUMBO_TAG_HEADER", value: 22)
!57 = !DIEnumerator(name: "GUMBO_TAG_FOOTER", value: 23)
!58 = !DIEnumerator(name: "GUMBO_TAG_ADDRESS", value: 24)
!59 = !DIEnumerator(name: "GUMBO_TAG_P", value: 25)
!60 = !DIEnumerator(name: "GUMBO_TAG_HR", value: 26)
!61 = !DIEnumerator(name: "GUMBO_TAG_PRE", value: 27)
!62 = !DIEnumerator(name: "GUMBO_TAG_BLOCKQUOTE", value: 28)
!63 = !DIEnumerator(name: "GUMBO_TAG_OL", value: 29)
!64 = !DIEnumerator(name: "GUMBO_TAG_UL", value: 30)
!65 = !DIEnumerator(name: "GUMBO_TAG_LI", value: 31)
!66 = !DIEnumerator(name: "GUMBO_TAG_DL", value: 32)
!67 = !DIEnumerator(name: "GUMBO_TAG_DT", value: 33)
!68 = !DIEnumerator(name: "GUMBO_TAG_DD", value: 34)
!69 = !DIEnumerator(name: "GUMBO_TAG_FIGURE", value: 35)
!70 = !DIEnumerator(name: "GUMBO_TAG_FIGCAPTION", value: 36)
!71 = !DIEnumerator(name: "GUMBO_TAG_MAIN", value: 37)
!72 = !DIEnumerator(name: "GUMBO_TAG_DIV", value: 38)
!73 = !DIEnumerator(name: "GUMBO_TAG_A", value: 39)
!74 = !DIEnumerator(name: "GUMBO_TAG_EM", value: 40)
!75 = !DIEnumerator(name: "GUMBO_TAG_STRONG", value: 41)
!76 = !DIEnumerator(name: "GUMBO_TAG_SMALL", value: 42)
!77 = !DIEnumerator(name: "GUMBO_TAG_S", value: 43)
!78 = !DIEnumerator(name: "GUMBO_TAG_CITE", value: 44)
!79 = !DIEnumerator(name: "GUMBO_TAG_Q", value: 45)
!80 = !DIEnumerator(name: "GUMBO_TAG_DFN", value: 46)
!81 = !DIEnumerator(name: "GUMBO_TAG_ABBR", value: 47)
!82 = !DIEnumerator(name: "GUMBO_TAG_DATA", value: 48)
!83 = !DIEnumerator(name: "GUMBO_TAG_TIME", value: 49)
!84 = !DIEnumerator(name: "GUMBO_TAG_CODE", value: 50)
!85 = !DIEnumerator(name: "GUMBO_TAG_VAR", value: 51)
!86 = !DIEnumerator(name: "GUMBO_TAG_SAMP", value: 52)
!87 = !DIEnumerator(name: "GUMBO_TAG_KBD", value: 53)
!88 = !DIEnumerator(name: "GUMBO_TAG_SUB", value: 54)
!89 = !DIEnumerator(name: "GUMBO_TAG_SUP", value: 55)
!90 = !DIEnumerator(name: "GUMBO_TAG_I", value: 56)
!91 = !DIEnumerator(name: "GUMBO_TAG_B", value: 57)
!92 = !DIEnumerator(name: "GUMBO_TAG_U", value: 58)
!93 = !DIEnumerator(name: "GUMBO_TAG_MARK", value: 59)
!94 = !DIEnumerator(name: "GUMBO_TAG_RUBY", value: 60)
!95 = !DIEnumerator(name: "GUMBO_TAG_RT", value: 61)
!96 = !DIEnumerator(name: "GUMBO_TAG_RP", value: 62)
!97 = !DIEnumerator(name: "GUMBO_TAG_BDI", value: 63)
!98 = !DIEnumerator(name: "GUMBO_TAG_BDO", value: 64)
!99 = !DIEnumerator(name: "GUMBO_TAG_SPAN", value: 65)
!100 = !DIEnumerator(name: "GUMBO_TAG_BR", value: 66)
!101 = !DIEnumerator(name: "GUMBO_TAG_WBR", value: 67)
!102 = !DIEnumerator(name: "GUMBO_TAG_INS", value: 68)
!103 = !DIEnumerator(name: "GUMBO_TAG_DEL", value: 69)
!104 = !DIEnumerator(name: "GUMBO_TAG_IMAGE", value: 70)
!105 = !DIEnumerator(name: "GUMBO_TAG_IMG", value: 71)
!106 = !DIEnumerator(name: "GUMBO_TAG_IFRAME", value: 72)
!107 = !DIEnumerator(name: "GUMBO_TAG_EMBED", value: 73)
!108 = !DIEnumerator(name: "GUMBO_TAG_OBJECT", value: 74)
!109 = !DIEnumerator(name: "GUMBO_TAG_PARAM", value: 75)
!110 = !DIEnumerator(name: "GUMBO_TAG_VIDEO", value: 76)
!111 = !DIEnumerator(name: "GUMBO_TAG_AUDIO", value: 77)
!112 = !DIEnumerator(name: "GUMBO_TAG_SOURCE", value: 78)
!113 = !DIEnumerator(name: "GUMBO_TAG_TRACK", value: 79)
!114 = !DIEnumerator(name: "GUMBO_TAG_CANVAS", value: 80)
!115 = !DIEnumerator(name: "GUMBO_TAG_MAP", value: 81)
!116 = !DIEnumerator(name: "GUMBO_TAG_AREA", value: 82)
!117 = !DIEnumerator(name: "GUMBO_TAG_MATH", value: 83)
!118 = !DIEnumerator(name: "GUMBO_TAG_MI", value: 84)
!119 = !DIEnumerator(name: "GUMBO_TAG_MO", value: 85)
!120 = !DIEnumerator(name: "GUMBO_TAG_MN", value: 86)
!121 = !DIEnumerator(name: "GUMBO_TAG_MS", value: 87)
!122 = !DIEnumerator(name: "GUMBO_TAG_MTEXT", value: 88)
!123 = !DIEnumerator(name: "GUMBO_TAG_MGLYPH", value: 89)
!124 = !DIEnumerator(name: "GUMBO_TAG_MALIGNMARK", value: 90)
!125 = !DIEnumerator(name: "GUMBO_TAG_ANNOTATION_XML", value: 91)
!126 = !DIEnumerator(name: "GUMBO_TAG_SVG", value: 92)
!127 = !DIEnumerator(name: "GUMBO_TAG_FOREIGNOBJECT", value: 93)
!128 = !DIEnumerator(name: "GUMBO_TAG_DESC", value: 94)
!129 = !DIEnumerator(name: "GUMBO_TAG_TABLE", value: 95)
!130 = !DIEnumerator(name: "GUMBO_TAG_CAPTION", value: 96)
!131 = !DIEnumerator(name: "GUMBO_TAG_COLGROUP", value: 97)
!132 = !DIEnumerator(name: "GUMBO_TAG_COL", value: 98)
!133 = !DIEnumerator(name: "GUMBO_TAG_TBODY", value: 99)
!134 = !DIEnumerator(name: "GUMBO_TAG_THEAD", value: 100)
!135 = !DIEnumerator(name: "GUMBO_TAG_TFOOT", value: 101)
!136 = !DIEnumerator(name: "GUMBO_TAG_TR", value: 102)
!137 = !DIEnumerator(name: "GUMBO_TAG_TD", value: 103)
!138 = !DIEnumerator(name: "GUMBO_TAG_TH", value: 104)
!139 = !DIEnumerator(name: "GUMBO_TAG_FORM", value: 105)
!140 = !DIEnumerator(name: "GUMBO_TAG_FIELDSET", value: 106)
!141 = !DIEnumerator(name: "GUMBO_TAG_LEGEND", value: 107)
!142 = !DIEnumerator(name: "GUMBO_TAG_LABEL", value: 108)
!143 = !DIEnumerator(name: "GUMBO_TAG_INPUT", value: 109)
!144 = !DIEnumerator(name: "GUMBO_TAG_BUTTON", value: 110)
!145 = !DIEnumerator(name: "GUMBO_TAG_SELECT", value: 111)
!146 = !DIEnumerator(name: "GUMBO_TAG_DATALIST", value: 112)
!147 = !DIEnumerator(name: "GUMBO_TAG_OPTGROUP", value: 113)
!148 = !DIEnumerator(name: "GUMBO_TAG_OPTION", value: 114)
!149 = !DIEnumerator(name: "GUMBO_TAG_TEXTAREA", value: 115)
!150 = !DIEnumerator(name: "GUMBO_TAG_KEYGEN", value: 116)
!151 = !DIEnumerator(name: "GUMBO_TAG_OUTPUT", value: 117)
!152 = !DIEnumerator(name: "GUMBO_TAG_PROGRESS", value: 118)
!153 = !DIEnumerator(name: "GUMBO_TAG_METER", value: 119)
!154 = !DIEnumerator(name: "GUMBO_TAG_DETAILS", value: 120)
!155 = !DIEnumerator(name: "GUMBO_TAG_SUMMARY", value: 121)
!156 = !DIEnumerator(name: "GUMBO_TAG_MENU", value: 122)
!157 = !DIEnumerator(name: "GUMBO_TAG_MENUITEM", value: 123)
!158 = !DIEnumerator(name: "GUMBO_TAG_APPLET", value: 124)
!159 = !DIEnumerator(name: "GUMBO_TAG_ACRONYM", value: 125)
!160 = !DIEnumerator(name: "GUMBO_TAG_BGSOUND", value: 126)
!161 = !DIEnumerator(name: "GUMBO_TAG_DIR", value: 127)
!162 = !DIEnumerator(name: "GUMBO_TAG_FRAME", value: 128)
!163 = !DIEnumerator(name: "GUMBO_TAG_FRAMESET", value: 129)
!164 = !DIEnumerator(name: "GUMBO_TAG_NOFRAMES", value: 130)
!165 = !DIEnumerator(name: "GUMBO_TAG_ISINDEX", value: 131)
!166 = !DIEnumerator(name: "GUMBO_TAG_LISTING", value: 132)
!167 = !DIEnumerator(name: "GUMBO_TAG_XMP", value: 133)
!168 = !DIEnumerator(name: "GUMBO_TAG_NEXTID", value: 134)
!169 = !DIEnumerator(name: "GUMBO_TAG_NOEMBED", value: 135)
!170 = !DIEnumerator(name: "GUMBO_TAG_PLAINTEXT", value: 136)
!171 = !DIEnumerator(name: "GUMBO_TAG_RB", value: 137)
!172 = !DIEnumerator(name: "GUMBO_TAG_STRIKE", value: 138)
!173 = !DIEnumerator(name: "GUMBO_TAG_BASEFONT", value: 139)
!174 = !DIEnumerator(name: "GUMBO_TAG_BIG", value: 140)
!175 = !DIEnumerator(name: "GUMBO_TAG_BLINK", value: 141)
!176 = !DIEnumerator(name: "GUMBO_TAG_CENTER", value: 142)
!177 = !DIEnumerator(name: "GUMBO_TAG_FONT", value: 143)
!178 = !DIEnumerator(name: "GUMBO_TAG_MARQUEE", value: 144)
!179 = !DIEnumerator(name: "GUMBO_TAG_MULTICOL", value: 145)
!180 = !DIEnumerator(name: "GUMBO_TAG_NOBR", value: 146)
!181 = !DIEnumerator(name: "GUMBO_TAG_SPACER", value: 147)
!182 = !DIEnumerator(name: "GUMBO_TAG_TT", value: 148)
!183 = !DIEnumerator(name: "GUMBO_TAG_RTC", value: 149)
!184 = !DIEnumerator(name: "GUMBO_TAG_UNKNOWN", value: 150)
!185 = !DIEnumerator(name: "GUMBO_TAG_LAST", value: 151)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 334, baseType: !5, size: 32, elements: !187)
!187 = !{!188, !189, !190}
!188 = !DIEnumerator(name: "GUMBO_NAMESPACE_HTML", value: 0)
!189 = !DIEnumerator(name: "GUMBO_NAMESPACE_SVG", value: 1)
!190 = !DIEnumerator(name: "GUMBO_NAMESPACE_MATHML", value: 2)
!191 = !{!192, !194}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!195 = !{!"clang version 14.0.0 (git@github.com:charitha22/llvm-project-rocm.git e58f918745aeb5db2256d6110be8dd5255e5f113)"}
!196 = !{i32 7, !"Dwarf Version", i32 4}
!197 = !{i32 2, !"Debug Info Version", i32 3}
!198 = !{i32 1, !"wchar_size", i32 4}
!199 = !{i32 7, !"uwtable", i32 1}
!200 = distinct !DISubprogram(name: "klee_make_symbolic", scope: !1, file: !1, line: 26, type: !201, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !208)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !194, !203, !206}
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !204, line: 46, baseType: !205)
!204 = !DIFile(filename: "llvm-project-rocm/build_cfmse/lib/clang/14.0.0/include/stddef.h", directory: "/home/min/a/cgusthin/git")
!205 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!208 = !{!209, !210, !211}
!209 = !DILocalVariable(arg: 1, scope: !200, file: !1, line: 26, type: !194)
!210 = !DILocalVariable(arg: 2, scope: !200, file: !1, line: 26, type: !203)
!211 = !DILocalVariable(arg: 3, scope: !200, file: !1, line: 26, type: !206)
!212 = !{!213, !213, i64 0}
!213 = !{!"any pointer", !214, i64 0}
!214 = !{!"omnipotent char", !215, i64 0}
!215 = !{!"Simple C/C++ TBAA"}
!216 = !DILocation(line: 26, column: 31, scope: !200)
!217 = !{!218, !218, i64 0}
!218 = !{!"long", !214, i64 0}
!219 = !DILocation(line: 26, column: 39, scope: !200)
!220 = !DILocation(line: 26, column: 53, scope: !200)
!221 = !DILocation(line: 26, column: 56, scope: !200)
!222 = distinct !DISubprogram(name: "klee_assume", scope: !1, file: !1, line: 27, type: !223, scopeLine: 27, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !226)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !225}
!225 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!226 = !{!227}
!227 = !DILocalVariable(name: "uintptr_t", arg: 1, scope: !222, file: !1, line: 27, type: !225)
!228 = !{!229, !229, i64 0}
!229 = !{!"int", !214, i64 0}
!230 = !DILocation(line: 27, column: 18, scope: !222)
!231 = !DILocation(line: 27, column: 30, scope: !222)
!232 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 75, type: !233, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !236)
!233 = !DISubroutineType(types: !234)
!234 = !{!225, !225, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!236 = !{!237, !238, !239, !240, !241, !313}
!237 = !DILocalVariable(name: "argc", arg: 1, scope: !232, file: !1, line: 75, type: !225)
!238 = !DILocalVariable(name: "argv", arg: 2, scope: !232, file: !1, line: 75, type: !235)
!239 = !DILocalVariable(name: "input", scope: !232, file: !1, line: 88, type: !192)
!240 = !DILocalVariable(name: "input_length", scope: !232, file: !1, line: 92, type: !225)
!241 = !DILocalVariable(name: "output", scope: !232, file: !1, line: 94, type: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "GumboOutput", file: !4, line: 646, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GumboInternalOutput", file: !4, line: 625, size: 256, elements: !245)
!245 = !{!246, !311, !312}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "document", scope: !244, file: !4, line: 630, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "GumboNode", file: !4, line: 316, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GumboInternalNode", file: !4, line: 517, size: 1024, elements: !250)
!250 = !{!251, !253, !254, !255, !257}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !249, file: !4, line: 519, baseType: !252, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "GumboNodeType", file: !4, line: 310, baseType: !3)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !249, file: !4, line: 522, baseType: !247, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "index_within_parent", scope: !249, file: !4, line: 525, baseType: !203, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !249, file: !4, line: 532, baseType: !256, size: 32, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "GumboParseFlags", file: !4, line: 416, baseType: !14)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !249, file: !4, line: 539, baseType: !258, size: 768, offset: 256)
!258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !249, file: !4, line: 535, size: 768, elements: !259)
!259 = !{!260, !279, !304}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "document", scope: !258, file: !4, line: 536, baseType: !261, size: 448)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "GumboDocument", file: !4, line: 442, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 421, size: 448, elements: !263)
!263 = !{!264, !272, !274, !275, !276, !277}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !262, file: !4, line: 427, baseType: !265, size: 128)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "GumboVector", file: !4, line: 133, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 122, size: 128, elements: !267)
!267 = !{!268, !270, !271}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !266, file: !4, line: 126, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !266, file: !4, line: 129, baseType: !5, size: 32, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !266, file: !4, line: 132, baseType: !5, size: 32, offset: 96)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "has_doctype", scope: !262, file: !4, line: 430, baseType: !273, size: 8, offset: 128)
!273 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !262, file: !4, line: 433, baseType: !206, size: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "public_identifier", scope: !262, file: !4, line: 434, baseType: !206, size: 64, offset: 256)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "system_identifier", scope: !262, file: !4, line: 435, baseType: !206, size: 64, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "doc_type_quirks_mode", scope: !262, file: !4, line: 441, baseType: !278, size: 32, offset: 384)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "GumboQuirksModeEnum", file: !4, line: 325, baseType: !27)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "element", scope: !258, file: !4, line: 537, baseType: !280, size: 768)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "GumboElement", file: !4, line: 511, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 472, size: 768, elements: !282)
!282 = !{!283, !284, !286, !288, !294, !295, !302, !303}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !281, file: !4, line: 477, baseType: !265, size: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !281, file: !4, line: 480, baseType: !285, size: 32, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "GumboTag", file: !4, line: 165, baseType: !32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tag_namespace", scope: !281, file: !4, line: 483, baseType: !287, size: 32, offset: 160)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "GumboNamespaceEnum", file: !4, line: 338, baseType: !186)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "original_tag", scope: !281, file: !4, line: 491, baseType: !289, size: 128, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "GumboStringPiece", file: !4, line: 94, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 88, size: 128, elements: !291)
!291 = !{!292, !293}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !290, file: !4, line: 90, baseType: !206, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !290, file: !4, line: 93, baseType: !203, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "original_end_tag", scope: !281, file: !4, line: 498, baseType: !289, size: 128, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "start_pos", scope: !281, file: !4, line: 501, baseType: !296, size: 96, offset: 448)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "GumboSourcePosition", file: !4, line: 71, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 67, size: 96, elements: !298)
!298 = !{!299, !300, !301}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !297, file: !4, line: 68, baseType: !5, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !297, file: !4, line: 69, baseType: !5, size: 32, offset: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !297, file: !4, line: 70, baseType: !5, size: 32, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "end_pos", scope: !281, file: !4, line: 504, baseType: !296, size: 96, offset: 544)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !281, file: !4, line: 510, baseType: !265, size: 128, offset: 640)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !258, file: !4, line: 538, baseType: !305, size: 320)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "GumboText", file: !4, line: 466, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 448, size: 320, elements: !307)
!307 = !{!308, !309, !310}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !306, file: !4, line: 453, baseType: !206, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "original_text", scope: !306, file: !4, line: 459, baseType: !289, size: 128, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "start_pos", scope: !306, file: !4, line: 465, baseType: !296, size: 96, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !244, file: !4, line: 636, baseType: !247, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "errors", scope: !244, file: !4, line: 645, baseType: !265, size: 128, offset: 128)
!313 = !DILocalVariable(name: "title", scope: !232, file: !1, line: 96, type: !206)
!314 = !DILocation(line: 75, column: 14, scope: !232)
!315 = !DILocation(line: 75, column: 33, scope: !232)
!316 = !DILocation(line: 88, column: 3, scope: !232)
!317 = !DILocation(line: 88, column: 9, scope: !232)
!318 = !DILocation(line: 88, column: 26, scope: !232)
!319 = !DILocation(line: 90, column: 22, scope: !232)
!320 = !DILocation(line: 90, column: 3, scope: !232)
!321 = !DILocation(line: 91, column: 15, scope: !232)
!322 = !{!214, !214, i64 0}
!323 = !DILocation(line: 91, column: 34, scope: !232)
!324 = !DILocation(line: 91, column: 3, scope: !232)
!325 = !DILocation(line: 92, column: 3, scope: !232)
!326 = !DILocation(line: 92, column: 7, scope: !232)
!327 = !DILocation(line: 94, column: 3, scope: !232)
!328 = !DILocation(line: 94, column: 16, scope: !232)
!329 = !DILocation(line: 95, column: 30, scope: !232)
!330 = !DILocation(line: 95, column: 37, scope: !232)
!331 = !DILocation(line: 94, column: 25, scope: !232)
!332 = !DILocation(line: 96, column: 3, scope: !232)
!333 = !DILocation(line: 96, column: 15, scope: !232)
!334 = !DILocation(line: 96, column: 34, scope: !232)
!335 = !DILocation(line: 96, column: 42, scope: !232)
!336 = !{!337, !213, i64 8}
!337 = !{!"GumboInternalOutput", !213, i64 0, !213, i64 8, !338, i64 16}
!338 = !{!"", !213, i64 0, !229, i64 8, !229, i64 12}
!339 = !DILocation(line: 96, column: 23, scope: !232)
!340 = !DILocation(line: 97, column: 18, scope: !232)
!341 = !DILocation(line: 97, column: 3, scope: !232)
!342 = !DILocation(line: 98, column: 47, scope: !232)
!343 = !DILocation(line: 98, column: 3, scope: !232)
!344 = !DILocation(line: 99, column: 8, scope: !232)
!345 = !DILocation(line: 99, column: 3, scope: !232)
!346 = !DILocation(line: 100, column: 1, scope: !232)
!347 = !DISubprogram(name: "gumbo_parse_with_options", scope: !4, file: !4, line: 661, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !371)
!348 = !DISubroutineType(types: !349)
!349 = !{!350, !351, !206, !205}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GumboInternalOptions", file: !4, line: 563, size: 384, elements: !354)
!354 = !{!355, !360, !365, !366, !367, !368, !369, !370}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !353, file: !4, line: 565, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "GumboAllocatorFunction", file: !4, line: 549, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!194, !194, !203}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "deallocator", scope: !353, file: !4, line: 568, baseType: !361, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "GumboDeallocatorFunction", file: !4, line: 555, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !194, !194}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "userdata", scope: !353, file: !4, line: 574, baseType: !194, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tab_stop", scope: !353, file: !4, line: 580, baseType: !225, size: 32, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "stop_on_first_error", scope: !353, file: !4, line: 586, baseType: !273, size: 8, offset: 224)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "max_errors", scope: !353, file: !4, line: 595, baseType: !225, size: 32, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_context", scope: !353, file: !4, line: 610, baseType: !285, size: 32, offset: 288)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_namespace", scope: !353, file: !4, line: 618, baseType: !287, size: 32, offset: 320)
!371 = !{}
!372 = distinct !DISubprogram(name: "find_title", scope: !1, file: !1, line: 42, type: !373, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !377)
!373 = !DISubroutineType(types: !374)
!374 = !{!206, !375}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!377 = !{!378, !379, !382, !383, !385, !388, !390, !392, !395}
!378 = !DILocalVariable(name: "root", arg: 1, scope: !372, file: !1, line: 42, type: !375)
!379 = !DILocalVariable(name: "root_children", scope: !372, file: !1, line: 46, type: !380)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!382 = !DILocalVariable(name: "head", scope: !372, file: !1, line: 47, type: !247)
!383 = !DILocalVariable(name: "i", scope: !384, file: !1, line: 48, type: !225)
!384 = distinct !DILexicalBlock(scope: !372, file: !1, line: 48, column: 3)
!385 = !DILocalVariable(name: "child", scope: !386, file: !1, line: 49, type: !247)
!386 = distinct !DILexicalBlock(scope: !387, file: !1, line: 48, column: 51)
!387 = distinct !DILexicalBlock(scope: !384, file: !1, line: 48, column: 3)
!388 = !DILocalVariable(name: "head_children", scope: !372, file: !1, line: 58, type: !389)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!390 = !DILocalVariable(name: "i", scope: !391, file: !1, line: 59, type: !225)
!391 = distinct !DILexicalBlock(scope: !372, file: !1, line: 59, column: 3)
!392 = !DILocalVariable(name: "child", scope: !393, file: !1, line: 60, type: !247)
!393 = distinct !DILexicalBlock(scope: !394, file: !1, line: 59, column: 51)
!394 = distinct !DILexicalBlock(scope: !391, file: !1, line: 59, column: 3)
!395 = !DILocalVariable(name: "title_text", scope: !396, file: !1, line: 66, type: !247)
!396 = distinct !DILexicalBlock(scope: !397, file: !1, line: 62, column: 50)
!397 = distinct !DILexicalBlock(scope: !393, file: !1, line: 61, column: 9)
!398 = !DILocation(line: 42, column: 48, scope: !372)
!399 = !DILocation(line: 43, column: 3, scope: !400)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 43, column: 3)
!401 = distinct !DILexicalBlock(scope: !372, file: !1, line: 43, column: 3)
!402 = !{!403, !214, i64 0}
!403 = !{!"GumboInternalNode", !214, i64 0, !213, i64 8, !218, i64 16, !214, i64 24, !214, i64 32}
!404 = !DILocation(line: 43, column: 3, scope: !401)
!405 = !DILocation(line: 44, column: 3, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !1, line: 44, column: 3)
!407 = distinct !DILexicalBlock(scope: !372, file: !1, line: 44, column: 3)
!408 = !DILocation(line: 44, column: 3, scope: !407)
!409 = !DILocation(line: 46, column: 3, scope: !372)
!410 = !DILocation(line: 46, column: 22, scope: !372)
!411 = !DILocation(line: 46, column: 39, scope: !372)
!412 = !DILocation(line: 46, column: 45, scope: !372)
!413 = !DILocation(line: 46, column: 47, scope: !372)
!414 = !DILocation(line: 46, column: 55, scope: !372)
!415 = !DILocation(line: 47, column: 3, scope: !372)
!416 = !DILocation(line: 47, column: 14, scope: !372)
!417 = !DILocation(line: 48, column: 8, scope: !384)
!418 = !DILocation(line: 48, column: 12, scope: !384)
!419 = !DILocation(line: 48, column: 19, scope: !387)
!420 = !DILocation(line: 48, column: 23, scope: !387)
!421 = !DILocation(line: 48, column: 38, scope: !387)
!422 = !{!338, !229, i64 8}
!423 = !DILocation(line: 48, column: 21, scope: !387)
!424 = !DILocation(line: 48, column: 3, scope: !384)
!425 = !DILocation(line: 49, column: 5, scope: !386)
!426 = !DILocation(line: 49, column: 16, scope: !386)
!427 = !DILocation(line: 49, column: 24, scope: !386)
!428 = !DILocation(line: 49, column: 39, scope: !386)
!429 = !{!338, !213, i64 0}
!430 = !DILocation(line: 49, column: 44, scope: !386)
!431 = !DILocation(line: 50, column: 9, scope: !432)
!432 = distinct !DILexicalBlock(scope: !386, file: !1, line: 50, column: 9)
!433 = !DILocation(line: 50, column: 16, scope: !432)
!434 = !DILocation(line: 50, column: 21, scope: !432)
!435 = !DILocation(line: 50, column: 43, scope: !432)
!436 = !DILocation(line: 51, column: 9, scope: !432)
!437 = !DILocation(line: 51, column: 16, scope: !432)
!438 = !DILocation(line: 51, column: 18, scope: !432)
!439 = !DILocation(line: 51, column: 26, scope: !432)
!440 = !DILocation(line: 51, column: 30, scope: !432)
!441 = !DILocation(line: 50, column: 9, scope: !386)
!442 = !DILocation(line: 52, column: 14, scope: !443)
!443 = distinct !DILexicalBlock(scope: !432, file: !1, line: 51, column: 49)
!444 = !DILocation(line: 52, column: 12, scope: !443)
!445 = !DILocation(line: 53, column: 7, scope: !443)
!446 = !DILocation(line: 55, column: 3, scope: !387)
!447 = !DILocation(line: 55, column: 3, scope: !386)
!448 = !DILocation(line: 48, column: 46, scope: !387)
!449 = !DILocation(line: 48, column: 3, scope: !387)
!450 = distinct !{!450, !424, !451, !452, !453}
!451 = !DILocation(line: 55, column: 3, scope: !384)
!452 = !{!"llvm.loop.mustprogress"}
!453 = !{!"llvm.loop.unroll.disable"}
!454 = !DILocation(line: 56, column: 3, scope: !455)
!455 = distinct !DILexicalBlock(scope: !456, file: !1, line: 56, column: 3)
!456 = distinct !DILexicalBlock(scope: !372, file: !1, line: 56, column: 3)
!457 = !DILocation(line: 56, column: 3, scope: !456)
!458 = !DILocation(line: 58, column: 3, scope: !372)
!459 = !DILocation(line: 58, column: 16, scope: !372)
!460 = !DILocation(line: 58, column: 33, scope: !372)
!461 = !DILocation(line: 58, column: 39, scope: !372)
!462 = !DILocation(line: 58, column: 41, scope: !372)
!463 = !DILocation(line: 58, column: 49, scope: !372)
!464 = !DILocation(line: 59, column: 8, scope: !391)
!465 = !DILocation(line: 59, column: 12, scope: !391)
!466 = !DILocation(line: 59, column: 19, scope: !394)
!467 = !DILocation(line: 59, column: 23, scope: !394)
!468 = !DILocation(line: 59, column: 38, scope: !394)
!469 = !DILocation(line: 59, column: 21, scope: !394)
!470 = !DILocation(line: 59, column: 3, scope: !391)
!471 = !DILocation(line: 60, column: 5, scope: !393)
!472 = !DILocation(line: 60, column: 16, scope: !393)
!473 = !DILocation(line: 60, column: 24, scope: !393)
!474 = !DILocation(line: 60, column: 39, scope: !393)
!475 = !DILocation(line: 60, column: 44, scope: !393)
!476 = !DILocation(line: 61, column: 9, scope: !397)
!477 = !DILocation(line: 61, column: 16, scope: !397)
!478 = !DILocation(line: 61, column: 21, scope: !397)
!479 = !DILocation(line: 61, column: 43, scope: !397)
!480 = !DILocation(line: 62, column: 9, scope: !397)
!481 = !DILocation(line: 62, column: 16, scope: !397)
!482 = !DILocation(line: 62, column: 18, scope: !397)
!483 = !DILocation(line: 62, column: 26, scope: !397)
!484 = !DILocation(line: 62, column: 30, scope: !397)
!485 = !DILocation(line: 61, column: 9, scope: !393)
!486 = !DILocation(line: 63, column: 11, scope: !487)
!487 = distinct !DILexicalBlock(scope: !396, file: !1, line: 63, column: 11)
!488 = !DILocation(line: 63, column: 18, scope: !487)
!489 = !DILocation(line: 63, column: 20, scope: !487)
!490 = !DILocation(line: 63, column: 28, scope: !487)
!491 = !DILocation(line: 63, column: 37, scope: !487)
!492 = !DILocation(line: 63, column: 44, scope: !487)
!493 = !DILocation(line: 63, column: 11, scope: !396)
!494 = !DILocation(line: 64, column: 9, scope: !495)
!495 = distinct !DILexicalBlock(scope: !487, file: !1, line: 63, column: 50)
!496 = !DILocation(line: 66, column: 7, scope: !396)
!497 = !DILocation(line: 66, column: 18, scope: !396)
!498 = !DILocation(line: 66, column: 31, scope: !396)
!499 = !DILocation(line: 66, column: 38, scope: !396)
!500 = !DILocation(line: 66, column: 40, scope: !396)
!501 = !DILocation(line: 66, column: 48, scope: !396)
!502 = !DILocation(line: 66, column: 57, scope: !396)
!503 = !DILocation(line: 67, column: 7, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !1, line: 67, column: 7)
!505 = distinct !DILexicalBlock(scope: !396, file: !1, line: 67, column: 7)
!506 = !DILocation(line: 67, column: 7, scope: !505)
!507 = !DILocation(line: 68, column: 14, scope: !396)
!508 = !DILocation(line: 68, column: 26, scope: !396)
!509 = !DILocation(line: 68, column: 28, scope: !396)
!510 = !DILocation(line: 68, column: 33, scope: !396)
!511 = !DILocation(line: 68, column: 7, scope: !396)
!512 = !DILocation(line: 69, column: 5, scope: !397)
!513 = !DILocation(line: 70, column: 3, scope: !394)
!514 = !DILocation(line: 70, column: 3, scope: !393)
!515 = !DILocation(line: 59, column: 46, scope: !394)
!516 = !DILocation(line: 59, column: 3, scope: !394)
!517 = distinct !{!517, !470, !518, !452, !453}
!518 = !DILocation(line: 70, column: 3, scope: !391)
!519 = !DILocation(line: 71, column: 3, scope: !372)
!520 = !DILocation(line: 72, column: 1, scope: !372)
!521 = !DISubprogram(name: "gumbo_destroy_output", scope: !4, file: !4, line: 665, type: !522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !371)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !351, !350}
