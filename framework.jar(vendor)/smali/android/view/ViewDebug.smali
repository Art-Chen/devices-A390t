.class public Landroid/view/ViewDebug;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewDebug$ViewOperation;,
        Landroid/view/ViewDebug$LooperProfiler;,
        Landroid/view/ViewDebug$RecyclerTrace;,
        Landroid/view/ViewDebug$RecyclerTraceType;,
        Landroid/view/ViewDebug$HierarchyTraceType;,
        Landroid/view/ViewDebug$CapturedViewProperty;,
        Landroid/view/ViewDebug$FlagToString;,
        Landroid/view/ViewDebug$IntToString;,
        Landroid/view/ViewDebug$ExportedProperty;
    }
.end annotation


# static fields
.field private static final CAPTURE_TIMEOUT:I = 0xfa0

.field public static final CONSISTENCY_DRAWING:I = 0x2

.field public static final CONSISTENCY_LAYOUT:I = 0x1

.field public static final CONSISTENCY_LOG_TAG:Ljava/lang/String; = "ViewConsistency"

.field public static final DEBUG_DRAG:Z = false

.field public static final DEBUG_LATENCY:Z = false

.field public static final DEBUG_PROFILE_DRAWING:Z = false

.field public static final DEBUG_PROFILE_LAYOUT:Z = false

.field private static final REMOTE_COMMAND_CAPTURE:Ljava/lang/String; = "CAPTURE"

.field private static final REMOTE_COMMAND_CAPTURE_LAYERS:Ljava/lang/String; = "CAPTURE_LAYERS"

.field private static final REMOTE_COMMAND_DUMP:Ljava/lang/String; = "DUMP"

.field private static final REMOTE_COMMAND_INVALIDATE:Ljava/lang/String; = "INVALIDATE"

.field private static final REMOTE_COMMAND_OUTPUT_DISPLAYLIST:Ljava/lang/String; = "OUTPUT_DISPLAYLIST"

.field private static final REMOTE_COMMAND_REQUEST_LAYOUT:Ljava/lang/String; = "REQUEST_LAYOUT"

.field private static final REMOTE_PROFILE:Ljava/lang/String; = "PROFILE"

.field public static final TRACE_HIERARCHY:Z

.field public static final TRACE_RECYCLER:Z

.field public static consistencyCheckEnabled:Z
    .annotation runtime Landroid/os/Debug$DebugProperty;
    .end annotation
.end field

.field private static mCapturedViewFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static mCapturedViewMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sAnnotations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/reflect/AccessibleObject;",
            "Landroid/view/ViewDebug$ExportedProperty;",
            ">;"
        }
    .end annotation
.end field

.field private static sFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static sHierarchyTracePrefix:Ljava/lang/String;

.field private static sHierarchyTraces:Ljava/io/BufferedWriter;

.field private static sHierarhcyRoot:Landroid/view/ViewRootImpl;

.field private static final sLooperProfilerStorage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/ViewDebug$LooperProfiler;",
            ">;"
        }
    .end annotation
.end field

.field private static sMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecyclerOwnerView:Landroid/view/View;

.field private static sRecyclerTracePrefix:Ljava/lang/String;

.field private static sRecyclerTraces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/ViewDebug$RecyclerTrace;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecyclerViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/ViewDebug;->consistencyCheckEnabled:Z

    .line 343
    sput-object v1, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 344
    sput-object v1, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 403
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/ViewDebug;->sLooperProfilerStorage:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1121
    return-void
.end method

.method private static capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 7
    .parameter "root"
    .parameter "clientStream"
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1236
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 1237
    .local v1, captureView:Landroid/view/View;
    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1239
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 1240
    const-string v4, "View"

    const-string v5, "Failed to create capture bitmap!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1246
    :cond_0
    const/4 v2, 0x0

    .line 1248
    .local v2, out:Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    const v4, 0x8000

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1249
    .end local v2           #out:Ljava/io/BufferedOutputStream;
    .local v3, out:Ljava/io/BufferedOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1250
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1252
    if-eqz v3, :cond_1

    .line 1253
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 1255
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1257
    return-void

    .line 1252
    .end local v3           #out:Ljava/io/BufferedOutputStream;
    .restart local v2       #out:Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v4

    :goto_0
    if-eqz v2, :cond_2

    .line 1253
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 1255
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    throw v4

    .line 1252
    .end local v2           #out:Ljava/io/BufferedOutputStream;
    .restart local v3       #out:Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedOutputStream;
    .restart local v2       #out:Ljava/io/BufferedOutputStream;
    goto :goto_0
.end method

