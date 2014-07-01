.class public Lcom/android/internal/telephony/cat/StkLanguageDecoder;
.super Ljava/lang/Object;
.source "StkLanguageDecoder.java"


# static fields
.field private static mInstance:Lcom/android/internal/telephony/cat/StkLanguageDecoder;


# instance fields
.field private mLanguageToCountryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    .line 21
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string v1, "af"

    const-string v2, "ZA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sq"

    const-string v2, "AL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string v1, "ar"

    const-string v2, "SA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "zh"

    const-string v2, "CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string v1, "da"

    const-string v2, "DK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "nl"

    const-string v2, "NL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string v1, "en"

    const-string v2, "GB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string v1, "fa"

    const-string v2, "IR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string v1, "fi"

    const-string v2, "FI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string v1, "fr"

    const-string v2, "FR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string v1, "de"

    const-string v2, "DE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "ID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string v1, "it"

    const-string v2, "IT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string v1, "ja"

    const-string v2, "JP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string v1, "ko"

    const-string v2, "KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string v1, "lv"

    const-string v2, "LV"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "nb"

    const-string v2, "NO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pl"

    const-string v2, "PL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pt"

    const-string v2, "PT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ru"

    const-string v2, "RU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string v1, "es"

    const-string v2, "ES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sv"

    const-string v2, "SE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "vi"

    const-string v2, "VN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "uk"

    const-string v2, "UA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "tr"

    const-string v2, "TR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "th"

    const-string v2, "TH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cat/StkLanguageDecoder;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mInstance:Lcom/android/internal/telephony/cat/StkLanguageDecoder;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/StkLanguageDecoder;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mInstance:Lcom/android/internal/telephony/cat/StkLanguageDecoder;

    .line 104
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mInstance:Lcom/android/internal/telephony/cat/StkLanguageDecoder;

    return-object v0
.end method


# virtual methods
.method public getCountryFromLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "language"

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/StkLanguageDecoder;->mLanguageToCountryMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getDefaultLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, "en"

    return-object v0
.end method
