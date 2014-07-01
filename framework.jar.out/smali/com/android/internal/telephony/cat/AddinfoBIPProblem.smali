.class final enum Lcom/android/internal/telephony/cat/AddinfoBIPProblem;
.super Ljava/lang/Enum;
.source "ResultCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/AddinfoBIPProblem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

.field public static final enum BUFFER_SIZE_NOT_AVAILABLE:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

.field public static final enum CHANNEL_CLOSED:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

.field public static final enum CHANNEL_ID_INVALID:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

.field public static final enum NO_CHANNEL_AVAILABLE:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

.field public static final enum NO_SPECIFIC_CAUSE:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

.field public static final enum SECURITY_ERROR:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

.field public static final enum TRANSPORT_LEVEL_NOT_AVAILABLE:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 221
    new-instance v0, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    const-string v1, "NO_SPECIFIC_CAUSE"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;->NO_SPECIFIC_CAUSE:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    .line 222
    new-instance v0, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    const-string v1, "NO_CHANNEL_AVAILABLE"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;->NO_CHANNEL_AVAILABLE:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    .line 223
    new-instance v0, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    const-string v1, "CHANNEL_CLOSED"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;->CHANNEL_CLOSED:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    .line 224
    new-instance v0, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    const-string v1, "CHANNEL_ID_INVALID"

    invoke-direct {v0, v1, v7, v7}, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;->CHANNEL_ID_INVALID:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    .line 225
    new-instance v0, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    const-string v1, "BUFFER_SIZE_NOT_AVAILABLE"

    invoke-direct {v0, v1, v8, v8}, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;->BUFFER_SIZE_NOT_AVAILABLE:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    .line 226
    new-instance v0, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    const-string v1, "SECURITY_ERROR"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;->SECURITY_ERROR:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    .line 227
    new-instance v0, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    const-string v1, "TRANSPORT_LEVEL_NOT_AVAILABLE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;->TRANSPORT_LEVEL_NOT_AVAILABLE:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    .line 220
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    sget-object v1, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;->NO_SPECIFIC_CAUSE:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;->NO_CHANNEL_AVAILABLE:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;->CHANNEL_CLOSED:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;->CHANNEL_ID_INVALID:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;->BUFFER_SIZE_NOT_AVAILABLE:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;->SECURITY_ERROR:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;->TRANSPORT_LEVEL_NOT_AVAILABLE:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;->$VALUES:[Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 232
    iput p3, p0, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;->mValue:I

    .line 233
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/AddinfoBIPProblem;
    .locals 5
    .parameter "value"

    .prologue
    .line 240
    invoke-static {}, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;->values()[Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/cat/AddinfoBIPProblem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 241
    .local v1, e:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;
    iget v4, v1, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;->mValue:I

    if-ne v4, p0, :cond_0

    .line 245
    .end local v1           #e:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;
    :goto_1
    return-object v1

    .line 240
    .restart local v1       #e:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    .end local v1           #e:Lcom/android/internal/telephony/cat/AddinfoBIPProblem;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/AddinfoBIPProblem;
    .locals 1
    .parameter "name"

    .prologue
    .line 220
    const-class v0, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/AddinfoBIPProblem;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;->$VALUES:[Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/AddinfoBIPProblem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/AddinfoBIPProblem;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/android/internal/telephony/cat/AddinfoBIPProblem;->mValue:I

    return v0
.end method