.method private static captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V
    .locals 3
    .parameter "root"
    .parameter "clientStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1165
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    .local v0, outRect:Landroid/graphics/Rect;
    :try_start_1
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1172
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1173
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1175
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 1177
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1179
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 1181
    return-void

    .line 1179
    .end local v0           #outRect:Landroid/graphics/Rect;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    throw v1

    .line 1168
    .restart local v0       #outRect:Landroid/graphics/Rect;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V
    .locals 13
    .parameter "view"
    .parameter "clientStream"
    .parameter "visible"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1186
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_3

    if-eqz p2, :cond_3

    move v6, v9

    .line 1188
    .local v6, localVisible:Z
    :goto_0
    iget v11, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v11, v11, 0x80

    const/16 v12, 0x80

    if-eq v11, v12, :cond_2

    .line 1189
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    .line 1190
    .local v5, id:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 1191
    .local v7, name:Ljava/lang/String;
    const/4 v11, -0x1

    if-eq v5, v11, :cond_0

    .line 1192
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v5}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1195
    :cond_0
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1196
    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1197
    if-eqz v6, :cond_4

    move v11, v9

    :goto_1
    invoke-virtual {p1, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1199
    const/4 v11, 0x2

    new-array v8, v11, [I

    .line 1201
    .local v8, position:[I
    invoke-virtual {p0, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1203
    aget v10, v8, v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1204
    aget v10, v8, v9

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1205
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 1207
    invoke-static {p0, v9}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1208
    .local v1, b:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 1209
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v0, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1211
    .local v0, arrayOut:Ljava/io/ByteArrayOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v1, v9, v10, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1212
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1213
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 1215
    .end local v0           #arrayOut:Ljava/io/ByteArrayOutputStream;
    :cond_1
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 1218
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v5           #id:I
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #position:[I
    :cond_2
    instance-of v9, p0, Landroid/view/ViewGroup;

    if-eqz v9, :cond_5

    move-object v3, p0

    .line 1219
    check-cast v3, Landroid/view/ViewGroup;

    .line 1220
    .local v3, group:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1222
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v2, :cond_5

    .line 1223
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, p1, v6}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 1222
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2           #count:I
    .end local v3           #group:Landroid/view/ViewGroup;
    .end local v4           #i:I
    .end local v6           #localVisible:Z
    :cond_3
    move v6, v10

    .line 1186
    goto/16 :goto_0

    .restart local v5       #id:I
    .restart local v6       #localVisible:Z
    .restart local v7       #name:Ljava/lang/String;
    :cond_4
    move v11, v10

    .line 1197
    goto :goto_1

    .line 1226
    .end local v5           #id:I
    .end local v7           #name:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private static capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "obj"
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1853
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 1854
    const-string/jumbo v7, "null"

    .line 1882
    :goto_0
    return-object v7

    .line 1857
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1858
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1860
    .local v3, fields:[Ljava/lang/reflect/Field;
    array-length v0, v3

    .line 1861
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 1862
    aget-object v1, v3, v4

    .line 1864
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1866
    .local v2, fieldValue:Ljava/lang/Object;
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1867
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1868
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1870
    if-eqz v2, :cond_1

    .line 1871
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, "\\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1872
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1876
    .end local v6           #value:Ljava/lang/String;
    :goto_2
    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1861
    .end local v2           #fieldValue:Ljava/lang/Object;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1874
    .restart local v2       #fieldValue:Ljava/lang/Object;
    :cond_1
    const-string/jumbo v7, "null"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1877
    .end local v2           #fieldValue:Ljava/lang/Object;
    :catch_0
    move-exception v7

    goto :goto_3

    .line 1882
    .end local v1           #field:Ljava/lang/reflect/Field;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private static capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "obj"
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1809
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 1810
    const-string/jumbo v9, "null"

    .line 1848
    :goto_0
    return-object v9

    .line 1813
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1814
    .local v7, sb:Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1816
    .local v4, methods:[Ljava/lang/reflect/Method;
    array-length v0, v4

    .line 1817
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1818
    aget-object v2, v4, v1

    .line 1820
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    :try_start_0
    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1821
    .local v3, methodValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 1823
    .local v6, returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v9, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landroid/view/ViewDebug$CapturedViewProperty;

    .line 1824
    .local v5, property:Landroid/view/ViewDebug$CapturedViewProperty;
    invoke-interface {v5}, Landroid/view/ViewDebug$CapturedViewProperty;->retrieveReturn()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1826
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v6, v9}, Landroid/view/ViewDebug;->capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    .end local v3           #methodValue:Ljava/lang/Object;
    .end local v5           #property:Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v6           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1828
    .restart local v3       #methodValue:Ljava/lang/Object;
    .restart local v5       #property:Landroid/view/ViewDebug$CapturedViewProperty;
    .restart local v6       #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1829
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    const-string v9, "()="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1832
    if-eqz v3, :cond_2

    .line 1833
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\n"

    const-string v11, "\\n"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1834
    .local v8, value:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1838
    .end local v8           #value:Ljava/lang/String;
    :goto_3
    const-string v9, "; "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1840
    .end local v3           #methodValue:Ljava/lang/Object;
    .end local v5           #property:Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v6           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v9

    goto :goto_2

    .line 1836
    .restart local v3       #methodValue:Ljava/lang/Object;
    .restart local v5       #property:Landroid/view/ViewDebug$CapturedViewProperty;
    .restart local v6       #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    const-string/jumbo v9, "null"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 1843
    .end local v3           #methodValue:Ljava/lang/Object;
    .end local v5           #property:Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v6           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1
    move-exception v9

    goto :goto_2

    .line 1848
    .end local v2           #method:Ljava/lang/reflect/Method;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method private static capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 1747
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v7, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_0

    .line 1748
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 1750
    :cond_0
    sget-object v6, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 1752
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1753
    .local v2, fields:[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 1772
    .end local v2           #fields:[Ljava/lang/reflect/Field;
    .local v3, fields:[Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 1757
    .end local v3           #fields:[Ljava/lang/reflect/Field;
    .restart local v2       #fields:[Ljava/lang/reflect/Field;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1758
    .local v4, foundFields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1760
    array-length v0, v2

    .line 1761
    .local v0, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v0, :cond_3

    .line 1762
    aget-object v1, v2, v5

    .line 1763
    .local v1, field:Ljava/lang/reflect/Field;
    const-class v7, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1764
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1765
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1761
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1769
    .end local v1           #field:Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Field;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #fields:[Ljava/lang/reflect/Field;
    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1770
    .restart local v2       #fields:[Ljava/lang/reflect/Field;
    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 1772
    .end local v2           #fields:[Ljava/lang/reflect/Field;
    .restart local v3       #fields:[Ljava/lang/reflect/Field;
    goto :goto_0
.end method

.method private static capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1776
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v7, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_0

    .line 1777
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 1779
    :cond_0
    sget-object v3, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 1781
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1782
    .local v5, methods:[Ljava/lang/reflect/Method;
    if-eqz v5, :cond_1

    move-object v6, v5

    .line 1803
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    .local v6, methods:[Ljava/lang/reflect/Method;
    :goto_0
    return-object v6

    .line 1786
    .end local v6           #methods:[Ljava/lang/reflect/Method;
    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1787
    .local v1, foundMethods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1789
    array-length v0, v5

    .line 1790
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 1791
    aget-object v4, v5, v2

    .line 1792
    .local v4, method:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_2

    const-class v7, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Void;

    if-eq v7, v8, :cond_2

    .line 1795
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1796
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1790
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1800
    .end local v4           #method:Ljava/lang/reflect/Method;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Method;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5           #methods:[Ljava/lang/reflect/Method;
    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1801
    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    invoke-virtual {v3, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    .line 1803
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    .restart local v6       #methods:[Ljava/lang/reflect/Method;
    goto :goto_0
.end method

.method static dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "view"
    .parameter "command"
    .parameter "parameters"
    .parameter "clientStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 940
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 942
    const-string v1, "DUMP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 943
    invoke-static {p0, p3}, Landroid/view/ViewDebug;->dump(Landroid/view/View;Ljava/io/OutputStream;)V

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    const-string v1, "CAPTURE_LAYERS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 945
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 947
    :cond_2
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 948
    .local v0, params:[Ljava/lang/String;
    const-string v1, "CAPTURE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 949
    aget-object v1, v0, v2

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 950
    :cond_3
    const-string v1, "OUTPUT_DISPLAYLIST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 951
    aget-object v1, v0, v2

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->outputDisplayList(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 952
    :cond_4
    const-string v1, "INVALIDATE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 953
    aget-object v1, v0, v2

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->invalidate(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 954
    :cond_5
    const-string v1, "REQUEST_LAYOUT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 955
    aget-object v1, v0, v2

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->requestLayout(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 956
    :cond_6
    const-string v1, "PROFILE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 957
    aget-object v1, v0, v2

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static dump(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 8
    .parameter "root"
    .parameter "clientStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1290
    const/4 v3, 0x0

    .line 1292
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    const-string/jumbo v7, "utf-8"

    invoke-direct {v6, p1, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v7, 0x8000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1293
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 1294
    .local v5, view:Landroid/view/View;
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 1295
    move-object v0, v5

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 1296
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v2, v4, v7}, Landroid/view/ViewDebug;->dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 1298
    .end local v2           #group:Landroid/view/ViewGroup;
    :cond_0
    const-string v6, "DONE."

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1299
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1303
    if-eqz v4, :cond_3

    .line 1304
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    move-object v3, v4

    .line 1307
    .end local v4           #out:Ljava/io/BufferedWriter;
    .end local v5           #view:Landroid/view/View;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :cond_1
    :goto_0
    return-void

    .line 1300
    :catch_0
    move-exception v1

    .line 1301
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v6, "View"

    const-string v7, "Problem dumping the view:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1303
    if-eqz v3, :cond_1

    .line 1304
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_0

    .line 1303
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_2

    .line 1304
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    throw v6

    .line 1303
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 1300
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    .restart local v5       #view:Landroid/view/View;
    :cond_3
    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method public static dumpCapturedView(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "tag"
    .parameter "view"

    .prologue
    .line 1893
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1894
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1895
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, ""

    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    const-string v2, ""

    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    return-void
.end method

.method private static dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z
    .locals 4
    .parameter "view"
    .parameter "out"
    .parameter "level"

    .prologue
    .line 1732
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 1733
    const/16 v2, 0x20

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1732
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1735
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1736
    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1737
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1738
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1743
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 1739
    :catch_0
    move-exception v0

    .line 1740
    .local v0, e:Ljava/io/IOException;
    const-string v2, "View"

    const-string v3, "Error while dumping hierarchy tree"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static dumpViewHierarchy(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .locals 4
    .parameter "group"
    .parameter "out"
    .parameter "level"

    .prologue
    .line 1715
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1728
    :cond_0
    return-void

    .line 1719
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1720
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1721
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1722
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 1723
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #view:Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 1720
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1725
    .restart local v2       #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/ViewDebug;->dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    goto :goto_1
.end method

.method private static dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .locals 4
    .parameter "context"
    .parameter "group"
    .parameter "out"
    .parameter "level"

    .prologue
    .line 1336
    invoke-static {p0, p1, p2, p3}, Landroid/view/ViewDebug;->dumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1349
    :cond_0
    return-void

    .line 1340
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1341
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1342
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1343
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 1344
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #view:Landroid/view/View;
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug;->dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 1341
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1346
    .restart local v2       #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug;->dumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z

    goto :goto_1
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .locals 1
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1444
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 1445
    return-void
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1450
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1453
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1454
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1455
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1456
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 1457
    return-void
.end method

.method private static dumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z
    .locals 4
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .parameter "level"

    .prologue
    .line 1355
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 1356
    const/16 v2, 0x20

    :try_start_0
    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1355
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1358
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1359
    const/16 v2, 0x40

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1360
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1361
    const/16 v2, 0x20

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1362
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    .line 1363
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 1364
    :catch_0
    move-exception v0

    .line 1365
    .local v0, e:Ljava/io/IOException;
    const-string v2, "View"

    const-string v3, "Error while dumping hierarchy tree"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 23
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1535
    .local p3, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 1537
    .local v12, fields:[Ljava/lang/reflect/Field;
    array-length v9, v12

    .line 1538
    .local v9, count:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v9, :cond_8

    .line 1539
    aget-object v10, v12, v14

    .line 1543
    .local v10, field:Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    .line 1544
    .local v11, fieldValue:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v22

    .line 1545
    .local v22, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v2, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewDebug$ExportedProperty;

    .line 1546
    .local v4, property:Landroid/view/ViewDebug$ExportedProperty;
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1549
    .local v8, categoryPrefix:Ljava/lang/String;
    :goto_1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_7

    .line 1551
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p0, :cond_3

    .line 1552
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    .line 1553
    .local v15, id:I
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v11

    .line 1597
    .end local v11           #fieldValue:Ljava/lang/Object;
    .end local v15           #id:I
    :cond_0
    :goto_2
    if-nez v11, :cond_1

    .line 1598
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 1601
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, ""

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v7, v11}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1538
    .end local v4           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v8           #categoryPrefix:Ljava/lang/String;
    .end local v22           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1546
    .restart local v4       #property:Landroid/view/ViewDebug$ExportedProperty;
    .restart local v11       #fieldValue:Ljava/lang/Object;
    .restart local v22       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    const-string v8, ""

    goto :goto_1

    .line 1555
    .restart local v8       #categoryPrefix:Ljava/lang/String;
    :cond_3
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v13

    .line 1556
    .local v13, flagsMapping:[Landroid/view/ViewDebug$FlagToString;
    array-length v2, v13

    if-lez v2, :cond_4

    .line 1557
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    .line 1558
    .local v16, intValue:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1560
    .local v6, valuePrefix:Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v13, v1, v6}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1563
    .end local v6           #valuePrefix:Ljava/lang/String;
    .end local v16           #intValue:I
    :cond_4
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v19

    .line 1564
    .local v19, mapping:[Landroid/view/ViewDebug$IntToString;
    move-object/from16 v0, v19

    array-length v2, v0

    if-lez v2, :cond_0

    .line 1565
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    .line 1566
    .restart local v16       #intValue:I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    .line 1567
    .local v20, mappingCount:I
    const/16 v17, 0x0

    .local v17, j:I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 1568
    aget-object v18, v19, v17

    .line 1569
    .local v18, mapped:Landroid/view/ViewDebug$IntToString;
    invoke-interface/range {v18 .. v18}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_6

    .line 1570
    invoke-interface/range {v18 .. v18}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v11

    .line 1575
    .end local v11           #fieldValue:Ljava/lang/Object;
    .end local v18           #mapped:Landroid/view/ViewDebug$IntToString;
    :cond_5
    if-nez v11, :cond_0

    .line 1576
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .local v11, fieldValue:Ljava/lang/Integer;
    goto/16 :goto_2

    .line 1567
    .local v11, fieldValue:Ljava/lang/Object;
    .restart local v18       #mapped:Landroid/view/ViewDebug$IntToString;
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 1580
    .end local v13           #flagsMapping:[Landroid/view/ViewDebug$FlagToString;
    .end local v16           #intValue:I
    .end local v17           #j:I
    .end local v18           #mapped:Landroid/view/ViewDebug$IntToString;
    .end local v19           #mapping:[Landroid/view/ViewDebug$IntToString;
    .end local v20           #mappingCount:I
    :cond_7
    const-class v2, [I

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_9

    .line 1581
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v5, v0

    .line 1582
    .local v5, array:[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1583
    .restart local v6       #valuePrefix:Ljava/lang/String;
    const-string v21, ""

    .line 1585
    .local v21, suffix:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    .line 1605
    .end local v4           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v5           #array:[I
    .end local v6           #valuePrefix:Ljava/lang/String;
    .end local v8           #categoryPrefix:Ljava/lang/String;
    .end local v10           #field:Ljava/lang/reflect/Field;
    .end local v11           #fieldValue:Ljava/lang/Object;
    .end local v21           #suffix:Ljava/lang/String;
    .end local v22           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_8
    return-void

    .line 1589
    .restart local v4       #property:Landroid/view/ViewDebug$ExportedProperty;
    .restart local v8       #categoryPrefix:Ljava/lang/String;
    .restart local v10       #field:Ljava/lang/reflect/Field;
    .restart local v11       #fieldValue:Ljava/lang/Object;
    .restart local v22       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_9
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1590
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1591
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1, v3}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 1602
    .end local v4           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v8           #categoryPrefix:Ljava/lang/String;
    .end local v11           #fieldValue:Ljava/lang/Object;
    .end local v22           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    goto/16 :goto_3
.end method

.method private static exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 25
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1462
    .local p3, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v22

    .line 1464
    .local v22, methods:[Ljava/lang/reflect/Method;
    move-object/from16 v0, v22

    array-length v10, v0

    .line 1465
    .local v10, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v10, :cond_7

    .line 1466
    aget-object v20, v22, v12

    .line 1470
    .local v20, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    :try_start_0
    check-cast v3, [Ljava/lang/Object;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 1471
    .local v21, methodValue:Ljava/lang/Object;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v23

    .line 1472
    .local v23, returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v3, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewDebug$ExportedProperty;

    .line 1473
    .local v5, property:Landroid/view/ViewDebug$ExportedProperty;
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1476
    .local v9, categoryPrefix:Ljava/lang/String;
    :goto_1
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    if-ne v0, v3, :cond_6

    .line 1478
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p0, :cond_2

    .line 1479
    check-cast v21, Ljava/lang/Integer;

    .end local v21           #methodValue:Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1480
    .local v13, id:I
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v21

    .line 1525
    .end local v13           #id:I
    :cond_0
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "()"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-static {v0, v3, v4, v8, v1}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1465
    .end local v5           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v9           #categoryPrefix:Ljava/lang/String;
    .end local v23           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1473
    .restart local v5       #property:Landroid/view/ViewDebug$ExportedProperty;
    .restart local v21       #methodValue:Ljava/lang/Object;
    .restart local v23       #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    const-string v9, ""

    goto :goto_1

    .line 1482
    .restart local v9       #categoryPrefix:Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v11

    .line 1483
    .local v11, flagsMapping:[Landroid/view/ViewDebug$FlagToString;
    array-length v3, v11

    if-lez v3, :cond_3

    .line 1484
    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1485
    .local v14, intValue:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1487
    .local v7, valuePrefix:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v0, v11, v14, v7}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1490
    .end local v7           #valuePrefix:Ljava/lang/String;
    .end local v14           #intValue:I
    :cond_3
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v18

    .line 1491
    .local v18, mapping:[Landroid/view/ViewDebug$IntToString;
    move-object/from16 v0, v18

    array-length v3, v0

    if-lez v3, :cond_0

    .line 1492
    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1493
    .restart local v14       #intValue:I
    const/16 v16, 0x0

    .line 1494
    .local v16, mapped:Z
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    .line 1495
    .local v19, mappingCount:I
    const/4 v15, 0x0

    .local v15, j:I
    :goto_4
    move/from16 v0, v19

    if-ge v15, v0, :cond_4

    .line 1496
    aget-object v17, v18, v15

    .line 1497
    .local v17, mapper:Landroid/view/ViewDebug$IntToString;
    invoke-interface/range {v17 .. v17}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v3

    if-ne v3, v14, :cond_5

    .line 1498
    invoke-interface/range {v17 .. v17}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v21

    .line 1499
    .local v21, methodValue:Ljava/lang/String;
    const/16 v16, 0x1

    .line 1504
    .end local v17           #mapper:Landroid/view/ViewDebug$IntToString;
    .end local v21           #methodValue:Ljava/lang/String;
    :cond_4
    if-nez v16, :cond_0

    .line 1505
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .local v21, methodValue:Ljava/lang/Integer;
    goto/16 :goto_2

    .line 1495
    .restart local v17       #mapper:Landroid/view/ViewDebug$IntToString;
    .local v21, methodValue:Ljava/lang/Object;
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1509
    .end local v11           #flagsMapping:[Landroid/view/ViewDebug$FlagToString;
    .end local v14           #intValue:I
    .end local v15           #j:I
    .end local v16           #mapped:Z
    .end local v17           #mapper:Landroid/view/ViewDebug$IntToString;
    .end local v18           #mapping:[Landroid/view/ViewDebug$IntToString;
    .end local v19           #mappingCount:I
    :cond_6
    const-class v3, [I

    move-object/from16 v0, v23

    if-ne v0, v3, :cond_8

    .line 1510
    check-cast v21, [I

    .end local v21           #methodValue:Ljava/lang/Object;
    move-object/from16 v0, v21

    check-cast v0, [I

    move-object v6, v0

    .line 1511
    .local v6, array:[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1512
    .restart local v7       #valuePrefix:Ljava/lang/String;
    const-string v24, "()"

    .line 1514
    .local v24, suffix:Ljava/lang/String;
    const-string v8, "()"

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-static/range {v3 .. v8}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    .line 1530
    .end local v5           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v6           #array:[I
    .end local v7           #valuePrefix:Ljava/lang/String;
    .end local v9           #categoryPrefix:Ljava/lang/String;
    .end local v20           #method:Ljava/lang/reflect/Method;
    .end local v23           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v24           #suffix:Ljava/lang/String;
    :cond_7
    return-void

    .line 1518
    .restart local v5       #property:Landroid/view/ViewDebug$ExportedProperty;
    .restart local v9       #categoryPrefix:Ljava/lang/String;
    .restart local v20       #method:Ljava/lang/reflect/Method;
    .restart local v21       #methodValue:Ljava/lang/Object;
    .restart local v23       #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_8
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1519
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 1526
    .end local v5           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v9           #categoryPrefix:Ljava/lang/String;
    .end local v21           #methodValue:Ljava/lang/Object;
    .end local v23           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    goto/16 :goto_3

    .line 1527
    :catch_1
    move-exception v3

    goto/16 :goto_3
.end method

.method private static exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "context"
    .parameter "out"
    .parameter "property"
    .parameter "array"
    .parameter "prefix"
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1639
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->indexMapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v5

    .line 1640
    .local v5, indexMapping:[Landroid/view/ViewDebug$IntToString;
    array-length v0, v5

    move/from16 v16, v0

    if-lez v16, :cond_3

    const/4 v3, 0x1

    .line 1642
    .local v3, hasIndexMapping:Z
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v10

    .line 1643
    .local v10, mapping:[Landroid/view/ViewDebug$IntToString;
    array-length v0, v10

    move/from16 v16, v0

    if-lez v16, :cond_4

    const/4 v4, 0x1

    .line 1645
    .local v4, hasMapping:Z
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v16

    if-eqz v16, :cond_5

    if-eqz p0, :cond_5

    const/4 v13, 0x1

    .line 1646
    .local v13, resolveId:Z
    :goto_2
    move-object/from16 v0, p3

    array-length v15, v0

    .line 1648
    .local v15, valuesCount:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_3
    if-ge v7, v15, :cond_9

    .line 1650
    const/4 v14, 0x0

    .line 1652
    .local v14, value:Ljava/lang/String;
    aget v6, p3, v7

    .line 1654
    .local v6, intValue:I
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 1655
    .local v12, name:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1656
    array-length v11, v5

    .line 1657
    .local v11, mappingCount:I
    const/4 v8, 0x0

    .local v8, k:I
    :goto_4
    if-ge v8, v11, :cond_0

    .line 1658
    aget-object v9, v5, v8

    .line 1659
    .local v9, mapped:Landroid/view/ViewDebug$IntToString;
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v7, :cond_6

    .line 1660
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v12

    .line 1666
    .end local v8           #k:I
    .end local v9           #mapped:Landroid/view/ViewDebug$IntToString;
    .end local v11           #mappingCount:I
    :cond_0
    if-eqz v4, :cond_1

    .line 1667
    array-length v11, v10

    .line 1668
    .restart local v11       #mappingCount:I
    const/4 v8, 0x0

    .restart local v8       #k:I
    :goto_5
    if-ge v8, v11, :cond_1

    .line 1669
    aget-object v9, v10, v8

    .line 1670
    .restart local v9       #mapped:Landroid/view/ViewDebug$IntToString;
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v6, :cond_7

    .line 1671
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v14

    .line 1677
    .end local v8           #k:I
    .end local v9           #mapped:Landroid/view/ViewDebug$IntToString;
    .end local v11           #mappingCount:I
    :cond_1
    if-eqz v13, :cond_8

    .line 1678
    if-nez v14, :cond_2

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #value:Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 1683
    .restart local v14       #value:Ljava/lang/String;
    :cond_2
    :goto_6
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v0, v1, v12, v2, v14}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1648
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1640
    .end local v3           #hasIndexMapping:Z
    .end local v4           #hasMapping:Z
    .end local v6           #intValue:I
    .end local v7           #j:I
    .end local v10           #mapping:[Landroid/view/ViewDebug$IntToString;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #resolveId:Z
    .end local v14           #value:Ljava/lang/String;
    .end local v15           #valuesCount:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 1643
    .restart local v3       #hasIndexMapping:Z
    .restart local v10       #mapping:[Landroid/view/ViewDebug$IntToString;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 1645
    .restart local v4       #hasMapping:Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 1657
    .restart local v6       #intValue:I
    .restart local v7       #j:I
    .restart local v8       #k:I
    .restart local v9       #mapped:Landroid/view/ViewDebug$IntToString;
    .restart local v11       #mappingCount:I
    .restart local v12       #name:Ljava/lang/String;
    .restart local v13       #resolveId:Z
    .restart local v14       #value:Ljava/lang/String;
    .restart local v15       #valuesCount:I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1668
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1680
    .end local v8           #k:I
    .end local v9           #mapped:Landroid/view/ViewDebug$IntToString;
    .end local v11           #mappingCount:I
    :cond_8
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    .line 1685
    .end local v6           #intValue:I
    .end local v12           #name:Ljava/lang/String;
    .end local v14           #value:Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private static exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V
    .locals 10
    .parameter "out"
    .parameter "mapping"
    .parameter "intValue"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1621
    array-length v0, p1

    .line 1622
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 1623
    aget-object v1, p1, v3

    .line 1624
    .local v1, flagMapping:Landroid/view/ViewDebug$FlagToString;
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->outputIf()Z

    move-result v2

    .line 1625
    .local v2, ifTrue:Z
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->mask()I

    move-result v8

    and-int v4, p2, v8

    .line 1626
    .local v4, maskResult:I
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->equals()I

    move-result v8

    if-ne v4, v8, :cond_3

    const/4 v6, 0x1

    .line 1627
    .local v6, test:Z
    :goto_1
    if-eqz v6, :cond_0

    if-nez v2, :cond_1

    :cond_0
    if-nez v6, :cond_2

    if-nez v2, :cond_2

    .line 1628
    :cond_1
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->name()Ljava/lang/String;

    move-result-object v5

    .line 1629
    .local v5, name:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1630
    .local v7, value:Ljava/lang/String;
    const-string v8, ""

    invoke-static {p0, p3, v5, v8, v7}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1622
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1626
    .end local v6           #test:Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 1633
    .end local v1           #flagMapping:Landroid/view/ViewDebug$FlagToString;
    .end local v2           #ifTrue:Z
    .end local v4           #maskResult:I
    :cond_4
    return-void
.end method

.method private static findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .parameter "root"
    .parameter "parameter"

    .prologue
    const/4 v5, 0x0

    .line 964
    const/16 v6, 0x40

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 965
    const-string v6, "@"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 966
    .local v3, ids:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v0, v3, v6

    .line 967
    .local v0, className:Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v3, v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v1, v6

    .line 969
    .local v1, hashCode:I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 970
    .local v4, view:Landroid/view/View;
    instance-of v6, v4, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 971
    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #view:Landroid/view/View;
    invoke-static {v4, v0, v1}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v5

    .line 979
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #hashCode:I
    .end local v3           #ids:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 975
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 976
    .local v2, id:I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto :goto_0
.end method

.method private static findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;
    .locals 5
    .parameter "group"
    .parameter "className"
    .parameter "hashCode"

    .prologue
    .line 1310
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1327
    .end local p0
    :goto_0
    return-object p0

    .line 1314
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1315
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 1316
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1317
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 1318
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3           #view:Landroid/view/View;
    invoke-static {v3, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 1319
    .local v1, found:Landroid/view/View;
    if-eqz v1, :cond_2

    move-object p0, v1

    .line 1320
    goto :goto_0

    .line 1322
    .end local v1           #found:Landroid/view/View;
    .restart local v3       #view:Landroid/view/View;
    :cond_1
    invoke-static {v3, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object p0, v3

    .line 1323
    goto :goto_0

    .line 1315
    .end local v3           #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1327
    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 1372
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v7, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_0

    .line 1373
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    .line 1375
    :cond_0
    sget-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 1376
    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0x200

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    .line 1379
    :cond_1
    sget-object v6, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    .line 1381
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1382
    .local v2, fields:[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_2

    move-object v3, v2

    .line 1402
    .end local v2           #fields:[Ljava/lang/reflect/Field;
    .local v3, fields:[Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 1386
    .end local v3           #fields:[Ljava/lang/reflect/Field;
    .restart local v2       #fields:[Ljava/lang/reflect/Field;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1387
    .local v4, foundFields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1389
    array-length v0, v2

    .line 1390
    .local v0, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v0, :cond_4

    .line 1391
    aget-object v1, v2, v5

    .line 1392
    .local v1, field:Ljava/lang/reflect/Field;
    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1393
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1394
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    sget-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    const-class v8, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1399
    .end local v1           #field:Ljava/lang/reflect/Field;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Field;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #fields:[Ljava/lang/reflect/Field;
    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1400
    .restart local v2       #fields:[Ljava/lang/reflect/Field;
    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 1402
    .end local v2           #fields:[Ljava/lang/reflect/Field;
    .restart local v3       #fields:[Ljava/lang/reflect/Field;
    goto :goto_0
.end method

.method private static getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1406
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v7, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_0

    .line 1407
    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    .line 1409
    :cond_0
    sget-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 1410
    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0x200

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    .line 1413
    :cond_1
    sget-object v3, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    .line 1415
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1416
    .local v5, methods:[Ljava/lang/reflect/Method;
    if-eqz v5, :cond_2

    move-object v6, v5

    .line 1438
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    .local v6, methods:[Ljava/lang/reflect/Method;
    :goto_0
    return-object v6

    .line 1420
    .end local v6           #methods:[Ljava/lang/reflect/Method;
    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1421
    .local v1, foundMethods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1423
    array-length v0, v5

    .line 1424
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1425
    aget-object v4, v5, v2

    .line 1426
    .local v4, method:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_3

    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Void;

    if-eq v7, v8, :cond_3

    .line 1429
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1430
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1431
    sget-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    const-class v8, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1435
    .end local v4           #method:Ljava/lang/reflect/Method;
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Method;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5           #methods:[Ljava/lang/reflect/Method;
    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1436
    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    invoke-virtual {v3, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    .line 1438
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    .restart local v6       #methods:[Ljava/lang/reflect/Method;
    goto :goto_0
.end method

.method public static getViewInstanceCount()J
    .locals 2

    .prologue
    .line 414
    const-class v0, Landroid/view/View;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getViewRootImplCount()J
    .locals 2

    .prologue
    .line 425
    const-class v0, Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static invalidate(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .parameter "root"
    .parameter "parameter"

    .prologue
    .line 983
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 984
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 985
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 987
    :cond_0
    return-void
.end method

.method private static isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z
    .locals 1
    .parameter "view"
    .parameter "className"
    .parameter "hashCode"

    .prologue
    .line 1331
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static outputDisplayList(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .parameter "root"
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1229
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1230
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    .line 1231
    return-void
.end method

.method private static performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "captureView"
    .parameter "skpiChildren"

    .prologue
    const/4 v3, 0x1

    .line 1260
    if-eqz p0, :cond_0

    .line 1261
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1262
    .local v2, latch:Ljava/util/concurrent/CountDownLatch;
    new-array v0, v3, [Landroid/graphics/Bitmap;

    .line 1264
    .local v0, cache:[Landroid/graphics/Bitmap;
    new-instance v3, Landroid/view/ViewDebug$6;

    invoke-direct {v3, v0, p0, p1, v2}, Landroid/view/ViewDebug$6;-><init>([Landroid/graphics/Bitmap;Landroid/view/View;ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1278
    const-wide/16 v3, 0xfa0

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 1279
    const/4 v3, 0x0

    aget-object v3, v0, v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1286
    .end local v0           #cache:[Landroid/graphics/Bitmap;
    .end local v2           #latch:Ljava/util/concurrent/CountDownLatch;
    :goto_0
    return-object v3

    .line 1280
    .restart local v0       #cache:[Landroid/graphics/Bitmap;
    .restart local v2       #latch:Ljava/util/concurrent/CountDownLatch;
    :catch_0
    move-exception v1

    .line 1281
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v3, "View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not complete the capture of the view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1286
    .end local v0           #cache:[Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #latch:Ljava/util/concurrent/CountDownLatch;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "root"
    .parameter "clientStream"
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1003
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 1004
    .local v3, view:Landroid/view/View;
    const/4 v1, 0x0

    .line 1006
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v5, 0x8000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1008
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    if-eqz v3, :cond_1

    .line 1009
    :try_start_1
    invoke-static {v3, v2}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V

    .line 1014
    :goto_0
    const-string v4, "DONE."

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1019
    if-eqz v2, :cond_3

    .line 1020
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    move-object v1, v2

    .line 1023
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :cond_0
    :goto_1
    return-void

    .line 1011
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :cond_1
    :try_start_2
    const-string v4, "-1 -1 -1"

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1016
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1017
    .end local v2           #out:Ljava/io/BufferedWriter;
    .local v0, e:Ljava/lang/Exception;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :goto_2
    :try_start_3
    const-string v4, "View"

    const-string v5, "Problem profiling the view:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1019
    if-eqz v1, :cond_0

    .line 1020
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 1019
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_2

    .line 1020
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    throw v4

    .line 1019
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 1016
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :cond_3
    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method private static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V
    .locals 1
    .parameter "view"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1027
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    .line 1028
    return-void
.end method

.method private static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V
    .locals 11
    .parameter "view"
    .parameter "out"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x20

    const-wide/16 v1, 0x0

    .line 1033
    if-nez p2, :cond_0

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_4

    :cond_0
    new-instance v9, Landroid/view/ViewDebug$2;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$2;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v5

    .line 1060
    .local v5, durationMeasure:J
    :goto_0
    if-nez p2, :cond_1

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_5

    :cond_1
    new-instance v9, Landroid/view/ViewDebug$3;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$3;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v3

    .line 1074
    .local v3, durationLayout:J
    :goto_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v9

    if-eqz v9, :cond_2

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_3

    :cond_2
    new-instance v9, Landroid/view/ViewDebug$4;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$4;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v1

    .line 1106
    .local v1, durationDraw:J
    :cond_3
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {p1, v10}, Ljava/io/BufferedWriter;->write(I)V

    .line 1108
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p1, v10}, Ljava/io/BufferedWriter;->write(I)V

    .line 1110
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1112
    instance-of v9, p0, Landroid/view/ViewGroup;

    if-eqz v9, :cond_6

    move-object v7, p0

    .line 1113
    check-cast v7, Landroid/view/ViewGroup;

    .line 1114
    .local v7, group:Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1115
    .local v0, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v0, :cond_6

    .line 1116
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, p1, v10}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    .line 1115
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v0           #count:I
    .end local v1           #durationDraw:J
    .end local v3           #durationLayout:J
    .end local v5           #durationMeasure:J
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    :cond_4
    move-wide v5, v1

    .line 1033
    goto :goto_0

    .restart local v5       #durationMeasure:J
    :cond_5
    move-wide v3, v1

    .line 1060
    goto :goto_1

    .line 1119
    .restart local v1       #durationDraw:J
    .restart local v3       #durationLayout:J
    :cond_6
    return-void
.end method

.method private static profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J
    .locals 8
    .parameter "view"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Landroid/view/ViewDebug$ViewOperation",
            "<TT;>;)J"
        }
    .end annotation

    .prologue
    .local p1, operation:Landroid/view/ViewDebug$ViewOperation;,"Landroid/view/ViewDebug$ViewOperation<TT;>;"
    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    .line 1128
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1129
    .local v2, latch:Ljava/util/concurrent/CountDownLatch;
    new-array v0, v5, [J

    .line 1131
    .local v0, duration:[J
    new-instance v5, Landroid/view/ViewDebug$5;

    invoke-direct {v5, p1, v0, v2}, Landroid/view/ViewDebug$5;-><init>(Landroid/view/ViewDebug$ViewOperation;[JLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1148
    const-wide/16 v5, 0xfa0

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1149
    const-string v5, "View"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not complete the profiling of the view "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1158
    :goto_0
    return-wide v3

    .line 1152
    :catch_0
    move-exception v1

    .line 1153
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v5, "View"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not complete the profiling of the view "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1158
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_0
    const/4 v3, 0x0

    aget-wide v3, v0, v3

    goto :goto_0
.end method

.method private static requestLayout(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .parameter "root"
    .parameter "parameter"

    .prologue
    .line 990
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 991
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 992
    new-instance v1, Landroid/view/ViewDebug$1;

    invoke-direct {v1, v0}, Landroid/view/ViewDebug$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 998
    :cond_0
    return-void
.end method

.method static resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1689
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1690
    .local v2, resources:Landroid/content/res/Resources;
    if-ltz p1, :cond_0

    .line 1692
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1700
    .local v1, fieldValue:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1694
    .end local v1           #fieldValue:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1695
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id/0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1696
    .restart local v1       #fieldValue:Ljava/lang/String;
    goto :goto_0

    .line 1698
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #fieldValue:Ljava/lang/String;
    :cond_0
    const-string v1, "NO_ID"

    .restart local v1       #fieldValue:Ljava/lang/String;
    goto :goto_0
.end method

.method public static startHierarchyTracing(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .parameter "prefix"
    .parameter "view"

    .prologue
    .line 853
    return-void
.end method

.method public static startLooperProfiling(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 2
    .parameter "path"
    .parameter "fileDescriptor"

    .prologue
    .line 437
    sget-object v1, Landroid/view/ViewDebug;->sLooperProfilerStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 438
    new-instance v0, Landroid/view/ViewDebug$LooperProfiler;

    invoke-direct {v0, p0, p1}, Landroid/view/ViewDebug$LooperProfiler;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 439
    .local v0, profiler:Landroid/view/ViewDebug$LooperProfiler;
    sget-object v1, Landroid/view/ViewDebug;->sLooperProfilerStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 440
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 442
    .end local v0           #profiler:Landroid/view/ViewDebug$LooperProfiler;
    :cond_0
    return-void
.end method

.method public static startRecyclerTracing(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .parameter "prefix"
    .parameter "view"

    .prologue
    .line 713
    return-void
.end method

.method public static stopHierarchyTracing()V
    .locals 0

    .prologue
    .line 894
    return-void
.end method

.method public static stopLooperProfiling()V
    .locals 3

    .prologue
    .line 452
    sget-object v1, Landroid/view/ViewDebug;->sLooperProfilerStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewDebug$LooperProfiler;

    .line 453
    .local v0, profiler:Landroid/view/ViewDebug$LooperProfiler;
    if-eqz v0, :cond_0

    .line 454
    sget-object v1, Landroid/view/ViewDebug;->sLooperProfilerStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 455
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 456
    invoke-virtual {v0}, Landroid/view/ViewDebug$LooperProfiler;->save()V

    .line 458
    :cond_0
    return-void
.end method

.method public static stopRecyclerTracing()V
    .locals 0

    .prologue
    .line 745
    return-void
.end method

.method public static trace(Landroid/view/View;Landroid/view/ViewDebug$HierarchyTraceType;)V
    .locals 4
    .parameter "view"
    .parameter "type"

    .prologue
    .line 814
    sget-object v1, Landroid/view/ViewDebug;->sHierarchyTraces:Ljava/io/BufferedWriter;

    if-nez v1, :cond_0

    .line 828
    :goto_0
    return-void

    .line 819
    :cond_0
    :try_start_0
    sget-object v1, Landroid/view/ViewDebug;->sHierarchyTraces:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Landroid/view/ViewDebug$HierarchyTraceType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 820
    sget-object v1, Landroid/view/ViewDebug;->sHierarchyTraces:Ljava/io/BufferedWriter;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 821
    sget-object v1, Landroid/view/ViewDebug;->sHierarchyTraces:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 822
    sget-object v1, Landroid/view/ViewDebug;->sHierarchyTraces:Ljava/io/BufferedWriter;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 823
    sget-object v1, Landroid/view/ViewDebug;->sHierarchyTraces:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 824
    sget-object v1, Landroid/view/ViewDebug;->sHierarchyTraces:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, e:Ljava/io/IOException;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while dumping trace of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static varargs trace(Landroid/view/View;Landroid/view/ViewDebug$RecyclerTraceType;[I)V
    .locals 3
    .parameter "view"
    .parameter "type"
    .parameter "parameters"

    .prologue
    .line 672
    sget-object v2, Landroid/view/ViewDebug;->sRecyclerOwnerView:Landroid/view/View;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/view/ViewDebug;->sRecyclerViews:Ljava/util/List;

    if-nez v2, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    sget-object v2, Landroid/view/ViewDebug;->sRecyclerViews:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 677
    sget-object v2, Landroid/view/ViewDebug;->sRecyclerViews:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_2
    sget-object v2, Landroid/view/ViewDebug;->sRecyclerViews:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 682
    .local v0, index:I
    new-instance v1, Landroid/view/ViewDebug$RecyclerTrace;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/ViewDebug$RecyclerTrace;-><init>(Landroid/view/ViewDebug$1;)V

    .line 683
    .local v1, trace:Landroid/view/ViewDebug$RecyclerTrace;
    iput v0, v1, Landroid/view/ViewDebug$RecyclerTrace;->view:I

    .line 684
    iput-object p1, v1, Landroid/view/ViewDebug$RecyclerTrace;->type:Landroid/view/ViewDebug$RecyclerTraceType;

    .line 685
    const/4 v2, 0x0

    aget v2, p2, v2

    iput v2, v1, Landroid/view/ViewDebug$RecyclerTrace;->position:I

    .line 686
    const/4 v2, 0x1

    aget v2, p2, v2

    iput v2, v1, Landroid/view/ViewDebug$RecyclerTrace;->indexOnScreen:I

    .line 688
    sget-object v2, Landroid/view/ViewDebug;->sRecyclerTraces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "out"
    .parameter "prefix"
    .parameter "name"
    .parameter "suffix"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1610
    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1611
    invoke-virtual {p0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1612
    invoke-virtual {p0, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1613
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1614
    invoke-static {p0, p4}, Landroid/view/ViewDebug;->writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V

    .line 1615
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(I)V

    .line 1616
    return-void
.end method

.method private static writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V
    .locals 4
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1704
    if-eqz p1, :cond_0

    .line 1705
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "\\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1706
    .local v0, output:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1707
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1708
    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1712
    .end local v0           #output:Ljava/lang/String;
    :goto_0
    return-void

    .line 1710
    :cond_0
    const-string v1, "4,null"

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method