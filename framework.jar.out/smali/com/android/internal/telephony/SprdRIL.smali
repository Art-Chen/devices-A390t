.class public final Lcom/android/internal/telephony/SprdRIL;
.super Lcom/android/internal/telephony/RIL;
.source "SprdRIL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SprdRIL$1;,
        Lcom/android/internal/telephony/SprdRIL$DSCIInfo;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SprdRILJ"


# instance fields
.field protected mExternalCallRegistrants:Landroid/os/RegistrantList;

.field protected mStkStinRegistrant:Landroid/os/Registrant;

.field protected mVPCodecRegistrants:Landroid/os/RegistrantList;

.field protected mVPDataRegistrant:Landroid/os/Registrant;

.field protected mVPFailRegistrant:Landroid/os/Registrant;

.field protected mVPFallBackRegistrant:Landroid/os/Registrant;

.field protected mVPMMRingRegistrant:Landroid/os/Registrant;

.field protected mVPMediaStartRegistrant:Landroid/os/Registrant;

.field protected mVPRecordVideoRegistrant:Landroid/os/Registrant;

.field protected mVPRemoteCameraRegistrant:Landroid/os/Registrant;

.field protected mVPRemoteMediaRegistrant:Landroid/os/Registrant;

.field protected mVPStrsRegistrant:Landroid/os/Registrant;

