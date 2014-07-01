.class public Lcom/android/internal/telephony/AdnRecordLoader;
.super Lcom/android/internal/telephony/IccThreadHandler;
.source "AdnRecordLoader.java"


# static fields
.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x3

.field static final EVENT_ADN_LOAD_DONE:I = 0x1

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x4

.field static final EVENT_EF_PBR_AAS_LINEAR_RECORD_SIZE_DONE:I = 0xb

.field static final EVENT_EF_PBR_ANR_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field static final EVENT_EF_PBR_EMAIL_LINEAR_RECORD_SIZE_DONE:I = 0x6

.field static final EVENT_EF_PBR_GAS_LINEAR_RECORD_SIZE_DONE:I = 0xd

.field static final EVENT_EF_PBR_GRP_LINEAR_RECORD_SIZE_DONE:I = 0xc

.field static final EVENT_EF_PBR_IAP_LINEAR_RECORD_SIZE_DONE:I = 0x7

.field static final EVENT_EF_PBR_SNE_LINEAR_RECORD_SIZE_DONE:I = 0x9

.field static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x2

.field static final EVENT_UPDATE_AAS_RECORD_DONE:I = 0xe

.field static final EVENT_UPDATE_ANR_RECORD_DONE:I = 0xa

.field static final EVENT_UPDATE_GAS_RECORD_DONE:I = 0x11

.field static final EVENT_UPDATE_GRP_RECORD_DONE:I = 0x10

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x5

.field static final EVENT_UPDATE_SNE_RECORD_DONE:I = 0xf

.field static LOG_TAG:Ljava/lang/String;


# instance fields
.field aasEF:I

.field aasNum:I

.field adnNum:I

.field adns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field anrEfIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field anrNums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field anrefids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field ef:I

.field emailEF:I

.field emailEfIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field emailEfids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field emailNum:I

.field emailNumInIap:I

.field emailNums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field emailTagInIap:I

.field extensionEF:I

.field fileCount:I

.field gasEF:I

.field grpEF:I

.field iapEF:I

