.class Lcom/android/internal/telephony/cat/SendChannelDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field deviceIdentities:Lcom/android/internal/telephony/cat/DeviceIdentities;

.field senddata:Lcom/android/internal/telephony/cat/SendChannelData;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/SendChannelData;Lcom/android/internal/telephony/cat/DeviceIdentities;)V
    .locals 2
    .parameter "cmdDet"
    .parameter "sdata"
    .parameter "identities"

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 276
    iput-object p2, p0, Lcom/android/internal/telephony/cat/SendChannelDataParams;->senddata:Lcom/android/internal/telephony/cat/SendChannelData;

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/cat/SendChannelDataParams;->senddata:Lcom/android/internal/telephony/cat/SendChannelData;

    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/SendChannelData;->setChannelType(I)V

    .line 278
    iput-object p3, p0, Lcom/android/internal/telephony/cat/SendChannelDataParams;->deviceIdentities:Lcom/android/internal/telephony/cat/DeviceIdentities;

    .line 279
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "icon"

    .prologue
    .line 282
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/SendChannelDataParams;->senddata:Lcom/android/internal/telephony/cat/SendChannelData;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/cat/SendChannelDataParams;->senddata:Lcom/android/internal/telephony/cat/SendChannelData;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/ChannelData;->icon:Landroid/graphics/Bitmap;

    .line 284
    const/4 v0, 0x1

    .line 286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
