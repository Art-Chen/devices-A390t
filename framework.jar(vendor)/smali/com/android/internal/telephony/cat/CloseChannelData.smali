.class Lcom/android/internal/telephony/cat/CloseChannelData;
.super Lcom/android/internal/telephony/cat/ChannelData;
.source "ChannelData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/ChannelData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/android/internal/telephony/cat/CloseChannelData$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CloseChannelData$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CloseChannelData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ChannelData;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ChannelData;-><init>(Landroid/os/Parcel;)V

    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method
