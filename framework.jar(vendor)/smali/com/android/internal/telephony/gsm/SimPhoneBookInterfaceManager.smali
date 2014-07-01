.class public Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "SimPhoneBookInterfaceManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final TAG:Ljava/lang/String; = "SimPhoneBookInterfaceManager"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 41
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->getLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method private getUsimAdnRecordsSize()[I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 77
    const-string v2, "GSM"

    const-string v3, "getUsimAdnRecordsSize"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    if-nez v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object v1

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v0

    .line 83
    .local v0, mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdnRecordsSize()[I

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->dispose()V

    .line 48
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 52
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    const-string v1, "GSM"

    const-string v2, "SimPhoneBookInterfaceManager finalized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, throwable:Ljava/lang/Throwable;
    const-string v1, "GSM"

    const-string v2, "Error while finalizing:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAdnRecordsSize(I)[I
    .locals 3
    .parameter "efid"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->isPbrFileExisting:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 v1, 0x6f3a

    if-ne p1, v1, :cond_1

    .line 65
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getUsimAdnRecordsSize()[I

    move-result-object v0

    .line 66
    .local v0, size:[I
    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getRecordsSize(I)[I

    move-result-object v0

    .line 71
    .end local v0           #size:[I
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getRecordsSize(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public getAnrNum()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    if-nez v2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v1

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v0

    .line 190
    .local v0, mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrNum()I

    move-result v1

    goto :goto_0
.end method

.method public getAnrRecordsSize()[I
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 239
    const-string v6, "GSM"

    const-string v7, "getAnrRecordsSize"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    if-nez v6, :cond_1

    move-object v4, v5

    .line 260
    :cond_0
    :goto_0
    return-object v4

    .line 243
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v6}, Lcom/android/internal/telephony/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v1

    .line 245
    .local v1, mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    if-nez v1, :cond_2

    move-object v4, v5

    .line 246
    goto :goto_0

    .line 249
    :cond_2
    const/4 v6, 0x3

    new-array v4, v6, [I

    .line 250
    .local v4, recordSizeTotal:[I
    const/4 v2, 0x0

    .local v2, num:I
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getNumRecs()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 251
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findEFAnrInfo(I)I

    move-result v0

    .line 252
    .local v0, efid:I
    if-gtz v0, :cond_3

    move-object v4, v5

    .line 253
    goto :goto_0

    .line 255
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getRecordsSize(I)[I

    move-result-object v3

    .line 256
    .local v3, recordSizeAnr:[I
    aget v6, v3, v8

    aput v6, v4, v8

    .line 257
    aget v6, v4, v9

    aget v7, v3, v9

    add-int/2addr v6, v7

    aput v6, v4, v9

    .line 258
    aget v6, v4, v10

    aget v7, v3, v10

    add-int/2addr v6, v7

    aput v6, v4, v10

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getAvalibleAnrCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)[I
    .locals 7
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "anrNums"

    .prologue
    const/4 v1, 0x0

    .line 163
    const/4 v6, 0x0

    .line 164
    .local v6, record:[I
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    if-nez v2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-object v1

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v0

    .line 171
    .local v0, mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 175
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAvalibleAnrCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)[I

    move-result-object v1

    goto :goto_0
.end method

.method public getAvalibleEmailCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)[I
    .locals 7
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "emailNums"

    .prologue
    const/4 v1, 0x0

    .line 141
    const/4 v6, 0x0

    .line 142
    .local v6, record:[I
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    if-nez v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-object v1

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v0

    .line 149
    .local v0, mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 153
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAvalibleEmailCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)[I

    move-result-object v1

    goto :goto_0
.end method

.method public getEmailMaxLen()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 204
    const-string v4, "GSM"

    const-string v5, "getEmailMaxLen"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    if-nez v4, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v3

    .line 208
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v4}, Lcom/android/internal/telephony/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v1

    .line 209
    .local v1, mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findEFEmailInfo(I)I

    move-result v0

    .line 214
    .local v0, efid:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getRecordsSize(I)[I

    move-result-object v2

    .line 215
    .local v2, recordSizeEmail:[I
    if-eqz v2, :cond_0

    .line 218
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 219
    aget v3, v2, v3

    goto :goto_0

    .line 221
    :cond_2
    aget v3, v2, v3

    add-int/lit8 v3, v3, -0x2

    goto :goto_0
.end method

.method public getEmailNum()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, record:[I
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    if-nez v3, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v2

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v0

    .line 129
    .local v0, mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailNum()I

    move-result v2

    goto :goto_0
.end method

.method public getEmailRecordsSize()[I
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 90
    const-string v6, "GSM"

    const-string v7, "getEmailRecordsSize"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    if-nez v6, :cond_1

    .line 117
    :cond_0
    return-object v4

    .line 94
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v6}, Lcom/android/internal/telephony/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v1

    .line 95
    .local v1, mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    if-eqz v1, :cond_0

    .line 99
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 100
    .local v5, usedEfIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v6, 0x3

    new-array v4, v6, [I

    .line 102
    .local v4, recordSizeTotal:[I
    const/4 v2, 0x0

    .local v2, num:I
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getNumRecs()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 103
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findEFEmailInfo(I)I

    move-result v0

    .line 106
    .local v0, efid:I
    if-lez v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 102
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getRecordsSize(I)[I

    move-result-object v3

    .line 113
    .local v3, recordSizeEmail:[I
    aget v6, v3, v8

    aput v6, v4, v8

    .line 114
    aget v6, v4, v9

    aget v7, v3, v9

    add-int/2addr v6, v7

    aput v6, v4, v9

    .line 115
    aget v6, v4, v10

    aget v7, v3, v10

    add-int/2addr v6, v7

    aput v6, v4, v10

    goto :goto_1
.end method

.method public getPhoneNumMaxLen()I
    .locals 2

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v0

    .line 231
    .local v0, mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    if-nez v0, :cond_0

    .line 232
    const/16 v1, 0x14

    .line 234
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPhoneNumMaxLen()I

    move-result v1

    goto :goto_0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 264
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 268
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method
