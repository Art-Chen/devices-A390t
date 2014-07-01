.class Lcom/android/internal/telephony/cat/ChannelStatusResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private mChannelId:I

.field private mLinkStatus:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1
    .parameter "id"
    .parameter "status"

    .prologue
    const/4 v0, 0x0

    .line 292
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 287
    iput v0, p0, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;->mChannelId:I

    .line 288
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;->mLinkStatus:Z

    .line 293
    iput p1, p0, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;->mChannelId:I

    .line 294
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;->mLinkStatus:Z

    .line 295
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 4
    .parameter "buf"

    .prologue
    const/4 v2, 0x0

    .line 299
    if-nez p1, :cond_0

    .line 300
    const-string v1, "ChannelStatusResponseData buf is null"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    :goto_0
    return-void

    .line 305
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[stk] ChannelStatusResponseData mLinkStatus = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;->mLinkStatus:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    or-int/lit16 v0, v1, 0x80

    .line 307
    .local v0, tag:I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 309
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 311
    iget v3, p0, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;->mChannelId:I

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;->mLinkStatus:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x80

    :goto_1
    or-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 313
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 311
    goto :goto_1
.end method
