.class Lcom/android/internal/telephony/cat/DtmfParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field dtmfString:Ljava/lang/String;

.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "textMsg"
    .parameter "dtmf"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 64
    iput-object p2, p0, Lcom/android/internal/telephony/cat/DtmfParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 65
    iput-object p3, p0, Lcom/android/internal/telephony/cat/DtmfParams;->dtmfString:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "icon"

    .prologue
    .line 69
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/DtmfParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/cat/DtmfParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 71
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
