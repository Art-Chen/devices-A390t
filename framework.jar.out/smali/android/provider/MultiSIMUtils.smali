.class public Landroid/provider/MultiSIMUtils;
.super Ljava/lang/Object;
.source "MultiSIMUtils.java"


# static fields
.field protected static MAX_PHONE_COUNT_DS:I = 0x0

.field private static mContext:Landroid/content/Context; = null

.field private static final mIccSMSUri1:Ljava/lang/String; = "content://sms/icc/"

.field private static sInstance:Landroid/provider/MultiSIMUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x2

    sput v0, Landroid/provider/MultiSIMUtils;->MAX_PHONE_COUNT_DS:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sput-object p1, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    sget-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/provider/MultiSIMUtils;

    invoke-direct {v0, p0}, Landroid/provider/MultiSIMUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    .line 42
    :cond_0
    sget-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    return-object v0
.end method

.method private getITelephony(I)Lcom/android/internal/telephony/ITelephony;
    .locals 1
    .parameter "SimId"

    .prologue
    .line 138
    const-string/jumbo v0, "phone"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType(I)I
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    .line 300
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-static {v3, p0}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 302
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 303
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 313
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 308
    :catch_0
    move-exception v0

    .line 310
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 311
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 313
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 269
    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 270
    .local v0, mode:I
    if-ne v0, v2, :cond_0

    .line 271
    const/4 v1, 0x0

    .line 272
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v1

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty(I)I
    .locals 3
    .parameter "simId"

    .prologue
    .line 257
    const-string v2, "gsm.current.phone-type"

    invoke-static {v2, p1}, Lcom/android/internal/telephony/PhoneFactory;->getProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, currentActivePhoneProperty:Ljava/lang/String;
    invoke-direct {p0}, Landroid/provider/MultiSIMUtils;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 263
    .local v1, type:I
    return v1
.end method

.method private getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1
    .parameter "simId"

    .prologue
    .line 74
    const-string v0, "iphonesubinfo"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteMessageFromIcc(II)Z
    .locals 5
    .parameter "messageIndex"
    .parameter "subscription"

    .prologue
    .line 166
    invoke-static {p2}, Landroid/telephony/SmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v1

    .line 168
    .local v1, smsManager:Landroid/telephony/SmsManager;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, exception:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad SMS ICC ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public endDulCall()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 379
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 380
    .local v0, iTel:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    .line 382
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 391
    :cond_0
    :goto_0
    return v1

    .line 387
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAllMessagesFromIcc(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {p1}, Landroid/telephony/SmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v1

    .line 160
    .local v1, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v1}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v0

    .line 161
    .local v0, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    return-object v0
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 5
    .parameter "subscription"

    .prologue
    const/4 v3, 0x0

    .line 124
    :try_start_0
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    .line 125
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 126
    .local v1, cl:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 132
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :cond_0
    :goto_0
    return-object v1

    .line 129
    :catch_0
    move-exception v2

    .local v2, ex:Landroid/os/RemoteException;
    move-object v1, v3

    .line 130
    goto :goto_0

    .line 131
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .local v2, ex:Ljava/lang/NullPointerException;
    move-object v1, v3

    .line 132
    goto :goto_0
.end method

.method public getDataSubscriberId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 396
    sget-object v1, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "multi_sim_data_connection"

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhoneId()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 399
    .local v0, dataconnectionID:I
    if-lez v0, :cond_0

    .line 401
    invoke-virtual {p0, v0}, Landroid/provider/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 404
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 3
    .parameter "simid"

    .prologue
    const/4 v1, 0x0

    .line 63
    :try_start_0
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 67
    :goto_0
    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 66
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 67
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 329
    const-string v1, "gsm.operator.numeric"

    invoke-static {v1, p1}, Lcom/android/internal/telephony/PhoneFactory;->getProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, operatorNumericProperty:Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public getPhoneType(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    .line 238
    :try_start_0
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 239
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 240
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    .line 252
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 243
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getPhoneTypeFromProperty(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 245
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 248
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getPhoneTypeFromProperty(I)I

    move-result v2

    goto :goto_0

    .line 249
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 252
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getPhoneTypeFromProperty(I)I

    move-result v2

    goto :goto_0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    const-string v0, "TD"

    return-object v0
.end method

.method public getSIMContactsUri(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v1, 0x1

    .line 207
    const-string v0, ""

    .line 208
    .local v0, iccUri:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/provider/MultiSIMUtils;->getPhoneCount()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 210
    .local v1, isSingleSim:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 211
    const-string v0, "content://icc/adn"

    .line 215
    :goto_1
    return-object v0

    .line 208
    .end local v1           #isSingleSim:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 213
    .restart local v1       #isSingleSim:Z
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://icc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/adn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getSIMSMSUri(I)Ljava/lang/String;
    .locals 1
    .parameter "i"

    .prologue
    .line 220
    const-string v0, "content://sms/icc/"

    return-object v0
.end method

.method public getScAddress(I)Ljava/lang/String;
    .locals 4
    .parameter "simid"

    .prologue
    .line 143
    :try_start_0
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 144
    .local v2, iTel:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 145
    const-string v3, ""

    .line 146
    .local v3, smsc:Ljava/lang/String;
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSmsc()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 154
    .end local v2           #iTel:Lcom/android/internal/telephony/ITelephony;
    .end local v3           #smsc:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, ""

    goto :goto_0

    .line 151
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_0

    .line 154
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #iTel:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 2
    .parameter "simid"

    .prologue
    .line 337
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1, p1}, Lcom/android/internal/telephony/PhoneFactory;->getProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, iccOperatorNumericProperty:Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "simid"

    .prologue
    const/4 v1, 0x0

    .line 346
    :try_start_0
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 351
    :goto_0
    return-object v1

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 349
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 351
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    .line 97
    const-string v2, "gsm.sim.state"

    invoke-static {v2, p1}, Lcom/android/internal/telephony/PhoneFactory;->getProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, simStateProperty:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, prop:Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const/4 v2, 0x1

    .line 116
    :goto_0
    return v2

    .line 103
    :cond_0
    const-string v2, "PIN_REQUIRED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    const/4 v2, 0x2

    goto :goto_0

    .line 106
    :cond_1
    const-string v2, "PUK_REQUIRED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    const/4 v2, 0x3

    goto :goto_0

    .line 109
    :cond_2
    const-string v2, "NETWORK_LOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    const/4 v2, 0x4

    goto :goto_0

    .line 112
    :cond_3
    const-string v2, "READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 113
    const/4 v2, 0x5

    goto :goto_0

    .line 116
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Landroid/provider/MultiSIMUtils;->getSubscriberIdGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v1, 0x0

    .line 86
    :try_start_0
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 89
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 91
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public registDualCardPhoneState(Landroid/telephony/PhoneStateListener;II)V
    .locals 3
    .parameter "listener"
    .parameter "events"
    .parameter "subscription"

    .prologue
    .line 367
    sget-object v1, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-static {v2, p3}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 369
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 370
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 6
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p6}, Landroid/telephony/SmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .local v0, smsManager:Landroid/telephony/SmsManager;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 198
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 204
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 6
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "subscription"

    .prologue
    .line 179
    invoke-static {p6}, Landroid/telephony/SmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .local v0, smsManager:Landroid/telephony/SmsManager;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 181
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 188
    return-void
.end method
