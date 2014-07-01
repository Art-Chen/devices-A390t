.class public Lcom/android/internal/telephony/gsm/VideoConnection;
.super Lcom/android/internal/telephony/Connection;
.source "VideoConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/VideoConnection$1;,
        Lcom/android/internal/telephony/gsm/VideoConnection$MyHandler;
    }
.end annotation


# static fields
.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "VIDEO"

.field static final PAUSE_DELAY_FIRST_MILLIS:I = 0x64

.field static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field address:Ljava/lang/String;

.field cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field connectTime:J

.field connectTimeReal:J

.field createTime:J

.field dialString:Ljava/lang/String;

.field disconnectTime:J

.field disconnected:Z

.field duration:J

.field h:Landroid/os/Handler;

.field index:I

.field isIncoming:Z

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field nextPostDialChar:I

.field numberPresentation:I

.field owner:Lcom/android/internal/telephony/gsm/VideoCallTracker;

.field parent:Lcom/android/internal/telephony/gsm/VideoCall;

.field postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field postDialString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/VideoCallTracker;I)V
    .locals 2
    .parameter "context"
    .parameter "dc"
    .parameter "ct"
    .parameter "index"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 71
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 72
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 73
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->numberPresentation:I

    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/VideoConnection;->createWakeLock(Landroid/content/Context;)V

    .line 117
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoConnection;->acquireWakeLock()V

    .line 119
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->owner:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    .line 120
    new-instance v0, Lcom/android/internal/telephony/gsm/VideoConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->owner:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/VideoConnection$MyHandler;-><init>(Lcom/android/internal/telephony/gsm/VideoConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->h:Landroid/os/Handler;

    .line 122
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->address:Ljava/lang/String;

    .line 124
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->isIncoming:Z

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->createTime:J

    .line 126
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->numberPresentation:I

    .line 128
    iput p4, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->index:I

    .line 130
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/VideoConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/VideoCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->parent:Lcom/android/internal/telephony/gsm/VideoCall;

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->parent:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v0, p0, p2}, Lcom/android/internal/telephony/gsm/VideoCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 132
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/VideoCallTracker;Lcom/android/internal/telephony/gsm/VideoCall;)V
    .locals 2
    .parameter "context"
    .parameter "dialString"
    .parameter "ct"
    .parameter "parent"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 71
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 72
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 73
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->numberPresentation:I

    .line 137
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/VideoConnection;->createWakeLock(Landroid/content/Context;)V

    .line 138
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoConnection;->acquireWakeLock()V

    .line 140
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->owner:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    .line 141
    new-instance v0, Lcom/android/internal/telephony/gsm/VideoConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->owner:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/VideoConnection$MyHandler;-><init>(Lcom/android/internal/telephony/gsm/VideoConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->h:Landroid/os/Handler;

    .line 143
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->dialString:Ljava/lang/String;

    .line 145
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->address:Ljava/lang/String;

    .line 146
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialString:Ljava/lang/String;

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->index:I

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->isIncoming:Z

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->createTime:J

    .line 153
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->parent:Lcom/android/internal/telephony/gsm/VideoCall;

    .line 154
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/gsm/VideoCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/VideoConnection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoConnection;->processNextPostDialChar()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/VideoConnection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoConnection;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 678
    const-string v0, "acquireWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/VideoConnection;->log(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 680
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 672
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 673
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "VIDEO"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 674
    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 162
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private isConnectingInOrOut()Z
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->parent:Lcom/android/internal/telephony/gsm/VideoCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->parent:Lcom/android/internal/telephony/gsm/VideoCall;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->owner:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/VideoCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/VideoCall;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->parent:Lcom/android/internal/telephony/gsm/VideoCall;

    iget-object v0, v0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->parent:Lcom/android/internal/telephony/gsm/VideoCall;

    iget-object v0, v0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 693
    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VideoConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void
.end method

.method private onStartedHolding()V
    .locals 0

    .prologue
    .line 497
    return-void
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/VideoCall;
    .locals 3
    .parameter "state"

    .prologue
    .line 633
    sget-object v0, Lcom/android/internal/telephony/gsm/VideoConnection$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 646
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->owner:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/VideoCall;

    .line 642
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->owner:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/VideoCall;

    goto :goto_0

    .line 633
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private processNextPostDialChar()V
    .locals 9

    .prologue
    .line 568
    const/4 v1, 0x0

    .line 571
    .local v1, c:C
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v6, v7, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialString:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->nextPostDialChar:I

    if-gt v6, v7, :cond_4

    .line 578
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/VideoConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 581
    const/4 v1, 0x0

    .line 600
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->owner:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    iget-object v4, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 604
    .local v4, postDialHandler:Landroid/os/Registrant;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, notifyMessage:Landroid/os/Message;
    if-eqz v3, :cond_0

    .line 607
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 608
    .local v5, state:Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 609
    .local v0, ar:Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 610
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 613
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 616
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 585
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #notifyMessage:Landroid/os/Message;
    .end local v4           #postDialHandler:Landroid/os/Registrant;
    .end local v5           #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/VideoConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 587
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialString:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->nextPostDialChar:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->nextPostDialChar:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 589
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/VideoConnection;->processPostDialChar(C)Z

    move-result v2

    .line 591
    .local v2, isValid:Z
    if-nez v2, :cond_3

    .line 593
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->h:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 595
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processNextPostDialChar: c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isn\'t valid!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processPostDialChar(C)Z
    .locals 5
    .parameter "c"

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 505
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->owner:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->h:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 535
    :goto_0
    return v0

    .line 507
    :cond_0
    const/16 v1, 0x2c

    if-ne p1, v1, :cond_2

    .line 514
    iget v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->nextPostDialChar:I

    if-ne v1, v0, :cond_1

    .line 517
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->h:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 524
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->h:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 527
    :cond_2
    const/16 v1, 0x3b

    if-ne p1, v1, :cond_3

    .line 528
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/VideoConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 529
    :cond_3
    const/16 v1, 0x4e

    if-ne p1, v1, :cond_4

    .line 530
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/VideoConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 532
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 684
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    const-string/jumbo v0, "releaseWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/VideoConnection;->log(Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 689
    :cond_0
    monitor-exit v1

    .line 690
    return-void

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x4

    .line 657
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_1

    .line 659
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoConnection;->acquireWakeLock()V

    .line 660
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 661
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->h:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 667
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 668
    return-void

    .line 662
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 665
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoConnection;->releaseWakeLock()V

    goto :goto_0
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/VideoConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 312
    return-void
.end method

.method compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 4
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    .line 172
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->isIncoming:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v1

    .line 177
    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, cAddress:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->isIncoming:Z

    iget-boolean v3, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->address:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/gsm/VideoConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 4
    .parameter "causeCode"

    .prologue
    .line 331
    sparse-switch p1, :sswitch_data_0

    .line 358
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->owner:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    iget-object v0, v2, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    .line 359
    .local v0, phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/TDPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 360
    .local v1, serviceState:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 361
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 382
    .end local v0           #phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v1           #serviceState:I
    :goto_0
    return-object v2

    .line 333
    :sswitch_0
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 341
    :sswitch_1
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 344
    :sswitch_2
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 347
    :sswitch_3
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 350
    :sswitch_4
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 353
    :sswitch_5
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 362
    .restart local v0       #phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v1       #serviceState:I
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 364
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 365
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_3

    .line 366
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ICC_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 367
    :cond_3
    const v2, 0xffff

    if-ne p1, v2, :cond_7

    .line 368
    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 369
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 370
    :cond_4
    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 371
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 372
    :cond_5
    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 373
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 375
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 377
    :cond_7
    const/16 v2, 0x10

    if-ne p1, v2, :cond_8

    .line 378
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 382
    :cond_8
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 331
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x11 -> :sswitch_0
        0x22 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2a -> :sswitch_1
        0x2c -> :sswitch_1
        0x31 -> :sswitch_1
        0x3a -> :sswitch_1
        0x44 -> :sswitch_2
        0xf0 -> :sswitch_3
        0xf1 -> :sswitch_4
    .end sparse-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    const-string v0, "VIDEO"

    const-string v1, "[GSMConn] UNEXPECTED; mPartialWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoConnection;->releaseWakeLock()V

    .line 564
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->address:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/VideoConnection;->getCall()Lcom/android/internal/telephony/gsm/VideoCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/gsm/VideoCall;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->parent:Lcom/android/internal/telephony/gsm/VideoCall;

    return-object v0
.end method

.method public getConnectTime()J
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->connectTime:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->createTime:J

    return-wide v0
.end method

.method public getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    return-object v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->disconnectTime:J

    return-wide v0
.end method

.method public getDurationMillis()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 202
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->connectTimeReal:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 207
    :goto_0
    return-wide v0

    .line 204
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->duration:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->connectTimeReal:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 207
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->duration:J

    goto :goto_0
.end method

.method getGSMIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 466
    iget v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->index:I

    if-ltz v0, :cond_0

    .line 467
    iget v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->index:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 469
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "GSM index not yet assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHoldDurationMillis()J
    .locals 2

    .prologue
    .line 212
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 698
    iget v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->numberPresentation:I

    return v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->nextPostDialChar:I

    if-gt v0, v1, :cond_1

    .line 545
    :cond_0
    const-string v0, ""

    .line 548
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->nextPostDialChar:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->disconnected:Z

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 227
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    goto :goto_0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 705
    const/4 v0, 0x0

    return-object v0
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->owner:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->hangup(Lcom/android/internal/telephony/gsm/VideoConnection;)V

    .line 237
    return-void

    .line 235
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->isIncoming:Z

    return v0
.end method

.method onConnectedInOrOut()V
    .locals 3

    .prologue
    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->connectTime:J

    .line 479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->connectTimeReal:J

    .line 480
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->duration:J

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->connectTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/VideoConnection;->log(Ljava/lang/String;)V

    .line 488
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->isIncoming:Z

    if-nez v0, :cond_0

    .line 490
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoConnection;->processNextPostDialChar()V

    .line 492
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoConnection;->releaseWakeLock()V

    .line 493
    return-void
.end method

.method onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 4
    .parameter "cause"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 397
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 398
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->index:I

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->disconnectTime:J

    .line 401
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->connectTimeReal:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->duration:J

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->disconnected:Z

    .line 404
    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VideoConn] onDisconnect: cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->owner:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/TDPhone;->notifyVideoCallDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->parent:Lcom/android/internal/telephony/gsm/VideoCall;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->parent:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/VideoCall;->connectionDisconnected(Lcom/android/internal/telephony/gsm/VideoConnection;)V

    .line 413
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoConnection;->releaseWakeLock()V

    .line 414
    return-void
