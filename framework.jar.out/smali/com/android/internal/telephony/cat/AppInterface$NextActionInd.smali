.class public final enum Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;
.super Ljava/lang/Enum;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/AppInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NextActionInd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_GET_READER_STATUS:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_PERFORM_CARD_APDU:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_POWER_OFF_CARD:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_POWER_ON_CARD:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_RESERVE_TIA_EIA_136:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

.field public static final enum NAI_SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x15

    const/16 v7, 0x13

    const/16 v6, 0x12

    const/16 v5, 0x11

    const/16 v4, 0x10

    .line 143
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_SET_UP_CALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 144
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_SEND_SS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 145
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_SEND_USSD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 146
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_SEND_SMS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 147
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_PLAY_TONE"

    const/4 v2, 0x4

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 148
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_DISPLAY_TEXT"

    const/4 v2, 0x5

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 149
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_GET_INKEY"

    const/4 v2, 0x6

    const/16 v3, 0x22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 150
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_GET_INPUT"

    const/4 v2, 0x7

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 151
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_SELECT_ITEM"

    const/16 v2, 0x8

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 152
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_SET_UP_MENU"

    const/16 v2, 0x9

    const/16 v3, 0x25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 153
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_SET_UP_IDLE_MODE_TEXT"

    const/16 v2, 0xa

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 154
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_PERFORM_CARD_APDU"

    const/16 v2, 0xb

    const/16 v3, 0x30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_PERFORM_CARD_APDU:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 155
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_POWER_ON_CARD"

    const/16 v2, 0xc

    const/16 v3, 0x31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_POWER_ON_CARD:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 156
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_POWER_OFF_CARD"

    const/16 v2, 0xd

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_POWER_OFF_CARD:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 157
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_GET_READER_STATUS"

    const/16 v2, 0xe

    const/16 v3, 0x33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_GET_READER_STATUS:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 158
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_OPEN_CHANNEL"

    const/16 v2, 0xf

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 159
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_CLOSE_CHANNEL"

    const/16 v2, 0x41

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 160
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_RECEIVE_DATA"

    const/16 v2, 0x42

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 161
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_SEND_DATA"

    const/16 v2, 0x43

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 162
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_GET_CHANNEL_STATUS"

    const/16 v2, 0x44

    invoke-direct {v0, v1, v7, v2}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 163
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_PROVIDE_LOCAL_INFORMATION"

    const/16 v2, 0x14

    const/16 v3, 0x26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 164
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_LAUNCH_BROWSER"

    invoke-direct {v0, v1, v8, v8}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 165
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const-string v1, "NAI_RESERVE_TIA_EIA_136"

    const/16 v2, 0x16

    const/16 v3, 0x60

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_RESERVE_TIA_EIA_136:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    .line 142
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_PERFORM_CARD_APDU:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_POWER_ON_CARD:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_POWER_OFF_CARD:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_GET_READER_STATUS:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v1, v0, v7

    const/16 v1, 0x14

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v1, v0, v8

    const/16 v1, 0x16

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->NAI_RESERVE_TIA_EIA_136:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->$VALUES:[Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

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
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput p3, p0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->mValue:I

    .line 171
    return-void
.end method

.method public static NaiToString(Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;)Ljava/lang/String;
    .locals 3
    .parameter "nai"

    .prologue
    const/4 v0, 0x0

    .line 188
    if-nez p0, :cond_0

    .line 215
    :goto_0
    return-object v0

    .line 191
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$NextActionInd:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 192
    :pswitch_0
    const-string v0, "Set Up Call"

    goto :goto_0

    .line 193
    :pswitch_1
    const-string v0, "Send SS"

    goto :goto_0

    .line 194
    :pswitch_2
    const-string v0, "Send USSD"

    goto :goto_0

    .line 195
    :pswitch_3
    const-string v0, "Send Short Message"

    goto :goto_0

    .line 196
    :pswitch_4
    const-string v0, "Play Tone"

    goto :goto_0

    .line 197
    :pswitch_5
    const-string v0, "Display Text"

    goto :goto_0

    .line 198
    :pswitch_6
    const-string v0, "Get INKEY"

    goto :goto_0

    .line 199
    :pswitch_7
    const-string v0, "Get INPUT"

    goto :goto_0

    .line 200
    :pswitch_8
    const-string v0, "Select Item"

    goto :goto_0

    .line 201
    :pswitch_9
    const-string v0, "Set Up Menu"

    goto :goto_0

    .line 202
    :pswitch_a
    const-string v0, "Set Up Idle Mode Text"

    goto :goto_0

    .line 203
    :pswitch_b
    const-string v0, "Perform Card APDU"

    goto :goto_0

    .line 204
    :pswitch_c
    const-string v0, "Power On Card"

    goto :goto_0

    .line 205
    :pswitch_d
    const-string v0, "Power Off Card"

    goto :goto_0

    .line 206
    :pswitch_e
    const-string v0, "Get Reader Status"

    goto :goto_0

    .line 207
    :pswitch_f
    const-string v0, "Open Channel"

    goto :goto_0

    .line 208
    :pswitch_10
    const-string v0, "Close Channel"

    goto :goto_0

    .line 209
    :pswitch_11
    const-string v0, "Receive Data"

    goto :goto_0

    .line 210
    :pswitch_12
    const-string v0, "Send Data"

    goto :goto_0

    .line 211
    :pswitch_13
    const-string v0, "Get Channel Status"

    goto :goto_0

    .line 212
    :pswitch_14
    const-string v0, "Reserve TIA EIA 136"

    goto :goto_0

    .line 213
    :pswitch_15
    const-string v0, "Provide Local Information"

    goto :goto_0

    .line 214
    :pswitch_16
    const-string v0, "Launch Brower"

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;
    .locals 5
    .parameter "value"

    .prologue
    .line 178
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->values()[Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 179
    .local v1, e:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;
    iget v4, v1, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->mValue:I

    if-ne v4, p0, :cond_0

    .line 183
    .end local v1           #e:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;
    :goto_1
    return-object v1

    .line 178
    .restart local v1       #e:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    .end local v1           #e:Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;
    .locals 1
    .parameter "name"

    .prologue
    .line 142
    const-class v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->$VALUES:[Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;->mValue:I

    return v0
.end method
