.class public Lcom/android/internal/telephony/cat/CatResponseMessage;
.super Ljava/lang/Object;
.source "CatResponseMessage.java"


# instance fields
.field BearerParam:Ljava/lang/String;

.field BearerType:B

.field ChannelId:I

.field LinkStatus:Z

.field bufferSize:I

.field channelData:Ljava/lang/String;

.field channelDataLen:I

.field cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field event:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

.field mMode:I

.field resCode:Lcom/android/internal/telephony/cat/ResultCode;

.field usersConfirm:Z

.field usersInput:Ljava/lang/String;

.field usersMenuSelection:I

.field usersYesNoSelection:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/AppInterface$EventListType;)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 21
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 22
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    .line 23
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    .line 26
    iput-byte v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->BearerType:B

    .line 27
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->BearerParam:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelDataLen:I

    .line 32
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelData:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->event:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3
    .parameter "cmdMsg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 21
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 22
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    .line 23
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    .line 26
    iput-byte v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->BearerType:B

    .line 27
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->BearerParam:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelDataLen:I

    .line 32
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelData:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 38
    return-void
.end method


# virtual methods
.method getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-object v0
.end method

.method public setBearerParam(BLjava/lang/String;I)V
    .locals 0
    .parameter "type"
    .parameter "param"
    .parameter "size"

    .prologue
    .line 65
    iput-byte p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->BearerType:B

    .line 66
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->BearerParam:Ljava/lang/String;

    .line 67
    iput p3, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->bufferSize:I

    .line 68
    return-void
.end method

.method public setChannelData(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelData:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setChannelDataLen(I)V
    .locals 0
    .parameter "len"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelDataLen:I

    .line 84
    return-void
.end method

.method public setChannelStatus(IZ)V
    .locals 1
    .parameter "id"
    .parameter "status"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->ChannelId:I

    .line 72
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->LinkStatus:Z

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mMode:I

    .line 74
    return-void
.end method

.method public setChannelStatus(IZI)V
    .locals 0
    .parameter "id"
    .parameter "status"
    .parameter "mode"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->ChannelId:I

    .line 78
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->LinkStatus:Z

    .line 79
    iput p3, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mMode:I

    .line 80
    return-void
.end method

.method public setConfirmation(Z)V
    .locals 0
    .parameter "confirm"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    .line 62
    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setMenuSelection(I)V
    .locals 0
    .parameter "selection"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    .line 50
    return-void
.end method

.method public setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 0
    .parameter "resCode"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 46
    return-void
.end method

.method public setYesNo(Z)V
    .locals 0
    .parameter "yesNo"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    .line 58
    return-void
.end method
