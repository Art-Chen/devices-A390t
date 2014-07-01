.class public final enum Lcom/android/internal/telephony/cat/AppInterface$EventListType;
.super Ljava/lang/Enum;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/AppInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventListType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/AppInterface$EventListType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/AppInterface$EventListType;

.field public static final enum Event_BrowserTermination:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

.field public static final enum Event_CallConnected:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

.field public static final enum Event_CallDisconnected:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

.field public static final enum Event_CardReaderStatus:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

.field public static final enum Event_ChannelStatus:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

.field public static final enum Event_DataAvailable:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

.field public static final enum Event_IdleScreenAvailable:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

.field public static final enum Event_LanguageSelection:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

.field public static final enum Event_LocationStatus:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

.field public static final enum Event_MTCall:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

.field public static final enum Event_Unknown:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

.field public static final enum Event_UserActivity:Lcom/android/internal/telephony/cat/AppInterface$EventListType;


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

    .line 110
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    const-string v1, "Event_MTCall"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/cat/AppInterface$EventListType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_MTCall:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    .line 111
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    const-string v1, "Event_CallConnected"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/cat/AppInterface$EventListType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_CallConnected:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    .line 112
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    const-string v1, "Event_CallDisconnected"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/internal/telephony/cat/AppInterface$EventListType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_CallDisconnected:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    .line 113
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    const-string v1, "Event_LocationStatus"

    invoke-direct {v0, v1, v7, v7}, Lcom/android/internal/telephony/cat/AppInterface$EventListType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_LocationStatus:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    .line 114
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    const-string v1, "Event_UserActivity"

    invoke-direct {v0, v1, v8, v8}, Lcom/android/internal/telephony/cat/AppInterface$EventListType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_UserActivity:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    .line 115
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    const-string v1, "Event_IdleScreenAvailable"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$EventListType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_IdleScreenAvailable:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    .line 116
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    const-string v1, "Event_CardReaderStatus"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$EventListType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_CardReaderStatus:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    .line 117
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    const-string v1, "Event_LanguageSelection"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$EventListType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_LanguageSelection:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    .line 118
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    const-string v1, "Event_BrowserTermination"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$EventListType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_BrowserTermination:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    .line 119
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    const-string v1, "Event_DataAvailable"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$EventListType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_DataAvailable:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    .line 120
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    const-string v1, "Event_ChannelStatus"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$EventListType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_ChannelStatus:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    .line 121
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    const-string v1, "Event_Unknown"

    const/16 v2, 0xb

    const/16 v3, 0xff

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$EventListType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_Unknown:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    .line 109
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_MTCall:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_CallConnected:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_CallDisconnected:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_LocationStatus:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_UserActivity:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_IdleScreenAvailable:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_CardReaderStatus:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_LanguageSelection:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_BrowserTermination:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_DataAvailable:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_ChannelStatus:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->Event_Unknown:Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->$VALUES:[Lcom/android/internal/telephony/cat/AppInterface$EventListType;

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
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 126
    iput p3, p0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->mValue:I

    .line 127
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$EventListType;
    .locals 5
    .parameter "value"

    .prologue
    .line 133
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->values()[Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/cat/AppInterface$EventListType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 134
    .local v1, e:Lcom/android/internal/telephony/cat/AppInterface$EventListType;
    iget v4, v1, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->mValue:I

    if-ne v4, p0, :cond_0

    .line 138
    .end local v1           #e:Lcom/android/internal/telephony/cat/AppInterface$EventListType;
    :goto_1
    return-object v1

    .line 133
    .restart local v1       #e:Lcom/android/internal/telephony/cat/AppInterface$EventListType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v1           #e:Lcom/android/internal/telephony/cat/AppInterface$EventListType;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/AppInterface$EventListType;
    .locals 1
    .parameter "name"

    .prologue
    .line 109
    const-class v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/AppInterface$EventListType;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->$VALUES:[Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/AppInterface$EventListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/android/internal/telephony/cat/AppInterface$EventListType;->mValue:I

    return v0
.end method
