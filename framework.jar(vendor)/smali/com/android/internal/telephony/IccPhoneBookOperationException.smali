.class public Lcom/android/internal/telephony/IccPhoneBookOperationException;
.super Ljava/lang/RuntimeException;
.source "IccPhoneBookOperationException.java"


# static fields
.field public static final ADN_CAPACITY_FULL:I = -0x2

.field public static final EMAIL_CAPACITY_FULL:I = -0x1

.field public static final LOAD_ADN_FAIL:I = -0x5

.field public static final OVER_NAME_MAX_LENGTH:I = -0x3

.field public static final OVER_NUMBER_MAX_LENGTH:I = -0x4

.field public static final WRITE_OPREATION_FAILED:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field mErrorCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccPhoneBookOperationException;->mErrorCode:I

    .line 18
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "detailMessage"

    .prologue
    .line 35
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccPhoneBookOperationException;->mErrorCode:I

    .line 36
    iput p1, p0, Lcom/android/internal/telephony/IccPhoneBookOperationException;->mErrorCode:I

    .line 37
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "errorCode"
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 40
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccPhoneBookOperationException;->mErrorCode:I

    .line 41
    iput p1, p0, Lcom/android/internal/telephony/IccPhoneBookOperationException;->mErrorCode:I

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "detailMessage"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccPhoneBookOperationException;->mErrorCode:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccPhoneBookOperationException;->mErrorCode:I

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "throwable"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccPhoneBookOperationException;->mErrorCode:I

    .line 28
    return-void
.end method
