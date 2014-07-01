.class public Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;
.super Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.source "MsmsGsmDataConnectionTracker.java"


# static fields
.field public static EXTRA_PHONE_ID:Ljava/lang/String;


# instance fields
.field private mDefaultDataPhoneIdObserver:Landroid/database/ContentObserver;

.field tearDownNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "EXTRA_PHONE_ID"

    sput-object v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->EXTRA_PHONE_ID:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 4
    .parameter "p"

    .prologue
    const/4 v3, 0x1

    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 95
    new-instance v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker$1;-><init>(Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->mDefaultDataPhoneIdObserver:Landroid/database/ContentObserver;

    .line 227
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->tearDownNeeded:Z

    .line 50
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 51
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v1, "multi_sim_data_call"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->mDefaultDataPhoneIdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method


# virtual methods
.method protected broadcastMessenger()V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->EXTRA_MESSENGER:Ljava/lang/String;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    sget-object v1, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->EXTRA_PHONE_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method public cleanupConnections(ZLjava/lang/String;)V
    .locals 0
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 229
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 230
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 62
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->mDefaultDataPhoneIdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 63
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dispose()V

    .line 64
    return-void
.end method

.method public getCurrentGprsState()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v0

    return v0
.end method

.method public getPhoneState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    return-object v0
.end method

.method public isAutoAttachOnCreation()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAutoAttachOnCreation:Z

    return v0
.end method

.method protected isIccCardReady()Z
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDisconnectDone(ILandroid/os/AsyncResult;)V
    .locals 2
    .parameter "connId"
    .parameter "ar"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v0, p2, v1}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->onDisconnectDone(IILandroid/os/AsyncResult;Landroid/content/Context;)V

    .line 226
    return-void
.end method

.method public onDisconnectDoneInternal(ILandroid/os/AsyncResult;)V
    .locals 0
    .parameter "connId"
    .parameter "ar"

    .prologue
    .line 233
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onDisconnectDone(ILandroid/os/AsyncResult;)V

    .line 234
    return-void
.end method

.method public onDisconnectDoneInternalWithoutRetry(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, reason:Ljava/lang/String;
    const-string v1, "EVENT_DISCONNECT_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 240
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 241
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #reason:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 243
    .restart local v0       #reason:Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 244
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 245
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    .line 246
    return-void
.end method

.method protected onEnableNewApn()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->onEnableNewApn(I)V

    .line 221
    return-void
.end method

.method protected onSetUserDataEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    .line 74
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v0

    .line 76
    .local v0, prevEnabled:Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    if-eq v1, p1, :cond_0

    .line 77
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    .line 78
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mobile_data"

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v3, v4, v5, v1}, Landroid/provider/Settings$Secure;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 81
    if-nez v0, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->resetAllRetryCounts()V

    .line 83
    const-string v1, "dataEnabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 92
    :cond_0
    :goto_1
    monitor-exit v2

    .line 93
    return-void

    .line 78
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 85
    :cond_2
    const-string v1, "dataDisabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->onCleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_1

    .line 92
    .end local v0           #prevEnabled:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 87
    .restart local v0       #prevEnabled:Z
    :cond_3
    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUserDataEnabled: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " onCleanUpAllConnections"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 89
    const-string v1, "dataDisabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->onCleanUpAllConnections(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected onVoiceCallEnded()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->onVoiceCallEnded(I)V

    .line 143
    return-void
.end method

.method public onVoiceCallEndedInternal(I)V
    .locals 5
    .parameter "phoneId"

    .prologue
    const/4 v4, 0x0

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVoiceCallEndedInternal["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 166
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->startNetStatPoll()V

    .line 168
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->startDataStallAlarm(Z)V

    .line 169
    const-string v2, "2GVoiceCallEnded"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->getRequestPhoneIdBeforeVoiceCallEnd()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->onEnableNewApn(I)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->resetPollStats()V

    goto :goto_0

    .line 180
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->isSupportMultiModem()Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->startNetStatPoll()V

    .line 182
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->startDataStallAlarm(Z)V

    .line 183
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "2GVoiceCallEnded"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->isDisconnecting()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 186
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 187
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_4

    .line 188
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/ApnContext;)V

    goto :goto_1

    .line 192
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->resetAllRetryCounts()V

    .line 193
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 195
    invoke-static {}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->getRequestPhoneIdBeforeVoiceCallEnd()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->onEnableNewApn(I)V

    goto :goto_0
.end method

.method protected onVoiceCallStarted()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->onVoiceCallStarted(I)V

    .line 138
    return-void
.end method

.method public onVoiceCallStartedInternal(I)V
    .locals 2
    .parameter "phoneId"

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onVoiceCallStartInternal["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: isConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->stopNetStatPoll()V

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->stopDataStallAlarm()V

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "2GVoiceCallStarted"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;->isSupportMultiModem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->stopNetStatPoll()V

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->stopDataStallAlarm()V

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "2GVoiceCallStarted"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized setDataDisabledOfDefaultAPN()V
    .locals 3

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 212
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 214
    :cond_0
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnContext;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_1
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDataEnabledOfDefaultAPN()V
    .locals 3

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 203
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 205
    :cond_0
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnContext;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_1
    monitor-exit p0

    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
