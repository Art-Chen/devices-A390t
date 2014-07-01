.class Lcom/android/internal/telephony/cat/DateTimeResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private mDateTime:[B


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x6

    .line 177
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 178
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 180
    .local v2, rightNow:Ljava/util/Calendar;
    const/4 v4, 0x7

    new-array v0, v4, [B

    .line 182
    .local v0, data:[B
    const/4 v4, 0x0

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit16 v5, v5, -0x76c

    rem-int/lit8 v5, v5, 0x64

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 183
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    .line 184
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v8

    .line 185
    const/4 v4, 0x3

    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 186
    const/4 v4, 0x4

    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 187
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v9

    .line 189
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 190
    .local v3, tmp:I
    div-int/lit16 v4, v3, 0x3e8

    div-int/lit16 v4, v4, 0x384

    int-to-byte v4, v4

    aput-byte v4, v0, v7

    .line 192
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 193
    aget-byte v4, v0, v1

    div-int/lit8 v4, v4, 0xa

    and-int/lit8 v4, v4, 0xf

    aget-byte v5, v0, v1

    rem-int/lit8 v5, v5, 0xa

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_0
    aget-byte v4, v0, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 197
    div-int/lit8 v4, v3, 0xa

    and-int/lit8 v4, v4, 0xf

    rem-int/lit8 v5, v3, 0xa

    shl-int/lit8 v5, v5, 0x4

    or-int v3, v4, v5

    .line 198
    aget-byte v4, v0, v7

    if-gez v4, :cond_1

    .line 199
    or-int/lit8 v3, v3, 0x8

    .line 201
    :cond_1
    int-to-byte v4, v3

    aput-byte v4, v0, v7

    .line 203
    iput-object v0, p0, Lcom/android/internal/telephony/cat/DateTimeResponseData;->mDateTime:[B

    .line 205
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 6
    .parameter "buf"

    .prologue
    .line 210
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DATE_TIME_TIMEZONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 211
    .local v4, tag:I
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 212
    const/4 v5, 0x7

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/cat/DateTimeResponseData;->mDateTime:[B

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 215
    .local v1, b:B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .end local v1           #b:B
    :cond_0
    return-void
.end method
