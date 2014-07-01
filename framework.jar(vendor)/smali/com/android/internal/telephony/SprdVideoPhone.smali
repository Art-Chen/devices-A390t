.class public interface abstract Lcom/android/internal/telephony/SprdVideoPhone;
.super Ljava/lang/Object;
.source "SprdVideoPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SprdVideoPhone$CallType;
    }
.end annotation


# static fields
.field public static final PHONE_ID:Ljava/lang/String; = "phone_id"


# virtual methods
.method public abstract Mbbms_Gsm_Authenticate(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract Mbbms_USim_Authenticate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract acceptFallBack()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract codecVP(ILandroid/os/Bundle;)V
.end method

.method public abstract controlAudio(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract controlCamera(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract dialVP(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract fallBack()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract getCallForwardingIndicator(I)Z
.end method

.method public abstract getCallForwardingOption(IILandroid/os/Message;)V
.end method

.method public abstract getCallType()Lcom/android/internal/telephony/SprdVideoPhone$CallType;
.end method

.method public abstract getPhoneId()I
.end method

.method public abstract getRegistrationState()[Ljava/lang/String;
.end method

.method public abstract getRemainTimes(I)I
.end method

.method public abstract getSimType()Ljava/lang/String;
.end method

.method public abstract isVTCall()Z
.end method

.method public abstract recordPhoneState(Lcom/android/internal/telephony/Phone$State;)V
.end method

.method public abstract registerForGprsAttached(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForGprsDetached(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIncomingRingVideoCall(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNewRingingVideoCall(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForPreciseVideoCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRemoteCamera(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVideoCallCodec(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVideoCallDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVideoCallFail(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVideoCallFallBack(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setCallForwardingOption(IIILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setIccCard(Z)V
.end method

.method public abstract unregisterForGprsAttached(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForGprsDetached(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIncomingRingVideoCall(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNewRingingVideoCall(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForPreciseVideoCallStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRemoteCamera(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVideoCallCodec(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVideoCallDisconnect(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVideoCallFail(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVideoCallFallBack(Landroid/os/Handler;)V
.end method
