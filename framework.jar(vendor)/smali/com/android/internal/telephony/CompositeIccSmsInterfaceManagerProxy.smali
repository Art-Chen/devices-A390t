.class public Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;
.super Lcom/android/internal/telephony/ISms$Stub;
.source "CompositeIccSmsInterfaceManagerProxy.java"


# instance fields
.field private mIccSmsInterfaceManager:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;


# direct methods
.method public constructor <init>([Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;)V
    .locals 1
    .parameter "iccSmsInterfaceManager"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/telephony/ISms$Stub;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    .line 32
    const-string v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    const-string v0, "isms"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 35
    :cond_0
    return-void
.end method

.method private getSimplePolicyPhoneId()I
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhoneId()I

    move-result v0

    return v0
.end method


# virtual methods
.method public activateCellBroadcastSms(I)V
    .locals 2
    .parameter "activate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->activateCellBroadcastSms(I)V

    .line 120
    return-void
.end method

.method public copyMessageToIccEf(I[B[B)Z
    .locals 2
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->copyMessageToIccEf(I[B[B)Z

    move-result v0

    return v0
.end method

.method public copyMessageToIccEfWithResult(I[B[B)Ljava/lang/String;
    .locals 2
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->copyMessageToIccEfWithResult(I[B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public disableCellBroadcast(I)Z
    .locals 2
    .parameter "messageIdentifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->disableCellBroadcast(I)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 2
    .parameter "startMessageId"
    .parameter "endMessageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->disableCellBroadcastRange(II)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcast(I)Z
    .locals 2
    .parameter "messageIdentifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->enableCellBroadcast(I)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 2
    .parameter "startMessageId"
    .parameter "endMessageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->enableCellBroadcastRange(II)Z

    move-result v0

    return v0
.end method

.method public getAllMessagesFromIccEf()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getAllMessagesFromIccEf()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 128
    return-void
.end method

.method public getSimCapacity()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getSimCapacity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;I)Z
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter "isOutbox"
    .parameter "timestring"
    .parameter "savestatus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    .local p3, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->saveMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 67
    return-void
.end method

.method public sendDmData(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "srcPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->sendDmData(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 74
    return-void
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    .local p3, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 87
    return-void
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 80
    return-void
.end method

.method public setCellBroadcastSmsConfig([I)V
    .locals 2
    .parameter "configValuesArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->setCellBroadcastSmsConfig([I)V

    .line 124
    return-void
.end method

.method public setMoreSmsFlag(Z)V
    .locals 2
    .parameter "more"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->setMoreSmsFlag(Z)V

    .line 91
    return-void
.end method

.method public updateMessageOnIccEf(II[B)Z
    .locals 2
    .parameter "index"
    .parameter "status"
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:[Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccSmsInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->updateMessageOnIccEf(II[B)Z

    move-result v0

    return v0
.end method
