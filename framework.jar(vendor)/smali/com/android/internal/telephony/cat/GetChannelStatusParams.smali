.class Lcom/android/internal/telephony/cat/GetChannelStatusParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field channelstatus:Lcom/android/internal/telephony/cat/GetChannelStatus;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/GetChannelStatus;)V
    .locals 2
    .parameter "cmdDet"
    .parameter "status"

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 295
    iput-object p2, p0, Lcom/android/internal/telephony/cat/GetChannelStatusParams;->channelstatus:Lcom/android/internal/telephony/cat/GetChannelStatus;

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/cat/GetChannelStatusParams;->channelstatus:Lcom/android/internal/telephony/cat/GetChannelStatus;

    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/GetChannelStatus;->setChannelType(I)V

    .line 297
    return-void
.end method
