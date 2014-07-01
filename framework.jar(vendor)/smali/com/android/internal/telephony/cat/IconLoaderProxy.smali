.class Lcom/android/internal/telephony/cat/IconLoaderProxy;
.super Landroid/os/Handler;
.source "IconLoaderProxy.java"


# static fields
.field static mIconLoaderArray:[Lcom/android/internal/telephony/cat/IconLoader;

.field static sIconLoaderProxy:Lcom/android/internal/telephony/cat/IconLoaderProxy;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 62
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/cat/IconLoader;

    sput-object v0, Lcom/android/internal/telephony/cat/IconLoaderProxy;->mIconLoaderArray:[Lcom/android/internal/telephony/cat/IconLoader;

    .line 63
    return-void
.end method

.method static getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;I)Lcom/android/internal/telephony/cat/IconLoader;
    .locals 2
    .parameter "caller"
    .parameter "fh"
    .parameter "phoneId"

    .prologue
    const/4 v0, 0x0

    .line 43
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoaderProxy;->sIconLoaderProxy:Lcom/android/internal/telephony/cat/IconLoaderProxy;

    if-nez v1, :cond_3

    .line 44
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cat/IconLoaderProxy;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/IconLoaderProxy;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/IconLoaderProxy;->sIconLoaderProxy:Lcom/android/internal/telephony/cat/IconLoaderProxy;

    .line 48
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/cat/IconLoader;

    sput-object v0, Lcom/android/internal/telephony/cat/IconLoaderProxy;->mIconLoaderArray:[Lcom/android/internal/telephony/cat/IconLoader;

    .line 49
    sget-object v0, Lcom/android/internal/telephony/cat/IconLoaderProxy;->mIconLoaderArray:[Lcom/android/internal/telephony/cat/IconLoader;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cat/IconLoader;

    move-result-object v1

    aput-object v1, v0, p2

    .line 58
    :cond_2
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/cat/IconLoaderProxy;->mIconLoaderArray:[Lcom/android/internal/telephony/cat/IconLoader;

    aget-object v0, v0, p2

    goto :goto_0

    .line 51
    :cond_3
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 54
    sget-object v0, Lcom/android/internal/telephony/cat/IconLoaderProxy;->mIconLoaderArray:[Lcom/android/internal/telephony/cat/IconLoader;

    aget-object v0, v0, p2

    if-nez v0, :cond_2

    .line 55
    sget-object v0, Lcom/android/internal/telephony/cat/IconLoaderProxy;->mIconLoaderArray:[Lcom/android/internal/telephony/cat/IconLoader;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cat/IconLoader;

    move-result-object v1

    aput-object v1, v0, p2

    goto :goto_1
.end method
