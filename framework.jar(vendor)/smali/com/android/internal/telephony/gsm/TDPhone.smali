.class public final Lcom/android/internal/telephony/gsm/TDPhone;
.super Lcom/android/internal/telephony/gsm/GSMPhone;
.source "TDPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/TDPhone$1;,
        Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;
    }
.end annotation


# static fields
.field protected static final EVENT_CONTROL_AUDIO_DONE:I = 0x65

.field protected static final EVENT_CONTROL_CAMERA_DONE:I = 0x64

.field protected static final EVENT_GET_REGISTRATION_STATE_DONE:I = 0x69

.field protected static final EVENT_GET_REMIAN_TIMES_DONE:I = 0x6a

.field protected static final EVENT_GET_SIM_TYPE_DONE:I = 0x68

.field protected static final EVENT_GSM_AUTHEN_DONE:I = 0x66

.field protected static final EVENT_USIM_AUTHEN_DONE:I = 0x67

.field private static final LOCAL_DEBUG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "TD"

.field public static final SERVICE_CLASS_VIDEO:I = 0x10


# instance fields
.field callType:Lcom/android/internal/telephony/SprdVideoPhone$CallType;

.field private mGsmAuthen:Ljava/lang/String;

.field mHandler:Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;

.field protected final mIncomingRingVideoCallRegistrants:Landroid/os/RegistrantList;

.field private final mLock:Ljava/lang/Object;

.field protected final mNewRingingVideoCallRegistrants:Landroid/os/RegistrantList;

.field protected final mPreciseVideoCallStateRegistrants:Landroid/os/RegistrantList;

