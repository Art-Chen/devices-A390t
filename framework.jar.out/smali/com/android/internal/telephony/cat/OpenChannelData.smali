.class public Lcom/android/internal/telephony/cat/OpenChannelData;
.super Lcom/android/internal/telephony/cat/ChannelData;
.source "OpenChannelData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ADDRESS_TYPE_IPV4:I = 0x21

.field public static final ADDRESS_TYPE_IPV6:I = 0x57

.field public static final BEARER_TYPE_CSD:I = 0x1

.field public static final BEARER_TYPE_DEFAULT:I = 0x3

.field public static final BEARER_TYPE_GPRS:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/OpenChannelData;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSPORT_TYPE_TCP:I = 0x2

.field public static final TRANSPORT_TYPE_UDP:I = 0x1


# instance fields
.field public BearerParam:Ljava/lang/String;

.field public BearerType:B

.field public DataDstAddress:Ljava/lang/String;

.field public DataDstAddressType:B

.field public LoginStr:Ljava/lang/String;

.field public NetAccessName:Ljava/lang/String;

.field public OtherAddress:Ljava/lang/String;

.field public OtherAddressType:B

.field public PwdStr:Ljava/lang/String;

.field public bufferSize:I

.field public portNumber:I

.field public transportType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/android/internal/telephony/cat/OpenChannelData$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/OpenChannelData$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/OpenChannelData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ChannelData;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->NetAccessName:Ljava/lang/String;

    .line 32
    iput v2, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->bufferSize:I

    .line 33
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->BearerType:B

    .line 34
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->BearerParam:Ljava/lang/String;

    .line 35
    iput-byte v2, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->OtherAddressType:B

    .line 36
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->OtherAddress:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->LoginStr:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->PwdStr:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->transportType:B

    .line 40
    iput v2, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->portNumber:I

    .line 41
    iput-byte v2, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->DataDstAddressType:B

    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->DataDstAddress:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ChannelData;-><init>(Landroid/os/Parcel;)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->NetAccessName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->bufferSize:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->BearerType:B

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->BearerParam:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->OtherAddressType:B

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->OtherAddress:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->LoginStr:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->PwdStr:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->transportType:B

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->portNumber:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->DataDstAddressType:B

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->DataDstAddress:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cat/ChannelData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->NetAccessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->bufferSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-byte v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->BearerType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->BearerParam:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-byte v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->OtherAddressType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->OtherAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->LoginStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->PwdStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-byte v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->transportType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 72
    iget v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->portNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-byte v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->DataDstAddressType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelData;->DataDstAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return-void
.end method
