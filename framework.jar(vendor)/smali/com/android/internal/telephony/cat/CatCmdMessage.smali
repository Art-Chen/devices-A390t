.class public Lcom/android/internal/telephony/cat/CatCmdMessage;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatCmdMessage$2;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/CatCmdMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

.field private mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

.field private mChannelStatus:Lcom/android/internal/telephony/cat/GetChannelStatus;

.field private mCloseChannel:Lcom/android/internal/telephony/cat/CloseChannelData;

.field mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field private mDeviceIdentities:Lcom/android/internal/telephony/cat/DeviceIdentities;

.field private mDtmfMessage:Lcom/android/internal/telephony/cat/DtmfMessage;

.field private mEventList:[Lcom/android/internal/telephony/cat/AppInterface$EventListType;

.field private mInput:Lcom/android/internal/telephony/cat/Input;

.field private mLanguageMessage:Lcom/android/internal/telephony/cat/LanguageMessage;

.field private mMenu:Lcom/android/internal/telephony/cat/Menu;

.field private mOpenChannel:Lcom/android/internal/telephony/cat/OpenChannelData;

.field private mReceiveData:Lcom/android/internal/telephony/cat/ReceiveChannelData;

.field private mSendData:Lcom/android/internal/telephony/cat/SendChannelData;

.field private mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field private mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 235
    new-instance v0, Lcom/android/internal/telephony/cat/CatCmdMessage$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 36
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 37
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 41
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    .line 50
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDeviceIdentities:Lcom/android/internal/telephony/cat/DeviceIdentities;

    .line 142
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 143
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 144
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Menu;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 145
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Input;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    .line 146
    sget-object v0, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_0
    :pswitch_0
    return-void

    .line 148
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-static {}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->values()[Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    goto :goto_0

    .line 153
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/ToneSettings;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    goto :goto_0

    .line 156
    :pswitch_3
    new-instance v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 157
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 158
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 159
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->calladdress:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_0

    .line 163
    :pswitch_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/DtmfMessage;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDtmfMessage:Lcom/android/internal/telephony/cat/DtmfMessage;

    goto :goto_0

    .line 168
    :pswitch_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/LanguageMessage;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLanguageMessage:Lcom/android/internal/telephony/cat/LanguageMessage;

    goto :goto_0

    .line 172
    :pswitch_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/OpenChannelData;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mOpenChannel:Lcom/android/internal/telephony/cat/OpenChannelData;

    goto :goto_0

    .line 175
    :pswitch_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CloseChannelData;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseChannel:Lcom/android/internal/telephony/cat/CloseChannelData;

    goto :goto_0

    .line 178
    :pswitch_8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/ReceiveChannelData;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mReceiveData:Lcom/android/internal/telephony/cat/ReceiveChannelData;

    goto :goto_0

    .line 181
    :pswitch_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/SendChannelData;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSendData:Lcom/android/internal/telephony/cat/SendChannelData;

    goto/16 :goto_0

    .line 184
    :pswitch_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/GetChannelStatus;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/GetChannelStatus;

    goto/16 :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 3
    .parameter "cmdParams"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 36
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 37
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 41
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    .line 50
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDeviceIdentities:Lcom/android/internal/telephony/cat/DeviceIdentities;

    .line 70
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 71
    sget-object v1, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 139
    .end local p1
    :goto_0
    return-void

    .line 74
    .restart local p1
    :pswitch_0
    check-cast p1, Lcom/android/internal/telephony/cat/SelectItemParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/SelectItemParams;->menu:Lcom/android/internal/telephony/cat/Menu;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    goto :goto_0

    .line 78
    .restart local p1
    :pswitch_1
    new-instance v1, Lcom/android/internal/telephony/cat/DtmfMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/DtmfMessage;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDtmfMessage:Lcom/android/internal/telephony/cat/DtmfMessage;

    .line 79
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDtmfMessage:Lcom/android/internal/telephony/cat/DtmfMessage;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/DtmfParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/DtmfParams;->dtmfString:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/internal/telephony/cat/DtmfMessage;->mdtmfString:Ljava/lang/String;

    .line 80
    check-cast p1, Lcom/android/internal/telephony/cat/DtmfParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/DtmfParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_0

    .line 89
    .restart local p1
    :pswitch_2
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_0

    .line 93
    .restart local p1
    :pswitch_3
    check-cast p1, Lcom/android/internal/telephony/cat/GetInputParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/GetInputParams;->input:Lcom/android/internal/telephony/cat/Input;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    goto :goto_0

    .restart local p1
    :pswitch_4
    move-object v1, p1

    .line 96
    check-cast v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 97
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 98
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->url:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    goto :goto_0

    .restart local p1
    :pswitch_5
    move-object v0, p1

    .line 102
    check-cast v0, Lcom/android/internal/telephony/cat/PlayToneParams;

    .line 103
    .local v0, params:Lcom/android/internal/telephony/cat/PlayToneParams;
    iget-object v1, v0, Lcom/android/internal/telephony/cat/PlayToneParams;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 104
    iget-object v1, v0, Lcom/android/internal/telephony/cat/PlayToneParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_0

    .line 107
    .end local v0           #params:Lcom/android/internal/telephony/cat/PlayToneParams;
    :pswitch_6
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 108
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 109
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CallSetupParams;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 110
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CallSetupParams;->calladdress:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->calladdress:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_0

    .line 113
    .restart local p1
    :pswitch_7
    check-cast p1, Lcom/android/internal/telephony/cat/EventListParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/EventListParams;->eventList:[Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    goto/16 :goto_0

    .line 117
    .restart local p1
    :pswitch_8
    new-instance v1, Lcom/android/internal/telephony/cat/LanguageMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/LanguageMessage;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLanguageMessage:Lcom/android/internal/telephony/cat/LanguageMessage;

    .line 118
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLanguageMessage:Lcom/android/internal/telephony/cat/LanguageMessage;

    check-cast p1, Lcom/android/internal/telephony/cat/LanguageParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/cat/LanguageParams;->languageString:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/LanguageMessage;->languageString:Ljava/lang/String;

    goto/16 :goto_0

    .line 122
    .restart local p1
    :pswitch_9
    check-cast p1, Lcom/android/internal/telephony/cat/OpenChannelDataParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/OpenChannelDataParams;->openchanneldata:Lcom/android/internal/telephony/cat/OpenChannelData;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mOpenChannel:Lcom/android/internal/telephony/cat/OpenChannelData;

    goto/16 :goto_0

    .restart local p1
    :pswitch_a
    move-object v1, p1

    .line 125
    check-cast v1, Lcom/android/internal/telephony/cat/CloseChannelDataParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CloseChannelDataParams;->closechanneldata:Lcom/android/internal/telephony/cat/CloseChannelData;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseChannel:Lcom/android/internal/telephony/cat/CloseChannelData;

    .line 126
    check-cast p1, Lcom/android/internal/telephony/cat/CloseChannelDataParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CloseChannelDataParams;->deviceIdentities:Lcom/android/internal/telephony/cat/DeviceIdentities;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDeviceIdentities:Lcom/android/internal/telephony/cat/DeviceIdentities;

    goto/16 :goto_0

    .line 129
    .restart local p1
    :pswitch_b
    check-cast p1, Lcom/android/internal/telephony/cat/ReceiveChannelDataParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/ReceiveChannelDataParams;->receivedata:Lcom/android/internal/telephony/cat/ReceiveChannelData;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mReceiveData:Lcom/android/internal/telephony/cat/ReceiveChannelData;

    goto/16 :goto_0

    .restart local p1
    :pswitch_c
    move-object v1, p1

    .line 132
    check-cast v1, Lcom/android/internal/telephony/cat/SendChannelDataParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/SendChannelDataParams;->senddata:Lcom/android/internal/telephony/cat/SendChannelData;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSendData:Lcom/android/internal/telephony/cat/SendChannelData;

    .line 133
    check-cast p1, Lcom/android/internal/telephony/cat/SendChannelDataParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/SendChannelDataParams;->deviceIdentities:Lcom/android/internal/telephony/cat/DeviceIdentities;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDeviceIdentities:Lcom/android/internal/telephony/cat/DeviceIdentities;

    goto/16 :goto_0

    .line 136
    .restart local p1
    :pswitch_d
    check-cast p1, Lcom/android/internal/telephony/cat/GetChannelStatusParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/GetChannelStatusParams;->channelstatus:Lcom/android/internal/telephony/cat/GetChannelStatus;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/GetChannelStatus;

    goto/16 :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
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
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public geInput()Lcom/android/internal/telephony/cat/Input;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    return-object v0
.end method

.method public geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    return-object v0
.end method

.method public getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    return-object v0
.end method

.method public getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    return-object v0
.end method

.method public getChannelStatus()Lcom/android/internal/telephony/cat/GetChannelStatus;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/GetChannelStatus;

    return-object v0
.end method

.method public getCloseChannelData()Lcom/android/internal/telephony/cat/CloseChannelData;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseChannel:Lcom/android/internal/telephony/cat/CloseChannelData;

    return-object v0
.end method

.method public getCmdDet()Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-object v0
.end method

.method public getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdentities()Lcom/android/internal/telephony/cat/DeviceIdentities;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDeviceIdentities:Lcom/android/internal/telephony/cat/DeviceIdentities;

    return-object v0
.end method

.method public getDtmfMessage()Lcom/android/internal/telephony/cat/DtmfMessage;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDtmfMessage:Lcom/android/internal/telephony/cat/DtmfMessage;

    return-object v0
.end method

.method public getEventList()[Lcom/android/internal/telephony/cat/AppInterface$EventListType;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    return-object v0
.end method

.method public getLanguageMessage()Lcom/android/internal/telephony/cat/LanguageMessage;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLanguageMessage:Lcom/android/internal/telephony/cat/LanguageMessage;

    return-object v0
.end method

.method public getMenu()Lcom/android/internal/telephony/cat/Menu;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    return-object v0
.end method

.method public getOpenChannelData()Lcom/android/internal/telephony/cat/OpenChannelData;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mOpenChannel:Lcom/android/internal/telephony/cat/OpenChannelData;

    return-object v0
.end method

.method public getReceiveChannelData()Lcom/android/internal/telephony/cat/ReceiveChannelData;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mReceiveData:Lcom/android/internal/telephony/cat/ReceiveChannelData;

    return-object v0
.end method

.method public getSendChannelData()Lcom/android/internal/telephony/cat/SendChannelData;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSendData:Lcom/android/internal/telephony/cat/SendChannelData;

    return-object v0
.end method

.method public getToneSettings()Lcom/android/internal/telephony/cat/ToneSettings;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 194
    sget-object v0, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 233
    :goto_0
    :pswitch_0
    return-void

    .line 196
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 200
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 203
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->calladdress:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 209
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDtmfMessage:Lcom/android/internal/telephony/cat/DtmfMessage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 214
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLanguageMessage:Lcom/android/internal/telephony/cat/LanguageMessage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 218
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mOpenChannel:Lcom/android/internal/telephony/cat/OpenChannelData;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 221
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseChannel:Lcom/android/internal/telephony/cat/CloseChannelData;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 224
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mReceiveData:Lcom/android/internal/telephony/cat/ReceiveChannelData;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 227
    :pswitch_9
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSendData:Lcom/android/internal/telephony/cat/SendChannelData;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 230
    :pswitch_a
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/GetChannelStatus;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
