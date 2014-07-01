.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field private static final DUAL_SIM_MMS_ID_KEY:Ljava/lang/String; = "dual_sim_mms_id"

.field private static final DUAL_SIM_MMS_IMSI_KEY:Ljava/lang/String; = "dual_sim_mms_imsi"

.field private static final DUAL_SIM_VIDEO_ID_KEY:Ljava/lang/String; = "dual_sim_vtel_id"

.field private static final DUAL_SIM_VIDEO_IMSI_KEY:Ljava/lang/String; = "dual_sim_vtel_imsi"

.field private static final DUAL_SIM_VOICE_ID_KEY:Ljava/lang/String; = "dual_sim_tel_id"

.field private static final DUAL_SIM_VOICE_IMSI_KEY:Ljava/lang/String; = "dual_sim_tel_imsi"

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String; = null

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String; = null

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String; = null

.field public static final MODEM_TYPE_GSM:I = 0x0

.field public static final MODEM_TYPE_TDSCDMA:I = 0x1

.field public static final MODEM_TYPE_WCDMA:I = 0x2

.field public static final MODE_MMS:I = 0x1

.field public static final MODE_TEL:I = 0x0

.field public static final MODE_VTEL:I = 0x2

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x9

.field public static final NETWORK_TYPE_HSPA:I = 0xb

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0xa

.field public static final NETWORK_TYPE_IDEN:I = 0x8

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_ID_INVALID:I = -0x1

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field public static final UNLOCK_PIN:I = 0x0

.field public static final UNLOCK_PIN2:I = 0x1

.field public static final UNLOCK_PUK:I = 0x2

.field public static final UNLOCK_PUK2:I = 0x3

.field private static final dualCardDefaultPhone:Ljava/lang/String; = "com.android.dualcard_settings_preferences"

