.class public Lcom/android/internal/telephony/IccPBForRecordException;
.super Lcom/android/internal/telephony/IccPhoneBookOperationException;
.source "IccPBForRecordException.java"


# static fields
.field public static final ADN_RECORD_CAPACITY_FULL:I = -0x4

.field public static final LOAD_RECORD_FAILED:I = -0x5

.field public static final WRITE_RECORD_FAILED:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mErrorCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccPBForRecordException;->mErrorCode:I

    .line 15
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "detailMessage"

    .prologue
    .line 32
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccPBForRecordException;->mErrorCode:I

    .line 33
    iput p1, p0, Lcom/android/internal/telephony/IccPBForRecordException;->mErrorCode:I

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "detailMessage"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccPBForRecordException;->mErrorCode:I

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccPBForRecordException;->mErrorCode:I

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "throwable"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(Ljava/lang/Throwable;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccPBForRecordException;->mErrorCode:I

    .line 25
    return-void
.end method
