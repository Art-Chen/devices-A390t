.class public Lcom/android/internal/telephony/cat/ReceiveChannelData;
.super Lcom/android/internal/telephony/cat/ChannelData;
.source "ReceiveChannelData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/ReceiveChannelData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public channelDataLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/android/internal/telephony/cat/ReceiveChannelData$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/ReceiveChannelData$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/ReceiveChannelData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ChannelData;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/ReceiveChannelData;->channelDataLength:I

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ChannelData;-><init>(Landroid/os/Parcel;)V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/ReceiveChannelData;->channelDataLength:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/ReceiveChannelData;->channelDataLength:I

    .line 16
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cat/ChannelData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 20
    iget v0, p0, Lcom/android/internal/telephony/cat/ReceiveChannelData;->channelDataLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    return-void
.end method
