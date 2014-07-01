.class public Lcom/android/internal/telephony/cat/SendChannelData;
.super Lcom/android/internal/telephony/cat/ChannelData;
.source "SendChannelData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/SendChannelData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public sendDataStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/android/internal/telephony/cat/SendChannelData$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/SendChannelData$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/SendChannelData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ChannelData;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/SendChannelData;->sendDataStr:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ChannelData;-><init>(Landroid/os/Parcel;)V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/SendChannelData;->sendDataStr:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cat/ChannelData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 21
    iget-object v0, p0, Lcom/android/internal/telephony/cat/SendChannelData;->sendDataStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    return-void
.end method
