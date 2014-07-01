.class public Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;
.super Landroid/os/Handler;
.source "MsmsGsmDataConnectionTrackerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs;
    }
.end annotation


# static fields
.field public static final EVENT_DISCONNECT_DONE:I = 0xa

.field private static final INVALID_PHONE_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final MULTI_MODEM_SUPPORT:Z

.field private static sActivePhoneId:I

.field private static sInstance:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;

.field private static sRequestConnectPhoneId:I

.field private static sRequestPhoneIdBeforeVoiceCallEnd:I

.field private static sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

.field private static sVoicePhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 51
    new-instance v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sInstance:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;

    .line 55
    sput v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    .line 56
    sput v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    .line 60
    sput v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestPhoneIdBeforeVoiceCallEnd:I

    .line 61
    sput v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sVoicePhoneId:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 85
    return-void
.end method

.method public static checkAndSwitchPhone(ILandroid/content/Context;)Z
    .locals 5
    .parameter "phoneId"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 225
    sget-object v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sInstance:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;

    monitor-enter v1

    .line 226
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndSwitchPhone: sActivePhoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sRequestConnectPhoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->log(Ljava/lang/String;)V

    .line 228
    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    if-eq v2, v4, :cond_0

    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    if-eq v2, p0, :cond_0

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sActivePhoneId should be INVALID_PHONE_ID or equal to phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->log(Ljava/lang/String;)V

    .line 230
    monitor-exit v1

    .line 275
    :goto_0
    return v0

    .line 232
    :cond_0
    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    if-ne v2, v4, :cond_1

    if-eqz p1, :cond_1

    .line 233
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set RequestConnectPhoneId to default when it is not specified:RequestConnectPhoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->log(Ljava/lang/String;)V

    .line 237
    :cond_1
    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    sget v3, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    if-eq v2, v3, :cond_7

    .line 239
    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    if-eq v2, v4, :cond_3

    .line 240
    sget-object v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v3, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->isDisconnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 241
    sget-object v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->detachGprs(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 256
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndSwitchPhone: switch Apn from phone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to phone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->log(Ljava/lang/String;)V

    .line 258
    sget-object v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->isAutoAttachOnCreation()Z

    move-result v0

    if-nez v0, :cond_6

    .line 260
    sget-object v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->getCurrentGprsState()I

    move-result v0

    if-nez v0, :cond_5

    .line 261
    sget-object v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    aget-object v0, v0, v2

    const-string/jumbo v2, "switchConnection"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    .line 269
    :goto_2
    sget v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    sput v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    .line 270
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    .line 271
    const/4 v0, 0x1

    monitor-exit v1

    goto/16 :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 243
    :cond_2
    :try_start_1
    const-string v2, "isAllPdpDisconnectDone==false, return false"

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->log(Ljava/lang/String;)V

    .line 244
    monitor-exit v1

    goto/16 :goto_0

    .line 248
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    aget-object v2, v2, p0

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->isDisconnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 249
    sget-object v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->detachGprs(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    goto :goto_1

    .line 251
    :cond_4
    const-string v2, "isAllPdpDisconnectDone==false, return false"

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->log(Ljava/lang/String;)V

    .line 252
    monitor-exit v1

    goto/16 :goto_0

    .line 263
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setGprsAttach(Landroid/os/Message;)V

    goto :goto_2

    .line 267
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    aget-object v0, v0, v2

    const-string/jumbo v2, "switchConnection"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    goto :goto_2

    .line 273
    :cond_7
    const-string v2, "checkAndSwitchPhone: same phone, return false"

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->log(Ljava/lang/String;)V

    .line 274
    const/4 v2, -0x1

    sput v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    .line 275
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private static detachGprs(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->isCardReady(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    :goto_0
    return-void

    .line 319
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 320
    .local v0, detachGprs:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs;->start()V

    .line 321
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs;->detach()V

    goto :goto_0
.end method

.method public static getAllPhoneStateString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 101
    const-string v2, "Phone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    sget-object v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 103
    sget-object v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    :goto_1
    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 109
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getInstance()Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sInstance:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;

    return-object v0
.end method

.method public static getRequestPhoneIdBeforeVoiceCallEnd()I
    .locals 3

    .prologue
    .line 405
    sget-object v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sInstance:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;

    monitor-enter v1

    .line 406
    :try_start_0
    sget v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestPhoneIdBeforeVoiceCallEnd:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 407
    sget v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    sput v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestPhoneIdBeforeVoiceCallEnd:I

    .line 409
    :cond_0
    sget v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestPhoneIdBeforeVoiceCallEnd:I

    monitor-exit v1

    return v0

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getTrackerInstance(Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
    .locals 4
    .parameter "phone"

    .prologue
    .line 70
    sget-object v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sInstance:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;

    monitor-enter v2

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    .line 72
    .local v0, phoneId:I
    sget-object v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    if-nez v1, :cond_0

    .line 73
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sput-object v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    .line 75
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 76
    sget-object v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    new-instance v3, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    aput-object v3, v1, v0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    .line 79
    sget-object v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    aget-object v1, v1, v0

    monitor-exit v2

    return-object v1

    .line 80
    .end local v0           #phoneId:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isActivePhoneId(I)Z
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v0, -0x1

    .line 306
    sget-object v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sInstance:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;

    monitor-enter v1

    .line 307
    :try_start_0
    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    if-eq v2, v0, :cond_0

    sget v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    :cond_0
    sput v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    .line 309
    sget v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    if-ne v0, p0, :cond_1

    .line 310
    const/4 v0, 0x1

    monitor-exit v1

    .line 312
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isAllPhoneIdle()Z
    .locals 4

    .prologue
    .line 88
    const/4 v1, 0x1

    .line 89
    .local v1, isIdle:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 90
    sget-object v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_1

    .line 91
    const/4 v1, 0x0

    .line 95
    :cond_0
    return v1

    .line 89
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static isAnotherCardVoiceing(I)Z
    .locals 3
    .parameter "phoneId"

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 423
    .local v0, ret:Z
    sget v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sVoicePhoneId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sVoicePhoneId:I

    if-ne v1, p0, :cond_1

    .line 424
    :cond_0
    const/4 v0, 0x0

    .line 428
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAnotherCardVoiceing phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sVoicePhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sVoicePhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->log(Ljava/lang/String;)V

    .line 429
    return v0

    .line 426
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isAnyIccCardReadyExceptProvided(I)Z
    .locals 3
    .parameter "exceptPhoneId"

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, find:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 152
    if-ne v1, p0, :cond_1

    .line 151
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->isIccCardReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const/4 v0, 0x1

    goto :goto_1

    .line 157
    :cond_2
    return v0
.end method

.method static isSupportMultiModem()Z
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 397
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MsmsDataConnectionTrackerProxy]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 401
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MsmsDataConnectionTrackerProxy]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-void
.end method

.method public static onDisconnectDone(IILandroid/os/AsyncResult;Landroid/content/Context;)V
    .locals 6
    .parameter "connId"
    .parameter "phoneId"
    .parameter "ar"
    .parameter "context"

    .prologue
    const/4 v5, -0x1

    .line 161
    sget-object v3, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sInstance:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;

    monitor-enter v3

    .line 162
    const/4 v1, 0x0

    .line 163
    .local v1, apnContext:Lcom/android/internal/telephony/ApnContext;
    :try_start_0
    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    if-ne v2, v5, :cond_0

    .line 164
    iget-object v2, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/ApnContext;

    if-eqz v2, :cond_3

    .line 165
    iget-object v2, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    move-object v1, v0

    .line 170
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "pdpReset"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 171
    const-string/jumbo v2, "set RequestConnectPhoneId to active when pdp lost/reset"

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->log(Ljava/lang/String;)V

    .line 172
    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    sput v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    .line 179
    :cond_0
    :goto_0
    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    sget v4, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    if-eq v2, v4, :cond_8

    .line 181
    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    if-eq v2, v5, :cond_1

    .line 182
    sget-object v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v4, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    aget-object v2, v2, v4

    invoke-virtual {v2, p0, p2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->onDisconnectDoneInternal(ILandroid/os/AsyncResult;)V

    .line 183
    sget-object v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v4, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->isDisconnected()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 184
    sget-object v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v4, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->detachGprs(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 191
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDisconnectDone: switch Apn from phone"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to phone"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->log(Ljava/lang/String;)V

    .line 193
    sget-object v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v4, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->isAutoAttachOnCreation()Z

    move-result v2

    if-nez v2, :cond_7

    .line 195
    sget-object v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v4, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->getCurrentGprsState()I

    move-result v2

    if-nez v2, :cond_6

    .line 196
    sget-object v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v4, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    aget-object v2, v2, v4

    const-string/jumbo v4, "switchConnection"

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    .line 204
    :goto_1
    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    sput v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    .line 205
    const/4 v2, -0x1

    sput v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    .line 220
    :cond_2
    :goto_2
    const-string/jumbo v2, "onDisconnectDone out"

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->log(Ljava/lang/String;)V

    .line 221
    monitor-exit v3

    .line 222
    :goto_3
    return-void

    .line 167
    :cond_3
    const-string v2, "Invalid ar in onDisconnectDone"

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->loge(Ljava/lang/String;)V

    .line 168
    monitor-exit v3

    goto :goto_3

    .line 221
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 174
    :cond_4
    :try_start_1
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set RequestConnectPhoneId to default when it is not specified:RequestConnectPhoneId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :cond_5
    const-string v2, "isAllPdpDisconnectDone==false, waiting..."

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->log(Ljava/lang/String;)V

    .line 187
    monitor-exit v3

    goto :goto_3

    .line 198
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v4, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setGprsAttach(Landroid/os/Message;)V

    goto :goto_1

    .line 202
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v4, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    aget-object v2, v2, v4

    const-string/jumbo v4, "switchConnection"

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    goto :goto_1

    .line 208
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDisconnectDone: switch Apn on the same phone"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->log(Ljava/lang/String;)V

    .line 209
    sget-object v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    aget-object v2, v2, p1

    invoke-virtual {v2, p0, p2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->onDisconnectDoneInternal(ILandroid/os/AsyncResult;)V

    .line 210
    const/4 v2, -0x1

    sput v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    .line 212
    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->isAnyIccCardReadyExceptProvided(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    sget-object v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v4, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->isDisconnected()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v4, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 216
    sget-object v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v4, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->detachGprs(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method public static onEnableNewApn(I)V
    .locals 4
    .parameter "phoneId"

    .prologue
    const/4 v3, -0x1

    .line 113
    sget-object v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sInstance:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;

    monitor-enter v1

    .line 114
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnableNewApn("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") activePhoneId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->log(Ljava/lang/String;)V

    .line 115
    if-ne p0, v3, :cond_0

    .line 116
    const-string/jumbo v0, "phoneId is invalid,onEnableNewApn out!!!"

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->log(Ljava/lang/String;)V

    .line 117
    monitor-exit v1

    .line 147
    :goto_0
    return-void

    .line 119
    :cond_0
    sput p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    .line 120
    sget v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    sput v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestPhoneIdBeforeVoiceCallEnd:I

    .line 121
    sget v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    if-eq v0, v3, :cond_4

    .line 122
    sget v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    if-eq v0, v2, :cond_3

    .line 123
    sget-object v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    sget v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->checkAndSwitchPhone(ILandroid/content/Context;)Z

    .line 141
    :goto_1
    sget v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    if-ne p0, v0, :cond_1

    .line 143
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    .line 145
    :cond_1
    const-string/jumbo v0, "onEnableNewApn out"

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->log(Ljava/lang/String;)V

    .line 146
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 126
    :cond_2
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    aget-object v0, v0, v2

    const/4 v2, 0x1

    const-string v3, "dataDisabled"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    goto :goto_1

    .line 130
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    aget-object v0, v0, v2

    const-string v2, "dataEnabled"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->getCurrentGprsState()I

    move-result v0

    if-nez v0, :cond_5

    .line 134
    sget-object v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    aget-object v0, v0, v2

    const-string v2, "dataEnabled"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    .line 135
    sget v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    sput v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    goto :goto_1

    .line 137
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setGprsAttach(Landroid/os/Message;)V

    .line 138
    sget v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestConnectPhoneId:I

    sput v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static onVoiceCallEnded(I)V
    .locals 2
    .parameter "phoneId"

    .prologue
    .line 289
    const/4 v1, -0x1

    sput v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sVoicePhoneId:I

    .line 290
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 291
    sget-object v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->onVoiceCallEndedInternal(I)V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    return-void
.end method

.method static onVoiceCallStarted(I)V
    .locals 3
    .parameter "phoneId"

    .prologue
    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVoiceCallStart sVoicePhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->log(Ljava/lang/String;)V

    .line 282
    sput p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sVoicePhoneId:I

    .line 283
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 284
    sget-object v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sTracker:[Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->onVoiceCallStartedInternal(I)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    return-void
.end method

.method public static resetRequestPhoneIdBeforeVoiceCallEnd()V
    .locals 1

    .prologue
    .line 414
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sRequestPhoneIdBeforeVoiceCallEnd:I

    .line 415
    return-void
.end method

.method static setActivePhoneId(I)V
    .locals 3
    .parameter "phoneId"

    .prologue
    .line 296
    sget-object v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sInstance:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;

    monitor-enter v1

    .line 297
    :try_start_0
    sget v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    if-eq v0, p0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active phone id is changed:sActivePhoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->log(Ljava/lang/String;)V

    .line 300
    sput p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->sActivePhoneId:I

    .line 302
    :cond_0
    monitor-exit v1

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
