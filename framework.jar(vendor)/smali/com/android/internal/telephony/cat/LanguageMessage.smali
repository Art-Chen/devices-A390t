.class public Lcom/android/internal/telephony/cat/LanguageMessage;
.super Ljava/lang/Object;
.source "LanguageMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/LanguageMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public languageString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/android/internal/telephony/cat/LanguageMessage$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/LanguageMessage$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/LanguageMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/LanguageMessage;->languageString:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/LanguageMessage;->languageString:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/LanguageMessage;->languageString:Ljava/lang/String;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/LanguageMessage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/LanguageMessage;-><init>(Landroid/os/Parcel;)V

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
    .line 39
    iget-object v0, p0, Lcom/android/internal/telephony/cat/LanguageMessage;->languageString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    return-void
.end method
