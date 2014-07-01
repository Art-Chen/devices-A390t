.class public final Lcom/android/internal/telephony/gsm/VideoCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "VideoCallTracker.java"


# static fields
.field private static final DBG_POLL:Z = true

.field protected static final EVENT_FALLBACK:I = 0x64

.field protected static final EVENT_VIDEOCALLCODEC:I = 0x66

.field protected static final EVENT_VIDEOCALLFAIL:I = 0x65

.field static final LOG_TAG:Ljava/lang/String; = "VideoCallTracker"

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x1

.field private static final REPEAT_POLLING:Z


# instance fields
.field backgroundCall:Lcom/android/internal/telephony/gsm/VideoCall;

.field connections:[Lcom/android/internal/telephony/gsm/VideoConnection;

.field desiredMute:Z

.field droppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/VideoConnection;",
            ">;"
        }
    .end annotation
.end field

.field foregroundCall:Lcom/android/internal/telephony/gsm/VideoCall;

.field hangupPendingMO:Z

.field pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

.field phone:Lcom/android/internal/telephony/gsm/TDPhone;

.field ringingCall:Lcom/android/internal/telephony/gsm/VideoCall;

.field state:Lcom/android/internal/telephony/Phone$State;

.field videoCallEndedRegistrants:Landroid/os/RegistrantList;

