.class public Lcom/android/internal/telephony/IccPBForMimetypeException;
.super Lcom/android/internal/telephony/IccPhoneBookOperationException;
.source "IccPBForMimetypeException.java"


# static fields
.field public static final CAPACITY_FULL:I = -0x1

.field public static final COMMON_OPREATION_FAILED:I = 0x0

.field public static final OVER_LENGTH_LIMIT:I = -0x2

.field public static final WRONG_FORMAT:I = -0x3

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mErrorCode:I

.field public mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mErrorCode:I

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mMimeType:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "detailMessage"

    .prologue
    .line 33
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mErrorCode:I

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mMimeType:Ljava/lang/String;

    .line 34
    iput p1, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mErrorCode:I

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "mimeType"
    .parameter "detailMessage"

    .prologue
    .line 37
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mErrorCode:I

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mMimeType:Ljava/lang/String;

    .line 38
    iput p1, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mErrorCode:I

    .line 39
    iput-object p2, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mMimeType:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "detailMessage"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mErrorCode:I

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mMimeType:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mErrorCode:I

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mMimeType:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "throwable"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(Ljava/lang/Throwable;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mErrorCode:I

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mMimeType:Ljava/lang/String;

    .line 26
    return-void
.end method
