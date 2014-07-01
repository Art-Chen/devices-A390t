.class public Lcom/android/internal/telephony/MsmsIccProvider$AdnComparator;
.super Ljava/lang/Object;
.source "MsmsIccProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MsmsIccProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdnComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/telephony/AdnRecord;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)I
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, alabel:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, blabel:Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 117
    :cond_1
    if-nez v0, :cond_2

    .line 118
    const-string v2, "MsmsIccProvider"

    const-string v3, "alabel == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v0, ""

    goto :goto_0

    .line 120
    :cond_2
    if-nez v1, :cond_0

    .line 121
    const-string v2, "MsmsIccProvider"

    const-string v3, "blabel == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v1, ""

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    check-cast p1, Lcom/android/internal/telephony/AdnRecord;

    .end local p1
    check-cast p2, Lcom/android/internal/telephony/AdnRecord;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/MsmsIccProvider$AdnComparator;->compare(Lcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)I

    move-result v0

    return v0
.end method
