.class public Lcom/android/internal/telephony/cat/StkServiceProxy;
.super Landroid/os/Handler;
.source "StkServiceProxy.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field static mStkServiceArray:[Lcom/android/internal/telephony/cat/CatService;

.field static sStkServiceProxy:Lcom/android/internal/telephony/cat/StkServiceProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "StkServiceProxy"

    sput-object v0, Lcom/android/internal/telephony/cat/StkServiceProxy;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 78
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/cat/CatService;

    sput-object v0, Lcom/android/internal/telephony/cat/StkServiceProxy;->mStkServiceArray:[Lcom/android/internal/telephony/cat/CatService;

    .line 79
    return-void
.end method

.method public static getInstance(I)Lcom/android/internal/telephony/cat/CatService;
    .locals 2
    .parameter "phoneId"

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/telephony/cat/StkServiceProxy;->sStkServiceProxy:Lcom/android/internal/telephony/cat/StkServiceProxy;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/android/internal/telephony/cat/StkServiceProxy;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/StkServiceProxy;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/StkServiceProxy;->sStkServiceProxy:Lcom/android/internal/telephony/cat/StkServiceProxy;

    .line 68
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 69
    const/4 p0, 0x0

    .line 71
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/cat/StkServiceProxy;->mStkServiceArray:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v0, v0, p0

    if-nez v0, :cond_2

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cat/StkServiceProxy;->mStkServiceArray:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;
    .locals 3
    .parameter "ci"
    .parameter "ir"
    .parameter "context"
    .parameter "fh"
    .parameter "ic"

    .prologue
    const/4 v1, 0x0

    .line 45
    if-nez p0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-object v1

    .line 48
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneId()I

    move-result v0

    .line 49
    .local v0, phoneId:I
    sget-object v2, Lcom/android/internal/telephony/cat/StkServiceProxy;->sStkServiceProxy:Lcom/android/internal/telephony/cat/StkServiceProxy;

    if-nez v2, :cond_2

    .line 50
    new-instance v2, Lcom/android/internal/telephony/cat/StkServiceProxy;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/StkServiceProxy;-><init>()V

    sput-object v2, Lcom/android/internal/telephony/cat/StkServiceProxy;->sStkServiceProxy:Lcom/android/internal/telephony/cat/StkServiceProxy;

    .line 52
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/cat/StkServiceProxy;->mStkServiceArray:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    .line 53
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 57
    sget-object v1, Lcom/android/internal/telephony/cat/StkServiceProxy;->mStkServiceArray:[Lcom/android/internal/telephony/cat/CatService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v2

    aput-object v2, v1, v0

    .line 61
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/cat/StkServiceProxy;->mStkServiceArray:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, v0

    goto :goto_0

    .line 59
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/cat/StkServiceProxy;->mStkServiceArray:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cat/CatService;->update(Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_1
.end method
