.class public Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;
.super Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.source "CompositeIccPhoneBookInterfaceManagerProxy.java"


# instance fields
.field private mIccPhoneBookInterfaceManager:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;


# direct methods
.method public constructor <init>([Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;)V
    .locals 1
    .parameter "iccPhoneBookInterfaceManager"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    .line 43
    const-string/jumbo v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 44
    const-string/jumbo v0, "simphonebook"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 46
    :cond_0
    return-void
.end method

.method private getSimplePolicyPhoneId()I
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhoneId()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 2
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdnRecordsSize(I)[I
    .locals 2
    .parameter "efid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getAdnRecordsSize(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getAnrNum()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getAnrNum()I

    move-result v0

    return v0
.end method

.method public getAnrRecordsSize()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getAnrRecordsSize()[I

    move-result-object v0

    return-object v0
.end method

.method public getAvalibleAnrCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)[I
    .locals 6
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "anrNums"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getAvalibleAnrCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public getAvalibleEmailCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)[I
    .locals 6
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "emailNums"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getAvalibleEmailCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public getEmailMaxLen()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getEmailMaxLen()I

    move-result v0

    return v0
.end method

.method public getEmailNum()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getEmailNum()I

    move-result v0

    return v0
.end method

.method public getEmailRecordsSize()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getEmailRecordsSize()[I

    move-result-object v0

    return-object v0
.end method

.method public getGasInEf()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getGasInEf()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInsertIndex()I
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getInsertIndex()I

    move-result v0

    return v0
.end method

.method public getPhoneNumMaxLen()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getPhoneNumMaxLen()I

    move-result v0

    return v0
.end method

.method public isApplicationOnIcc(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->isApplicationOnIcc(I)Z

    move-result v0

    return v0
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "index"
    .parameter "pin2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateAdnRecordsInEfByIndexEx(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 12
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "newEmailList"
    .parameter "newAnr"
    .parameter "newAas"
    .parameter "newSne"
    .parameter "newGrp"
    .parameter "newGas"
    .parameter "index"
    .parameter "pin2"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateAdnRecordsInEfByIndexEx(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "pin2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateAdnRecordsInEfBySearchEx(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "oldEmailList"
    .parameter "oldAnr"
    .parameter "oldSne"
    .parameter "oldGrp"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "newEmailList"
    .parameter "newAnr"
    .parameter "newAas"
    .parameter "newSne"
    .parameter "newGrp"
    .parameter "newGas"
    .parameter "pin2"

    .prologue
    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-virtual/range {v1 .. v17}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateAdnRecordsInEfBySearchEx(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public updateUsimGroupById(Ljava/lang/String;I)Z
    .locals 2
    .parameter "newName"
    .parameter "groupId"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateUsimGroupById(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public updateUsimGroupBySearchEx(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "oldName"
    .parameter "newName"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:[Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositeIccPhoneBookInterfaceManagerProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateUsimGroupBySearchEx(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
