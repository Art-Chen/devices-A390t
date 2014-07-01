.class public final Lcom/android/internal/telephony/AdnRecordCache;
.super Lcom/android/internal/telephony/IccThreadHandler;
.source "AdnRecordCache.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x1

.field static final EVENT_UPDATE_ADN_DONE:I = 0x2

.field static final EVENT_UPDATE_USIM_ADN_DONE:I = 0x3

.field static LOG_TAG:Ljava/lang/String;


# instance fields
.field adnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field adnLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/IccFileHandler;

.field public mInsertId:I

.field protected final mLock:Ljava/lang/Object;

.field public mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

.field phone:Lcom/android/internal/telephony/PhoneBase;

.field public updateOthers:Z

.field userWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "AdnRecordCache"

    sput-object v0, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/internal/telephony/IccThreadHandler;-><init>()V

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLock:Ljava/lang/Object;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->updateOthers:Z

    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecordCache;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 90
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/AdnRecordCache;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 92
    return-void
.end method

.method private clearUserWriters()V
    .locals 5

    .prologue
    .line 124
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 125
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const/4 v3, 0x0

    const-string v4, "AdnCache reset"

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 130
    return-void
.end method

.method private clearWaiters()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 114
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 115
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 116
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 117
    .local v3, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "AdnCache reset"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 118
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 121
    return-void
.end method