.field videoCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/TDPhone;)V
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 72
    new-array v0, v1, [Lcom/android/internal/telephony/gsm/VideoConnection;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->connections:[Lcom/android/internal/telephony/gsm/VideoConnection;

    .line 73
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->videoCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 74
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->videoCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/VideoCall;-><init>(Lcom/android/internal/telephony/gsm/VideoCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/VideoCall;

    .line 83
    new-instance v0, Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/VideoCall;-><init>(Lcom/android/internal/telephony/gsm/VideoCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/VideoCall;

    .line 85
    new-instance v0, Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/VideoCall;-><init>(Lcom/android/internal/telephony/gsm/VideoCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/VideoCall;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->desiredMute:Z

    .line 94
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 102
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    .line 103
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForVideoCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x9

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnVPFallBack(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x65

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnVPFail(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x66

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnVPCodec(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 112
    return-void
.end method

.method private dumpState()V
    .locals 6

    .prologue
    .line 648
    const-string v3, "VideoCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone State:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v3, "VideoCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ringing call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/VideoCall;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/VideoCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 653
    .local v1, l:Ljava/util/List;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, s:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 654
    const-string v3, "VideoCallTracker"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    :cond_0
    const-string v3, "VideoCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Foreground call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/VideoCall;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/VideoCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 660
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    .line 661
    const-string v3, "VideoCallTracker"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 664
    :cond_1
    return-void
.end method

.method private getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1
    .parameter "what"

    .prologue
    .line 754
    packed-switch p1, :pswitch_data_0

    .line 764
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    :goto_0
    return-object v0

    .line 756
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 758
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 760
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 762
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 754
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pollCallsWhenSafe()V

    .line 642
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/VideoCall;->clearDisconnected()V

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/VideoCall;->clearDisconnected()V

    .line 342
    return-void
.end method

.method private internalHangup()V
    .locals 4

    .prologue
    .line 887
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->hangupVP(Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :goto_0
    return-void

    .line 888
    :catch_0
    move-exception v0

    .line 891
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "VideoCallTracker"

    const-string v2, "internaleHangup failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private internalHangupWithReason(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 897
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/CommandsInterface;->hangupVP(Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :goto_0
    return-void

    .line 898
    :catch_0
    move-exception v0

    .line 901
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "VideoCallTracker"

    const-string v2, "internaleHangup failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private obtainCompleteMessage(I)Landroid/os/Message;
    .locals 2
    .parameter "what"

    .prologue
    .line 359
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "obtainCompleteMessage: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->log(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private operationComplete()V
    .locals 2

    .prologue
    .line 371
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "operationComplete: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->log(Ljava/lang/String;)V

    .line 376
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    if-eqz v0, :cond_1

    .line 377
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentVideoCalls(Landroid/os/Message;)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    if-gez v0, :cond_0

    .line 381
    const-string v0, "VideoCallTracker"

    const-string v1, "VideoCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    goto :goto_0
.end method

.method private updatePhoneState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 390
    .local v0, oldState:Lcom/android/internal/telephony/Phone$State;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/VideoCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 391
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 399
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_5

    .line 400
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->videoCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 406
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePhoneState(), old state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->log(Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v0, :cond_1

    .line 410
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/TDPhone;->notifyPhoneStateChanged()V

    .line 412
    :cond_1
    return-void

    .line 392
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/VideoCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_4

    .line 394
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 396
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 402
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->videoCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1
.end method


# virtual methods
.method acceptCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/VideoCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 243
    const-string/jumbo v1, "phone"

    const-string v2, "acceptCall: incoming..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->setMute(Z)V

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->acceptVP(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 251
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "VideoCallTracker"

    const-string v2, "Mediaphone acceptCall failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    .end local v0           #ex:Ljava/lang/IllegalStateException;
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v2, "phone not ringing"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method acceptFallBack()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/VideoCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    if-eqz v1, :cond_0

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->fallBackVP(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "VideoCallTracker"

    const-string v2, "acceptFallBack failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    .end local v0           #ex:Ljava/lang/IllegalStateException;
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v2, "phone not ringing or isn\'t in dialing"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method canConference()Z
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method canDial()Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 312
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/TDPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 313
    .local v2, serviceState:I
    const-string/jumbo v3, "ro.telephony.disable-call"

    const-string v6, "false"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, disableCall:Ljava/lang/String;
    if-eq v2, v8, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/VideoCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/VideoCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/VideoCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v4

    .line 322
    .local v1, ret:Z
    :goto_0
    if-nez v1, :cond_0

    .line 323
    const-string v6, "VideoCallTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canDial(), "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eq v2, v8, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " - "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    if-nez v3, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " - "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/VideoCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v4

    :goto_3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " - "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "true"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/VideoCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/VideoCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v3, "VideoCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canDial(), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/VideoCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    return v1

    .end local v1           #ret:Z
    :cond_1
    move v1, v5

    .line 316
    goto/16 :goto_0

    .restart local v1       #ret:Z
    :cond_2
    move v3, v5

    .line 323
    goto/16 :goto_1

    :cond_3
    move v3, v5

    goto/16 :goto_2

    :cond_4
    move v3, v5

    goto :goto_3

    :cond_5
    move v4, v5

    goto :goto_4
.end method

.method canTransfer()Z
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method clearDisconnected()V
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->internalClearDisconnected()V

    .line 300
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->updatePhoneState()V

    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/TDPhone;->notifyPreciseVideoCallStateChanged()V

    .line 302
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 5
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->clearDisconnected()V

    .line 190
    const-string/jumbo v1, "videocalltracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dial "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->canDial()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cannot dial in current state"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/VideoCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_1

    .line 197
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cannot dial in current state"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/gsm/VideoConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/TDPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-direct {v1, v2, p1, p0, v3}, Lcom/android/internal/telephony/gsm/VideoConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/VideoCallTracker;Lcom/android/internal/telephony/gsm/VideoCall;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    .line 201
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->hangupPendingMO:Z

    .line 203
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/VideoConnection;->address:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/VideoConnection;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/VideoConnection;->address:Ljava/lang/String;

    const/16 v2, 0x4e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_3

    .line 207
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/VideoConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 211
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pollCallsWhenSafe()V

    .line 224
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->updatePhoneState()V

    .line 225
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/TDPhone;->notifyPreciseVideoCallStateChanged()V

    .line 227
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    return-object v1

    .line 214
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->setMute(Z)V

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/VideoConnection;->address:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v2, v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->dialVP(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 221
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "VideoCallTracker"

    const-string v2, "Mediaphone dial failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 116
    iget-object v5, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    .line 117
    iget-object v5, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 118
    iget-object v5, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 119
    iget-object v5, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnVPFallBack(Landroid/os/Handler;)V

    .line 120
    iget-object v5, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnVPFail(Landroid/os/Handler;)V

    .line 121
    iget-object v5, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnVPCodec(Landroid/os/Handler;)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->connections:[Lcom/android/internal/telephony/gsm/VideoConnection;

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/VideoConnection;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 125
    .local v1, c:Lcom/android/internal/telephony/gsm/VideoConnection;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->hangup(Lcom/android/internal/telephony/gsm/VideoConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "VideoCallTracker"

    const-string/jumbo v6, "unexpected error on hangup during dispose"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 132
    .end local v1           #c:Lcom/android/internal/telephony/gsm/VideoConnection;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->hangup(Lcom/android/internal/telephony/gsm/VideoConnection;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->clearDisconnected()V

    .line 138
    return-void

    .line 133
    :catch_1
    move-exception v2

    .line 134
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "VideoCallTracker"

    const-string/jumbo v6, "unexpected error on hangup during dispose"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method fallBack()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/VideoCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->fallBackVP(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "VideoCallTracker"

    const-string v2, "fallBack failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    .end local v0           #ex:Ljava/lang/IllegalStateException;
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v2, "phone not ringing"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 141
    const-string v0, "VideoCallTracker"

    const-string v1, "VideoCallTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method getConnectionByIndex(Lcom/android/internal/telephony/gsm/VideoCall;I)Lcom/android/internal/telephony/gsm/VideoConnection;
    .locals 4
    .parameter "call"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 742
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/VideoCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 743
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 744
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/VideoCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/VideoConnection;

    .line 745
    .local v0, cn:Lcom/android/internal/telephony/gsm/VideoConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/VideoConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 750
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/VideoConnection;
    :goto_1
    return-object v0

    .line 743
    .restart local v0       #cn:Lcom/android/internal/telephony/gsm/VideoConnection;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 750
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/VideoConnection;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getMute()Z
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->desiredMute:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    .line 773
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 775
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 777
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    if-ne p1, v6, :cond_0

    .line 778
    const-string v6, "handle EVENT_POLL_CALL_RESULT: set needsPoll=F"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->log(Ljava/lang/String;)V

    .line 780
    iput-boolean v9, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    .line 781
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 782
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 787
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 788
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->operationComplete()V

    goto :goto_0

    .line 795
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 796
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 797
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/TDPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 799
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->operationComplete()V

    goto :goto_0

    .line 803
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    const-string v6, "VideoCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage(), EVENT_GET_LAST_CALL_FAIL_CAUSE, size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 807
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->operationComplete()V

    .line 809
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_4

    .line 812
    const/16 v1, 0x10

    .line 813
    .local v1, causeCode:I
    const-string v6, "VideoCallTracker"

    const-string v7, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :goto_1
    const/16 v6, 0x22

    if-eq v1, v6, :cond_2

    const/16 v6, 0x29

    if-eq v1, v6, :cond_2

    const/16 v6, 0x2a

    if-eq v1, v6, :cond_2

    const/16 v6, 0x2c

    if-eq v1, v6, :cond_2

    const/16 v6, 0x31

    if-eq v1, v6, :cond_2

    const/16 v6, 0x3a

    if-eq v1, v6, :cond_2

    const v6, 0xffff

    if-ne v1, v6, :cond_3

    .line 826
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/TDPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 827
    .local v4, loc:Landroid/telephony/gsm/GsmCellLocation;
    const v7, 0xc3ba

    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v9, 0x1

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v6

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v6, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 832
    .end local v4           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, s:I
    :goto_3
    if-ge v3, v5, :cond_6

    .line 833
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/VideoConnection;

    .line 834
    .local v2, conn:Lcom/android/internal/telephony/gsm/VideoConnection;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/gsm/VideoConnection;->onRemoteDisconnect(I)V

    .line 832
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 816
    .end local v1           #causeCode:I
    .end local v2           #conn:Lcom/android/internal/telephony/gsm/VideoConnection;
    .end local v3           #i:I
    .end local v5           #s:I
    :cond_4
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    check-cast v6, [I

    aget v1, v6, v9

    .restart local v1       #causeCode:I
    goto :goto_1

    .line 827
    .restart local v4       #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_5
    const/4 v6, -0x1

    goto :goto_2

    .line 837
    .end local v4           #loc:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v3       #i:I
    .restart local v5       #s:I
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->updatePhoneState()V

    .line 838
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/TDPhone;->notifyPreciseVideoCallStateChanged()V

    .line 839
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 844
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #causeCode:I
    .end local v3           #i:I
    .end local v5           #s:I
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pollCallsWhenSafe()V

    goto/16 :goto_0

    .line 848
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->handleRadioAvailable()V

    goto/16 :goto_0

    .line 852
    :sswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->handleRadioNotAvailable()V

    goto/16 :goto_0

    .line 856
    :sswitch_7
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/gsm/TDPhone;->notifyVideoCallFallBack(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 859
    :sswitch_8
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/gsm/TDPhone;->notifyVideoCallFail(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 862
    :sswitch_9
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/gsm/TDPhone;->notifyVideoCallCodec(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 773
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x4 -> :sswitch_1
        0x5 -> :sswitch_3
        0x8 -> :sswitch_2
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0xb -> :sswitch_2
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0x64 -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
    .end sparse-switch
.end method

.method protected handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 17
    .parameter "ar"

    .prologue
    .line 418
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v13, :cond_2

    .line 419
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    .line 431
    .local v11, polledCalls:Ljava/util/List;
    :goto_0
    const/4 v10, 0x0

    .line 432
    .local v10, newRinging:Lcom/android/internal/telephony/Connection;
    const/4 v7, 0x0

    .line 434
    .local v7, hasNonHangupStateChanged:Z
    const/4 v9, 0x0

    .line 435
    .local v9, needsPollDelay:Z
    const/4 v12, 0x0

    .line 437
    .local v12, unknownConnectionAppeared:Z
    const/4 v8, 0x0

    .local v8, i:I
    const/4 v4, 0x0

    .local v4, curDC:I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    .line 438
    .local v6, dcSize:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->connections:[Lcom/android/internal/telephony/gsm/VideoConnection;

    array-length v13, v13

    if-ge v8, v13, :cond_8

    .line 439
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->connections:[Lcom/android/internal/telephony/gsm/VideoConnection;

    aget-object v3, v13, v8

    .line 440
    .local v3, conn:Lcom/android/internal/telephony/gsm/VideoConnection;
    const/4 v5, 0x0

    .line 443
    .local v5, dc:Lcom/android/internal/telephony/DriverCall;
    if-ge v4, v6, :cond_0

    .line 444
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #dc:Lcom/android/internal/telephony/DriverCall;
    check-cast v5, Lcom/android/internal/telephony/DriverCall;

    .line 446
    .restart local v5       #dc:Lcom/android/internal/telephony/DriverCall;
    iget v13, v5, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v14, v8, 0x1

    if-ne v13, v14, :cond_5

    .line 447
    add-int/lit8 v4, v4, 0x1

    .line 453
    :cond_0
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "poll["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]: conn[i="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", dc="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->log(Ljava/lang/String;)V

    .line 456
    if-eqz v5, :cond_6

    iget-boolean v13, v5, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    if-eqz v13, :cond_6

    .line 458
    const-string/jumbo v13, "not video call, return"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->log(Ljava/lang/String;)V

    .line 438
    :cond_1
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 420
    .end local v3           #conn:Lcom/android/internal/telephony/gsm/VideoConnection;
    .end local v4           #curDC:I
    .end local v5           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v6           #dcSize:I
    .end local v7           #hasNonHangupStateChanged:Z
    .end local v8           #i:I
    .end local v9           #needsPollDelay:Z
    .end local v10           #newRinging:Lcom/android/internal/telephony/Connection;
    .end local v11           #polledCalls:Ljava/util/List;
    .end local v12           #unknownConnectionAppeared:Z
    :cond_2
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 423
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .restart local v11       #polledCalls:Ljava/util/List;
    goto/16 :goto_0

    .line 427
    .end local v11           #polledCalls:Ljava/util/List;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pollCallsAfterDelay()V

    .line 634
    :cond_4
    :goto_4
    return-void

    .line 449
    .restart local v3       #conn:Lcom/android/internal/telephony/gsm/VideoConnection;
    .restart local v4       #curDC:I
    .restart local v5       #dc:Lcom/android/internal/telephony/DriverCall;
    .restart local v6       #dcSize:I
    .restart local v7       #hasNonHangupStateChanged:Z
    .restart local v8       #i:I
    .restart local v9       #needsPollDelay:Z
    .restart local v10       #newRinging:Lcom/android/internal/telephony/Connection;
    .restart local v11       #polledCalls:Ljava/util/List;
    .restart local v12       #unknownConnectionAppeared:Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 462
    :cond_6
    if-nez v3, :cond_11

    if-eqz v5, :cond_11

    .line 464
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    invoke-virtual {v13, v5}, Lcom/android/internal/telephony/gsm/VideoConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 466
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "poll: pendingMO="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->log(Ljava/lang/String;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->connections:[Lcom/android/internal/telephony/gsm/VideoConnection;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    aput-object v14, v13, v8

    .line 470
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    iput v8, v13, Lcom/android/internal/telephony/gsm/VideoConnection;->index:I

    .line 471
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    invoke-virtual {v13, v5}, Lcom/android/internal/telephony/gsm/VideoConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 472
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    .line 475
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->hangupPendingMO:Z

    if-eqz v13, :cond_e

    .line 476
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->hangupPendingMO:Z

    .line 477
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "poll: hangupPendingMO, hangup conn "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->log(Ljava/lang/String;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->connections:[Lcom/android/internal/telephony/gsm/VideoConnection;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->hangupConnection(Lcom/android/internal/telephony/gsm/VideoConnection;)V

    goto :goto_4

    .line 486
    :cond_7
    const-string/jumbo v13, "ro.device.support.vt"

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_c

    .line 487
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->fallBackVP(Landroid/os/Message;)V

    .line 488
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fall back new incoming video call: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->log(Ljava/lang/String;)V

    .line 555
    .end local v3           #conn:Lcom/android/internal/telephony/gsm/VideoConnection;
    .end local v5           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    if-eqz v13, :cond_9

    .line 556
    const-string v13, "VideoCallTracker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Pending MO dropped before poll fg state:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/VideoCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    .line 561
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->hangupPendingMO:Z

    .line 564
    :cond_9
    if-eqz v10, :cond_a

    .line 565
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    invoke-virtual {v13, v10}, Lcom/android/internal/telephony/gsm/TDPhone;->notifyNewRingingVideoCall(Lcom/android/internal/telephony/Connection;)V

    .line 571
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v8, v13, -0x1

    :goto_6
    if-ltz v8, :cond_1a

    .line 572
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/VideoConnection;

    .line 574
    .restart local v3       #conn:Lcom/android/internal/telephony/gsm/VideoConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/VideoConnection;->isIncoming()Z

    move-result v13

    if-eqz v13, :cond_18

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/VideoConnection;->getConnectTime()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_18

    .line 577
    iget-object v13, v3, Lcom/android/internal/telephony/gsm/VideoConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v14, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v13, v14, :cond_17

    .line 578
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 584
    .local v1, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :goto_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "missed/rejected call, conn.cause="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v3, Lcom/android/internal/telephony/gsm/VideoConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->log(Ljava/lang/String;)V

    .line 585
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setting cause to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->log(Ljava/lang/String;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 588
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/gsm/VideoConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 571
    .end local v1           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_b
    :goto_8
    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    .line 492
    .restart local v5       #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "phone.isInCall(): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/TDPhone;->isInCall()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->log(Ljava/lang/String;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/TDPhone;->isInCall()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 495
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "new incoming video call during call, need hangup: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->log(Ljava/lang/String;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    goto/16 :goto_5

    .line 500
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->connections:[Lcom/android/internal/telephony/gsm/VideoConnection;

    new-instance v14, Lcom/android/internal/telephony/gsm/VideoConnection;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/TDPhone;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v14, v15, v5, v0, v8}, Lcom/android/internal/telephony/gsm/VideoConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/VideoCallTracker;I)V

    aput-object v14, v13, v8

    .line 503
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->connections:[Lcom/android/internal/telephony/gsm/VideoConnection;

    aget-object v13, v13, v8

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/VideoConnection;->getCall()Lcom/android/internal/telephony/gsm/VideoCall;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/VideoCall;

    if-ne v13, v14, :cond_f

    .line 504
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->connections:[Lcom/android/internal/telephony/gsm/VideoConnection;

    aget-object v10, v13, v8

    .line 524
    :cond_e
    :goto_9
    const/4 v7, 0x1

    goto/16 :goto_3

    .line 511
    :cond_f
    const-string v13, "VideoCallTracker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Phantom call appeared "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v13, v5, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v14, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v13, v14, :cond_10

    iget-object v13, v5, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v14, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v13, v14, :cond_10

    .line 518
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->connections:[Lcom/android/internal/telephony/gsm/VideoConnection;

    aget-object v13, v13, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v13, Lcom/android/internal/telephony/gsm/VideoConnection;->connectTime:J

    .line 521
    :cond_10
    const/4 v12, 0x1

    goto :goto_9

    .line 525
    :cond_11
    if-eqz v3, :cond_12

    if-nez v5, :cond_12

    .line 528
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "drop conn: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->log(Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->connections:[Lcom/android/internal/telephony/gsm/VideoConnection;

    const/4 v14, 0x0

    aput-object v14, v13, v8

    goto/16 :goto_3

    .line 533
    :cond_12
    if-eqz v3, :cond_14

    if-eqz v5, :cond_14

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gsm/VideoConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v13

    if-nez v13, :cond_14

    .line 537
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->connections:[Lcom/android/internal/telephony/gsm/VideoConnection;

    new-instance v14, Lcom/android/internal/telephony/gsm/VideoConnection;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/TDPhone;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v14, v15, v5, v0, v8}, Lcom/android/internal/telephony/gsm/VideoConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/VideoCallTracker;I)V

    aput-object v14, v13, v8

    .line 540
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->connections:[Lcom/android/internal/telephony/gsm/VideoConnection;

    aget-object v13, v13, v8

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/VideoConnection;->getCall()Lcom/android/internal/telephony/gsm/VideoCall;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/VideoCall;

    if-ne v13, v14, :cond_13

    .line 541
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->connections:[Lcom/android/internal/telephony/gsm/VideoConnection;

    aget-object v10, v13, v8

    .line 543
    :cond_13
    const/4 v7, 0x1

    goto/16 :goto_3

    .line 544
    :cond_14
    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    .line 546
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gsm/VideoConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v2

    .line 547
    .local v2, changed:Z
    if-nez v7, :cond_15

    if-eqz v2, :cond_16

    :cond_15
    const/4 v7, 0x1

    :goto_a
    goto/16 :goto_3

    :cond_16
    const/4 v7, 0x0

    goto :goto_a

    .line 580
    .end local v2           #changed:Z
    .end local v5           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_17
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .restart local v1       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    goto/16 :goto_7

    .line 589
    .end local v1           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_18
    iget-object v13, v3, Lcom/android/internal/telephony/gsm/VideoConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v14, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v13, v14, :cond_19

    .line 591
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 592
    sget-object v13, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v3, v13}, Lcom/android/internal/telephony/gsm/VideoConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto/16 :goto_8

    .line 593
    :cond_19
    iget-object v13, v3, Lcom/android/internal/telephony/gsm/VideoConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v14, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v13, v14, :cond_b

    .line 595
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 596
    sget-object v13, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v3, v13}, Lcom/android/internal/telephony/gsm/VideoConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto/16 :goto_8

    .line 600
    .end local v3           #conn:Lcom/android/internal/telephony/gsm/VideoConnection;
    :cond_1a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "poll: droppedDuringPoll.size():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->log(Ljava/lang/String;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_1b

    .line 603
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v14, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 607
    :cond_1b
    if-eqz v9, :cond_1c

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pollCallsAfterDelay()V

    .line 616
    :cond_1c
    if-nez v10, :cond_1d

    if-eqz v7, :cond_1e

    .line 617
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->internalClearDisconnected()V

    .line 620
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->updatePhoneState()V

    .line 622
    if-eqz v12, :cond_1f

    .line 623
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/TDPhone;->notifyUnknownConnection()V

    .line 626
    :cond_1f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handlePollCalls(), hasNonHangupStateChanged: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->log(Ljava/lang/String;)V

    .line 628
    if-nez v7, :cond_20

    if-eqz v10, :cond_4

    .line 629
    :cond_20
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/TDPhone;->notifyPreciseVideoCallStateChanged()V

    goto/16 :goto_4
.end method

.method hangup(Lcom/android/internal/telephony/gsm/VideoCall;)V
    .locals 3
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 723
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/VideoCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 724
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_0
    const-string v0, "VideoCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fhy: call.isRinging():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/VideoCall;->isRinging()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/VideoCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->internalHangupWithReason(I)V

    .line 735
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/VideoCall;->onHangupLocal()V

    .line 736
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/TDPhone;->notifyPreciseVideoCallStateChanged()V

    .line 737
    return-void

    .line 731
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->internalHangup()V

    goto :goto_0
.end method

.method hangup(Lcom/android/internal/telephony/gsm/VideoConnection;)V
    .locals 3
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 670
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/VideoConnection;->owner:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    if-eq v0, p0, :cond_0

    .line 671
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to VideoCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_0
    const-string v0, "VideoCallTracker"

    const-string v1, "hangup begin"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/VideoConnection;

    if-ne p1, v0, :cond_1

    .line 679
    const-string v0, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->log(Ljava/lang/String;)V

    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->hangupPendingMO:Z

    .line 685
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/VideoConnection;->onHangupLocal()V

    .line 686
    return-void

    .line 682
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->internalHangup()V

    goto :goto_0
.end method

.method hangupConnection(Lcom/android/internal/telephony/gsm/VideoConnection;)V
    .locals 2
    .parameter "conn"

    .prologue
    .line 873
    const-string v0, "VideoCallTracker"

    const-string v1, "hangupConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->internalHangup()V

    .line 875
    return-void
.end method

.method public isAlive()Z
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    .line 879
    const/4 v0, 0x1

    .line 881
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 868
    const-string v0, "VideoCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VideoCallTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return-void
.end method

.method protected pollCallsWhenSafe()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 906
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    .line 908
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->checkNoOperationsPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 910
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentVideoCalls(Landroid/os/Message;)V

    .line 912
    :cond_0
    return-void
.end method

.method public registerForVideoCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 175
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 176
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->videoCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 177
    return-void
.end method

.method public registerForVideoCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 166
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 167
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->videoCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 168
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 159
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 150
    return-void
.end method

.method rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/VideoCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->internalHangup()V

    .line 267
    return-void

    .line 265
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method separate(Lcom/android/internal/telephony/gsm/VideoConnection;)V
    .locals 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 690
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/VideoConnection;->owner:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    if-eq v1, p0, :cond_0

    .line 691
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to VideoCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 695
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/VideoConnection;->getGSMIndex()I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 700
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "VideoCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoCallTracker WARN: separate() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setMute(Z)V
    .locals 3
    .parameter "mute"

    .prologue
    .line 709
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->desiredMute:Z

    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->desiredMute:Z

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    .line 711
    return-void
.end method

.method public unregisterForVideoCallEnded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->videoCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 181
    return-void
.end method

.method public unregisterForVideoCallStarted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->videoCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 172
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 163
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 154
    return-void
.end method
