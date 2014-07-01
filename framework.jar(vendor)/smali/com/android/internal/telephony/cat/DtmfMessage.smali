.class public Lcom/android/internal/telephony/cat/DtmfMessage;
.super Ljava/lang/Object;
.source "DtmfMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/DtmfMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field public mdtmfString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/android/internal/telephony/cat/DtmfMessage$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/DtmfMessage$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/DtmfMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/internal/telephony/cat/DtmfMessage;->mdtmfString:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/android/internal/telephony/cat/DtmfMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/android/internal/telephony/cat/DtmfMessage;->mdtmfString:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/android/internal/telephony/cat/DtmfMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/DtmfMessage;->mdtmfString:Ljava/lang/String;

    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/DtmfMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/DtmfMessage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/DtmfMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/cat/DtmfMessage;->mdtmfString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/cat/DtmfMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 49
    return-void
.end method
