.class public interface abstract Lcom/android/internal/telephony/SprdCommandsInterface;
.super Ljava/lang/Object;
.source "SprdCommandsInterface.java"


# virtual methods
.method public abstract Mbbms_Gsm_Authenticate(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract Mbbms_USim_Authenticate(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract acceptVP(Landroid/os/Message;)V
.end method

.method public abstract codecVP(ILandroid/os/Bundle;Landroid/os/Message;)V
.end method

.method public abstract controlIFrame(ZZLandroid/os/Message;)V
.end method

.method public abstract controlVPAudio(ZLandroid/os/Message;)V
.end method

.method public abstract controlVPCamera(ZLandroid/os/Message;)V
.end method

.method public abstract controlVPLocalMedia(IIZLandroid/os/Message;)V
.end method

.method public abstract dialVP(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract fallBackVP(Landroid/os/Message;)V
.end method

.method public abstract getCurrentVideoCalls(Landroid/os/Message;)V
.end method

.method public abstract getPhoneId()I
.end method

.method public abstract getRemainTimes(ILandroid/os/Message;)V
.end method

.method public abstract getSimCapacity(Landroid/os/Message;)V
.end method

.method public abstract getSimType(Landroid/os/Message;)V
.end method

.method public abstract hangupVP(Landroid/os/Message;I)V
.end method

.method public abstract mmiEnterSim(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract queryPinRetryCount(ILandroid/os/Message;)V
.end method

.method public abstract recordVPAudio(ZILandroid/os/Message;)V
.end method

.method public abstract recordVPVideo(ZLandroid/os/Message;)V
.end method

.method public abstract registerForExternalDial(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVideoCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract sendVPString(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setGprsAttach(Landroid/os/Message;)V
.end method

.method public abstract setGprsDetach(Landroid/os/Message;)V
.end method

.method public abstract setOnStkStin(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnVPCodec(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnVPData(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnVPFail(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnVPFallBack(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnVPMMRing(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnVPMediaStart(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnVPRecordVideo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnVPRemoteCamera(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnVPRemoteMedia(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnVPString(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setSIMPower(ZLandroid/os/Message;)V
.end method

.method public abstract setVoiceRecordType(ILandroid/os/Message;)V
.end method

.method public abstract testVP(IILandroid/os/Message;)V
.end method

.method public abstract unSetOnVPCodec(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnVPData(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnVPFail(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnVPFallBack(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnVPMMRing(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnVPMediaStart(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnVPRecordVideo(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnVPRemoteCamera(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnVPRemoteMedia(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnVPString(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForExternalDial(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVideoCallStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unsetOnStkStin(Landroid/os/Handler;)V
.end method
