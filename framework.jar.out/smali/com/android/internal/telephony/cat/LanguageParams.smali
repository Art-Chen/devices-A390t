.class Lcom/android/internal/telephony/cat/LanguageParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field languageString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "language"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 84
    iput-object p2, p0, Lcom/android/internal/telephony/cat/LanguageParams;->languageString:Ljava/lang/String;

    .line 85
    return-void
.end method