.field private mRegistrationState:[Ljava/lang/String;

.field private mRemainTimes:I

.field private mSimType:Ljava/lang/String;

.field private mUsimAuthen:Ljava/lang/String;

.field mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

.field protected final mVideoCallCodecRegistrants:Landroid/os/RegistrantList;

.field protected final mVideoCallDisconnectRegistrants:Landroid/os/RegistrantList;

.field protected final mVideoCallFailRegistrants:Landroid/os/RegistrantList;

.field protected final mVideoCallFallBackRegistrants:Landroid/os/RegistrantList;

.field protected final mVideoCallRemoteCameraRegistrants:Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 1
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/TDPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V
    .locals 5
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "unitTestMode"

    .prologue
    const/4 v4, 0x0

    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 104
    new-instance v3, Ljava/lang/Object;

    invoke-direct/range {v3 .. v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;

    .line 106
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mPreciseVideoCallStateRegistrants:Landroid/os/RegistrantList;

    .line 109
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mNewRingingVideoCallRegistrants:Landroid/os/RegistrantList;

    .line 112
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mIncomingRingVideoCallRegistrants:Landroid/os/RegistrantList;

    .line 115
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCallDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 118
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCallFallBackRegistrants:Landroid/os/RegistrantList;

    .line 121
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCallFailRegistrants:Landroid/os/RegistrantList;

    .line 124
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCallRemoteCameraRegistrants:Landroid/os/RegistrantList;

    .line 127
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCallCodecRegistrants:Landroid/os/RegistrantList;

    .line 821
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mGsmAuthen:Ljava/lang/String;

    .line 822
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mUsimAuthen:Ljava/lang/String;

    .line 823
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mSimType:Ljava/lang/String;

    .line 824
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mRegistrationState:[Ljava/lang/String;

    .line 825
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mRemainTimes:I

    .line 154
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    .line 155
    .local v1, syncObj:Ljava/lang/Object;
    move-object v0, p0

    .line 156
    .local v0, phone:Lcom/android/internal/telephony/gsm/TDPhone;
    new-instance v3, Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;-><init>(Lcom/android/internal/telephony/gsm/TDPhone;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    .line 158
    instance-of v3, p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    if-eqz v3, :cond_0

    .line 159
    check-cast p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .end local p2
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneBase;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 162
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->getTrackerInstance(Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 169
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "TDSyncSender"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 170
    .local v2, thread:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 172
    new-instance v3, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;-><init>(Lcom/android/internal/telephony/gsm/TDPhone;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mHandler:Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/TDPhone;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/TDPhone;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mGsmAuthen:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/TDPhone;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mUsimAuthen:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/gsm/TDPhone;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mSimType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/gsm/TDPhone;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mRegistrationState:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/gsm/TDPhone;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mRemainTimes:I

    return p1
.end method

.method private handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 7
    .parameter "infos"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1031
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_2

    .line 1034
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v2, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZ)V

    .line 1035
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v2, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVideoCallForwardingFlag(IZ)V

    .line 1049
    :cond_1
    :goto_0
    return-void

    .line 1037
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p1

    .local v1, s:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 1038
    const-string v2, "TD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCfuQueryResult i: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", serviceClass:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v0

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v0

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    aget-object v2, p1, v0

    iget v2, v2, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 1040
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v2, Lcom/android/internal/telephony/gsm/SIMRecords;

    aget-object v5, p1, v0

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v4, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZ)V

    goto :goto_0

    .line 1043
    :cond_4
    aget-object v2, p1, v0

    iget v2, v2, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    .line 1044
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v2, Lcom/android/internal/telephony/gsm/SIMRecords;

    aget-object v5, p1, v0

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v4, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVideoCallForwardingFlag(IZ)V

    goto :goto_0

    .line 1037
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .parameter "commandInterfaceCFAction"

    .prologue
    .line 420
    packed-switch p1, :pswitch_data_0

    .line 427
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 425
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .parameter "commandInterfaceCFReason"

    .prologue
    .line 406
    packed-switch p1, :pswitch_data_0

    .line 415
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 413
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private sendIncomingVideoCallRingNotification(I)V
    .locals 3
    .parameter "token"

    .prologue
    .line 808
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    if-ne p1, v0, :cond_0

    .line 809
    const-string v0, "TD"

    const-string v1, "Sending notifyIncomingRing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/TDPhone;->notifyIncomingRingVideoCall()V

    .line 811
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/gsm/TDPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/TDPhone;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 819
    :goto_0
    return-void

    .line 814
    :cond_0
    const-string v0, "TD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring ring notification request, mDoesRilSendMultipleCallRing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCallRingContinueToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public Mbbms_Gsm_Authenticate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "nonce"

    .prologue
    .line 914
    const-string v2, "TD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mbbms_Gsm_Authenticate nonce:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 917
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mHandler:Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;

    const/16 v4, 0x66

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 918
    .local v1, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->Mbbms_Gsm_Authenticate(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 924
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 925
    const-string v2, "TD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mbbms_Gsm_Authenticate mGsmAuthen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mGsmAuthen:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mGsmAuthen:Ljava/lang/String;

    return-object v2

    .line 921
    :catch_0
    move-exception v0

    .line 922
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "TD"

    const-string v4, "interrupted while trying to authenticate the SIM"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 924
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public Mbbms_USim_Authenticate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "nonce"
    .parameter "autn"

    .prologue
    .line 933
    const-string v2, "TD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mbbms_USim_Authenticate nonce:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " autn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 936
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mHandler:Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;

    const/16 v4, 0x67

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 937
    .local v1, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->Mbbms_USim_Authenticate(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 943
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 945
    const-string v2, "TD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mbbms_USim_Authenticate mUsimAuthen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mUsimAuthen:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mUsimAuthen:Ljava/lang/String;

    return-object v2

    .line 940
    :catch_0
    move-exception v0

    .line 941
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "TD"

    const-string v4, "interrupted while trying to authenticate the USIM"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 943
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->acceptCall()V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V

    goto :goto_0
.end method

.method public acceptFallBack()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->acceptFallBack()V

    .line 785
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canConference()Z

    move-result v0

    .line 286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canDial()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->canDial()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->clearDisconnected()V

    .line 301
    return-void
.end method

.method public codecVP(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "type"
    .parameter "param"

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->codecVP(ILandroid/os/Bundle;Landroid/os/Message;)V

    .line 797
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->conference()V

    .line 296
    :cond_0
    return-void
.end method

.method public controlAudio(Z)V
    .locals 5
    .parameter "bEnable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 792
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x65

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v0, v1, v4}, Lcom/android/internal/telephony/gsm/TDPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->controlVPAudio(ZLandroid/os/Message;)V

    .line 793
    return-void

    :cond_0
    move v0, v1

    .line 792
    goto :goto_0
.end method

.method public controlCamera(Z)V
    .locals 5
    .parameter "bEnable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 788
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x64

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v0, v1, v4}, Lcom/android/internal/telephony/gsm/TDPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->controlVPCamera(ZLandroid/os/Message;)V

    .line 789
    return-void

    :cond_0
    move v0, v1

    .line 788
    goto :goto_0
.end method

.method public dialVP(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 7
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 750
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 751
    .local v2, newDialString:Ljava/lang/String;
    const-string v4, "TD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialVP \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/TDPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 775
    :goto_0
    return-object v3

    .line 759
    :cond_0
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, networkPortion:Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 761
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const-string v4, "TD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialing w/ mmi \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    if-nez v0, :cond_1

    .line 765
    sget-object v3, Lcom/android/internal/telephony/SprdVideoPhone$CallType;->VIDEO:Lcom/android/internal/telephony/SprdVideoPhone$CallType;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->callType:Lcom/android/internal/telephony/SprdVideoPhone$CallType;

    .line 766
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 767
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 768
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 770
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 772
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 176
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->dispose()V

    .line 178
    monitor-exit v1

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->explicitCallTransfer()V

    .line 309
    return-void
.end method

.method public fallBack()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->fallBack()V

    .line 781
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 182
    const-string v0, "TD"

    const-string v1, "TDPhone finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const-string v0, "TD"

    const-string v1, "getBackgroundCall(), mVideoCT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/VideoCall;

    .line 335
    :goto_0
    return-object v0

    .line 334
    :cond_0
    const-string v0, "TD"

    const-string v1, "getBackgroundCall(), mCT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    goto :goto_0
.end method

.method public getBackgroundCalls()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v0, backgroundCalls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/VideoCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    return-object v0
.end method

.method public getCallForwardingIndicator(I)Z
    .locals 1
    .parameter "serviceClass"

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getCallForwardingFlag(I)Z

    move-result v0

    return v0
.end method

.method public getCallForwardingOption(IILandroid/os/Message;)V
    .locals 3
    .parameter "commandInterfaceCFReason"
    .parameter "serviceClass"
    .parameter "onComplete"

    .prologue
    .line 988
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/TDPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 989
    const-string v1, "TD"

    const-string/jumbo v2, "requesting call forwarding query."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    if-nez p1, :cond_1

    .line 992
    const/16 v1, 0xd

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/gsm/TDPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 996
    .local v0, resp:Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 998
    .end local v0           #resp:Landroid/os/Message;
    :cond_0
    return-void

    .line 994
    :cond_1
    move-object v0, p3

    .restart local v0       #resp:Landroid/os/Message;
    goto :goto_0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 4
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/TDPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    const-string v1, "TD"

    const-string/jumbo v2, "requesting call forwarding query."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    if-nez p1, :cond_1

    .line 440
    const/16 v1, 0xd

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/gsm/TDPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 444
    .local v0, resp:Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 446
    .end local v0           #resp:Landroid/os/Message;
    :cond_0
    return-void

    .line 442
    :cond_1
    move-object v0, p2

    .restart local v0       #resp:Landroid/os/Message;
    goto :goto_0
.end method

.method public getCallType()Lcom/android/internal/telephony/SprdVideoPhone$CallType;
    .locals 6

    .prologue
    .line 732
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 733
    sget-object v3, Lcom/android/internal/telephony/SprdVideoPhone$CallType;->VIDEO:Lcom/android/internal/telephony/SprdVideoPhone$CallType;

    .line 742
    :goto_0
    return-object v3

    .line 735
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/TDPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 736
    .local v1, foregroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/TDPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 737
    .local v0, backgroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/TDPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 738
    .local v2, ringingCallState:Lcom/android/internal/telephony/Call$State;
    const-string v3, "TD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    sget-object v3, Lcom/android/internal/telephony/SprdVideoPhone$CallType;->VOICE:Lcom/android/internal/telephony/SprdVideoPhone$CallType;

    goto :goto_0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 484
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 3
    .parameter "apnType"

    .prologue
    .line 204
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 206
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataState;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-nez v1, :cond_0

    .line 210
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 251
    :goto_0
    return-object v0

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 221
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 223
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/gsm/TDPhone$1;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 226
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 227
    goto :goto_0

    .line 231
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 233
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 234
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/TDPhone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->isAnotherCardVoiceing(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->isSupportMultiModem()Z

    move-result v1

    if-nez v1, :cond_5

    .line 237
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 239
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 241
    goto :goto_0

    .line 246
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/VideoCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/VideoCall;

    .line 317
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    goto :goto_0
.end method

.method public getForegroundCalls()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v0, foregroundCalls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/VideoCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 474
    return-void
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneId()I

    move-result v0

    return v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    const-string v0, "TD"

    return-object v0
.end method

.method public getRegistrationState()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 970
    const-string v2, "TD"

    const-string v3, "getRegistrationState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 973
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mHandler:Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;

    const/16 v4, 0x69

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 974
    .local v1, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 980
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 982
    const-string v2, "TD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRegistrationState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mRegistrationState:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mRegistrationState:[Ljava/lang/String;

    return-object v2

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "TD"

    const-string v4, "interrupted while trying to get registration state"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 980
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getRemainTimes(I)I
    .locals 5
    .parameter "type"

    .prologue
    .line 1056
    const-string v2, "TD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRemainTimes type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1059
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mHandler:Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;

    const/16 v4, 0x6a

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1060
    .local v1, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->getRemainTimes(ILandroid/os/Message;)V

    .line 1061
    const-string v2, "TD"

    const-string v4, "enter mLock.wait"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 1064
    const-string v2, "TD"

    const-string v4, "leave mLock.wait"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1068
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1070
    const-string v2, "TD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRemainTimes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mRemainTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget v2, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mRemainTimes:I

    return v2

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "TD"

    const-string v4, "interrupted while trying to get remain times"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1068
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/VideoCall;

    .line 352
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    goto :goto_0
.end method

.method public getRingingCalls()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v0, ringingCalls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/VideoCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/VideoCall;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    return-object v0
.end method

.method public getSimType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 953
    const-string v2, "TD"

    const-string v3, "getSimType"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 956
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mHandler:Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;

    const/16 v4, 0x68

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 957
    .local v1, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSimType(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 963
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 965
    const-string v2, "TD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mSimType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mSimType:Ljava/lang/String;

    return-object v2

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "TD"

    const-string v4, "interrupted while trying to get sim type"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 963
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .locals 3

    .prologue
    .line 187
    const-string v0, "TD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoCT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/VideoCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 192
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 508
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 589
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleMessage(Landroid/os/Message;)V

    .line 592
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 521
    :sswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 523
    const-string v3, "TD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event EVENT_CALL_RING Received state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/TDPhone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 525
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/TDPhone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 527
    .local v2, state:Lcom/android/internal/telephony/Phone$State;
    iget-boolean v3, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_2

    .line 529
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    .line 530
    iget v3, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/TDPhone;->sendIncomingVideoCallRingNotification(I)V

    goto :goto_0

    .line 532
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/TDPhone;->notifyIncomingRingVideoCall()V

    goto :goto_0

    .line 538
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #state:Lcom/android/internal/telephony/Phone$State;
    :cond_3
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 542
    :sswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 544
    const-string v3, "TD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event EVENT_CALL_RING_CONTINUE Received stat="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/TDPhone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/TDPhone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_0

    .line 546
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/TDPhone;->sendIncomingVideoCallRingNotification(I)V

    goto/16 :goto_0

    .line 551
    :cond_4
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 560
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 561
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_6

    .line 562
    const-string v3, "TD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event EVENT_SET_CALL_FORWARD_DONE Received msg.arg2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget v3, p1, Landroid/os/Message;->arg2:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    .line 564
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v3, Lcom/android/internal/telephony/gsm/SIMRecords;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v5, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {v3, v5, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZ)V

    .line 569
    :cond_6
    :goto_1
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 570
    .local v1, onComplete:Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 571
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 572
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 565
    .end local v1           #onComplete:Landroid/os/Message;
    :cond_7
    const/16 v3, 0x10

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v6, :cond_6

    .line 566
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v3, Lcom/android/internal/telephony/gsm/SIMRecords;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v5, :cond_8

    move v4, v5

    :cond_8
    invoke-virtual {v3, v5, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVideoCallForwardingFlag(IZ)V

    goto :goto_1

    .line 577
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 578
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_9

    .line 579
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Lcom/android/internal/telephony/CallForwardInfo;

    check-cast v3, [Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/TDPhone;->handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 581
    :cond_9
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 582
    .restart local v1       #onComplete:Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 583
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 584
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 508
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0xe -> :sswitch_1
        0xf -> :sswitch_2
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method protected isCfEnable(I)Z
    .locals 2
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 432
    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInCall()Z
    .locals 4

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/TDPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 365
    .local v1, foregroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/TDPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 366
    .local v0, backgroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/TDPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 368
    .local v2, ringingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isVTCall()Z
    .locals 2

    .prologue
    .line 1001
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/TDPhone;->getCallType()Lcom/android/internal/telephony/SprdVideoPhone$CallType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/SprdVideoPhone$CallType;->VIDEO:Lcom/android/internal/telephony/SprdVideoPhone$CallType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCallForwardingIndicator(I)V
    .locals 1
    .parameter "serviceClass"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;I)V

    .line 256
    return-void
.end method

.method notifyIncomingRingVideoCall()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 705
    const-string v1, "TD"

    const-string v2, " notifyVideoCallCodec"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v3, p0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 707
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mIncomingRingVideoCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 708
    return-void
.end method

.method notifyNewRingingVideoCall(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .parameter "cn"

    .prologue
    const/4 v3, 0x0

    .line 699
    const-string v1, "TD"

    const-string v2, " notifyNewRingingVideoCall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v3, p1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 701
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mNewRingingVideoCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 702
    return-void
.end method

.method notifyPreciseVideoCallStateChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 693
    const-string v1, "TD"

    const-string v2, " notifyPreciseVideoCallStateChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v3, p0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 695
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mPreciseVideoCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 696
    return-void
.end method

.method notifyVideoCallCodec(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 727
    const-string v0, "TD"

    const-string v1, " notifyVideoCallCodec"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCallCodecRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 729
    return-void
.end method

.method notifyVideoCallDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .parameter "cn"

    .prologue
    const/4 v3, 0x0

    .line 711
    const-string v1, "TD"

    const-string v2, " notifyVideoCallDisconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v3, p1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 713
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCallDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 714
    return-void
.end method

.method notifyVideoCallFail(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 722
    const-string v0, "TD"

    const-string v1, " notifyVideoCallFail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCallFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 724
    return-void
.end method

.method notifyVideoCallFallBack(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 717
    const-string v0, "TD"

    const-string v1, " notifyVideoCallFallBack"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCallFallBackRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 719
    return-void
.end method

.method public recordPhoneState(Lcom/android/internal/telephony/Phone$State;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->recordPhoneState(Lcom/android/internal/telephony/Phone$State;)V

    .line 1089
    return-void
.end method

.method public registerForGprsAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 678
    return-void
.end method

.method public registerForGprsDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 686
    return-void
.end method

.method public registerForIncomingRingVideoCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 617
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/TDPhone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mIncomingRingVideoCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 620
    return-void
.end method

.method public registerForNewRingingVideoCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 607
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/TDPhone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mNewRingingVideoCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 610
    return-void
.end method

.method public registerForPreciseVideoCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 597
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/TDPhone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 599
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mPreciseVideoCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 600
    return-void
.end method

.method public registerForRemoteCamera(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 657
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/TDPhone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 659
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCallRemoteCameraRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 660
    return-void
.end method

.method public registerForVideoCallCodec(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 667
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/TDPhone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCallCodecRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 670
    return-void
.end method

.method public registerForVideoCallDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 627
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/TDPhone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCallDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 630
    return-void
.end method

.method public registerForVideoCallFail(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 647
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/TDPhone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCallFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 650
    return-void
.end method

.method public registerForVideoCallFallBack(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 637
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/TDPhone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCallFallBackRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 640
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->rejectCall()V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V

    goto :goto_0
.end method

.method public sendBurstDtmf(Ljava/lang/String;)V
    .locals 2
    .parameter "dtmfString"

    .prologue
    .line 402
    const-string v0, "TD"

    const-string v1, "[TDPhone] sendBurstDtmf() is a CDMA method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void
.end method

.method public sendDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 375
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    const-string v0, "TD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public setCallForwardingOption(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "serviceClass"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 1010
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/TDPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/TDPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1014
    if-nez p2, :cond_2

    .line 1015
    const/16 v1, 0xc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/TDPhone;->isCfEnable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0, p3, p6}, Lcom/android/internal/telephony/gsm/TDPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1020
    .local v6, resp:Landroid/os/Message;
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 1027
    .end local v6           #resp:Landroid/os/Message;
    :cond_0
    return-void

    .line 1015
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1018
    :cond_2
    move-object v6, p6

    .restart local v6       #resp:Landroid/os/Message;
    goto :goto_1
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    const/4 v3, 0x1

    .line 453
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/TDPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/TDPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    if-nez p2, :cond_2

    .line 458
    const/16 v1, 0xc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/TDPhone;->isCfEnable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_0
    invoke-virtual {p0, v1, v0, v3, p5}, Lcom/android/internal/telephony/gsm/TDPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 463
    .local v6, resp:Landroid/os/Message;
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 470
    .end local v6           #resp:Landroid/os/Message;
    :cond_0
    return-void

    .line 458
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 461
    :cond_2
    move-object v6, p5

    .restart local v6       #resp:Landroid/os/Message;
    goto :goto_1
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 488
    return-void
.end method

.method public setIccCard(Z)V
    .locals 2
    .parameter "turnOn"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSIMPower(ZLandroid/os/Message;)V

    .line 1076
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "muted"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 496
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 491
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 492
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 3
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, p2}, Lcom/android/internal/telephony/gsm/TDPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 480
    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 387
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    const-string v0, "TD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 398
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCT:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 280
    :cond_0
    return-void
.end method

.method public unregisterForGprsAttached(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 682
    return-void
.end method

.method public unregisterForGprsDetached(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 690
    return-void
.end method

.method public unregisterForIncomingRingVideoCall(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mIncomingRingVideoCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 624
    return-void
.end method

.method public unregisterForNewRingingVideoCall(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mNewRingingVideoCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 614
    return-void
.end method

.method public unregisterForPreciseVideoCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mPreciseVideoCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 604
    return-void
.end method

.method public unregisterForRemoteCamera(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCallRemoteCameraRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 664
    return-void
.end method

.method public unregisterForVideoCallCodec(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCallCodecRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 674
    return-void
.end method

.method public unregisterForVideoCallDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCallDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 634
    return-void
.end method

.method public unregisterForVideoCallFail(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCallFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 654
    return-void
.end method

.method public unregisterForVideoCallFallBack(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDPhone;->mVideoCallFallBackRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 644
    return-void
.end method