.method private compareSubject(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 3
    .parameter "type"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    .line 220
    const/4 v0, 0x1

    .line 221
    .local v0, isEqual:Z
    packed-switch p1, :pswitch_data_0

    .line 240
    :goto_0
    return v0

    .line 225
    :pswitch_0
    iget-object v1, p2, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/telephony/AdnRecord;->stringCompareEmails([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    .line 226
    goto :goto_0

    .line 229
    :pswitch_1
    iget-object v1, p2, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/telephony/AdnRecord;->stringCompareAnr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 230
    goto :goto_0

    .line 233
    :pswitch_2
    iget-object v1, p2, Lcom/android/internal/telephony/AdnRecord;->grp:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/AdnRecord;->grp:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/telephony/AdnRecord;->stringCompareAnr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 234
    goto :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private gasToByte(Ljava/lang/String;I)[B
    .locals 8
    .parameter "gas"
    .parameter "recordSize"

    .prologue
    .line 422
    new-array v3, p2, [B

    .line 424
    .local v3, gasByte:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p2, :cond_0

    .line 425
    const/4 v5, -0x1

    aput-byte v5, v3, v4

    .line 424
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 428
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 430
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->isAsciiStringToGsm8BitUnpackedField(Ljava/lang/String;)[B

    move-result-object v0

    .line 431
    .local v0, data:[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .end local v0           #data:[B
    :cond_1
    :goto_1
    return-object v3

    .line 432
    :catch_0
    move-exception v1

    .line 434
    .local v1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string/jumbo v5, "utf-16be"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 435
    .restart local v0       #data:[B
    const/4 v5, 0x0

    const/4 v6, 0x1

    array-length v7, v0

    invoke-static {v0, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    const/4 v5, 0x0

    const/16 v6, -0x80

    aput-byte v6, v3, v5
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 437
    .end local v0           #data:[B
    :catch_1
    move-exception v2

    .line 438
    .local v2, ex2:Ljava/io/UnsupportedEncodingException;
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v6, "gas convert byte exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getAnrNumGroup(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "anr"

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, pair:[Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnrNumGroup anr ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_0
    return-object v0
.end method

.method private getSubjectString(ILcom/android/internal/telephony/AdnRecord;)[Ljava/lang/String;
    .locals 2
    .parameter "type"
    .parameter "adn"

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, s1:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 261
    :goto_0
    return-object v0

    .line 250
    :pswitch_0
    iget-object v0, p2, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 251
    goto :goto_0

    .line 254
    :pswitch_1
    iget-object v1, p2, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->getAnrNumGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 255
    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getUpdateSubjectFlag(IILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)[I
    .locals 15
    .parameter "num"
    .parameter "type"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    .line 268
    const/4 v4, 0x0

    .line 269
    .local v4, flag:[I
    const/4 v7, 0x0

    .local v7, oldCount:I
    const/4 v6, 0x0

    .local v6, newCount:I
    const/4 v2, 0x0

    .local v2, count:I
    const/4 v5, 0x0

    .line 270
    .local v5, i:I
    const-string v8, ""

    .local v8, str1:Ljava/lang/String;
    const-string v9, ""

    .line 272
    .local v9, str2:Ljava/lang/String;
    const/4 v3, 0x0

    .line 274
    .local v3, efids:[I
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->getSubjectString(ILcom/android/internal/telephony/AdnRecord;)[Ljava/lang/String;

    move-result-object v10

    .line 275
    .local v10, strArr1:[Ljava/lang/String;
    move/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->getSubjectString(ILcom/android/internal/telephony/AdnRecord;)[Ljava/lang/String;

    move-result-object v11

    .line 277
    .local v11, strArr2:[Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 279
    array-length v7, v10

    .line 283
    :cond_0
    if-eqz v11, :cond_1

    .line 285
    array-length v6, v11

    .line 288
    :cond_1
    sget-object v12, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getUpdateSubjectFlag oldCount ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " newCount "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v12, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectEfids(II)[I

    move-result-object v3

    .line 290
    if-nez v3, :cond_2

    .line 291
    const/4 v12, 0x0

    .line 310
    :goto_0
    return-object v12

    .line 293
    :cond_2
    array-length v2, v3

    .line 294
    new-array v4, v2, [I

    .line 295
    sget-object v12, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getUpdateSubjectFlag count ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_6

    .line 298
    if-ge v5, v7, :cond_3

    aget-object v12, v10, v5

    if-eqz v12, :cond_3

    .line 299
    aget-object v8, v10, v5

    .line 302
    :cond_3
    if-ge v5, v6, :cond_4

    aget-object v12, v11, v5

    if-eqz v12, :cond_4

    .line 303
    aget-object v9, v11, v5

    .line 306
    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x0

    :goto_2
    aput v12, v4, v5

    .line 307
    sget-object v12, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getUpdateSubjectFlag flag[i] ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget v14, v4, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 306
    :cond_5
    const/4 v12, 0x1

    goto :goto_2

    :cond_6
    move-object v12, v4

    .line 310
    goto :goto_0
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 5
    .parameter
    .parameter "ar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1009
    .local p1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_1

    .line 1019
    :cond_0
    return-void

    .line 1013
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1014
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 1016
    .local v2, waiter:Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1017
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1013
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    .locals 2
    .parameter "response"
    .parameter "errCode"
    .parameter "errString"

    .prologue
    .line 160
    if-eqz p1, :cond_0

    .line 161
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookOperationException;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(ILjava/lang/String;)V

    .line 162
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 163
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 165
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private updateGrpOfAdn(Lcom/android/internal/telephony/AdnRecordLoader;IILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)V
    .locals 8
    .parameter "adnRecordLoader"
    .parameter "index"
    .parameter "recNum"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"

    .prologue
    .line 448
    const/4 v6, 0x2

    invoke-direct {p0, v6, p4, p5}, Lcom/android/internal/telephony/AdnRecordCache;->compareSubject(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 469
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-virtual {p5}, Lcom/android/internal/telephony/AdnRecord;->getGrp()Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, grp:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget v6, v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpCount:I

    new-array v0, v6, [B

    .line 455
    .local v0, data:[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v6, v0

    if-ge v5, v6, :cond_1

    .line 456
    const/4 v6, 0x0

    aput-byte v6, v0, v5

    .line 455
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 458
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 459
    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, groups:[Ljava/lang/String;
    const/4 v5, 0x0

    :goto_2
    array-length v6, v2

    if-ge v5, v6, :cond_2

    .line 461
    aget-object v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 462
    .local v1, groupId:I
    add-int/lit8 v6, v1, -0x1

    int-to-byte v7, v1

    aput-byte v7, v0, v6

    .line 460
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 465
    .end local v1           #groupId:I
    .end local v2           #groups:[Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const/16 v7, 0xc6

    invoke-virtual {v6, p3, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfIdByTag(II)I

    move-result v4

    .line 468
    .local v4, grpEfId:I
    invoke-virtual {p1, v4, p2, v0, p6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEFGrpToUsim(II[BLjava/lang/String;)V

    goto :goto_0
.end method

.method private updateSubjectOfAdn(IILcom/android/internal/telephony/AdnRecordLoader;IIILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)I
    .locals 49
    .parameter "type"
    .parameter "num"
    .parameter "adnRecordLoader"
    .parameter "adnNum"
    .parameter "index"
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "iapEF"
    .parameter "pin2"

    .prologue
    .line 474
    const/16 v44, 0x1

    .line 475
    .local v44, resultValue:I
    const/16 v46, 0x0

    .line 476
    .local v46, subjectNum:[I
    const/16 v43, 0x0

    .line 477
    .local v43, newAnr:Z
    const/16 v48, 0x0

    .line 482
    .local v48, updateSubjectFlag:[I
    const/4 v15, 0x0

    .local v15, m:I
    const/4 v9, 0x0

    .line 484
    .local v9, n:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectEfids(II)[I

    move-result-object v39

    .line 485
    .local v39, efids:[I
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Begin : updateSubjectOfAdn num ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " adnNum "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/AdnRecordCache;->compareSubject(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 488
    const/4 v5, 0x0

    .line 640
    :goto_0
    return v5

    .line 490
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->getUpdateSubjectFlag(IILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)[I

    move-result-object v48

    .line 491
    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v45, subjectEfids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v47, subjectNums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v48, :cond_1

    if-eqz v39, :cond_1

    move-object/from16 v0, v39

    array-length v5, v0

    if-nez v5, :cond_2

    .line 494
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 496
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectTagNumberInIap(II)[[I

    move-result-object v37

    .line 498
    .local v37, anrTagMap:[[I
    move-object/from16 v0, v39

    array-length v5, v0

    new-array v0, v5, [I

    move-object/from16 v46, v0

    .line 500
    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, v39

    array-length v5, v0

    if-ge v15, v5, :cond_e

    .line 501
    aget v5, v39, v15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v5, v0, v1, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSubjectRecordInIap(III)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 503
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateSubjectOfAdn  in iap  "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/16 v20, 0x0

    .line 506
    .local v20, record:[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getIapFileRecord(I)Ljava/util/ArrayList;

    move-result-object v42

    .line 507
    .local v42, mIapFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-eqz v42, :cond_3

    .line 508
    add-int/lit8 v5, p5, -0x1

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [B

    move-object/from16 v20, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v42           #mIapFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    :goto_2
    if-nez v37, :cond_4

    .line 521
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    add-int/lit8 v9, v9, 0x1

    .line 500
    .end local v20           #record:[B
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 510
    .restart local v20       #record:[B
    .restart local v42       #mIapFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    :cond_3
    :try_start_1
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateSubjectOfAdn mIapFileRecord == null "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 512
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 515
    .end local v42           #mIapFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    :catch_0
    move-exception v38

    .line 516
    .local v38, e:Ljava/lang/IndexOutOfBoundsException;
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 525
    .end local v38           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    if-eqz v20, :cond_6

    .line 526
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subjectNumberInIap ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v37, v15

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    aget-object v5, v37, v15

    const/4 v6, 0x1

    aget v5, v5, v6

    aget-byte v5, v20, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v46, v15

    .line 528
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subjectNumber ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v46, v15

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    aget v5, v46, v15

    const/16 v6, 0xff

    if-ne v5, v6, :cond_5

    const/4 v5, -0x1

    :goto_4
    aput v5, v46, v15

    .line 531
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subjectNum[m] ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v46, v15

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :goto_5
    const/16 v41, 0x0

    .line 538
    .local v41, isFull:Z
    aget v5, v46, v15

    const/4 v6, -0x1

    if-ne v5, v6, :cond_7

    aget v5, v48, v15

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 540
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    aget-object v6, v37, v15

    const/4 v7, 0x0

    aget v8, v6, v7

    const/4 v11, 0x1

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getNewSubjectNumber(IIIIIZ)I

    move-result v5

    aput v5, v46, v15

    .line 542
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "newSubjectNum[m] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v46, v15

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    aget v5, v46, v15

    const/4 v6, -0x1

    if-ne v5, v6, :cond_7

    .line 544
    const/16 v41, 0x1

    .line 545
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateSubjectOfAdn   is full  "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    add-int/lit8 v9, v9, 0x1

    .line 547
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    const/16 v44, -0x1

    .line 550
    goto/16 :goto_3

    .line 529
    .end local v41           #isFull:Z
    :cond_5
    aget v5, v46, v15

    goto :goto_4

    .line 533
    :cond_6
    const/4 v5, -0x1

    aput v5, v46, v15

    .line 534
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subjectNum[m] ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v46, v15

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 553
    .restart local v41       #isFull:Z
    :cond_7
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateSubjectOfAdn   subjectNum  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v46, v15

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateSubjectOfAdn   updateSubjectFlag  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v48, v15

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "subjectNum[m] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v46, v15

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    aget v5, v48, v15

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    aget v5, v46, v15

    const/4 v6, -0x1

    if-eq v5, v6, :cond_9

    .line 561
    aget v5, v46, v15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    :goto_6
    aget v5, v48, v15

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    move-object/from16 v10, p0

    move/from16 v11, p2

    move/from16 v12, p1

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    .line 567
    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/AdnRecordCache;->isCleanRecord(IILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 568
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " clean anrTagMap[m][0]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v37, v15

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    aget-object v6, v37, v15

    const/4 v7, 0x0

    aget v8, v6, v7

    aget v10, v46, v15

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeSubjectNumFromSet(IIIII)V

    .line 572
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    add-int/lit8 v6, p5, -0x1

    const/4 v7, -0x1

    aget-object v8, v37, v15

    const/4 v10, 0x1

    aget v8, v8, v10

    move/from16 v0, p2

    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setIapFileRecord(IIBI)V

    .line 574
    aget-object v5, v37, v15

    const/4 v6, 0x1

    aget v5, v5, v6

    const/4 v6, -0x1

    aput-byte v6, v20, v5

    .line 584
    :goto_7
    aget-object v5, v37, v15

    const/4 v6, 0x0

    aget v5, v5, v6

    if-lez v5, :cond_8

    .line 585
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "begin to update IAP ---IAP id  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "iapEF "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance p3, Lcom/android/internal/telephony/AdnRecordLoader;

    .end local p3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p3

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    .line 588
    .restart local p3
    const/16 v22, 0x0

    move-object/from16 v16, p3

    move-object/from16 v17, p8

    move/from16 v18, p9

    move/from16 v19, p5

    move-object/from16 v21, p10

    invoke-virtual/range {v16 .. v22}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEFIapToUsim(Lcom/android/internal/telephony/AdnRecord;II[BLjava/lang/String;Landroid/os/Message;)V

    .line 592
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 593
    goto/16 :goto_3

    .line 563
    :cond_9
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 576
    :cond_a
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  anrTagMap[m][0]     "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v37, v15

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    add-int/lit8 v6, p5, -0x1

    aget v7, v46, v15

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aget-object v8, v37, v15

    const/4 v10, 0x1

    aget v8, v8, v10

    move/from16 v0, p2

    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setIapFileRecord(IIBI)V

    .line 581
    aget-object v5, v37, v15

    const/4 v6, 0x1

    aget v5, v5, v6

    aget v6, v46, v15

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v20, v5

    goto/16 :goto_7

    .line 594
    .end local v20           #record:[B
    .end local v41           #isFull:Z
    :cond_b
    aget v5, v48, v15

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v21, v0

    aget v24, v39, v15

    const/16 v25, 0x0

    const/16 v27, 0x0

    move/from16 v22, p1

    move/from16 v23, p2

    move/from16 v26, p5

    invoke-virtual/range {v21 .. v27}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getNewSubjectNumber(IIIIIZ)I

    move-result v5

    move/from16 v0, p5

    if-ne v5, v0, :cond_c

    .line 598
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 601
    :cond_c
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateSubjectOfAdn fail to get  new subject "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/16 v44, -0x1

    goto/16 :goto_3

    .line 607
    :cond_d
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateSubjectOfAdn don\'t need to update subject "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/16 v44, 0x0

    goto/16 :goto_3

    .line 615
    :cond_e
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " END :updateSubjectOfAdn  updateSubjectOfAdn efids is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " subjectNums "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/16 v40, 0x0

    .local v40, i:I
    :goto_8
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v40

    if-ge v0, v5, :cond_11

    .line 618
    move-object/from16 v0, v47

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_10

    .line 619
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v24, toUpdateNums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .local v27, toUpdateIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .local v23, toUpdateEfids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, v45

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    move-object/from16 v0, v47

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    new-instance p3, Lcom/android/internal/telephony/AdnRecordLoader;

    .end local p3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p3

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    .line 626
    .restart local p3
    if-nez p1, :cond_f

    const/4 v5, 0x1

    move/from16 v0, v44

    if-ne v0, v5, :cond_f

    .line 628
    const/16 v29, 0x0

    move-object/from16 v21, p3

    move-object/from16 v22, p8

    move/from16 v25, p6

    move/from16 v26, p5

    move-object/from16 v28, p10

    invoke-virtual/range {v21 .. v29}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEFEmailToUsim(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/lang/String;Landroid/os/Message;)V

    .line 632
    :cond_f
    const/4 v5, 0x1

    move/from16 v0, p1

    if-ne v0, v5, :cond_10

    .line 633
    const/16 v36, 0x0

    move-object/from16 v28, p3

    move-object/from16 v29, p8

    move-object/from16 v30, v23

    move/from16 v31, p6

    move/from16 v32, p5

    move-object/from16 v33, v24

    move-object/from16 v34, v27

    move-object/from16 v35, p10

    invoke-virtual/range {v28 .. v36}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEFAnrToUsim(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/Message;)V

    .line 617
    .end local v23           #toUpdateEfids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24           #toUpdateNums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27           #toUpdateIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_10
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_8

    .line 639
    :cond_11
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateSubjectOfAdnForResult:resultValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v5, v44

    .line 640
    goto/16 :goto_0
.end method


# virtual methods
.method extensionEfForEf(I)I
    .locals 1
    .parameter "efid"

    .prologue
    const/16 v0, 0x6f4a

    .line 148
    sparse-switch p1, :sswitch_data_0

    .line 155
    const/4 v0, -0x1

    :goto_0
    :sswitch_0
    return v0

    .line 149
    :sswitch_1
    const/16 v0, 0x6fc8

    goto :goto_0

    .line 151
    :sswitch_2
    const/16 v0, 0x6f4c

    goto :goto_0

    .line 152
    :sswitch_3
    const/16 v0, 0x6f4b

    goto :goto_0

    .line 154
    :sswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_4
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_2
        0x6fc7 -> :sswitch_1
    .end sparse-switch
.end method

.method public getAdnIndex(ILcom/android/internal/telephony/AdnRecord;)I
    .locals 7
    .parameter "efid"
    .parameter "oldAdn"

    .prologue
    .line 835
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 836
    .local v3, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    const-string v4, "AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAdnIndex efid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    if-nez v3, :cond_1

    .line 839
    const/4 v1, -0x1

    .line 852
    :cond_0
    :goto_0
    return v1

    .line 841
    :cond_1
    const-string v4, "AdnRecordCache"

    const-string/jumbo v5, "updateAdnBySearch (2)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/4 v1, -0x1

    .line 843
    .local v1, index:I
    const/4 v0, 0x1

    .line 844
    .local v0, count:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 845
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/AdnRecord;->isEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 846
    move v1, v0

    .line 847
    goto :goto_0

    .line 849
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getAdnLikeSize()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getRecordsIfLoaded(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 1031
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1034
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1035
    .local v4, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 1038
    .local v5, efid:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 1039
    .local v12, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->delete(I)V

    .line 1041
    iget-object v13, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v13, :cond_1

    .line 1042
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    iget-object v13, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v14, v5, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1044
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4}, Lcom/android/internal/telephony/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1047
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v5           #efid:I
    .end local v12           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1048
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 1049
    .restart local v5       #efid:I
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    .line 1050
    .local v7, index:I
    iget-object v13, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/AdnRecord;

    move-object v1, v13

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    .line 1051
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    sget-object v13, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AdnRecordCache:EVENT_UPDATE_ADN_DONE:mInsertId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-object v13, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 1053
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    invoke-virtual {v1, v13}, Lcom/android/internal/telephony/AdnRecord;->setRecordNumber(I)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    add-int/lit8 v14, v7, -0x1

    invoke-virtual {v13, v14, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1056
    :cond_2
    const-string v13, "AdnRecordCache"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "efid"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Message;

    .line 1058
    .local v11, response:Landroid/os/Message;
    const-string v13, "AdnRecordCache"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "response"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "index "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->delete(I)V

    .line 1064
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v11, v13, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1065
    const-string v13, "AdnRecordCache"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "response"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "index "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "target "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1071
    .end local v1           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v5           #efid:I
    .end local v7           #index:I
    .end local v11           #response:Landroid/os/Message;
    :pswitch_2
    const-string v13, "AdnRecordCache"

    const-string v14, "EVENT_UPDATE_USIM_ADN_DONE"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1073
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 1074
    .restart local v5       #efid:I
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    .line 1075
    .restart local v7       #index:I
    iget-object v13, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/AdnRecord;

    move-object v1, v13

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    .line 1076
    .restart local v1       #adn:Lcom/android/internal/telephony/AdnRecord;
    const/4 v10, -0x1

    .line 1077
    .local v10, recNum:I
    const/4 v9, 0x0

    .local v9, num:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getNumRecs()I

    move-result v13

    if-ge v9, v13, :cond_4

    .line 1078
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v13, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findEFInfo(I)I

    move-result v2

    .line 1079
    .local v2, adnEF:I
    if-ne v5, v2, :cond_3

    .line 1080
    move v10, v9

    .line 1077
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1083
    .end local v2           #adnEF:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdnRecordSizeArray()[I

    move-result-object v8

    .line 1086
    .local v8, mAdnRecordSizeArray:[I
    const/4 v13, -0x1

    if-eq v10, v13, :cond_0

    .line 1089
    add-int/lit8 v3, v7, -0x1

    .line 1090
    .local v3, adnRecNum:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v10, :cond_5

    .line 1091
    aget v13, v8, v6

    add-int/2addr v3, v13

    .line 1090
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1093
    :cond_5
    sget-object v13, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AdnRecordCache:EVENT_UPDATE_USIM_ADN_DONE:mInsertId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "adnRecNum = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v13, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 1096
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    invoke-virtual {v1, v13}, Lcom/android/internal/telephony/AdnRecord;->setRecordNumber(I)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v13, v3, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setPhoneBookRecords(ILcom/android/internal/telephony/AdnRecord;)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    add-int/lit8 v14, v7, -0x1

    invoke-virtual {v13, v14, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1099
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/AdnRecordCache;->updateOthers:Z

    .line 1104
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Message;

    .line 1105
    .restart local v11       #response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->delete(I)V

    .line 1107
    const/4 v13, 0x0

    iget-object v14, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v11, v13, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1108
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 1110
    const-string v13, "AdnRecordCache"

    const-string v14, "EVENT_UPDATE_USIM_ADN_DONE finish"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1101
    .end local v11           #response:Landroid/os/Message;
    :cond_6
    const-string v13, "GSM"

    const-string v14, " fail to Update Usim Adn"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1031
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method isCleanRecord(IILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;I)Z
    .locals 13
    .parameter "num"
    .parameter "type"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "index"

    .prologue
    .line 316
    const/4 v5, 0x0

    .local v5, oldCount:I
    const/4 v4, 0x0

    .local v4, newCount:I
    const/4 v1, 0x0

    .local v1, count:I
    const/4 v3, 0x0

    .line 319
    .local v3, i:I
    const/4 v2, 0x0

    .line 321
    .local v2, efids:[I
    move-object/from16 v0, p3

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/AdnRecordCache;->getSubjectString(ILcom/android/internal/telephony/AdnRecord;)[Ljava/lang/String;

    move-result-object v8

    .line 322
    .local v8, strArr1:[Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/AdnRecordCache;->getSubjectString(ILcom/android/internal/telephony/AdnRecord;)[Ljava/lang/String;

    move-result-object v9

    .line 324
    .local v9, strArr2:[Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 326
    array-length v5, v8

    .line 330
    :cond_0
    if-eqz v9, :cond_1

    .line 332
    array-length v4, v9

    .line 335
    :cond_1
    sget-object v10, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isCleanRecord oldCount ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " newCount "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v10, p2, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectEfids(II)[I

    move-result-object v2

    .line 337
    if-nez v2, :cond_2

    .line 338
    const/4 v10, 0x0

    .line 367
    :goto_0
    return v10

    .line 340
    :cond_2
    array-length v1, v2

    .line 342
    sget-object v10, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isCleanRecord count ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_6

    .line 346
    if-ge v3, v5, :cond_3

    .line 347
    aget-object v6, v8, v3

    .line 353
    .local v6, str1:Ljava/lang/String;
    :goto_2
    if-ge v3, v4, :cond_4

    .line 354
    aget-object v7, v9, v3

    .line 360
    .local v7, str2:Ljava/lang/String;
    :goto_3
    move/from16 v0, p5

    if-ne v0, v3, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 363
    const/4 v10, 0x1

    goto :goto_0

    .line 350
    .end local v6           #str1:Ljava/lang/String;
    .end local v7           #str2:Ljava/lang/String;
    :cond_3
    const-string v6, ""

    .restart local v6       #str1:Ljava/lang/String;
    goto :goto_2

    .line 357
    :cond_4
    const-string v7, ""

    .restart local v7       #str2:Ljava/lang/String;
    goto :goto_3

    .line 344
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 367
    .end local v6           #str1:Ljava/lang/String;
    .end local v7           #str2:Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public loadGasFromUsim()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadGasFromUsim()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public requestLoadAllAdnLike(IILandroid/os/Message;)V
    .locals 6
    .parameter "efid"
    .parameter "extensionEf"
    .parameter "response"

    .prologue
    const/16 v3, 0x4f30

    .line 936
    if-ne p1, v3, :cond_3

    .line 937
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v0

    .line 946
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_0
    :goto_0
    if-ne p1, v3, :cond_1

    if-nez v0, :cond_1

    .line 947
    const/16 p1, 0x6f3a

    .line 948
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "pbr is empty,read adn"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 950
    if-eqz v0, :cond_1

    .line 951
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 952
    const/4 v0, 0x0

    .line 957
    :cond_1
    if-eqz v0, :cond_4

    .line 958
    if-eqz p3, :cond_2

    .line 959
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 960
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1002
    :cond_2
    :goto_1
    return-void

    .line 939
    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 940
    .restart local v0       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 942
    const/4 v0, 0x0

    goto :goto_0

    .line 968
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 970
    .local v1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v1, :cond_5

    .line 974
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 980
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 981
    .restart local v1       #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 985
    if-gez p2, :cond_7

    .line 988
    if-eqz p3, :cond_6

    .line 989
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 991
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 993
    :cond_6
    const-string v2, "AdnRecordCache"

    const-string v3, " extensionEf < 0 "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 997
    :cond_7
    const-string v2, "AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestLoadAllAdnLike efid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto/16 :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "reset adnLikeFiles"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->reset()V

    .line 108
    invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecordCache;->clearWaiters()V

    .line 109
    invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecordCache;->clearUserWriters()V

    .line 111
    return-void
.end method

.method public updateAdnByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "efid"
    .parameter "adn"
    .parameter "recordIndex"
    .parameter "pin2"
    .parameter "response"

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->extensionEfForEf(I)I

    move-result v3

    .line 181
    .local v3, extensionEF:I
    if-gez v3, :cond_0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF is not known ADN-like EF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v2, v0}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    .line 203
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    .line 188
    .local v7, pendingResponse:Landroid/os/Message;
    if-eqz v7, :cond_1

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Have pending update for EF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v2, v0}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    .line 200
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, p3, p2}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v1, p2

    move v2, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public updateAdnBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 12
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 874
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    .line 876
    .local v4, extensionEF:I
    if-gez v4, :cond_0

    .line 877
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF is not known ADN-like EF:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    .line 924
    :goto_0
    return-void

    .line 883
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 885
    .local v10, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    if-nez v10, :cond_1

    .line 886
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adn list not exist for EF:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_0

    .line 891
    :cond_1
    const/4 v5, -0x1

    .line 892
    .local v5, index:I
    const/4 v8, 0x1

    .line 893
    .local v8, count:I
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 894
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/AdnRecord;->isEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 895
    move v5, v8

    .line 896
    iput v5, p0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    .line 902
    :cond_2
    const/4 v1, -0x1

    if-ne v5, v1, :cond_4

    .line 903
    const/4 v1, -0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adn record don\'t exist for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_0

    .line 899
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 908
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Message;

    .line 910
    .local v11, pendingResponse:Landroid/os/Message;
    if-eqz v11, :cond_5

    .line 911
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have pending update for EF:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_0

    .line 915
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p5

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 921
    new-instance v1, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1, v5, p3}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move-object v2, p3

    move v3, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public updateGasByIndex(Ljava/lang/String;I)Z
    .locals 5
    .parameter "newGas"
    .parameter "groupId"

    .prologue
    const/4 v3, 0x0

    .line 410
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findEFGasInfo()I

    move-result v1

    .line 411
    .local v1, gasEfId:I
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getRecordsSize(I)[I

    move-result-object v2

    .line 412
    .local v2, gasSize:[I
    if-nez v2, :cond_0

    .line 417
    :goto_0
    return v3

    .line 414
    :cond_0
    aget v3, v2, v3

    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/AdnRecordCache;->gasToByte(Ljava/lang/String;I)[B

    move-result-object v0

    .line 415
    .local v0, data:[B
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v1, p2, v0, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEFGasToUsim(II[BLjava/lang/String;)V

    .line 416
    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateGasList(Ljava/lang/String;I)V

    .line 417
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public updateGasBySearch(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "oldGas"
    .parameter "newGas"

    .prologue
    const/4 v7, -0x1

    .line 376
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadGasFromUsim()Ljava/util/ArrayList;

    move-result-object v6

    .line 378
    .local v6, oldGasList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v6, :cond_0

    .line 379
    sget-object v8, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Gas list not exist"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 405
    :goto_0
    return v4

    .line 383
    :cond_0
    const/4 v4, -0x1

    .line 384
    .local v4, index:I
    const/4 v0, 0x1

    .line 385
    .local v0, count:I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 386
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 387
    move v4, v0

    .line 393
    :cond_1
    if-ne v4, v7, :cond_3

    .line 394
    sget-object v8, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Gas record don\'t exist for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 395
    goto :goto_0

    .line 390
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 398
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findEFGasInfo()I

    move-result v2

    .line 399
    .local v2, gasEfId:I
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getRecordsSize(I)[I

    move-result-object v3

    .line 400
    .local v3, gasSize:[I
    if-nez v3, :cond_4

    move v4, v7

    goto :goto_0

    .line 402
    :cond_4
    const/4 v7, 0x0

    aget v7, v3, v7

    invoke-direct {p0, p2, v7}, Lcom/android/internal/telephony/AdnRecordCache;->gasToByte(Ljava/lang/String;I)[B

    move-result-object v1

    .line 403
    .local v1, data:[B
    new-instance v7, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v4, v1, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEFGasToUsim(II[BLjava/lang/String;)V

    .line 404
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v7, p2, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateGasList(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public declared-synchronized updateUSIMAdnByIndex(IILcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 26
    .parameter "efid"
    .parameter "simIndex"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 646
    monitor-enter p0

    const/16 v21, 0x0

    .line 647
    .local v21, extensionEF:I
    const/4 v8, -0x1

    .line 648
    .local v8, adnIndex:I
    const/4 v12, 0x0

    .line 650
    .local v12, iapEF:I
    const/4 v5, 0x0

    .line 653
    .local v5, recNum:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getNumRecs()I

    move-result v24

    .line 654
    .local v24, pbrRecNum:I
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateUSIMAdnByIndex efid "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " RecsNum: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getNumRecs()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "simIndex: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    if-ltz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPhoneBookRecordsNum()I

    move-result v3

    move/from16 v0, p2

    if-le v0, v3, :cond_1

    .line 659
    :cond_0
    const/4 v3, 0x0

    const-string/jumbo v4, "the sim index is invalid"

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    :goto_0
    monitor-exit p0

    return-void

    .line 664
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    const/4 v4, 0x0

    aget v20, v3, v4

    .line 665
    .local v20, baseNum:I
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "baseNum="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " simIndex="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 667
    move/from16 v0, p2

    move/from16 v1, v20

    if-gt v0, v1, :cond_4

    .line 668
    move/from16 v5, v22

    .line 669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    aget v3, v3, v22

    sub-int v20, v20, v3

    .line 674
    :cond_2
    sub-int v8, p2, v20

    .line 675
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    .line 677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findEFInfo(I)I

    move-result p1

    .line 678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findExtensionEFInfo(I)I

    move-result v21

    .line 680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findEFIapInfo(I)I

    move-result v12

    .line 682
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adn efid:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "  extensionEF:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "  iapEF:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    if-ltz p1, :cond_3

    if-gez v21, :cond_5

    .line 686
    :cond_3
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EF is not known ADN-like EF:efid"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",extensionEF="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 646
    .end local v20           #baseNum:I
    .end local v22           #i:I
    .end local v24           #pbrRecNum:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 672
    .restart local v20       #baseNum:I
    .restart local v22       #i:I
    .restart local v24       #pbrRecNum:I
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    add-int/lit8 v4, v22, 0x1

    aget v3, v3, v4

    add-int v20, v20, v3

    .line 666
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 692
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v23

    .line 693
    .local v23, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    if-nez v23, :cond_6

    .line 694
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adn list not exist for EF:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 698
    :cond_6
    add-int/lit8 v3, v8, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/AdnRecord;

    .line 700
    .local v10, oldAdn:Lcom/android/internal/telephony/AdnRecord;
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "recNum: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " simIndex:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " adnIndex:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " mInsertId:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " oldAdn:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/Message;

    .line 704
    .local v25, pendingResponse:Landroid/os/Message;
    if-eqz v25, :cond_7

    .line 705
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Have pending update for EF:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 710
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 711
    new-instance v6, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v6, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    .line 713
    .local v6, adnRecordLoader:Lcom/android/internal/telephony/AdnRecordLoader;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    move-object/from16 v3, p0

    move/from16 v9, p1

    move-object/from16 v11, p3

    move-object/from16 v13, p4

    invoke-direct/range {v3 .. v13}, Lcom/android/internal/telephony/AdnRecordCache;->updateSubjectOfAdn(IILcom/android/internal/telephony/AdnRecordLoader;IIILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)I

    .line 715
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    move-object/from16 v3, p0

    move/from16 v9, p1

    move-object/from16 v11, p3

    move-object/from16 v13, p4

    invoke-direct/range {v3 .. v13}, Lcom/android/internal/telephony/AdnRecordCache;->updateSubjectOfAdn(IILcom/android/internal/telephony/AdnRecordLoader;IIILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)I

    move-object/from16 v13, p0

    move-object v14, v6

    move v15, v8

    move/from16 v16, v5

    move-object/from16 v17, v10

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    .line 718
    invoke-direct/range {v13 .. v19}, Lcom/android/internal/telephony/AdnRecordCache;->updateGrpOfAdn(Lcom/android/internal/telephony/AdnRecordLoader;IILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)V

    .line 720
    const/4 v3, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v1, v8, v2}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    move-object v13, v6

    move-object/from16 v14, p3

    move/from16 v15, p1

    move/from16 v16, v21

    move/from16 v17, v8

    move-object/from16 v18, p4

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEFAdnToUsim(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 724
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateUSIMAdnByIndex  finish"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized updateUSIMAdnBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 31
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 730
    monitor-enter p0

    const/16 v22, 0x0

    .line 731
    .local v22, extensionEF:I
    const/4 v8, -0x1

    .line 732
    .local v8, index:I
    const/16 v21, 0x0

    .line 733
    .local v21, emailEF:I
    const/4 v12, 0x0

    .line 734
    .local v12, iapEF:I
    const/4 v5, 0x0

    .line 735
    .local v5, recNum:I
    const/16 v25, 0x0

    .line 737
    .local v25, iapRecNum:I
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateUSIMAdnBySearch efid "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/16 v27, 0x0

    .local v27, num:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getNumRecs()I

    move-result v3

    move/from16 v0, v27

    if-ge v0, v3, :cond_9

    .line 740
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findEFInfo(I)I

    move-result p1

    .line 741
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findExtensionEFInfo(I)I

    move-result v22

    .line 742
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findEFIapInfo(I)I

    move-result v12

    .line 743
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "efid : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "extensionEF :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " iapEF:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    if-ltz p1, :cond_0

    if-gez v22, :cond_1

    .line 746
    :cond_0
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EF is not known ADN-like EF:efid"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",extensionEF="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    :goto_1
    monitor-exit p0

    return-void

    .line 751
    :cond_1
    :try_start_1
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateUSIMAdnBySearch (1)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "efid is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v28

    .line 755
    .local v28, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    if-nez v28, :cond_2

    .line 756
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adn list not exist for EF:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 730
    .end local v27           #num:I
    .end local v28           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 760
    .restart local v27       #num:I
    .restart local v28       #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_2
    :try_start_2
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateUSIMAdnBySearch (2)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "oldAdnList="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const/16 v20, 0x1

    .line 763
    .local v20, count:I
    const/16 v23, 0x0

    .line 764
    .local v23, find_index:Z
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_2
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 765
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/AdnRecord;->isEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 766
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "we got the index "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/16 v23, 0x1

    .line 768
    move/from16 v8, v20

    .line 769
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    .line 775
    :cond_3
    if-eqz v23, :cond_7

    .line 776
    const/16 v23, 0x0

    .line 777
    move/from16 v5, v27

    .line 778
    const/16 v24, 0x0

    .local v24, i:I
    :goto_3
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 779
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    aget v4, v4, v24

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    .line 778
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 772
    .end local v24           #i:I
    :cond_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 781
    .restart local v24       #i:I
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateUSIMAdnBySearch (3)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mInsertId"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    new-instance v6, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v6, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    .line 786
    .local v6, adnRecordLoader:Lcom/android/internal/telephony/AdnRecordLoader;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    move-object/from16 v3, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p4

    invoke-direct/range {v3 .. v13}, Lcom/android/internal/telephony/AdnRecordCache;->updateSubjectOfAdn(IILcom/android/internal/telephony/AdnRecordLoader;IIILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)I

    move-result v30

    .line 789
    .local v30, updateEmailResult:I
    const/4 v3, -0x1

    move/from16 v0, v30

    if-ne v0, v3, :cond_8

    .line 792
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getNumRecs()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v5, v3, :cond_6

    .line 793
    const/4 v3, -0x1

    const-string v4, "Email capacity full"

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 797
    :cond_6
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v4, "in the first pbr,no subject found, search in the second pbr"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/16 v23, 0x0

    .line 738
    .end local v6           #adnRecordLoader:Lcom/android/internal/telephony/AdnRecordLoader;
    .end local v24           #i:I
    .end local v30           #updateEmailResult:I
    :cond_7
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0

    .line 803
    .restart local v6       #adnRecordLoader:Lcom/android/internal/telephony/AdnRecordLoader;
    .restart local v24       #i:I
    .restart local v30       #updateEmailResult:I
    :cond_8
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    move-object/from16 v3, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p4

    invoke-direct/range {v3 .. v13}, Lcom/android/internal/telephony/AdnRecordCache;->updateSubjectOfAdn(IILcom/android/internal/telephony/AdnRecordLoader;IIILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)I

    move-object/from16 v13, p0

    move-object v14, v6

    move v15, v8

    move/from16 v16, v5

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    .line 805
    invoke-direct/range {v13 .. v19}, Lcom/android/internal/telephony/AdnRecordCache;->updateGrpOfAdn(Lcom/android/internal/telephony/AdnRecordLoader;IILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)V

    .line 807
    const/4 v3, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v1, v8, v2}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    move-object v13, v6

    move-object/from16 v14, p3

    move/from16 v15, p1

    move/from16 v16, v22

    move/from16 v17, v8

    move-object/from16 v18, p4

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEFAdnToUsim(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 810
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateUSIMAdnBySearch  finish"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    .end local v6           #adnRecordLoader:Lcom/android/internal/telephony/AdnRecordLoader;
    .end local v20           #count:I
    .end local v23           #find_index:Z
    .end local v24           #i:I
    .end local v26           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    .end local v28           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    .end local v30           #updateEmailResult:I
    :cond_9
    const/4 v3, -0x1

    if-ne v8, v3, :cond_a

    .line 815
    const/4 v3, -0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adn record don\'t exist for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 820
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/Message;

    .line 821
    .local v29, pendingResponse:Landroid/os/Message;
    if-eqz v29, :cond_b

    .line 822
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Have pending update for EF:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 826
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method