.field iapRec:[B

.field private mFh:Lcom/android/internal/telephony/IccFileHandler;

.field pendingExtLoads:I

.field phone:Lcom/android/internal/telephony/PhoneBase;

.field pin2:Ljava/lang/String;

.field recordNumber:I

.field result:Ljava/lang/Object;

.field sneEF:I

.field userResponse:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 0
    .parameter "fh"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/internal/telephony/IccThreadHandler;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/internal/telephony/IccThreadHandler;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 107
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 108
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    .line 109
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 304
    :try_start_0
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Lcom/android/internal/telephony/IccPhoneBookOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    packed-switch v1, :pswitch_data_0

    .line 616
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    if-nez v1, :cond_1

    .line 617
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 620
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 621
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 623
    :cond_1
    :goto_1
    return-void

    .line 306
    :pswitch_1
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdnRecordLoader handle EVENT_EF_LINEAR_RECORD_SIZE_DONE, ef:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 308
    .local v8, ar:Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v7, v0

    .line 310
    .local v7, adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 311
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookOperationException;

    const/4 v2, 0x0

    const-string v3, "get EF record size failed"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catch Lcom/android/internal/telephony/IccPhoneBookOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 591
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v11

    .line 592
    .local v11, exc:Lcom/android/internal/telephony/IccPhoneBookOperationException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 593
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 595
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 598
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_1

    .line 317
    .end local v11           #exc:Lcom/android/internal/telephony/IccPhoneBookOperationException;
    .restart local v7       #adn:Lcom/android/internal/telephony/AdnRecord;
    .restart local v8       #ar:Landroid/os/AsyncResult;
    :cond_2
    :try_start_2
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object v13, v0

    .line 323
    .local v13, recordSize:[I
    array-length v1, v13

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    const/4 v2, 0x2

    aget v2, v13, v2

    if-le v1, v2, :cond_4

    .line 324
    :cond_3
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookOperationException;

    const/4 v2, 0x0

    const-string v3, "get wrong EF record size format"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Lcom/android/internal/telephony/IccPhoneBookOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 601
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #ar:Landroid/os/AsyncResult;
    .end local v13           #recordSize:[I
    :catch_1
    move-exception v10

    .line 602
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 603
    new-instance v11, Lcom/android/internal/telephony/IccPhoneBookOperationException;

    const/4 v1, 0x0

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v1, v2}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(ILjava/lang/String;)V

    .line 605
    .restart local v11       #exc:Lcom/android/internal/telephony/IccPhoneBookOperationException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 606
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 608
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 611
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    goto/16 :goto_1

    .line 330
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #exc:Lcom/android/internal/telephony/IccPhoneBookOperationException;
    .restart local v7       #adn:Lcom/android/internal/telephony/AdnRecord;
    .restart local v8       #ar:Landroid/os/AsyncResult;
    .restart local v13       #recordSize:[I
    :cond_4
    const/4 v1, 0x0

    :try_start_3
    aget v1, v13, v1

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/AdnRecord;->buildAdnString(I)[B
    :try_end_3
    .catch Lcom/android/internal/telephony/IccPhoneBookOperationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    .line 336
    .local v4, data:[B
    :try_start_4
    const-string v1, "AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recordNumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 343
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 331
    .end local v4           #data:[B
    :catch_2
    move-exception v10

    .line 333
    .local v10, e:Lcom/android/internal/telephony/IccPhoneBookOperationException;
    throw v10

    .line 346
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #ar:Landroid/os/AsyncResult;
    .end local v10           #e:Lcom/android/internal/telephony/IccPhoneBookOperationException;
    .end local v13           #recordSize:[I
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 347
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    .line 348
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookOperationException;

    const/4 v2, 0x0

    const-string/jumbo v3, "update EF adn record failed"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 353
    :cond_5
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 354
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 357
    .end local v8           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 358
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v4, v0

    .line 360
    .restart local v4       #data:[B
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    .line 361
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookOperationException;

    const/4 v2, -0x5

    const-string v3, "adn load failed"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 365
    :cond_6
    new-instance v7, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    invoke-direct {v7, v1, v2, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 366
    .restart local v7       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 368
    invoke-virtual {v7}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 379
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    iget v3, v7, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 385
    .end local v4           #data:[B
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 386
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v4, v0

    .line 387
    .restart local v4       #data:[B
    iget-object v1, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v7, v0

    .line 389
    .restart local v7       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    .line 390
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookOperationException;

    const/4 v2, -0x5

    const-string v3, "ext1 load failed"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 394
    :cond_7
    sget-object v1, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADN extension EF: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/AdnRecord;->appendExtRecord([B)V

    .line 401
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 407
    .end local v4           #data:[B
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    sget-object v1, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdnRecordLoader handle EVENT_ADN_LOAD_ALL_DONE, ef:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 409
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v9, v0

    .line 411
    .local v9, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_8

    .line 412
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookOperationException;

    const/4 v2, -0x5

    const-string v3, "load all adn failed"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 416
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    .line 417
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 418
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 420
    const/4 v12, 0x0

    .local v12, i:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    .local v14, s:I
    :goto_2
    if-ge v12, v14, :cond_0

    .line 421
    new-instance v7, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    add-int/lit8 v3, v12, 0x1

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v7, v2, v3, v1}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 422
    .restart local v7       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-virtual {v7}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 429
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    iget v3, v7, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 420
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 441
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #ar:Landroid/os/AsyncResult;
    .end local v9           #datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v12           #i:I
    .end local v14           #s:I
    :pswitch_6
    sget-object v1, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_EF_PBR_EMAIL_LINEAR_RECORD_SIZE_DONE emailNum :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->emailNums:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 445
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v7, v0

    .line 447
    .restart local v7       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_a

    .line 448
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookOperationException;

    const/4 v2, 0x0

    const-string v3, "get EF record size failed"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 454
    :cond_a
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object v13, v0

    .line 460
    .restart local v13       #recordSize:[I
    sget-object v1, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_EF_PBR_EMAIL_LINEAR_RECORD_SIZE_DONE (1) :  adnNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v13, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    array-length v1, v13

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    .line 463
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookOperationException;

    const/4 v2, 0x0

    const-string v3, "get wrong EF record size format"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 467
    :cond_b
    sget-object v1, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    const-string v2, "EVENT_EF_PBR_EMAIL_LINEAR_RECORD_SIZE_DONE (2) :"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->fileCount:I

    .line 471
    const/4 v12, 0x0

    .restart local v12       #i:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->emailEfids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, size:I
    :goto_3
    if-ge v12, v15, :cond_e

    .line 472
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "efids.get("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->emailEfids:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->emailNums:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->emailEfids:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->emailNums:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_d

    .line 476
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->fileCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->fileCount:I

    .line 477
    const/4 v1, 0x0

    aget v2, v13, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->emailEfIndex:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    invoke-virtual {v7, v2, v1, v3, v5}, Lcom/android/internal/telephony/AdnRecord;->buildEmailString(IIII)[B

    move-result-object v4

    .line 478
    .restart local v4       #data:[B
    if-nez v4, :cond_c

    .line 479
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookOperationException;

    const/4 v2, 0x0

    const-string/jumbo v3, "wrong ADN format"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 483
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->emailEfids:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->emailNums:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 471
    .end local v4           #data:[B
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 489
    :cond_e
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 494
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #ar:Landroid/os/AsyncResult;
    .end local v12           #i:I
    .end local v13           #recordSize:[I
    .end local v15           #size:I
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 495
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v7, v0

    .line 496
    .restart local v7       #adn:Lcom/android/internal/telephony/AdnRecord;
    const-string v1, "GSM"

    const-string v2, "EVENT_EF_PBR_ANR_LINEAR_RECORD_SIZE_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_f

    .line 499
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookOperationException;

    const/4 v2, 0x0

    const-string v3, "get EF record size failed"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 503
    :cond_f
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object v13, v0

    .line 504
    .restart local v13       #recordSize:[I
    sget-object v1, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_EF_PBR_ANR_LINEAR_RECORD_SIZE_DONE (1) :  adnNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v13, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    array-length v1, v13

    const/4 v2, 0x3

    if-eq v1, v2, :cond_10

    .line 507
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookOperationException;

    const/4 v2, 0x0

    const-string v3, "get wrong EF record size format"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 510
    :cond_10
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "anrefids = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrefids:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "anrefids.size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrefids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   ADNefid == ef:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->fileCount:I

    .line 515
    const/4 v12, 0x0

    .restart local v12       #i:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrefids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .restart local v15       #size:I
    :goto_4
    if-ge v12, v15, :cond_12

    .line 516
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "efids.get("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrefids:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrNums:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrefids:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrNums:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_11

    .line 519
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->fileCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->fileCount:I

    .line 520
    const/4 v1, 0x0

    aget v2, v13, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrEfIndex:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    invoke-virtual {v7, v2, v1, v3, v5}, Lcom/android/internal/telephony/AdnRecord;->buildAnrString(IIII)[B

    move-result-object v4

    .line 521
    .restart local v4       #data:[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrefids:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrNums:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    const/16 v6, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 515
    .end local v4           #data:[B
    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 526
    :cond_12
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 533
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #ar:Landroid/os/AsyncResult;
    .end local v12           #i:I
    .end local v13           #recordSize:[I
    .end local v15           #size:I
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 534
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v7, v0

    .line 536
    .restart local v7       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_13

    .line 537
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookOperationException;

    const/4 v2, 0x0

    const-string v3, "get EF record size failed"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 542
    :cond_13
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object v13, v0

    .line 548
    .restart local v13       #recordSize:[I
    array-length v1, v13

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    const/4 v2, 0x2

    aget v2, v13, v2

    if-le v1, v2, :cond_15

    .line 549
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookOperationException;

    const/4 v2, 0x0

    const-string v3, "get wrong EF record size format"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 552
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->iapRec:[B

    if-eqz v1, :cond_16

    .line 554
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->iapRec:[B

    .line 559
    .restart local v4       #data:[B
    :goto_5
    if-nez v4, :cond_17

    .line 560
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookOperationException;

    const/4 v2, 0x0

    const-string/jumbo v3, "wrong Iap format"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 557
    .end local v4           #data:[B
    :cond_16
    const/4 v1, 0x0

    aget v1, v13, v1

    const/16 v2, 0xff

    invoke-virtual {v7, v1, v2}, Lcom/android/internal/telephony/AdnRecord;->buildIapString(II)[B

    move-result-object v4

    .restart local v4       #data:[B
    goto :goto_5

    .line 565
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->iapEF:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 568
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 573
    .end local v4           #data:[B
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #ar:Landroid/os/AsyncResult;
    .end local v13           #recordSize:[I
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 574
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_18

    .line 575
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookOperationException;

    const/4 v2, 0x0

    const-string/jumbo v3, "update EF Anr record failed"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 579
    :cond_18
    sget-object v1, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_UPDATE_ANR_RECORD_DONE, message is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fileCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->fileCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 582
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 583
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->fileCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->fileCount:I

    .line 584
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->fileCount:I
    :try_end_4
    .catch Lcom/android/internal/telephony/IccPhoneBookOperationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public loadAllFromEF(IILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "response"

    .prologue
    .line 146
    iput p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 147
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 148
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 154
    return-void
.end method

.method public loadFromEF(IIILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "response"

    .prologue
    .line 126
    iput p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 127
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 128
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 129
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 136
    return-void
.end method

.method public updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 171
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 172
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 173
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 174
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 175
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 181
    return-void
.end method

.method public updateEFAdnToUsim(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 187
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 188
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 189
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 190
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 191
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 194
    return-void
.end method

.method public updateEFAnrToUsim(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;IILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "adn"
    .parameter
    .parameter "efid"
    .parameter "adnNum"
    .parameter "pin2"
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/AdnRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;II",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 229
    .local p2, anrefids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->anrefids:Ljava/util/ArrayList;

    .line 230
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 231
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    .line 232
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 233
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x8

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 237
    return-void
.end method

.method public updateEFAnrToUsim(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "adn"
    .parameter
    .parameter "efid"
    .parameter "adnNum"
    .parameter
    .parameter
    .parameter "pin2"
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/AdnRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 259
    .local p2, anrefids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p5, anrNums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p6, anrEfIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->anrefids:Ljava/util/ArrayList;

    .line 260
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 261
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    .line 262
    iput-object p8, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 263
    iput-object p7, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 264
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->anrEfIndex:Ljava/util/ArrayList;

    .line 265
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->anrNums:Ljava/util/ArrayList;

    .line 266
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x8

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 268
    return-void
.end method

.method public updateEFEmailToUsim(Lcom/android/internal/telephony/AdnRecord;IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "emailEF"
    .parameter "emailNum"
    .parameter "efid"
    .parameter "adnNum"
    .parameter "emailTagInIap"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 200
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->emailEF:I

    .line 201
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->emailNum:I

    .line 202
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 203
    iput p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    .line 204
    iput p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->emailTagInIap:I

    .line 205
    iput-object p8, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 206
    iput-object p7, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 210
    return-void
.end method

.method public updateEFEmailToUsim(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "adn"
    .parameter
    .parameter
    .parameter "efid"
    .parameter "adnNum"
    .parameter
    .parameter "pin2"
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/AdnRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 213
    .local p2, emailEfids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, emailNums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p6, emailEfIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v0, "AdnRecordLoader "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEFEmailToUsim  emailEfids "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "emailNums "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "emailEfIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iput-object p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->emailEfids:Ljava/util/ArrayList;

    .line 215
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->emailNums:Ljava/util/ArrayList;

    .line 216
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 217
    iput p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    .line 219
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->emailEfIndex:Ljava/util/ArrayList;

    .line 220
    iput-object p8, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 221
    iput-object p7, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x6

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 225
    return-void
.end method

.method public updateEFGasToUsim(II[BLjava/lang/String;)V
    .locals 6
    .parameter "gasEfId"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 255
    return-void
.end method

.method public updateEFGrpToUsim(II[BLjava/lang/String;)V
    .locals 6
    .parameter "grpEfId"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 249
    return-void
.end method

.method public updateEFIapToUsim(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "iapEF"
    .parameter "adnNum"
    .parameter "emailNumInIap"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 273
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->iapEF:I

    .line 274
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    .line 275
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->emailNumInIap:I

    .line 276
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 277
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 281
    return-void
.end method

.method public updateEFIapToUsim(Lcom/android/internal/telephony/AdnRecord;II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "adn"
    .parameter "iapEF"
    .parameter "adnNum"
    .parameter "record"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 285
    const-string v0, "AdnRecordLoader "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEFIapToUsim  iapEF "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->iapEF:I

    .line 287
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    .line 288
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->iapRec:[B

    .line 289
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 290
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 294
    return-void
.end method
