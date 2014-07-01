.class public Lcom/android/internal/telephony/cat/ChannelData;
.super Ljava/lang/Object;
.source "ChannelData.java"


# instance fields
.field public icon:Landroid/graphics/Bitmap;

.field public iconSelfExplanatory:Z

.field public isNullAlphaId:Z

.field public openChannelType:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/android/internal/telephony/cat/ChannelData;->openChannelType:I

    .line 11
    iput-object v1, p0, Lcom/android/internal/telephony/cat/ChannelData;->text:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/android/internal/telephony/cat/ChannelData;->icon:Landroid/graphics/Bitmap;

    .line 13
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ChannelData;->iconSelfExplanatory:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ChannelData;->isNullAlphaId:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v2, p0, Lcom/android/internal/telephony/cat/ChannelData;->openChannelType:I

    .line 11
    iput-object v3, p0, Lcom/android/internal/telephony/cat/ChannelData;->text:Ljava/lang/String;

    .line 12
    iput-object v3, p0, Lcom/android/internal/telephony/cat/ChannelData;->icon:Landroid/graphics/Bitmap;

    .line 13
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/ChannelData;->iconSelfExplanatory:Z

    .line 14
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/ChannelData;->isNullAlphaId:Z

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/ChannelData;->openChannelType:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/ChannelData;->text:Ljava/lang/String;

    .line 30
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/ChannelData;->icon:Landroid/graphics/Bitmap;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ChannelData;->iconSelfExplanatory:Z

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/ChannelData;->isNullAlphaId:Z

    .line 33
    return-void

    :cond_0
    move v0, v2

    .line 31
    goto :goto_0

    :cond_1
    move v1, v2

    .line 32
    goto :goto_1
.end method


# virtual methods
.method public getChannelType()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/android/internal/telephony/cat/ChannelData;->openChannelType:I

    return v0
.end method

.method public setChannelType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 24
    iput p1, p0, Lcom/android/internal/telephony/cat/ChannelData;->openChannelType:I

    .line 25
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "Icon"

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    iget v0, p0, Lcom/android/internal/telephony/cat/ChannelData;->openChannelType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ChannelData;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ChannelData;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 39
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/ChannelData;->iconSelfExplanatory:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/ChannelData;->isNullAlphaId:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    return-void

    :cond_0
    move v0, v2

    .line 39
    goto :goto_0

    :cond_1
    move v1, v2

    .line 40
    goto :goto_1
.end method
