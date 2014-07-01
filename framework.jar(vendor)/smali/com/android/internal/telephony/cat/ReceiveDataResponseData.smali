.class Lcom/android/internal/telephony/cat/ReceiveDataResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private mDataLen:I

.field private mDataStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "len"
    .parameter "str"

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mDataLen:I

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mDataStr:Ljava/lang/String;

    .line 349
    iput p1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mDataLen:I

    .line 350
    iput-object p2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mDataStr:Ljava/lang/String;

    .line 351
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 8
    .parameter "buf"

    .prologue
    .line 355
    if-nez p1, :cond_0

    .line 356
    const-string v6, "ReceiveDataResponseData buf is null"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    :goto_0
    return-void

    .line 361
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[stk] ReceiveDataResponseData mDataLen = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mDataLen:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDataStr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mDataStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 364
    .local v5, tag:I
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 366
    const/4 v2, 0x0

    .line 367
    .local v2, data:[B
    iget-object v6, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mDataStr:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mDataStr:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 368
    iget-object v6, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mDataStr:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 372
    :goto_1
    array-length v6, v2

    const/16 v7, 0x80

    if-ge v6, v7, :cond_2

    .line 373
    array-length v6, v2

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 379
    :goto_2
    move-object v0, v2

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3
    if-ge v3, v4, :cond_3

    aget-byte v1, v0, v3

    .line 380
    .local v1, b:B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 379
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 370
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    const/4 v6, 0x0

    new-array v2, v6, [B

    goto :goto_1

    .line 375
    :cond_2
    const/16 v6, 0x81

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 376
    array-length v6, v2

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 383
    .restart local v0       #arr$:[B
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 384
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 386
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 388
    iget v6, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mDataLen:I

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method
