.class Lcom/android/internal/telephony/cat/OpenChannelResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private mBearerParam:Ljava/lang/String;

.field private mBearerType:B

.field private mBufferSize:I

.field private mChannelId:I

.field private mLinkStatus:Z


# direct methods
.method public constructor <init>(BLjava/lang/String;IIZ)V
    .locals 2
    .parameter "type"
    .parameter "param"
    .parameter "size"
    .parameter "id"
    .parameter "status"

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 225
    iput-byte v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerType:B

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerParam:Ljava/lang/String;

    .line 227
    iput v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    .line 228
    iput v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelId:I

    .line 229
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mLinkStatus:Z

    .line 234
    iput-byte p1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerType:B

    .line 235
    iput-object p2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerParam:Ljava/lang/String;

    .line 236
    iput p3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    .line 237
    iput p4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelId:I

    .line 238
    iput-boolean p5, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mLinkStatus:Z

    .line 239
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 10
    .parameter "buf"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 243
    if-nez p1, :cond_0

    .line 244
    const-string v6, "OpenChannelResponseData buf is null"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    :goto_0
    return-void

    .line 249
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[stk] ChannelStatusResponseData mLinkStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mLinkStatus:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    iget-boolean v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mLinkStatus:Z

    if-eqz v6, :cond_1

    .line 251
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 252
    .local v5, tag:I
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 254
    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 256
    iget v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelId:I

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 258
    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 261
    .end local v5           #tag:I
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 262
    .restart local v5       #tag:I
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 264
    const/4 v2, 0x0

    .line 265
    .local v2, data:[B
    iget-object v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerParam:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerParam:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 266
    iget-object v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerParam:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 270
    :goto_1
    array-length v6, v2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 271
    iget-byte v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerType:B

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 272
    move-object v0, v2

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_3

    aget-byte v1, v0, v3

    .line 273
    .local v1, b:B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 272
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 268
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    new-array v2, v8, [B

    goto :goto_1

    .line 276
    .restart local v0       #arr$:[B
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 277
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 279
    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 281
    iget v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    const v7, 0xff00

    and-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x8

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 282
    iget v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0
.end method
