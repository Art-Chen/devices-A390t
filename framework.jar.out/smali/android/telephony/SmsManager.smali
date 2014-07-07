.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# static fields
.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final RESULT_ERROR_SMSC_FDN_CHECK_FAILURE:I = 0x7

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "SmsManager"

.field private static final sInstance:[Landroid/telephony/SmsManager;

.field private static final sInstance:Landroid/telephony/SmsManager;


# instance fields
.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isMultiSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Landroid/telephony/SmsManager;

    sput-object v1, Landroid/telephony/SmsManager;->sInstance:[Landroid/telephony/SmsManager;

    .line 57
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 58
    sget-object v1, Landroid/telephony/SmsManager;->sInstance:[Landroid/telephony/SmsManager;

    new-instance v2, Landroid/telephony/SmsManager;

    invoke-direct {v2, v0}, Landroid/telephony/SmsManager;-><init>(I)V

    aput-object v2, v1, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/telephony/SmsManager;

    sput-object v1, Landroid/telephony/SmsManager;->sInstance:[Landroid/telephony/SmsManager;

    .line 62
    sget-object v1, Landroid/telephony/SmsManager;->sInstance:[Landroid/telephony/SmsManager;

    new-instance v2, Landroid/telephony/SmsManager;

    invoke-direct {v2, v3}, Landroid/telephony/SmsManager;-><init>(I)V

    aput-object v2, v1, v3

    .line 64
    :cond_1
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "phoneId"

    .prologue
    .line 364
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput p1, p0, Landroid/telephony/SmsManager;->mPhoneId:I

    .line 366
    return-void
.end method

.method private static createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    .local p0, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p0, :cond_1

    .line 486
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 487
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 488
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 490
    .local v1, data:Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 491
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[B)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 492
    .local v4, sms:Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    .line 493
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    .end local v4           #sms:Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    .end local v0           #count:I
    .end local v1           #data:Lcom/android/internal/telephony/SmsRawData;
    .end local v2           #i:I
    :cond_1
    return-object v3
.end method

.method public static getAllMessagesFromIcc()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    const/4 v1, 0x0

    .line 342
    .local v1, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 343
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 344
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEf()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 350
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2

    .line 346
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public copyMessageToIcc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Z
    .locals 3
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "message"
    .parameter "status"
    .parameter "time"

    .prologue
    .line 786
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 787
    .local v1, time1:Landroid/text/format/Time;
    invoke-virtual {v1, p5, p6}, Landroid/text/format/Time;->set(J)V

    .line 788
    invoke-static {p2, p3, p4, v1}, Landroid/telephony/SmsMessage;->getReceivedPdu(Ljava/lang/String;Ljava/lang/String;ILandroid/text/format/Time;)[B

    move-result-object v0

    .line 789
    .local v0, data:[B
    if-nez v0, :cond_0

    .line 790
    const/4 v2, 0x0

    .line 792
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, p4}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v2

    goto :goto_0
.end method

.method public static getDefault()Landroid/telephony/SmsManager;
    .locals 1

    .prologue
    .line 227
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method public copyMessageToIcc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 3
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "message"
    .parameter "statusRe"
    .parameter "status"

    .prologue
    .line 765
    invoke-static {p1, p2, p3, p4}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 767
    .local v0, pdu:Landroid/telephony/SmsMessage$SubmitPdu;
    const/4 v1, 0x0

    iget-object v2, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-virtual {p0, v1, v2, p5}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v1

    return v1
.end method

.method public copyMessageToIcc([B[BI)Z
    .locals 4
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 382
    const/4 v1, 0x0

    .line 385
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    iget v3, p0, Landroid/telephony/SmsManager;->mPhoneId:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 386
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 387
    invoke-interface {v0, p3, p2, p1}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEf(I[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 393
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 389
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public copyMessageToIccEfWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Ljava/lang/String;
    .locals 5
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "message"
    .parameter "status"
    .parameter "time"

    .prologue
    const/4 v2, 0x0

    .line 800
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 801
    .local v1, time1:Landroid/text/format/Time;
    invoke-virtual {v1, p5, p6}, Landroid/text/format/Time;->set(J)V

    .line 802
    invoke-static {p2, p3, p4, v1}, Landroid/telephony/SmsMessage;->getReceivedPdu(Ljava/lang/String;Ljava/lang/String;ILandroid/text/format/Time;)[B

    move-result-object v0

    .line 803
    .local v0, data:[B
    if-nez v0, :cond_0

    .line 804
    const-string v3, "SmsManager"

    const-string v4, "copyMessageToIccEfWithResult ===> data is null ! "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0, v2, v0, p4}, Landroid/telephony/SmsManager;->copyMessageToIccEfWithResult([B[BI)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public copyMessageToIccEfWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)Ljava/lang/String;
    .locals 5
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "message"
    .parameter "status"
    .parameter "time"
    .parameter "phoneId"

    .prologue
    const/4 v2, 0x0

    .line 822
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 823
    .local v1, time1:Landroid/text/format/Time;
    invoke-virtual {v1, p5, p6}, Landroid/text/format/Time;->set(J)V

    .line 824
    invoke-static {p2, p3, p4, v1}, Landroid/telephony/SmsMessage;->getReceivedPdu(Ljava/lang/String;Ljava/lang/String;ILandroid/text/format/Time;)[B

    move-result-object v0

    .line 825
    .local v0, data:[B
    if-nez v0, :cond_0

    .line 826
    const-string v3, "SmsManager"

    const-string v4, "copyMessageToIccEfWithResult ===> data is null ! "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0, v2, v0, p4, p7}, Landroid/telephony/SmsManager;->copyMessageToIccEfWithResult([B[BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public copyMessageToIccEfWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 3
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "message"
    .parameter "statusRe"
    .parameter "status"

    .prologue
    .line 776
    invoke-static {p1, p2, p3, p4}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 778
    .local v0, pdu:Landroid/telephony/SmsMessage$SubmitPdu;
    const/4 v1, 0x0

    iget-object v2, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-virtual {p0, v1, v2, p5}, Landroid/telephony/SmsManager;->copyMessageToIccEfWithResult([B[BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public copyMessageToIccEfWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Ljava/lang/String;
    .locals 3
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "message"
    .parameter "statusRe"
    .parameter "status"
    .parameter "phoneId"

    .prologue
    .line 848
    invoke-static {p1, p2, p3, p4}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 850
    .local v0, pdu:Landroid/telephony/SmsMessage$SubmitPdu;
    const/4 v1, 0x0

    iget-object v2, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-virtual {p0, v1, v2, p5, p6}, Landroid/telephony/SmsManager;->copyMessageToIccEfWithResult([B[BII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public copyMessageToIccEfWithResult([B[BI)Ljava/lang/String;
    .locals 5
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 745
    const/4 v1, 0x0

    .line 748
    .local v1, exception:Ljava/lang/String;
    :try_start_0
    const-string v3, "isms"

    iget v4, p0, Landroid/telephony/SmsManager;->mPhoneId:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 749
    .local v2, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_0

    .line 750
    invoke-interface {v2, p3, p2, p1}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfWithResult(I[B[B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 757
    .end local v2           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v1

    .line 752
    :catch_0
    move-exception v0

    .line 754
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "SmsManager"

    const-string v4, "RemoteException hanppend when call copyMessageToIccEfWithResult method!!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public copyMessageToIccEfWithResult([B[BII)Ljava/lang/String;
    .locals 5
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"
    .parameter "phoneId"

    .prologue
    .line 832
    const/4 v1, 0x0

    .line 835
    .local v1, exception:Ljava/lang/String;
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3, p4}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 836
    .local v2, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_0

    .line 837
    invoke-interface {v2, p3, p2, p1}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfWithResult(I[B[B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 844
    .end local v2           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v1

    .line 839
    :catch_0
    move-exception v0

    .line 841
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "SmsManager"

    const-string v4, "RemoteException hanppend when call copyMessageToIccEfWithResult method!!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IJ)I
    .locals 1
    .parameter "scAddress"
    .parameter "address"
    .parameter
    .parameter "status"
    .parameter "timeStamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .prologue
    .line 268
    .local p3, msgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public deleteMessageFromIcc(I)Z
    .locals 5
    .parameter "messageIndex"

    .prologue
    .line 435
    const/4 v2, 0x0

    .line 436
    .local v2, success:Z
    const/16 v3, 0xaf

    new-array v1, v3, [B

    .line 437
    .local v1, pdu:[B
    const/4 v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 440
    :try_start_0
    const-string v3, "isms"

    iget v4, p0, Landroid/telephony/SmsManager;->mPhoneId:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 441
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 442
    const/4 v3, 0x0

    invoke-interface {v0, p1, v3, v1}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 448
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 444
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public disableCellBroadcast(I)Z
    .locals 4
    .parameter "messageIdentifier"

    .prologue
    .line 550
    const/4 v1, 0x0

    .line 553
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    iget v3, p0, Landroid/telephony/SmsManager;->mPhoneId:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 554
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 555
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->disableCellBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 561
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 557
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 4
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 612
    const/4 v1, 0x0

    .line 615
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    iget v3, p0, Landroid/telephony/SmsManager;->mPhoneId:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 616
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 617
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 623
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 619
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public enableCellBroadcast(I)Z
    .locals 4
    .parameter "messageIdentifier"

    .prologue
    .line 520
    const/4 v1, 0x0

    .line 523
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    iget v3, p0, Landroid/telephony/SmsManager;->mPhoneId:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 524
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 525
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->enableCellBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 531
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 527
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 4
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 581
    const/4 v1, 0x0

    .line 584
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    iget v3, p0, Landroid/telephony/SmsManager;->mPhoneId:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 585
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 586
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 592
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 588
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 653
    :try_start_0
    const-string v1, "isms"

    iget v2, p0, Landroid/telephony/SmsManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 654
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 655
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getCellBroadcastSmsConfig(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 657
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSimCapacity()Ljava/lang/String;
    .locals 5

    .prologue
    .line 403
    const/4 v2, 0x0

    .line 404
    .local v2, success:Z
    new-instance v1, Ljava/lang/String;

    const-string v3, "0:0"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 407
    .local v1, simCapacity:Ljava/lang/String;
    :try_start_0
    const-string v3, "isms"

    iget v4, p0, Landroid/telephony/SmsManager;->mPhoneId:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 408
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 409
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getSimCapacity()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 417
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 418
    const-string v1, "0:0"

    .line 420
    :cond_1
    return-object v1

    .line 411
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public saveMultipartTextMessage(Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)Z
    .locals 11
    .parameter "destinationAddress"
    .parameter
    .parameter "isOutbox"
    .parameter "timestring"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 209
    .local p2, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 211
    .local v9, result:Z
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 212
    :cond_0
    const-string v1, "SmsManager"

    const-string v2, "[cmgw]Invalid message body"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 259
    .end local v9           #result:Z
    .local v10, result:I
    :goto_0
    return v10

    .line 215
    .end local v10           #result:I
    .restart local v9       #result:Z
    :cond_1
    const-string v1, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[cmgw]message size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-eqz p3, :cond_3

    const/4 v6, 0x5

    .line 218
    .local v6, savestatus:I
    :goto_1
    if-nez p3, :cond_6

    .line 219
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    .line 222
    :try_start_0
    const-string v1, "isms"

    iget v2, p0, Landroid/telephony/SmsManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 223
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_4

    .line 224
    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->saveMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;I)Z

    move-result v9

    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_2
    move v10, v9

    .line 259
    .restart local v10       #result:I
    goto :goto_0

    .line 216
    .end local v6           #savestatus:I
    .end local v10           #result:I
    :cond_3
    const/4 v6, 0x1

    goto :goto_1

    .line 226
    .restart local v0       #iccISms:Lcom/android/internal/telephony/ISms;
    .restart local v6       #savestatus:I
    :cond_4
    const-string v1, "SmsManager"

    const-string v2, "[cmgw]iccISms is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 228
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v7

    .line 230
    .local v7, ex:Landroid/os/RemoteException;
    const-string v1, "SmsManager"

    const-string v2, "[cmgw]RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 233
    .end local v7           #ex:Landroid/os/RemoteException;
    :cond_5
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, p1, v1, p4}, Landroid/telephony/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SmsMessage$DeliverPdu;

    move-result-object v8

    .line 234
    .local v8, pdu:Landroid/telephony/SmsMessage$DeliverPdu;
    if-eqz v8, :cond_2

    .line 235
    const/4 v1, 0x0

    iget-object v2, v8, Landroid/telephony/SmsMessage$DeliverPdu;->encodedMessage:[B

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v9

    goto :goto_2

    .line 239
    .end local v8           #pdu:Landroid/telephony/SmsMessage$DeliverPdu;
    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_8

    .line 242
    :try_start_1
    const-string v1, "isms"

    iget v2, p0, Landroid/telephony/SmsManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 243
    .restart local v0       #iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_7

    .line 244
    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->saveMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;I)Z

    move-result v9

    goto :goto_2

    .line 246
    :cond_7
    const-string v1, "SmsManager"

    const-string v2, "[cmgw]iccISms is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 248
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_1
    move-exception v7

    .line 250
    .restart local v7       #ex:Landroid/os/RemoteException;
    const-string v1, "SmsManager"

    const-string v2, "[cmgw]RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 253
    .end local v7           #ex:Landroid/os/RemoteException;
    :cond_8
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v8

    .line 254
    .local v8, pdu:Landroid/telephony/SmsMessage$SubmitPdu;
    if-eqz v8, :cond_2

    .line 255
    const/4 v1, 0x0

    iget-object v2, v8, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v9

    goto :goto_2
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    if-nez v1, :cond_2

    .line 297
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :cond_2
    :try_start_0
    const-string v1, "isms"

    iget v2, p0, Landroid/telephony/SmsManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 302
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    .line 303
    const v1, 0xffff

    and-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendDmDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "sourcePort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const v4, 0xffff

    .line 319
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :cond_0
    if-eqz p5, :cond_1

    array-length v1, p5

    if-nez v1, :cond_2

    .line 324
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    :cond_2
    :try_start_0
    const-string v1, "isms"

    iget v2, p0, Landroid/telephony/SmsManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 329
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    .line 330
    and-int v3, p3, v4

    and-int/2addr v4, p4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendDmData(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
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
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 163
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_4

    .line 168
    :try_start_0
    const-string v1, "isms"

    iget v2, p0, Landroid/telephony/SmsManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 169
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 170
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 177
    :cond_4
    const/4 v5, 0x0

    .line 178
    .local v5, sentIntent:Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 179
    .local v6, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 180
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 182
    .restart local v5       #sentIntent:Landroid/app/PendingIntent;
    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 183
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 185
    .restart local v6       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_6
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 173
    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_1
    :try_start_0
    const-string v1, "isms"

    iget v2, p0, Landroid/telephony/SmsManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 104
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 105
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setCellBroadcastSmsConfig([I)V
    .locals 3
    .parameter "configValuesArray"

    .prologue
    .line 641
    :try_start_0
    const-string v1, "isms"

    iget v2, p0, Landroid/telephony/SmsManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 642
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 643
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->setCellBroadcastSmsConfig([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 645
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setMoreSmsFlag(Z)V
    .locals 3
    .parameter "more"

    .prologue
    .line 197
    :try_start_0
    const-string v1, "isms"

    iget v2, p0, Landroid/telephony/SmsManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 199
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->setMoreSmsFlag(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateMessageOnIcc(II[B)Z
    .locals 4
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"

    .prologue
    .line 466
    const/4 v1, 0x0

    .line 469
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    iget v3, p0, Landroid/telephony/SmsManager;->mPhoneId:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 470
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 471
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 477
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 473
    :catch_0
    move-exception v2

    goto :goto_0
.end method
