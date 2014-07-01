.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field public static final DEFAULT_DUAL_SIM_INIT_MMS_PHONE_ID:I = 0x3

.field public static final DEFAULT_DUAL_SIM_INIT_PHONE_ID:I = -0x1

.field public static final DEFAULT_PHONE_COUNT:I = 0x1

.field public static final DEFAULT_PHONE_ID:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field private static isCard1ok:Z = false

.field private static isCard2ok:Z = false

.field private static isStandySimChange:Z = false

.field static final preferredCdmaSubscription:I = 0x1

.field private static sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sLooper:Landroid/os/Looper;

.field private static sMadeDefaults:Z

.field private static sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

.field private static sProxyPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    .line 52
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    .line 54
    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 67
    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->isCard1ok:Z

    .line 68
    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->isCard2ok:Z

    .line 71
    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->isStandySimChange:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoSetDefaultPhoneId(Z)I
    .locals 1
    .parameter "isUpdate"

    .prologue
    .line 432
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/PhoneFactory;->autoSetDefaultPhoneId(ZI)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized autoSetDefaultPhoneId(ZI)I
    .locals 11
    .parameter "isUpdate"
    .parameter "phoneId"

    .prologue
    const/4 v10, 0x1

    .line 444
    const-class v7, Lcom/android/internal/telephony/PhoneFactory;

    monitor-enter v7

    :try_start_0
    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v1

    .line 445
    .local v1, defaultPhoneId:I
    const-string v6, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autoSetDefaultPhoneId,defaultPhoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isStandySimChange="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/internal/telephony/PhoneFactory;->isStandySimChange:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v5, -0x1

    .line 448
    .local v5, settingPhoneId:I
    if-nez p1, :cond_0

    .line 449
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/internal/telephony/PhoneFactory;->isCard1ok:Z

    .line 451
    :cond_0
    if-ne p1, v10, :cond_1

    .line 452
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/internal/telephony/PhoneFactory;->isCard2ok:Z

    .line 454
    :cond_1
    sget-boolean v6, Lcom/android/internal/telephony/PhoneFactory;->isCard1ok:Z

    if-eqz v6, :cond_b

    sget-boolean v6, Lcom/android/internal/telephony/PhoneFactory;->isCard2ok:Z

    if-eqz v6, :cond_b

    .line 456
    const/4 v4, 0x0

    .line 458
    .local v4, isFreshed:Z
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->isCardReady(I)Z

    move-result v2

    .line 459
    .local v2, hasCard1:Z
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->isCardReady(I)Z

    move-result v3

    .line 460
    .local v3, hasCard2:Z
    const-string v6, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autoSetDefaultPhoneId,hasCard1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",hasCard2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",defaultPhoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    if-eqz v2, :cond_4

    if-nez v3, :cond_4

    .line 463
    const/4 v5, 0x0

    .line 469
    :cond_2
    :goto_0
    const/4 v6, -0x1

    if-ne v5, v6, :cond_7

    .line 470
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v6

    sget-object v8, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v6, v8, :cond_3

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v6

    sget-object v8, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v6, v8, :cond_6

    .line 471
    :cond_3
    const-string v6, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSimState(0)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/internal/telephony/PhoneFactory;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", getSimState(1)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Lcom/android/internal/telephony/PhoneFactory;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    .end local v1           #defaultPhoneId:I
    .end local v2           #hasCard1:Z
    .end local v3           #hasCard2:Z
    .end local v4           #isFreshed:Z
    :goto_1
    monitor-exit v7

    return v1

    .line 464
    .restart local v1       #defaultPhoneId:I
    .restart local v2       #hasCard1:Z
    .restart local v3       #hasCard2:Z
    .restart local v4       #isFreshed:Z
    :cond_4
    if-nez v2, :cond_5

    if-eqz v3, :cond_5

    .line 465
    const/4 v5, 0x1

    goto :goto_0

    .line 466
    :cond_5
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    move v1, v5

    .line 467
    goto :goto_1

    .line 474
    :cond_6
    :try_start_1
    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->getSettingPhoneId(Landroid/content/Context;)I

    move-result v5

    .line 475
    const-string v6, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fengyun,settingPhoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->getDataConnectionPhoneId(Landroid/content/Context;)I

    move-result v0

    .line 478
    .local v0, currPhoneId:I
    const-string v6, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fengyun,currPhoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    if-eqz p0, :cond_7

    if-eq v5, v1, :cond_7

    .line 481
    const-string v6, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fengyun,111 defaultPhoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    if-ne v5, v0, :cond_9

    if-eq v5, v1, :cond_9

    .line 483
    invoke-static {v5}, Lcom/android/internal/telephony/PhoneFactory;->updateDefaultPhoneId(I)V

    .line 488
    :goto_2
    const/4 v4, 0x1

    .line 496
    .end local v0           #currPhoneId:I
    :cond_7
    if-eqz p0, :cond_8

    if-nez v4, :cond_8

    if-eq v5, v1, :cond_8

    .line 497
    const-string v6, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fengyun,222 settingPhoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-static {v5}, Lcom/android/internal/telephony/PhoneFactory;->updateDefaultPhoneId(I)V

    .line 501
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->setDefaultValue()V

    .end local v2           #hasCard1:Z
    .end local v3           #hasCard2:Z
    .end local v4           #isFreshed:Z
    :goto_3
    move v1, v5

    .line 507
    goto/16 :goto_1

    .line 484
    .restart local v0       #currPhoneId:I
    .restart local v2       #hasCard1:Z
    .restart local v3       #hasCard2:Z
    .restart local v4       #isFreshed:Z
    :cond_9
    if-ne v1, v0, :cond_a

    if-eq v5, v1, :cond_a

    .line 485
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->updateDefaultPhoneId(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 444
    .end local v0           #currPhoneId:I
    .end local v1           #defaultPhoneId:I
    .end local v2           #hasCard1:Z
    .end local v3           #hasCard2:Z
    .end local v4           #isFreshed:Z
    .end local v5           #settingPhoneId:I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 487
    .restart local v0       #currPhoneId:I
    .restart local v1       #defaultPhoneId:I
    .restart local v2       #hasCard1:Z
    .restart local v3       #hasCard2:Z
    .restart local v4       #isFreshed:Z
    .restart local v5       #settingPhoneId:I
    :cond_a
    :try_start_2
    invoke-static {v5}, Lcom/android/internal/telephony/PhoneFactory;->updateDefaultPhoneId(I)V

    goto :goto_2

    .line 503
    .end local v0           #currPhoneId:I
    .end local v2           #hasCard1:Z
    .end local v3           #hasCard2:Z
    .end local v4           #isFreshed:Z
    :cond_b
    const-string v6, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autoSetDefaultPhoneId,defaultPhoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",phoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",isCard1ok="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/internal/telephony/PhoneFactory;->isCard1ok:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",isCard2ok="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/internal/telephony/PhoneFactory;->isCard2ok:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public static getAction(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "defaultAction"
    .parameter "phoneId"

    .prologue
    .line 373
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 379
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 377
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDefaultCM()Lcom/android/internal/telephony/CommandsInterface;
    .locals 2

    .prologue
    .line 301
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 302
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultCM must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default CommandsInfterface haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 241
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 242
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 247
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDefaultPhoneId()I
    .locals 2

    .prologue
    .line 541
    const-string/jumbo v0, "persist.msms.phone_default"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getFeature(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "defaultFeature"
    .parameter "phoneId"

    .prologue
    .line 340
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 346
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 344
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 6

    .prologue
    .line 285
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 286
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/TDPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhoneId()I

    move-result v4

    aget-object v3, v3, v4

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhoneId()I

    move-result v5

    aget-object v4, v4, v5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/gsm/TDPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 287
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    return-object v0

    .line 288
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getIccCardState(I)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 408
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 409
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 411
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 537
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getPhoneCount()I
    .locals 2

    .prologue
    .line 313
    const-string/jumbo v0, "persist.msms.phone_count"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPhoneType(I)I
    .locals 3
    .parameter "networkMode"

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 211
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 236
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 221
    goto :goto_0

    .line 230
    :pswitch_3
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 233
    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static getPhones()[Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 254
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 259
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "defaultProperty"
    .parameter "phoneId"

    .prologue
    .line 351
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 357
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 355
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getServiceName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "defaultServiceName"
    .parameter "phoneId"

    .prologue
    .line 321
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 327
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 325
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getSetting(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "defaultSetting"
    .parameter "phoneId"

    .prologue
    .line 362
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 368
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 366
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getSimState(I)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 401
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 402
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 404
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public static isCardExist(I)Z
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 389
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 390
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v0

    .line 392
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCardReady(I)Z
    .locals 7
    .parameter "phoneId"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 420
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->isCardExist(I)Z

    move-result v1

    .line 421
    .local v1, isCardExist:Z
    if-eqz v1, :cond_3

    .line 422
    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 423
    .local v0, isAirplaneModeOn:Z
    :goto_0
    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "sim_standby"

    invoke-static {v6, p0}, Lcom/android/internal/telephony/PhoneFactory;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v2, v3

    .line 425
    .local v2, isStandby:Z
    :goto_1
    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    .line 427
    .end local v0           #isAirplaneModeOn:Z
    .end local v2           #isStandby:Z
    :goto_2
    return v3

    :cond_0
    move v0, v4

    .line 422
    goto :goto_0

    .restart local v0       #isAirplaneModeOn:Z
    :cond_1
    move v2, v4

    .line 423
    goto :goto_1

    .restart local v2       #isStandby:Z
    :cond_2
    move v3, v4

    .line 425
    goto :goto_2

    .end local v0           #isAirplaneModeOn:Z
    .end local v2           #isStandby:Z
    :cond_3
    move v3, v4

    .line 427
    goto :goto_2
.end method

.method public static isMultiSim()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 317
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 23
    .parameter "context"

    .prologue
    .line 82
    const-class v18, Lcom/android/internal/telephony/Phone;

    monitor-enter v18

    .line 83
    :try_start_0
    sget-boolean v17, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v17, :cond_8

    .line 84
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v17

    sput-object v17, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    .line 85
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 87
    sget-object v17, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v17, :cond_0

    .line 88
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v19, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 200
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 92
    :cond_0
    const/16 v16, 0x0

    .line 94
    .local v16, retryCount:I
    :goto_0
    const/4 v6, 0x0

    .line 95
    .local v6, hasException:Z
    add-int/lit8 v16, v16, 0x1

    .line 100
    :try_start_1
    new-instance v17, Landroid/net/LocalServerSocket;

    const-string v19, "com.android.internal.telephony"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    :goto_1
    if-nez v6, :cond_1

    .line 117
    :try_start_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v13

    .line 118
    .local v13, phoneCount:I
    new-array v0, v13, [Lcom/android/internal/telephony/DefaultPhoneNotifier;

    move-object/from16 v17, v0

    sput-object v17, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    .line 119
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v13, :cond_3

    .line 120
    sget-object v17, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    new-instance v19, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(I)V

    aput-object v19, v17, v7

    .line 119
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 101
    .end local v7           #i:I
    .end local v13           #phoneCount:I
    :catch_0
    move-exception v5

    .line 102
    .local v5, ex:Ljava/io/IOException;
    const/4 v6, 0x1

    goto :goto_1

    .line 107
    .end local v5           #ex:Ljava/io/IOException;
    :cond_1
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 108
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v19, "PhoneFactory probably already running"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    :cond_2
    const-wide/16 v19, 0x7d0

    :try_start_3
    invoke-static/range {v19 .. v20}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 112
    :catch_1
    move-exception v17

    goto :goto_0

    .line 124
    .restart local v7       #i:I
    .restart local v13       #phoneCount:I
    :cond_3
    const/4 v15, 0x0

    .line 125
    .local v15, preferredNetworkMode:I
    :try_start_4
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 126
    const/4 v15, 0x7

    .line 128
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v19, "preferred_network_mode"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 130
    .local v12, networkMode:I
    const-string v17, "PHONE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Network Mode set to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v8

    .line 138
    .local v8, lteOnCdma:I
    packed-switch v8, :pswitch_data_0

    .line 150
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v19, "preferred_cdma_subscription"

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 153
    .local v4, cdmaSubscription:I
    const-string v17, "PHONE"

    const-string v19, "lteOnCdma not set, using PREFERRED_CDMA_SUBSCRIPTION"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_3
    const-string v17, "PHONE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cdma Subscription set to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {v12}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v14

    .line 161
    .local v14, phoneType:I
    new-array v0, v13, [Lcom/android/internal/telephony/SprdRIL;

    move-object/from16 v17, v0

    sput-object v17, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    .line 162
    new-array v0, v13, [Lcom/android/internal/telephony/SprdPhoneProxy;

    move-object/from16 v17, v0

    sput-object v17, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    .line 163
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v13, :cond_6

    .line 164
    sget-object v17, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    new-instance v19, Lcom/android/internal/telephony/SprdRIL;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v4, v7}, Lcom/android/internal/telephony/SprdRIL;-><init>(Landroid/content/Context;III)V

    aput-object v19, v17, v7

    .line 165
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_5

    .line 166
    sget-object v17, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    new-instance v19, Lcom/android/internal/telephony/SprdPhoneProxy;

    new-instance v20, Lcom/android/internal/telephony/gsm/TDPhone;

    sget-object v21, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v21, v21, v7

    sget-object v22, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    aget-object v22, v22, v7

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/TDPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct/range {v19 .. v20}, Lcom/android/internal/telephony/SprdPhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    aput-object v19, v17, v7

    .line 168
    const-string v17, "PHONE"

    const-string v19, "Creating TDPhone"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 140
    .end local v4           #cdmaSubscription:I
    .end local v14           #phoneType:I
    :pswitch_0
    const/4 v4, 0x1

    .line 141
    .restart local v4       #cdmaSubscription:I
    const-string v17, "PHONE"

    const-string v19, "lteOnCdma is 0 use SUBSCRIPTION_FROM_NV"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 144
    .end local v4           #cdmaSubscription:I
    :pswitch_1
    const/4 v4, 0x0

    .line 145
    .restart local v4       #cdmaSubscription:I
    const-string v17, "PHONE"

    const-string v19, "lteOnCdma is 1 use SUBSCRIPTION_FROM_RUIM"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 186
    .restart local v14       #phoneType:I
    :cond_6
    new-array v10, v13, [Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    .line 187
    .local v10, mIccSmsInterfaceManagerProxy:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;
    new-array v9, v13, [Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    .line 188
    .local v9, mIccPhoneBookInterfaceManagerProxy:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    new-array v11, v13, [Lcom/android/internal/telephony/PhoneSubInfoProxy;

    .line 189
    .local v11, mPhoneSubInfoProxy:[Lcom/android/internal/telephony/PhoneSubInfoProxy;
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v13, :cond_7

    .line 190
    sget-object v17, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v17, v17, v7

    check-cast v17, Lcom/android/internal/telephony/SprdPhoneProxy;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SprdPhoneProxy;->getIccSmsInterfaceManagerProxy()Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    move-result-object v17

    aput-object v17, v10, v7

    .line 191
    sget-object v17, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v17, v17, v7

    check-cast v17, Lcom/android/internal/telephony/SprdPhoneProxy;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SprdPhoneProxy;->getIccPhoneBookInterfaceManagerProxy()Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v17

    aput-object v17, v9, v7

    .line 192
    sget-object v17, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v17, v17, v7

    check-cast v17, Lcom/android/internal/telephony/SprdPhoneProxy;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SprdPhoneProxy;->getPhoneSubInfoProxy()Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v17

    aput-object v17, v11, v7

    .line 189
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 194
    :cond_7
    new-instance v17, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;-><init>([Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;)V

    .line 195
    new-instance v17, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;-><init>([Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;)V

    .line 196
    new-instance v17, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;-><init>([Lcom/android/internal/telephony/PhoneSubInfoProxy;)V

    .line 198
    const/16 v17, 0x1

    sput-boolean v17, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 200
    .end local v4           #cdmaSubscription:I
    .end local v6           #hasException:Z
    .end local v7           #i:I
    .end local v8           #lteOnCdma:I
    .end local v9           #mIccPhoneBookInterfaceManagerProxy:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    .end local v10           #mIccSmsInterfaceManagerProxy:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;
    .end local v11           #mPhoneSubInfoProxy:[Lcom/android/internal/telephony/PhoneSubInfoProxy;
    .end local v12           #networkMode:I
    .end local v13           #phoneCount:I
    .end local v14           #phoneType:I
    .end local v15           #preferredNetworkMode:I
    .end local v16           #retryCount:I
    :cond_8
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 201
    return-void

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 3
    .parameter "sipUri"

    .prologue
    .line 297
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method

.method private static setDefaultValue()V
    .locals 4

    .prologue
    .line 511
    const/4 v2, -0x1

    .line 512
    .local v2, settingPhoneId:I
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->isCardReady(I)Z

    move-result v0

    .line 513
    .local v0, hasCard1:Z
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->isCardReady(I)Z

    move-result v1

    .line 514
    .local v1, hasCard2:Z
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 515
    const/4 v2, 0x0

    .line 519
    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 520
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/telephony/TelephonyManager;->setVoiceDefaultSim(Landroid/content/Context;I)Z

    .line 521
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/telephony/TelephonyManager;->setVideoDefaultSim(Landroid/content/Context;I)Z

    .line 522
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/telephony/TelephonyManager;->setMmsDefaultSim(Landroid/content/Context;I)Z

    .line 524
    :cond_1
    return-void

    .line 516
    :cond_2
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 517
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static setStandySimChange(Z)V
    .locals 0
    .parameter "change"

    .prologue
    .line 545
    sput-boolean p0, Lcom/android/internal/telephony/PhoneFactory;->isStandySimChange:Z

    .line 546
    return-void
.end method

.method public static updateDefaultPhoneId(I)V
    .locals 3
    .parameter "settingPhoneId"

    .prologue
    .line 527
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    .line 528
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :goto_0
    return-void

    .line 531
    :cond_0
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDefaultPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v0, p0}, Landroid/telephony/TelephonyManager;->setDefaultDataPhoneId(Landroid/content/Context;I)Z

    .line 533
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEFAULT_PHONE_CHANGE_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