.field private static isStandby:[Z = null

.field private static sInstance:[Landroid/telephony/TelephonyManager; = null

.field private static final sharedActivityName:Ljava/lang/String; = "com.android.phone"

.field private static final simCardFavoritekey:Ljava/lang/String; = "sim_card_favorite"

.field private static final simCardForwardSettingKey:Ljava/lang/String; = "sim_forward_setting"


# instance fields
.field private mPhoneId:I

.field private sContext:Landroid/content/Context;

.field private sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isMultiSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Landroid/telephony/TelephonyManager;

    sput-object v1, Landroid/telephony/TelephonyManager;->sInstance:[Landroid/telephony/TelephonyManager;

    .line 125
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 126
    sget-object v1, Landroid/telephony/TelephonyManager;->sInstance:[Landroid/telephony/TelephonyManager;

    new-instance v2, Landroid/telephony/TelephonyManager;

    invoke-direct {v2, v0}, Landroid/telephony/TelephonyManager;-><init>(I)V

    aput-object v2, v1, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/telephony/TelephonyManager;

    sput-object v1, Landroid/telephony/TelephonyManager;->sInstance:[Landroid/telephony/TelephonyManager;

    .line 130
    sget-object v1, Landroid/telephony/TelephonyManager;->sInstance:[Landroid/telephony/TelephonyManager;

    new-instance v2, Landroid/telephony/TelephonyManager;

    invoke-direct {v2, v3}, Landroid/telephony/TelephonyManager;-><init>(I)V

    aput-object v2, v1, v3

    .line 201
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 207
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 213
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    .line 116
    iput p1, p0, Landroid/telephony/TelephonyManager;->mPhoneId:I

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    .line 91
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    .local v0, appContext:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 94
    iput-object v0, p0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    .line 99
    :goto_0
    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 101
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v1

    iput v1, p0, Landroid/telephony/TelephonyManager;->mPhoneId:I

    .line 103
    .end local v0           #appContext:Landroid/content/Context;
    :cond_0
    return-void

    .line 96
    .restart local v0       #appContext:Landroid/content/Context;
    :cond_1
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "phoneId"

    .prologue
    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    .line 108
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    .line 109
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0, p2}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 111
    iput p2, p0, Landroid/telephony/TelephonyManager;->mPhoneId:I

    .line 112
    return-void
.end method

.method public static getCallForwardSetting(Landroid/content/Context;II)I
    .locals 4
    .parameter "context"
    .parameter "phoneId"
    .parameter "reason"

    .prologue
    .line 1614
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getPhoneSetting(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1615
    .local v1, settings:Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sim_forward_setting_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1616
    .local v0, setKey:Ljava/lang/String;
    const/4 v2, -0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public static getConnectionDefaultSim(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 1536
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getDataConnectionPhoneId(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 1576
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multi_sim_data_connection"

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhoneId()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:[Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v1

    aget-object v0, v0, v1

    .line 140
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:[Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static getDefault(I)Landroid/telephony/TelephonyManager;
    .locals 2
    .parameter "phoneId"

    .prologue
    .line 146
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v0

    if-lt p0, v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "phoneId exceeds phoneCount"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:[Landroid/telephony/TelephonyManager;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getDefaultDataPhoneId(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 1550
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multi_sim_data_call"

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhoneId()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDefaultSim(Landroid/content/Context;I)I
    .locals 13
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x1

    const/4 v8, -0x1

    .line 1687
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    if-ne v9, v12, :cond_0

    move v5, v7

    .line 1736
    :goto_0
    return v5

    .line 1690
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1691
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v5, -0x1

    .line 1692
    .local v5, phoneId:I
    const-string v4, ""

    .line 1693
    .local v4, imsi:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1714
    :goto_1
    const-string v9, "TelephonyManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getDefaultSim :phoneId"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    const/4 v3, 0x0

    .line 1717
    .local v3, iccCount:I
    const/4 v0, -0x1

    .line 1718
    .local v0, avtivedPhone:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 1719
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 1720
    .local v6, tmp:Landroid/telephony/TelephonyManager;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1721
    add-int/lit8 v3, v3, 0x1

    .line 1722
    move v0, v2

    .line 1718
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1695
    .end local v0           #avtivedPhone:I
    .end local v2           #i:I
    .end local v3           #iccCount:I
    .end local v6           #tmp:Landroid/telephony/TelephonyManager;
    :pswitch_0
    const-string v9, "dual_sim_tel_id"

    invoke-static {v1, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1697
    const-string v9, "dual_sim_tel_imsi"

    invoke-static {v1, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1698
    goto :goto_1

    .line 1701
    :pswitch_1
    const-string v9, "dual_sim_mms_id"

    invoke-static {v1, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1703
    const-string v9, "dual_sim_mms_imsi"

    invoke-static {v1, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1704
    goto :goto_1

    .line 1706
    :pswitch_2
    const-string v9, "dual_sim_vtel_id"

    invoke-static {v1, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1708
    const-string v9, "dual_sim_vtel_imsi"

    invoke-static {v1, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1709
    goto :goto_1

    .line 1725
    .restart local v0       #avtivedPhone:I
    .restart local v2       #i:I
    .restart local v3       #iccCount:I
    :cond_2
    if-ne v8, v5, :cond_3

    if-le v3, v12, :cond_3

    move v5, v8

    .line 1726
    goto :goto_0

    .line 1728
    :cond_3
    if-ne v3, v12, :cond_4

    .line 1729
    move v5, v0

    .line 1730
    invoke-static {p0, v12, v5}, Landroid/telephony/TelephonyManager;->setDefaultSim(Landroid/content/Context;II)V

    .line 1731
    invoke-static {p0, v7, v5}, Landroid/telephony/TelephonyManager;->setDefaultSim(Landroid/content/Context;II)V

    .line 1732
    const/4 v7, 0x2

    invoke-static {p0, v7, v5}, Landroid/telephony/TelephonyManager;->setDefaultSim(Landroid/content/Context;II)V

    .line 1734
    :cond_4
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultSim :avtivedPhone "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1693
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 2

    .prologue
    .line 1158
    const-string/jumbo v0, "phone"

    iget v1, p0, Landroid/telephony/TelephonyManager;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getMmsDefaultSim(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 1520
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multi_sim_mms"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNetworkClass(I)I
    .locals 1
    .parameter "networkType"

    .prologue
    .line 574
    packed-switch p0, :pswitch_data_0

    .line 594
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 580
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 590
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 592
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 574
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 611
    packed-switch p0, :pswitch_data_0

    .line 643
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 613
    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    .line 615
    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    .line 617
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 619
    :pswitch_3
    const-string v0, "HSDPA"

    goto :goto_0

    .line 621
    :pswitch_4
    const-string v0, "HSUPA"

    goto :goto_0

    .line 623
    :pswitch_5
    const-string v0, "HSPA"

    goto :goto_0

    .line 625
    :pswitch_6
    const-string v0, "CDMA"

    goto :goto_0

    .line 627
    :pswitch_7
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 629
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 631
    :pswitch_9
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 633
    :pswitch_a
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 635
    :pswitch_b
    const-string v0, "LTE"

    goto :goto_0

    .line 637
    :pswitch_c
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    .line 639
    :pswitch_d
    const-string v0, "iDEN"

    goto :goto_0

    .line 641
    :pswitch_e
    const-string v0, "HSPA+"

    goto :goto_0

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_d
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method public static getPhoneCount()I
    .locals 1

    .prologue
    .line 1295
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method private static getPhoneSetting(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 4
    .parameter "context"

    .prologue
    .line 1634
    const/4 v0, 0x0

    .line 1636
    .local v0, aimContext:Landroid/content/Context;
    :try_start_0
    const-string v2, "com.android.phone"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1642
    const-string v2, "com.android.dualcard_settings_preferences"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    :goto_0
    return-object v2

    .line 1638
    :catch_0
    move-exception v1

    .line 1639
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1640
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 412
    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 413
    .local v0, mode:I
    if-ne v0, v2, :cond_0

    .line 414
    const/4 v1, 0x0

    .line 415
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v1

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty()I
    .locals 4

    .prologue
    .line 399
    const-string v2, "gsm.current.phone-type"

    iget v3, p0, Landroid/telephony/TelephonyManager;->mPhoneId:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/PhoneFactory;->getProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, currentActivePhoneProperty:Ljava/lang/String;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 405
    .local v1, type:I
    return v1
.end method

.method public static getSettingPhoneId(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, -0x1

    .line 1585
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getPhoneSetting(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1586
    .local v2, settings:Landroid/content/SharedPreferences;
    const-string/jumbo v3, "sim_card_favorite"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1587
    .local v1, setPhoneId:I
    if-ne v1, v4, :cond_0

    .line 1588
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v1

    .line 1589
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1590
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "sim_card_favorite"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1591
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1593
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return v1
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 2

    .prologue
    .line 1019
    const-string v0, "iphonesubinfo"

    iget v1, p0, Landroid/telephony/TelephonyManager;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoDefaultSim(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 1504
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multi_sim_video_call"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVoiceDefaultSim(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 1488
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multi_sim_voice_call"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isMultiSim()Z
    .locals 1

    .prologue
    .line 1304
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isMultiSim()Z

    move-result v0

    return v0
.end method

.method public static setAutoDefaultPhoneId(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "setPhoneId"

    .prologue
    .line 1600
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getPhoneSetting(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1602
    .local v2, settings:Landroid/content/SharedPreferences;
    const-string/jumbo v3, "sim_card_favorite"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1603
    .local v0, DefaultId:I
    if-eq p1, v0, :cond_0

    .line 1604
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1605
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "sim_card_favorite"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1606
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1608
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static setCallForwardSetting(Landroid/content/Context;III)V
    .locals 6
    .parameter "context"
    .parameter "phoneId"
    .parameter "value"
    .parameter "reason"

    .prologue
    .line 1623
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getPhoneSetting(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1624
    .local v3, settings:Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sim_forward_setting_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1625
    .local v2, setKey:Ljava/lang/String;
    const/4 v4, -0x1

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1626
    .local v0, DefaultValue:I
    if-eq p2, v0, :cond_0

    .line 1627
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1628
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1629
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1631
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static setConnectionDefaultSim(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "phoneId"

    .prologue
    .line 1543
    invoke-static {p0, p1}, Landroid/telephony/TelephonyManager;->setDefaultDataPhoneId(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static setDataConnectionPhoneId(Landroid/content/Context;I)Z
    .locals 2
    .parameter "context"
    .parameter "phoneId"

    .prologue
    .line 1569
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multi_sim_data_connection"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setDefaultDataPhoneId(Landroid/content/Context;I)Z
    .locals 2
    .parameter "context"
    .parameter "phoneId"

    .prologue
    .line 1558
    const-string/jumbo v0, "persist.msms.phone_default"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multi_sim_data_call"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setDefaultSim(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "mode"
    .parameter "phoneId"

    .prologue
    .line 1655
    const-string v1, ""

    .line 1656
    .local v1, phoneIdKey:Ljava/lang/String;
    const-string v0, ""

    .line 1657
    .local v0, imsiKey:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1673
    :goto_0
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultSim:phoneIdKey "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1677
    return-void

    .line 1659
    :pswitch_0
    const-string v1, "dual_sim_tel_id"

    .line 1660
    const-string v0, "dual_sim_tel_imsi"

    .line 1661
    goto :goto_0

    .line 1663
    :pswitch_1
    const-string v1, "dual_sim_mms_id"

    .line 1664
    const-string v0, "dual_sim_mms_imsi"

    .line 1665
    goto :goto_0

    .line 1667
    :pswitch_2
    const-string v1, "dual_sim_vtel_id"

    .line 1668
    const-string v0, "dual_sim_vtel_imsi"

    .line 1669
    goto :goto_0

    .line 1657
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setMmsDefaultSim(Landroid/content/Context;I)Z
    .locals 2
    .parameter "context"
    .parameter "phoneId"

    .prologue
    .line 1528
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multi_sim_mms"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setVideoDefaultSim(Landroid/content/Context;I)Z
    .locals 2
    .parameter "context"
    .parameter "phoneId"

    .prologue
    .line 1512
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multi_sim_video_call"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setVoiceDefaultSim(Landroid/content/Context;I)Z
    .locals 2
    .parameter "context"
    .parameter "phoneId"

    .prologue
    .line 1496
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multi_sim_voice_call"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public Mbbms_Gsm_Authenticate(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "nonce"

    .prologue
    const/4 v0, 0x0

    .line 1341
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->Mbbms_Gsm_Authenticate(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1348
    :goto_0
    return-object v0

    .line 1342
    :catch_0
    move-exception v1

    .line 1344
    .local v1, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1345
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1346
    .local v1, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public Mbbms_USim_Authenticate(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "nonce"
    .parameter "autn"

    .prologue
    const/4 v0, 0x0

    .line 1359
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->Mbbms_USim_Authenticate(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1366
    :goto_0
    return-object v0

    .line 1360
    :catch_0
    move-exception v1

    .line 1362
    .local v1, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1363
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1364
    .local v1, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 318
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    goto :goto_0

    .line 319
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 301
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    goto :goto_0

    .line 302
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getAdnCachestate()I
    .locals 3

    .prologue
    .line 1479
    const-string v1, "gsm.sim.adncache.loaded"

    iget v2, p0, Landroid/telephony/TelephonyManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->getProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1481
    .local v0, adnCacheStateProperty:Ljava/lang/String;
    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getApnActivePdpFilter(Ljava/lang/String;)Z
    .locals 3
    .parameter "apntype"

    .prologue
    const/4 v1, 0x0

    .line 1466
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getApnActivePdpFilter(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1471
    :goto_0
    return v1

    .line 1467
    :catch_0
    move-exception v0

    .line 1469
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1470
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1471
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCallState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1039
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1045
    :goto_0
    return v1

    .line 1040
    :catch_0
    move-exception v0

    .line 1042
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1043
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1045
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconIndex()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1209
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1214
    :goto_0
    return v1

    .line 1210
    :catch_0
    move-exception v0

    .line 1212
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1213
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1214
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1227
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1232
    :goto_0
    return v1

    .line 1228
    :catch_0
    move-exception v0

    .line 1230
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1231
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1232
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1243
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriText()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1248
    :goto_0
    return-object v1

    .line 1244
    :catch_0
    move-exception v0

    .line 1246
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1247
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1248
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 278
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    .line 279
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 280
    .local v1, cl:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 286
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :cond_0
    :goto_0
    return-object v1

    .line 283
    :catch_0
    move-exception v2

    .local v2, ex:Landroid/os/RemoteException;
    move-object v1, v3

    .line 284
    goto :goto_0

    .line 285
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .local v2, ex:Ljava/lang/NullPointerException;
    move-object v1, v3

    .line 286
    goto :goto_0
.end method

.method public getCurrentPhoneType()I
    .locals 3

    .prologue
    .line 364
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 365
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 366
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    .line 378
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 369
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 371
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 374
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 375
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 378
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1075
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1081
    :goto_0
    return v1

    .line 1076
    :catch_0
    move-exception v0

    .line 1078
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1079
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1081
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1127
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1132
    :goto_0
    return v1

    .line 1128
    :catch_0
    move-exception v0

    .line 1130
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1131
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1132
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataStatebyApnType(Ljava/lang/String;)I
    .locals 3
    .parameter "apnType"

    .prologue
    const/4 v1, 0x0

    .line 1147
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDataStatebyApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1152
    :goto_0
    return v1

    .line 1148
    :catch_0
    move-exception v0

    .line 1150
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1151
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1152
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 260
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 264
    :goto_0
    return-object v1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 263
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 264
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 243
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 247
    :goto_0
    return-object v1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 246
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 247
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIccFdnEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 688
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getIccFdnEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 694
    :goto_0
    return v1

    .line 689
    :catch_0
    move-exception v0

    .line 691
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 692
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 694
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 990
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 995
    :goto_0
    return-object v1

    .line 991
    :catch_0
    move-exception v0

    .line 992
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 993
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 995
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 974
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 979
    :goto_0
    return-object v1

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 977
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 979
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1007
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1012
    :goto_0
    return-object v1

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1010
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1012
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 866
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 871
    :goto_0
    return-object v1

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 869
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 871
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 846
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 851
    :goto_0
    return-object v1

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 849
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 851
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLteOnCdmaMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 803
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 809
    :goto_0
    return v1

    .line 804
    :catch_0
    move-exception v0

    .line 806
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 807
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 809
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getModemType()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1311
    const-string v4, "gsm.version.baseband"

    iget v5, p0, Landroid/telephony/TelephonyManager;->mPhoneId:I

    invoke-static {v4, v5}, Lcom/android/internal/telephony/PhoneFactory;->getProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1314
    .local v0, baseBand:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1316
    .local v1, modemValue:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1318
    const-string v4, "\\|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v1, v4, v3

    .line 1321
    const-string/jumbo v4, "sc8810_modem"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "sc8825_modem"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 1330
    :cond_1
    :goto_0
    return v2

    .line 1324
    :cond_2
    const-string/jumbo v3, "sc6810_sp6810"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "sc6825_modem"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1329
    :cond_3
    const-string v3, "TelephonyManager"

    const-string v4, "can not get the baseband version"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 886
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 891
    :goto_0
    return-object v1

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 889
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 891
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 334
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 338
    :goto_0
    return-object v1

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 337
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 338
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 3

    .prologue
    .line 480
    const-string v1, "gsm.operator.iso-country"

    iget v2, p0, Landroid/telephony/TelephonyManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->getProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, operatorIsoCountryProperty:Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 452
    const-string v1, "gsm.operator.numeric"

    iget v2, p0, Landroid/telephony/TelephonyManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->getProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, operatorNumericProperty:Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 432
    const-string v1, "gsm.operator.alpha"

    iget v2, p0, Landroid/telephony/TelephonyManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->getProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, operatorAlphaProperty:Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkType()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 542
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 543
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 544
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 554
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 549
    :catch_0
    move-exception v0

    .line 551
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 552
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 554
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    const/4 v0, 0x0

    .line 395
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public getRegistrationState()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1391
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getRegistrationState()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1396
    :goto_0
    return-object v1

    .line 1392
    :catch_0
    move-exception v0

    .line 1394
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1395
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1396
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getRemainTimes(I)I
    .locals 3
    .parameter "type"

    .prologue
    const/4 v1, -0x1

    .line 1437
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getRemainTimes(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1442
    :goto_0
    return v1

    .line 1438
    :catch_0
    move-exception v0

    .line 1440
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1441
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1442
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 3

    .prologue
    .line 768
    const-string v1, "gsm.sim.operator.iso-country"

    iget v2, p0, Landroid/telephony/TelephonyManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->getProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, iccOperatorIsoCountryProperty:Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimIccId(I)Ljava/lang/String;
    .locals 2
    .parameter "phoneId"

    .prologue
    .line 438
    const-string v1, "gsm.sim.iccid"

    invoke-static {v1, p1}, Lcom/android/internal/telephony/PhoneFactory;->getProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, iccidProperty:Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 744
    const-string v1, "gsm.sim.operator.numeric"

    iget v2, p0, Landroid/telephony/TelephonyManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->getProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, iccOperatorNumericProperty:Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 758
    const-string v1, "gsm.sim.operator.alpha"

    iget v2, p0, Landroid/telephony/TelephonyManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->getProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, iccOperatorAlphaProperty:Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 782
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 787
    :goto_0
    return-object v1

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 785
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 787
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimState()I
    .locals 4

    .prologue
    .line 711
    const-string v2, "gsm.sim.state"

    iget v3, p0, Landroid/telephony/TelephonyManager;->mPhoneId:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/PhoneFactory;->getProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 713
    .local v1, simStateProperty:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, prop:Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 715
    const/4 v2, 0x1

    .line 730
    :goto_0
    return v2

    .line 717
    :cond_0
    const-string v2, "PIN_REQUIRED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 718
    const/4 v2, 0x2

    goto :goto_0

    .line 720
    :cond_1
    const-string v2, "PUK_REQUIRED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 721
    const/4 v2, 0x3

    goto :goto_0

    .line 723
    :cond_2
    const-string v2, "NETWORK_LOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 724
    const/4 v2, 0x4

    goto :goto_0

    .line 726
    :cond_3
    const-string v2, "READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 727
    const/4 v2, 0x5

    goto :goto_0

    .line 730
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSimType()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1377
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSimType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1382
    :goto_0
    return-object v1

    .line 1378
    :catch_0
    move-exception v0

    .line 1380
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1381
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1382
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 828
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 833
    :goto_0
    return-object v1

    .line 829
    :catch_0
    move-exception v0

    .line 830
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 831
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 833
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 958
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 963
    :goto_0
    return-object v1

    .line 959
    :catch_0
    move-exception v0

    .line 960
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 961
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 963
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 903
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 908
    :goto_0
    return-object v1

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 906
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 908
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 940
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 945
    :goto_0
    return v1

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 943
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 945
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasIccCard()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 674
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 680
    :goto_0
    return v1

    .line 675
    :catch_0
    move-exception v0

    .line 677
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 678
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 680
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 3

    .prologue
    .line 465
    const-string v1, "gsm.operator.isroaming"

    iget v2, p0, Landroid/telephony/TelephonyManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->getProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, operatorIsRoamingProperty:Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isSmsCapable()Z
    .locals 2

    .prologue
    .line 1286
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1287
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isVTCall()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1405
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isVTCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1410
    :goto_0
    return v1

    .line 1406
    :catch_0
    move-exception v0

    .line 1408
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1409
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1410
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isVoiceCapable()Z
    .locals 2

    .prologue
    .line 1269
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1270
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 5
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 1191
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1193
    .local v1, pkgForDebug:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1194
    .local v0, notifyNow:Ljava/lang/Boolean;
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v3, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v1, v3, p2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    .end local v0           #notifyNow:Ljava/lang/Boolean;
    :goto_2
    return-void

    .line 1191
    .end local v1           #pkgForDebug:Ljava/lang/String;
    :cond_0
    const-string v1, "<unknown>"

    goto :goto_0

    .line 1193
    .restart local v1       #pkgForDebug:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1197
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1195
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public playSptone(Ljava/lang/String;)V
    .locals 4
    .parameter "sptone"

    .prologue
    .line 1741
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->playSptone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1745
    :goto_0
    return-void

    .line 1742
    :catch_0
    move-exception v0

    .line 1743
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playSptone   RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setApnActivePdpFilter(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "apntype"
    .parameter "filterenable"

    .prologue
    const/4 v1, 0x0

    .line 1452
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setApnActivePdpFilter(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1457
    :goto_0
    return v1

    .line 1453
    :catch_0
    move-exception v0

    .line 1455
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1456
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1457
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIccCardType()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method