.end method

.method onHangupLocal()V
    .locals 1

    .prologue
    .line 321
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 322
    return-void
.end method

.method onRemoteDisconnect(I)V
    .locals 1
    .parameter "causeCode"

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/VideoConnection;->disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/VideoConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 390
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 253
    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_0
    return-void

    .line 258
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/VideoConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 260
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .parameter "str"

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_0

    .line 265
    const-string v1, "VIDEO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_0
    return-void

    .line 270
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/VideoConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->nextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialString:Ljava/lang/String;

    .line 300
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->nextPostDialChar:I

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/VideoConnection;->log(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->owner:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->separate(Lcom/android/internal/telephony/gsm/VideoConnection;)V

    .line 245
    return-void

    .line 243
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method update(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 9
    .parameter "dc"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, changed:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoConnection;->isConnectingInOrOut()Z

    move-result v3

    .line 422
    .local v3, wasConnectingInOrOut:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/VideoConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_3

    move v4, v5

    .line 424
    .local v4, wasHolding:Z
    :goto_0
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/VideoConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/VideoCall;

    move-result-object v1

    .line 426
    .local v1, newParent:Lcom/android/internal/telephony/gsm/VideoCall;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->address:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/internal/telephony/gsm/VideoConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 427
    const-string/jumbo v7, "update: phone # changed!"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/VideoConnection;->log(Ljava/lang/String;)V

    .line 428
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->address:Ljava/lang/String;

    .line 429
    const/4 v0, 0x1

    .line 432
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->parent:Lcom/android/internal/telephony/gsm/VideoCall;

    if-eq v1, v7, :cond_4

    .line 433
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->parent:Lcom/android/internal/telephony/gsm/VideoCall;

    if-eqz v7, :cond_1

    .line 434
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->parent:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/gsm/VideoCall;->detach(Lcom/android/internal/telephony/gsm/VideoConnection;)V

    .line 436
    :cond_1
    invoke-virtual {v1, p0, p1}, Lcom/android/internal/telephony/gsm/VideoCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 437
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->parent:Lcom/android/internal/telephony/gsm/VideoCall;

    .line 438
    const/4 v0, 0x1

    .line 447
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update: parent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->parent:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", hasNewParent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->parent:Lcom/android/internal/telephony/gsm/VideoCall;

    if-eq v1, v8, :cond_7

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wasConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wasHolding="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoConnection;->isConnectingInOrOut()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", changed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/VideoConnection;->log(Ljava/lang/String;)V

    .line 456
    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VideoConnection;->isConnectingInOrOut()Z

    move-result v5

    if-nez v5, :cond_2

    .line 457
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/VideoConnection;->onConnectedInOrOut()V

    .line 460
    :cond_2
    return v0

    .end local v1           #newParent:Lcom/android/internal/telephony/gsm/VideoCall;
    .end local v4           #wasHolding:Z
    :cond_3
    move v4, v6

    .line 422
    goto/16 :goto_0

    .line 441
    .restart local v1       #newParent:Lcom/android/internal/telephony/gsm/VideoCall;
    .restart local v4       #wasHolding:Z
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/VideoConnection;->parent:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v7, p0, p1}, Lcom/android/internal/telephony/gsm/VideoCall;->update(Lcom/android/internal/telephony/gsm/VideoConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result v2

    .line 442
    .local v2, parentStateChange:Z
    if-nez v0, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    move v0, v5

    :goto_3
    goto :goto_1

    :cond_6
    move v0, v6

    goto :goto_3

    .end local v2           #parentStateChange:Z
    :cond_7
    move v5, v6

    .line 447
    goto :goto_2
.end method
