.class public Landroid/speech/srec/WaveHeader;
.super Ljava/lang/Object;
.source "WaveHeader.java"


# static fields
.field public static final FORMAT_ALAW:S = 0x6s

.field public static final FORMAT_PCM:S = 0x1s

.field public static final FORMAT_ULAW:S = 0x7s

.field private static final HEADER_LENGTH:I = 0x2c

.field private static final TAG:Ljava/lang/String; = "WaveHeader"


# instance fields
.field private mBitsPerSample:S

.field private mFormat:S

.field private mNumBytes:I

.field private mNumChannels:S

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(SSISI)V
    .locals 0
    .parameter "format"
    .parameter "numChannels"
    .parameter "sampleRate"
    .parameter "bitsPerSample"
    .parameter "numBytes"

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-short p1, p0, Landroid/speech/srec/WaveHeader;->mFormat:S

    .line 76
    iput p3, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    .line 77
    iput-short p2, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    .line 78
    iput-short p4, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    .line 79
    iput p5, p0, Landroid/speech/srec/WaveHeader;->mNumBytes:I

    .line 80
    return-void
.end method

.method private static readId(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .parameter "in"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tag not present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    return-void
.end method

.method private static readInt(Ljava/io/InputStream;)I
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private static readShort(Ljava/io/InputStream;)S
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private static writeId(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "out"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_0
    return-void
.end method

.method private static writeInt(Ljava/io/OutputStream;I)V
    .locals 1
    .parameter "out"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    shr-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 260
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 261
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 262
    shr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 263
    return-void
.end method

.method private static writeShort(Ljava/io/OutputStream;S)V
    .locals 1
    .parameter "out"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    shr-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 267
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 268
    return-void
.end method


# virtual methods
.method public getBitsPerSample()S
    .locals 1

    .prologue
    .line 144
    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    return v0
.end method

.method public getFormat()S
    .locals 1

    .prologue
    .line 88
    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mFormat:S

    return v0
.end method

.method public getNumBytes()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Landroid/speech/srec/WaveHeader;->mNumBytes:I

    return v0
.end method

.method public getNumChannels()S
    .locals 1

    .prologue
    .line 107
    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    return v0
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    const-string v3, "RIFF"

    invoke-static {p1, v3}, Landroid/speech/srec/WaveHeader;->readId(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 185
    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readInt(Ljava/io/InputStream;)I

    move-result v3

    add-int/lit8 v2, v3, -0x24

    .line 186
    .local v2, numBytes:I
    const-string v3, "WAVE"

    invoke-static {p1, v3}, Landroid/speech/srec/WaveHeader;->readId(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 189
    const-string v3, "fmt "

    invoke-static {p1, v3}, Landroid/speech/srec/WaveHeader;->readId(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 190
    const/16 v3, 0x10

    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readInt(Ljava/io/InputStream;)I

    move-result v4

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "fmt chunk length not 16"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 191
    :cond_0
    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readShort(Ljava/io/InputStream;)S

    move-result v3

    iput-short v3, p0, Landroid/speech/srec/WaveHeader;->mFormat:S

    .line 192
    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readShort(Ljava/io/InputStream;)S

    move-result v3

    iput-short v3, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    .line 193
    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    .line 194
    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 195
    .local v1, byteRate:I
    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readShort(Ljava/io/InputStream;)S

    move-result v0

    .line 196
    .local v0, blockAlign:S
    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readShort(Ljava/io/InputStream;)S

    move-result v3

    iput-short v3, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    .line 197
    iget-short v3, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    iget v4, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    mul-int/2addr v3, v4

    iget-short v4, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x8

    if-eq v1, v3, :cond_1

    .line 198
    new-instance v3, Ljava/io/IOException;

    const-string v4, "fmt.ByteRate field inconsistent"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 200
    :cond_1
    iget-short v3, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    iget-short v4, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x8

    if-eq v0, v3, :cond_2

    .line 201
    new-instance v3, Ljava/io/IOException;

    const-string v4, "fmt.BlockAlign field inconsistent"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 205
    :cond_2
    const-string v3, "data"

    invoke-static {p1, v3}, Landroid/speech/srec/WaveHeader;->readId(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 206
    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, p0, Landroid/speech/srec/WaveHeader;->mNumBytes:I

    .line 208
    const/16 v3, 0x2c

    return v3
.end method

.method public setBitsPerSample(S)Landroid/speech/srec/WaveHeader;
    .locals 0
    .parameter "bitsPerSample"

    .prologue
    .line 154
    iput-short p1, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    .line 155
    return-object p0
.end method

.method public setFormat(S)Landroid/speech/srec/WaveHeader;
    .locals 0
    .parameter "format"

    .prologue
    .line 98
    iput-short p1, p0, Landroid/speech/srec/WaveHeader;->mFormat:S

    .line 99
    return-object p0
.end method

.method public setNumBytes(I)Landroid/speech/srec/WaveHeader;
    .locals 0
    .parameter "numBytes"

    .prologue
    .line 172
    iput p1, p0, Landroid/speech/srec/WaveHeader;->mNumBytes:I

    .line 173
    return-object p0
.end method

.method public setNumChannels(S)Landroid/speech/srec/WaveHeader;
    .locals 0
    .parameter "numChannels"

    .prologue
    .line 116
    iput-short p1, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    .line 117
    return-object p0
.end method

.method public setSampleRate(I)Landroid/speech/srec/WaveHeader;
    .locals 0
    .parameter "sampleRate"

    .prologue
    .line 134
    iput p1, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    .line 135
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 272
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "WaveHeader format=%d numChannels=%d sampleRate=%d bitsPerSample=%d numBytes=%d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-short v4, p0, Landroid/speech/srec/WaveHeader;->mFormat:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-short v4, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-short v4, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Landroid/speech/srec/WaveHeader;->mNumBytes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)I
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    const-string v0, "RIFF"

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 234
    iget v0, p0, Landroid/speech/srec/WaveHeader;->mNumBytes:I

    add-int/lit8 v0, v0, 0x24

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    .line 235
    const-string v0, "WAVE"

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 238
    const-string v0, "fmt "

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 239
    const/16 v0, 0x10

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    .line 240
    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mFormat:S

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeShort(Ljava/io/OutputStream;S)V

    .line 241
    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeShort(Ljava/io/OutputStream;S)V

    .line 242
    iget v0, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    .line 243
    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    iget v1, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    mul-int/2addr v0, v1

    iget-short v1, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    .line 244
    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    iget-short v1, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeShort(Ljava/io/OutputStream;S)V

    .line 245
    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeShort(Ljava/io/OutputStream;S)V

    .line 248
    const-string v0, "data"

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 249
    iget v0, p0, Landroid/speech/srec/WaveHeader;->mNumBytes:I

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    .line 251
    const/16 v0, 0x2c

    return v0
.end method