.field protected mVideoCallStateRegistrants:Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/SprdRIL;-><init>(Landroid/content/Context;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 43
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVPCodecRegistrants:Landroid/os/RegistrantList;

    .line 52
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVideoCallStateRegistrants:Landroid/os/RegistrantList;

    .line 53
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mExternalCallRegistrants:Landroid/os/RegistrantList;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"
    .parameter "phoneId"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    .line 43
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVPCodecRegistrants:Landroid/os/RegistrantList;

    .line 52
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVideoCallStateRegistrants:Landroid/os/RegistrantList;

    .line 53
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mExternalCallRegistrants:Landroid/os/RegistrantList;

    .line 81
    return-void
.end method

.method private sprdRequestToString(I)Ljava/lang/String;
    .locals 1
    .parameter "request"

    .prologue
    .line 809
    packed-switch p1, :pswitch_data_0

    .line 831
    :pswitch_0
    invoke-static {p1}, Lcom/android/internal/telephony/SprdRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 810
    :pswitch_1
    const-string v0, "VIDEOPHONE_DIAL"

    goto :goto_0

    .line 811
    :pswitch_2
    const-string v0, "VIDEOPHONE_CODEC"

    goto :goto_0

    .line 812
    :pswitch_3
    const-string v0, "VIDEOPHONE_HANGUP"

    goto :goto_0

    .line 813
    :pswitch_4
    const-string v0, "VIDEOPHONE_ANSWER"

    goto :goto_0

    .line 814
    :pswitch_5
    const-string v0, "VIDEOPHONE_FALLBACK"

    goto :goto_0

    .line 815
    :pswitch_6
    const-string v0, "VIDEOPHONE_STRING"

    goto :goto_0

    .line 816
    :pswitch_7
    const-string v0, "VIDEOPHONE_LOCAL_MEDIA"

    goto :goto_0

    .line 817
    :pswitch_8
    const-string v0, "VIDEOPHONE_RECORD_VIDEO"

    goto :goto_0

    .line 818
    :pswitch_9
    const-string v0, "VIDEOPHONE_RECORD_AUDIO"

    goto :goto_0

    .line 819
    :pswitch_a
    const-string v0, "VIDEOPHONE_TEST"

    goto :goto_0

    .line 820
    :pswitch_b
    const-string v0, "GET_CURRENT_VIDEOCALLS"

    goto :goto_0

    .line 821
    :pswitch_c
    const-string v0, "VIDEOPHONE_CONTROL_AUDIO"

    goto :goto_0

    .line 822
    :pswitch_d
    const-string v0, "VIDEOPHONE_CONTROL_IFRAME"

    goto :goto_0

    .line 823
    :pswitch_e
    const-string v0, "MBBMS_GSM_AUTHEN"

    goto :goto_0

    .line 824
    :pswitch_f
    const-string v0, "MBBMS_USIM_AUTHEN"

    goto :goto_0

    .line 825
    :pswitch_10
    const-string v0, "MBBMS_SIM_TYPE"

    goto :goto_0

    .line 826
    :pswitch_11
    const-string v0, "GPRS_ATTACH"

    goto :goto_0

    .line 827
    :pswitch_12
    const-string v0, "GPRS_DETACH"

    goto :goto_0

    .line 828
    :pswitch_13
    const-string v0, "GET_SIM_CAPACITY"

    goto :goto_0

    .line 829
    :pswitch_14
    const-string v0, "REMAIN_TIMES"

    goto :goto_0

    .line 809
    :pswitch_data_0
    .packed-switch 0x6c
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public Mbbms_Gsm_Authenticate(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "nonce"
    .parameter "result"

    .prologue
    .line 888
    const/16 v1, 0x7a

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 890
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 895
    return-void
.end method

.method public Mbbms_USim_Authenticate(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "nonce"
    .parameter "autn"
    .parameter "result"

    .prologue
    .line 898
    const/16 v1, 0x7b

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 899
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 900
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 901
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 905
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 907
    return-void
.end method

.method public acceptVP(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 138
    const/16 v1, 0x6f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 140
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 143
    return-void
.end method

.method public codecVP(ILandroid/os/Bundle;Landroid/os/Message;)V
    .locals 3
    .parameter "type"
    .parameter "param"
    .parameter "result"

    .prologue
    .line 274
    const/16 v1, 0x6d

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 277
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 284
    return-void
.end method

.method public controlIFrame(ZZLandroid/os/Message;)V
    .locals 5
    .parameter "isIFrame"
    .parameter "needIFrame"
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 311
    const/16 v1, 0x79

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 314
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget-object v4, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 322
    return-void

    :cond_0
    move v1, v3

    .line 315
    goto :goto_0

    :cond_1
    move v2, v3

    .line 316
    goto :goto_1
.end method

.method public controlVPAudio(ZLandroid/os/Message;)V
    .locals 3
    .parameter "bEnable"
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 299
    const/16 v2, 0x78

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 302
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 308
    return-void

    .line 303
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public controlVPCamera(ZLandroid/os/Message;)V
    .locals 1
    .parameter "bEnable"
    .parameter "result"

    .prologue
    .line 295
    if-eqz p1, :cond_0

    const-string/jumbo v0, "open_:camera_"

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SprdRIL;->sendVPString(Ljava/lang/String;Landroid/os/Message;)V

    .line 296
    return-void

    .line 295
    :cond_0
    const-string v0, "close_:camera_"

    goto :goto_0
.end method

.method public controlVPLocalMedia(IIZLandroid/os/Message;)V
    .locals 3
    .parameter "datatype"
    .parameter "sw"
    .parameter "bReplaceImg"
    .parameter "result"

    .prologue
    .line 168
    const/16 v1, 0x72

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 173
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 187
    return-void

    .line 181
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;ZLandroid/os/Message;)V
    .locals 6
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "isStkCall"
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    const/16 v3, 0xa

    invoke-static {v3, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 88
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    if-nez p3, :cond_1

    .line 93
    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    :goto_0
    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p4, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SprdRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 106
    if-eqz p4, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/internal/telephony/SprdRIL;->mExternalCallRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v5, p1, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 109
    :cond_0
    return-void

    .line 95
    :cond_1
    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 100
    goto :goto_1
.end method

.method public dialVP(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .parameter "address"
    .parameter "sub_address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 113
    const/16 v1, 0x6c

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 115
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 122
    return-void
.end method

.method public fallBackVP(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 146
    const/16 v1, 0x70

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 149
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 152
    return-void
.end method

.method public getCurrentVideoCalls(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 287
    const/16 v1, 0x77

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 289
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 292
    return-void
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 884
    iget v0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:I

    return v0
.end method

.method public getRemainTimes(ILandroid/os/Message;)V
    .locals 3
    .parameter "type"
    .parameter "result"

    .prologue
    .line 920
    const/16 v1, 0x84

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 921
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 928
    return-void
.end method

.method public getSimCapacity(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 932
    const/16 v1, 0x7f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 934
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 938
    return-void
.end method

.method public getSimType(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 910
    const/16 v1, 0x7c

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 912
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 916
    return-void
.end method

.method public hangupVP(Landroid/os/Message;I)V
    .locals 3
    .parameter "result"
    .parameter "reason"

    .prologue
    .line 126
    const/16 v1, 0x6e

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 129
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 134
    return-void
.end method

.method public mmiEnterSim(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pukNewPin"
    .parameter "result"

    .prologue
    .line 942
    const/16 v1, 0x82

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 944
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 948
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 950
    return-void
.end method

.method protected processSolicited(Landroid/os/Parcel;)V
    .locals 11
    .parameter "p"

    .prologue
    const/4 v10, 0x0

    .line 452
    const/4 v1, 0x0

    .line 453
    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 455
    .local v2, position:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 456
    .local v5, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 460
    .local v0, error:I
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SprdRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 462
    .local v4, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v4, :cond_0

    .line 463
    const-string v7, "SprdRILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected solicited response! sn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :goto_0
    return-void

    .line 468
    :cond_0
    const/4 v3, 0x0

    .line 470
    .local v3, ret:Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v7

    if-lez v7, :cond_3

    .line 473
    :cond_1
    :try_start_0
    iget v7, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v7, :pswitch_data_0

    .line 500
    :pswitch_0
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    iget v7, p0, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    .line 503
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    :try_start_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 505
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processSolicited(Landroid/os/Parcel;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    move-exception v6

    .line 511
    .local v6, tr:Ljava/lang/Throwable;
    const-string v7, "SprdRILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "< "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " exception, possible invalid RIL response"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    iget-object v7, v4, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_2

    .line 516
    iget-object v7, v4, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v10, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 517
    iget-object v7, v4, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 519
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_0

    .line 474
    .end local v6           #tr:Ljava/lang/Throwable;
    :pswitch_1
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseSMSCString(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    .line 524
    .end local v3           #ret:Ljava/lang/Object;
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 525
    invoke-virtual {v4, v0, v3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 526
    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_0

    .line 475
    .restart local v3       #ret:Ljava/lang/Object;
    :pswitch_2
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 476
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 477
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 478
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 479
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 480
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 481
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 482
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 483
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 484
    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 485
    :pswitch_c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 486
    :pswitch_d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 487
    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 488
    :pswitch_f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 489
    :pswitch_10
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 490
    :pswitch_11
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 491
    :pswitch_12
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 492
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 493
    :pswitch_14
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 494
    :pswitch_15
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 496
    :pswitch_16
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 497
    :pswitch_17
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 498
    :pswitch_18
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v3

    goto :goto_1

    .line 503
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v7
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 530
    .end local v3           #ret:Ljava/lang/Object;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v8, v3}, Lcom/android/internal/telephony/SprdRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 533
    iget-object v7, v4, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_5

    .line 535
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SprdRIL:processSolicited: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "< send result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    iget v8, v8, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 536
    iget-object v7, v4, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v3, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 537
    iget-object v7, v4, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 540
    :cond_5
    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 473
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_13
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 13
    .parameter "p"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 568
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 570
    .local v2, position:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 573
    .local v3, response:I
    packed-switch v3, :pswitch_data_0

    .line 588
    :pswitch_0
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 589
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 574
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 598
    .local v4, ret:Ljava/lang/Object;
    :goto_1
    packed-switch v3, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 601
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SprdRIL;->unsljLog(I)V

    .line 603
    iget-object v7, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_0

    .line 604
    iget-object v7, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v12, v4, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 575
    .end local v4           #ret:Ljava/lang/Object;
    :pswitch_4
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 576
    .end local v4           #ret:Ljava/lang/Object;
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 577
    .end local v4           #ret:Ljava/lang/Object;
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 578
    .end local v4           #ret:Ljava/lang/Object;
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 579
    .end local v4           #ret:Ljava/lang/Object;
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 580
    .end local v4           #ret:Ljava/lang/Object;
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 581
    .end local v4           #ret:Ljava/lang/Object;
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 582
    .end local v4           #ret:Ljava/lang/Object;
    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseDSCI(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 583
    .end local v4           #ret:Ljava/lang/Object;
    :pswitch_c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 584
    .end local v4           #ret:Ljava/lang/Object;
    :pswitch_d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 585
    .end local v4           #ret:Ljava/lang/Object;
    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 586
    .end local v4           #ret:Ljava/lang/Object;
    :pswitch_f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SprdRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .restart local v4       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 592
    .end local v4           #ret:Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 593
    .local v6, tr:Ljava/lang/Throwable;
    const-string v7, "SprdRILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception processing unsol response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 611
    .end local v6           #tr:Ljava/lang/Throwable;
    .restart local v4       #ret:Ljava/lang/Object;
    :pswitch_10
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/SprdRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 621
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPDataRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_0

    .line 622
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPDataRegistrant:Landroid/os/Registrant;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v12, v4, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 629
    :pswitch_11
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/SprdRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 631
    check-cast v4, [I

    .end local v4           #ret:Ljava/lang/Object;
    move-object v1, v4

    check-cast v1, [I

    .line 632
    .local v1, params:[I
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPCodecRegistrants:Landroid/os/RegistrantList;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v12, v1, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 638
    .end local v1           #params:[I
    .restart local v4       #ret:Ljava/lang/Object;
    :pswitch_12
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SprdRIL;->unsljLog(I)V

    .line 640
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPStrsRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_1

    .line 641
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPStrsRegistrant:Landroid/os/Registrant;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v12, v4, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 644
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPRemoteCameraRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_0

    move-object v5, v4

    .line 645
    check-cast v5, Ljava/lang/String;

    .line 646
    .local v5, str:Ljava/lang/String;
    const-string/jumbo v7, "open_:camera_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 647
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPRemoteCameraRegistrant:Landroid/os/Registrant;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v8, v12, v9, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 649
    :cond_2
    const-string v7, "close_:camera_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 650
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPRemoteCameraRegistrant:Landroid/os/Registrant;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v8, v12, v9, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 657
    .end local v5           #str:Ljava/lang/String;
    :pswitch_13
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/SprdRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 659
    check-cast v4, [I

    .end local v4           #ret:Ljava/lang/Object;
    move-object v1, v4

    check-cast v1, [I

    .line 661
    .restart local v1       #params:[I
    array-length v7, v1

    const/4 v8, 0x2

    if-lt v7, v8, :cond_3

    .line 662
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPRemoteMediaRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_0

    .line 663
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPRemoteMediaRegistrant:Landroid/os/Registrant;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v12, v1, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 669
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " RIL_UNSOL_VIDEOPHONE_REMOTE_MEDIA ERROR with wrong length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 676
    .end local v1           #params:[I
    .restart local v4       #ret:Ljava/lang/Object;
    :pswitch_14
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/SprdRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 678
    check-cast v4, [I

    .end local v4           #ret:Ljava/lang/Object;
    move-object v1, v4

    check-cast v1, [I

    .line 680
    .restart local v1       #params:[I
    array-length v7, v1

    if-ne v7, v9, :cond_4

    .line 681
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPMMRingRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_0

    .line 682
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPMMRingRegistrant:Landroid/os/Registrant;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v12, v1, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 688
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " RIL_UNSOL_VIDEOPHONE_MM_RING ERROR with wrong length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 694
    .end local v1           #params:[I
    .restart local v4       #ret:Ljava/lang/Object;
    :pswitch_15
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/SprdRIL;->unsljLogRet(ILjava/lang/Object;)V

    move-object v5, v4

    .line 696
    check-cast v5, Ljava/lang/String;

    .line 697
    .restart local v5       #str:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPFailRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_0

    .line 698
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPFailRegistrant:Landroid/os/Registrant;

    new-instance v8, Landroid/os/AsyncResult;

    new-instance v9, Landroid/os/AsyncResult;

    const/16 v10, 0x3e8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v5, v10, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {v8, v12, v9, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 704
    .end local v5           #str:Ljava/lang/String;
    :pswitch_16
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/SprdRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 706
    check-cast v4, [I

    .end local v4           #ret:Ljava/lang/Object;
    move-object v1, v4

    check-cast v1, [I

    .line 708
    .restart local v1       #params:[I
    array-length v7, v1

    if-ne v7, v9, :cond_5

    .line 709
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPRecordVideoRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_0

    .line 710
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPRecordVideoRegistrant:Landroid/os/Registrant;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v12, v1, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 716
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " RIL_UNSOL_VIDEOPHONE_RECORD_VIDEO ERROR with wrong length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 723
    .end local v1           #params:[I
    .restart local v4       #ret:Ljava/lang/Object;
    :pswitch_17
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/SprdRIL;->unsljLogRet(ILjava/lang/Object;)V

    move-object v0, v4

    .line 742
    check-cast v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;

    .line 743
    .local v0, info:Lcom/android/internal/telephony/SprdRIL$DSCIInfo;
    iget v7, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->cause:I

    if-lez v7, :cond_0

    .line 745
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " RIL_UNSOL_VIDEOPHONE_DSCI number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->number:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cause: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->cause:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 747
    iget v7, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->cause:I

    const/16 v8, 0x2f

    if-eq v7, v8, :cond_6

    iget v7, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->cause:I

    const/16 v8, 0x39

    if-eq v7, v8, :cond_6

    iget v7, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->cause:I

    const/16 v8, 0x3a

    if-eq v7, v8, :cond_6

    iget v7, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->cause:I

    const/16 v8, 0x58

    if-ne v7, v8, :cond_7

    .line 749
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPFallBackRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_0

    .line 750
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPFallBackRegistrant:Landroid/os/Registrant;

    new-instance v8, Landroid/os/AsyncResult;

    new-instance v9, Landroid/os/AsyncResult;

    iget-object v10, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->number:Ljava/lang/String;

    iget v11, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->cause:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v10, v11, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {v8, v12, v9, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 754
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPFailRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_0

    .line 755
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPFailRegistrant:Landroid/os/Registrant;

    new-instance v8, Landroid/os/AsyncResult;

    new-instance v9, Landroid/os/AsyncResult;

    iget-object v10, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->number:Ljava/lang/String;

    iget v11, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->cause:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v10, v11, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {v8, v12, v9, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 765
    .end local v0           #info:Lcom/android/internal/telephony/SprdRIL$DSCIInfo;
    :pswitch_18
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SprdRIL;->unsljLog(I)V

    .line 767
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPMediaStartRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_0

    .line 768
    check-cast v4, [I

    .end local v4           #ret:Ljava/lang/Object;
    move-object v1, v4

    check-cast v1, [I

    .line 769
    .restart local v1       #params:[I
    aget v7, v1, v10

    if-ne v7, v9, :cond_0

    .line 770
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVPMediaStartRegistrant:Landroid/os/Registrant;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v12, v1, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 777
    .end local v1           #params:[I
    .restart local v4       #ret:Ljava/lang/Object;
    :pswitch_19
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SprdRIL;->unsljLog(I)V

    .line 779
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mVideoCallStateRegistrants:Landroid/os/RegistrantList;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v12, v12, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 784
    :pswitch_1a
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/SprdRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 786
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mStkStinRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_0

    .line 787
    iget-object v7, p0, Lcom/android/internal/telephony/SprdRIL;->mStkStinRegistrant:Landroid/os/Registrant;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v12, v4, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 792
    :pswitch_1b
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/SprdRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 794
    iget-object v7, p0, Lcom/android/internal/telephony/BaseCommands;->mSimSmsReadyRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_0

    .line 795
    iget-object v7, p0, Lcom/android/internal/telephony/BaseCommands;->mSimSmsReadyRegistrant:Landroid/os/Registrant;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v12, v4, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 573
    :pswitch_data_0
    .packed-switch 0x3fd
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_b
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 598
    :pswitch_data_1
    .packed-switch 0x3fd
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_10
        :pswitch_11
        :pswitch_2
        :pswitch_17
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method public queryPinRetryCount(ILandroid/os/Message;)V
    .locals 0
    .parameter "type"
    .parameter "result"

    .prologue
    .line 960
    return-void
.end method

.method public recordVPAudio(ZILandroid/os/Message;)V
    .locals 4
    .parameter "bStart"
    .parameter "mode"
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 203
    const/16 v2, 0x74

    invoke-static {v2, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 207
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    if-ltz p2, :cond_1

    .line 208
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    :goto_0
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    if-ltz p2, :cond_0

    .line 215
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 221
    return-void

    .line 210
    :cond_1
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 212
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public recordVPVideo(ZLandroid/os/Message;)V
    .locals 3
    .parameter "bStart"
    .parameter "result"

    .prologue
    .line 190
    const/16 v1, 0x73

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 194
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 200
    return-void

    .line 194
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerForExternalDial(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 432
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 434
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/SprdRIL;->mExternalCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 435
    return-void
.end method

.method public registerForVideoCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 422
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 424
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/SprdRIL;->mVideoCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 425
    return-void
.end method

.method protected responseDSCI(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .parameter "p"

    .prologue
    .line 837
    new-instance v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;-><init>(Lcom/android/internal/telephony/SprdRIL;Lcom/android/internal/telephony/SprdRIL$1;)V

    .line 839
    .local v0, info:Lcom/android/internal/telephony/SprdRIL$DSCIInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->id:I

    .line 840
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->idr:I

    .line 841
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->stat:I

    .line 842
    iget v1, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->stat:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 843
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->type:I

    .line 844
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->mpty:I

    .line 845
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->number:Ljava/lang/String;

    .line 846
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->num_type:I

    .line 847
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->bs_type:I

    .line 848
    iget v1, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 849
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->cause:I

    .line 852
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "responseDSCI(), number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->stat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/SprdRIL$DSCIInfo;->cause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 854
    return-object v0
.end method

.method protected responseToString(I)Ljava/lang/String;
    .locals 1
    .parameter "request"

    .prologue
    .line 865
    packed-switch p1, :pswitch_data_0

    .line 878
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 866
    :pswitch_1
    const-string v0, "UNSOL_VIDEOPHONE_DATA"

    goto :goto_0

    .line 867
    :pswitch_2
    const-string v0, "UNSOL_VIDEOPHONE_CODEC"

    goto :goto_0

    .line 868
    :pswitch_3
    const-string v0, "UNSOL_VIDEOPHONE_DCPI"

    goto :goto_0

    .line 869
    :pswitch_4
    const-string v0, "UNSOL_VIDEOPHONE_DSCI"

    goto :goto_0

    .line 870
    :pswitch_5
    const-string v0, "UNSOL_VIDEOPHONE_STRING"

    goto :goto_0

    .line 871
    :pswitch_6
    const-string v0, "UNSOL_VIDEOPHONE_REMOTE_MEDIA"

    goto :goto_0

    .line 872
    :pswitch_7
    const-string v0, "UNSOL_VIDEOPHONE_MM_RING"

    goto :goto_0

    .line 873
    :pswitch_8
    const-string v0, "RIL_UNSOL_VIDEOPHONE_RELEASING"

    goto :goto_0

    .line 874
    :pswitch_9
    const-string v0, "UNSOL_VIDEOPHONE_RECORD_VIDEO"

    goto :goto_0

    .line 875
    :pswitch_a
    const-string v0, "UNSOL_VIDEOPHONE_MEDIA_START"

    goto :goto_0

    .line 876
    :pswitch_b
    const-string v0, "UNSOL_RESPONSE_VIDEOCALL_STATE_CHANGED"

    goto :goto_0

    .line 877
    :pswitch_c
    const-string v0, "UNSOL_SIM_SMS_READY"

    goto :goto_0

    .line 865
    :pswitch_data_0
    .packed-switch 0x40b
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
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method protected retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 7
    .parameter "req"
    .parameter "ret"

    .prologue
    .line 545
    if-nez p2, :cond_0

    .line 546
    const-string v3, ""

    .line 561
    :goto_0
    return-object v3

    .line 551
    :cond_0
    const/16 v5, 0x77

    if-ne p1, v5, :cond_2

    move-object v0, p2

    .line 552
    check-cast v0, Ljava/util/ArrayList;

    .line 553
    .local v0, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DriverCall;

    .line 555
    .local v1, dc:Lcom/android/internal/telephony/DriverCall;
    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 557
    .end local v1           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, s:Ljava/lang/String;
    goto :goto_0

    .line 559
    .end local v0           #calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #s:Ljava/lang/String;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public sendVPString(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "str"
    .parameter "result"

    .prologue
    .line 155
    const/16 v1, 0x71

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 159
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 165
    return-void
.end method

.method public setGprsAttach(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 240
    const/16 v1, 0x7d

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 244
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 247
    return-void
.end method

.method public setGprsDetach(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 251
    const/16 v1, 0x7e

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 255
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 258
    return-void
.end method

.method public setOnStkStin(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 442
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mStkStinRegistrant:Landroid/os/Registrant;

    .line 443
    return-void
.end method

.method public setOnVPCodec(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 348
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 350
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/SprdRIL;->mVPCodecRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 351
    return-void
.end method

.method public setOnVPData(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 340
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVPDataRegistrant:Landroid/os/Registrant;

    .line 341
    return-void
.end method

.method public setOnVPFail(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 398
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVPFailRegistrant:Landroid/os/Registrant;

    .line 399
    return-void
.end method

.method public setOnVPFallBack(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 390
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVPFallBackRegistrant:Landroid/os/Registrant;

    .line 391
    return-void
.end method

.method public setOnVPMMRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 374
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVPMMRingRegistrant:Landroid/os/Registrant;

    .line 375
    return-void
.end method

.method public setOnVPMediaStart(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 414
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVPMediaStartRegistrant:Landroid/os/Registrant;

    .line 415
    return-void
.end method

.method public setOnVPRecordVideo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 382
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVPRecordVideoRegistrant:Landroid/os/Registrant;

    .line 383
    return-void
.end method

.method public setOnVPRemoteCamera(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 406
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVPRemoteCameraRegistrant:Landroid/os/Registrant;

    .line 407
    return-void
.end method

.method public setOnVPRemoteMedia(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 366
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVPRemoteMediaRegistrant:Landroid/os/Registrant;

    .line 367
    return-void
.end method

.method public setOnVPString(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 358
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVPStrsRegistrant:Landroid/os/Registrant;

    .line 359
    return-void
.end method

.method public setSIMPower(ZLandroid/os/Message;)V
    .locals 3
    .parameter "on"
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 262
    const/16 v2, 0x86

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 265
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 271
    return-void

    .line 266
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVoiceRecordType(ILandroid/os/Message;)V
    .locals 3
    .parameter "type"
    .parameter "result"

    .prologue
    .line 328
    const/16 v1, 0x75

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 331
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 337
    return-void
.end method

.method public testVP(IILandroid/os/Message;)V
    .locals 3
    .parameter "flag"
    .parameter "value"
    .parameter "result"

    .prologue
    .line 224
    const/16 v1, 0x76

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 228
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SprdRIL;->sprdRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SprdRIL;->riljLog(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SprdRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 236
    return-void
.end method

.method public unSetOnVPCodec(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVPCodecRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 355
    return-void
.end method

.method public unSetOnVPData(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVPDataRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 345
    return-void
.end method

.method public unSetOnVPFail(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVPFailRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 403
    return-void
.end method

.method public unSetOnVPFallBack(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVPFallBackRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 395
    return-void
.end method

.method public unSetOnVPMMRing(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVPMMRingRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 379
    return-void
.end method

.method public unSetOnVPMediaStart(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVPMediaStartRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 419
    return-void
.end method

.method public unSetOnVPRecordVideo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVPRecordVideoRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 387
    return-void
.end method

.method public unSetOnVPRemoteCamera(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVPRemoteCameraRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 411
    return-void
.end method

.method public unSetOnVPRemoteMedia(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVPRemoteMediaRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 371
    return-void
.end method

.method public unSetOnVPString(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVPStrsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 363
    return-void
.end method

.method public unregisterForExternalDial(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mExternalCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 439
    return-void
.end method

.method public unregisterForVideoCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mVideoCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 429
    return-void
.end method

.method public unsetOnStkStin(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/SprdRIL;->mStkStinRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 447
    return-void
.end method
