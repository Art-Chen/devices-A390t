.class Lcom/android/internal/telephony/cat/ReceiveChannelDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field receivedata:Lcom/android/internal/telephony/cat/ReceiveChannelData;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ReceiveChannelData;)V
    .locals 2
    .parameter "cmdDet"
    .parameter "rdata"

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 257
    iput-object p2, p0, Lcom/android/internal/telephony/cat/ReceiveChannelDataParams;->receivedata:Lcom/android/internal/telephony/cat/ReceiveChannelData;

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ReceiveChannelDataParams;->receivedata:Lcom/android/internal/telephony/cat/ReceiveChannelData;

    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/ReceiveChannelData;->setChannelType(I)V

    .line 259
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "icon"

    .prologue
    .line 262
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/ReceiveChannelDataParams;->receivedata:Lcom/android/internal/telephony/cat/ReceiveChannelData;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ReceiveChannelDataParams;->receivedata:Lcom/android/internal/telephony/cat/ReceiveChannelData;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/ChannelData;->icon:Landroid/graphics/Bitmap;

    .line 264
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
