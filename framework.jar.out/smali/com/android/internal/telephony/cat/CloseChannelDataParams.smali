.class Lcom/android/internal/telephony/cat/CloseChannelDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field closechanneldata:Lcom/android/internal/telephony/cat/CloseChannelData;

.field deviceIdentities:Lcom/android/internal/telephony/cat/DeviceIdentities;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/CloseChannelData;Lcom/android/internal/telephony/cat/DeviceIdentities;)V
    .locals 2
    .parameter "cmdDet"
    .parameter "closedata"
    .parameter "identities"

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 238
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CloseChannelDataParams;->closechanneldata:Lcom/android/internal/telephony/cat/CloseChannelData;

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CloseChannelDataParams;->closechanneldata:Lcom/android/internal/telephony/cat/CloseChannelData;

    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CloseChannelData;->setChannelType(I)V

    .line 240
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CloseChannelDataParams;->deviceIdentities:Lcom/android/internal/telephony/cat/DeviceIdentities;

    .line 241
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "icon"

    .prologue
    .line 244
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CloseChannelDataParams;->closechanneldata:Lcom/android/internal/telephony/cat/CloseChannelData;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CloseChannelDataParams;->closechanneldata:Lcom/android/internal/telephony/cat/CloseChannelData;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/ChannelData;->icon:Landroid/graphics/Bitmap;

    .line 246
    const/4 v0, 0x1

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
