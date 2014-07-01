.class Lcom/android/internal/telephony/cat/OpenChannelDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field openchanneldata:Lcom/android/internal/telephony/cat/OpenChannelData;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/OpenChannelData;)V
    .locals 2
    .parameter "cmdDet"
    .parameter "opendata"

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 219
    iput-object p2, p0, Lcom/android/internal/telephony/cat/OpenChannelDataParams;->openchanneldata:Lcom/android/internal/telephony/cat/OpenChannelData;

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelDataParams;->openchanneldata:Lcom/android/internal/telephony/cat/OpenChannelData;

    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/OpenChannelData;->setChannelType(I)V

    .line 221
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "icon"

    .prologue
    .line 224
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelDataParams;->openchanneldata:Lcom/android/internal/telephony/cat/OpenChannelData;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelDataParams;->openchanneldata:Lcom/android/internal/telephony/cat/OpenChannelData;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/ChannelData;->icon:Landroid/graphics/Bitmap;

    .line 226
    const/4 v0, 0x1

    .line 228
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
