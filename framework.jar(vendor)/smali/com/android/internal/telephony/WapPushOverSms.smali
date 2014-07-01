.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final BIND_RETRY_INTERVAL:I

.field private final WAKE_LOCK_TIMEOUT:I

.field private final mContext:Landroid/content/Context;

.field private mPhoneId:I

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 2
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 52
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->BIND_RETRY_INTERVAL:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 122
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 123
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 124
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPhoneId:I

    .line 125
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->bindWapPushManager()V

    .line 127
    return-void
.end method

.method private dispatch(Ljava/lang/String;II[B[B[[BLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "mimeType"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "header"
    .parameter "data"
    .parameter "pdus"
    .parameter "permission"
    .parameter "number"

    .prologue
    .line 308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string/jumbo v1, "transactionId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    const-string/jumbo v1, "pduType"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    const-string v1, "header"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 313
    const-string v1, "data"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 314
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 315
    const-string/jumbo v1, "phone_id"

    iget v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    const-string v1, "from"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v1, v0, p7}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method private dispatchWapPdu_OTA([[B[BIIIILjava/lang/String;)V
    .locals 7
    .parameter "pdus"
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .parameter "mimeType"

    .prologue
    const/4 v5, 0x0

    .line 323
    new-array v2, p6, [B

    .line 324
    .local v2, header:[B
    array-length v4, v2

    invoke-static {p2, p5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    add-int v1, p5, p6

    .line 326
    .local v1, dataIndex:I
    array-length v4, p2

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .line 327
    .local v0, data:[B
    array-length v4, v0

    invoke-static {p2, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchWapPdu_OTA>>>>>> transactionId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  mimeType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  header="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, p7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string/jumbo v4, "transactionId"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    const-string/jumbo v4, "pduType"

    invoke-virtual {v3, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 336
    const-string/jumbo v4, "mimeType"

    invoke-virtual {v3, v4, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 338
    const-string/jumbo v4, "phone_id"

    iget v5, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPhoneId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 340
    return-void
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .locals 2
    .parameter "pdu"

    .prologue
    .line 130
    const/4 v0, 0x0

    check-cast v0, [[B

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B[[BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public dispatchWapPdu([B[[BLjava/lang/String;)I
    .locals 34
    .parameter "pdu"
    .parameter "pdus"
    .parameter "number"

    .prologue
    .line 143
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rx: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/16 v26, 0x0

    .line 145
    .local v26, index:I
    add-int/lit8 v27, v26, 0x1

    .end local v26           #index:I
    .local v27, index:I
    aget-byte v4, p1, v26

    and-int/lit16 v7, v4, 0xff

    .line 146
    .local v7, transactionId:I
    add-int/lit8 v26, v27, 0x1

    .end local v27           #index:I
    .restart local v26       #index:I
    aget-byte v4, p1, v27

    and-int/lit16 v8, v4, 0xff

    .line 147
    .local v8, pduType:I
    const/4 v10, 0x0

    .line 149
    .local v10, headerLength:I
    const/4 v4, 0x6

    if-eq v8, v4, :cond_0

    const/4 v4, 0x7

    if-eq v8, v4, :cond_0

    .line 151
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v4, 0x1

    .line 302
    :goto_0
    return v4

    .line 155
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 164
    const-string v4, "WAP PUSH"

    const-string v5, "Received PDU. Header Length error."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v4, 0x2

    goto :goto_0

    .line 167
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v10, v4

    .line 168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int/lit8 v26, v4, 0x2

    .line 170
    move/from16 v9, v26

    .line 184
    .local v9, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 185
    const-string v4, "WAP PUSH"

    const-string v5, "Received PDU. Header Content-Type error."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v4, 0x2

    goto :goto_0

    .line 189
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v11

    .line 190
    .local v11, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v21

    .line 191
    .local v21, binaryContentType:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int v26, v26, v4

    .line 193
    new-array v0, v10, [B

    move-object/from16 v16, v0

    .line 194
    .local v16, header:[B
    const/4 v4, 0x0

    move-object/from16 v0, v16

    array-length v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v9, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchWapPdu. --- mimeType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v4, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "application/x-wap-prov.browser-settings"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "application/x-wap-prov.browser-bookmarks"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 202
    :cond_3
    const-string v4, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 203
    const-wide/16 v21, 0x36

    .line 209
    :cond_4
    :goto_1
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchWapPdu. --- binaryContentType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-wide/16 v4, 0x36

    cmp-long v4, v21, v4

    if-nez v4, :cond_8

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    .line 211
    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_OTA([[B[BIIIILjava/lang/String;)V

    .line 302
    :cond_5
    :goto_2
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 204
    :cond_6
    const-string v4, "application/x-wap-prov.browser-settings"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 205
    const-wide/16 v21, -0x1

    goto :goto_1

    .line 206
    :cond_7
    const-string v4, "application/x-wap-prov.browser-bookmarks"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 207
    const-wide/16 v21, -0x1

    goto :goto_1

    :cond_8
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    .line 214
    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_OTA([[B[BIIIILjava/lang/String;)V

    goto :goto_2

    .line 218
    :cond_9
    if-eqz v11, :cond_c

    const-string v4, "application/vnd.wap.coc"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 219
    move-object/from16 v29, p1

    .line 232
    .local v29, intentData:[B
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    add-int v5, v26, v10

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v26

    invoke-virtual {v4, v0, v5}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v26, v0

    .line 234
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v32

    .line 236
    .local v32, wapAppId:Ljava/lang/String;
    if-nez v32, :cond_a

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    .line 240
    :cond_a
    if-nez v11, :cond_d

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    .line 242
    .local v23, contentType:Ljava/lang/String;
    :goto_4
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appid found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/16 v31, 0x1

    .line 246
    .local v31, processFurther:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->getWapPushManager()Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v33

    .line 248
    .local v33, wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    if-nez v33, :cond_e

    .line 249
    const-string v4, "WAP PUSH"

    const-string/jumbo v5, "wap push manager not found!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_b
    :goto_5
    if-nez v31, :cond_10

    .line 271
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 221
    .end local v23           #contentType:Ljava/lang/String;
    .end local v29           #intentData:[B
    .end local v31           #processFurther:Z
    .end local v32           #wapAppId:Ljava/lang/String;
    .end local v33           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_c
    add-int v24, v9, v10

    .line 222
    .local v24, dataIndex:I
    move-object/from16 v0, p1

    array-length v4, v0

    sub-int v4, v4, v24

    new-array v0, v4, [B

    move-object/from16 v29, v0

    .line 223
    .restart local v29       #intentData:[B
    const/4 v4, 0x0

    move-object/from16 v0, v29

    array-length v5, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3

    .end local v24           #dataIndex:I
    .restart local v32       #wapAppId:Ljava/lang/String;
    :cond_d
    move-object/from16 v23, v11

    .line 240
    goto :goto_4

    .line 251
    .restart local v23       #contentType:Ljava/lang/String;
    .restart local v31       #processFurther:Z
    .restart local v33       #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_e
    :try_start_1
    new-instance v28, Landroid/content/Intent;

    invoke-direct/range {v28 .. v28}, Landroid/content/Intent;-><init>()V

    .line 252
    .local v28, intent:Landroid/content/Intent;
    const-string/jumbo v4, "transactionId"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    const-string/jumbo v4, "pduType"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    const-string v4, "header"

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 255
    const-string v4, "data"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 256
    const-string v4, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 259
    const-string/jumbo v4, "phone_id"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPhoneId:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 261
    const-string v4, "from"

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    :cond_f
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    move-object/from16 v2, v23

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v30

    .line 264
    .local v30, procRet:I
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "procRet:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    and-int/lit8 v4, v30, 0x1

    if-lez v4, :cond_b

    const v4, 0x8000

    and-int v4, v4, v30

    if-nez v4, :cond_b

    .line 267
    const/16 v31, 0x0

    goto/16 :goto_5

    .line 273
    .end local v28           #intent:Landroid/content/Intent;
    .end local v30           #procRet:I
    .end local v33           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :catch_0
    move-exception v25

    .line 274
    .local v25, e:Landroid/os/RemoteException;
    const-string v4, "WAP PUSH"

    const-string/jumbo v5, "remote func failed..."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v23           #contentType:Ljava/lang/String;
    .end local v25           #e:Landroid/os/RemoteException;
    .end local v31           #processFurther:Z
    .end local v32           #wapAppId:Ljava/lang/String;
    :cond_10
    const-string v4, "WAP PUSH"

    const-string v5, "fall back to existing handler"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    if-nez v11, :cond_11

    .line 280
    const-string v4, "WAP PUSH"

    const-string v5, "Header Content-Type error."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 284
    :cond_11
    add-int v24, v9, v10

    .line 285
    .restart local v24       #dataIndex:I
    move-object/from16 v0, p1

    array-length v4, v0

    sub-int v4, v4, v24

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 287
    .local v17, data:[B
    if-eqz v11, :cond_5

    .line 288
    const-string v4, "application/vnd.wap.coc"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 289
    move-object/from16 v17, p1

    .line 290
    const-string v19, "android.permission.RECEIVE_WAP_PUSH"

    .local v19, permission:Ljava/lang/String;
    :goto_6
    move-object/from16 v12, p0

    move-object v13, v11

    move v14, v7

    move v15, v8

    move-object/from16 v18, p2

    move-object/from16 v20, p3

    .line 298
    invoke-direct/range {v12 .. v20}, Lcom/android/internal/telephony/WapPushOverSms;->dispatch(Ljava/lang/String;II[B[B[[BLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 291
    .end local v19           #permission:Ljava/lang/String;
    :cond_12
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 292
    const/4 v4, 0x0

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    const-string v19, "android.permission.RECEIVE_MMS"

    .restart local v19       #permission:Ljava/lang/String;
    goto :goto_6

    .line 295
    .end local v19           #permission:Ljava/lang/String;
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    const-string v19, "android.permission.RECEIVE_WAP_PUSH"

    .restart local v19       #permission:Ljava/lang/String;
    goto :goto_6
.end method
