.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 634
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 9
    .parameter "intent"

    .prologue
    .line 803
    const-string/jumbo v7, "pdus"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v1, v7

    check-cast v1, [Ljava/lang/Object;

    .line 804
    .local v1, messages:[Ljava/lang/Object;
    const-string/jumbo v7, "phone_id"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 805
    .local v6, phoneId:I
    array-length v7, v1

    new-array v4, v7, [[B

    .line 807
    .local v4, pduObjs:[[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v7, v1

    if-ge v0, v7, :cond_0

    .line 808
    aget-object v7, v1, v0

    check-cast v7, [B

    check-cast v7, [B

    aput-object v7, v4, v0

    .line 807
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 810
    :cond_0
    array-length v7, v4

    new-array v5, v7, [[B

    .line 811
    .local v5, pdus:[[B
    array-length v3, v5

    .line 812
    .local v3, pduCount:I
    new-array v2, v3, [Landroid/telephony/SmsMessage;

    .line 813
    .local v2, msgs:[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 814
    aget-object v7, v4, v0

    aput-object v7, v5, v0

    .line 815
    aget-object v7, v5, v0

    invoke-static {v7}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v2, v0

    .line 816
    aget-object v7, v2, v0

    invoke-virtual {v7, v6}, Landroid/telephony/SmsMessage;->setPhoneId(I)V

    .line 818
    aget-object v7, v2, v0

    const-string v8, "huibin"

    invoke-virtual {v7, v8}, Landroid/telephony/SmsMessage;->setIccId(Ljava/lang/String;)V

    .line 813
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 821
    :cond_1
    return-object v2
.end method
