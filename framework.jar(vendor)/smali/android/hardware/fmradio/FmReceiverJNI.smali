.class public Landroid/hardware/fmradio/FmReceiverJNI;
.super Ljava/lang/Object;
.source "FmReceiverJNI.java"


# static fields
.field static final FM_JNI_FAILURE:I = -0x1

.field static final FM_JNI_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synchronized native declared-synchronized acquireFdNative(Ljava/lang/String;)I
.end method

.method static synchronized native declared-synchronized cancelSearchNative(I)I
.end method

.method public static synchronized native declared-synchronized closeFdNative(I)I
.end method

.method static synchronized native declared-synchronized getBufferNative(I[BI)I
.end method

.method static synchronized native declared-synchronized getControlNative(II)I
.end method

.method static synchronized native declared-synchronized getFreqNative(I)I
.end method

.method static synchronized native declared-synchronized getLowerBandNative(I)I
.end method

.method static synchronized native declared-synchronized getRSSINative(I)I
.end method

.method static synchronized native declared-synchronized getRawRdsNative(I[BI)I
.end method

.method static synchronized native declared-synchronized setBandNative(III)I
.end method

.method public static synchronized native declared-synchronized setControlNative(III)I
.end method

.method static synchronized native declared-synchronized setFreqNative(II)I
.end method

.method static synchronized native declared-synchronized setMonoStereoNative(II)I
.end method

.method static synchronized native declared-synchronized setRegionNative(II)I
.end method

.method static synchronized native declared-synchronized startSearchNative(IIIII)I
.end method
