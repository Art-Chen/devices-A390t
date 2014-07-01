.class final Lcom/android/internal/telephony/SprdRIL$DSCIInfo;
.super Ljava/lang/Object;
.source "SprdRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SprdRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DSCIInfo"
.end annotation


# instance fields
.field bs_type:I

.field cause:I

.field id:I

.field idr:I

.field mpty:I

.field num_type:I

.field number:Ljava/lang/String;

.field stat:I

.field final synthetic this$0:Lcom/android/internal/telephony/SprdRIL;

.field type:I


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SprdRIL;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->this$0:Lcom/android/internal/telephony/SprdRIL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SprdRIL;Lcom/android/internal/telephony/SprdRIL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;-><init>(Lcom/android/internal/telephony/SprdRIL;)V

    return-void
.end method
