.class public Lcom/android/internal/telephony/SprdPhoneProxy;
.super Lcom/android/internal/telephony/PhoneProxy;
.source "SprdPhoneProxy.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SPRDPHONE"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 49
    return-void
.end method


# virtual methods
.method public acceptFallBack()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptFallBack()V

    .line 184
    return-void
.end method

.method public codecVP(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "type"
    .parameter "param"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->codecVP(ILandroid/os/Bundle;)V

    .line 202
    return-void
.end method

.method public controlAudio(Z)V
    .locals 1
    .parameter "bEnable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->controlAudio(Z)V

    .line 196
    return-void
.end method

.method public controlCamera(Z)V
    .locals 1
    .parameter "bEnable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->controlCamera(Z)V

    .line 190
    return-void
.end method

.method public dialVP(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dialVP(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public fallBack()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->fallBack()V

    .line 178
    return-void
.end method

.method public getCallForwardingIndicator(I)Z
    .locals 1
    .parameter "serviceClass"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator(I)Z

    move-result v0

    return v0
.end method

.method public getCallForwardingOption(IILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCFReason"
    .parameter "serviceClass"
    .parameter "onComplete"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(IILandroid/os/Message;)V

    .line 206
    return-void
.end method

.method public getCallType()Lcom/android/internal/telephony/SprdVideoPhone$CallType;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallType()Lcom/android/internal/telephony/SprdVideoPhone$CallType;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    return v0
.end method

.method public recordPhoneState(Lcom/android/internal/telephony/Phone$State;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->recordPhoneState(Lcom/android/internal/telephony/Phone$State;)V

    .line 232
    return-void
.end method

.method public registerForGprsAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForGprsAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 149
    return-void
.end method

.method public registerForGprsDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForGprsDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 157
    return-void
.end method

.method public registerForIncomingRingVideoCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForIncomingRingVideoCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 79
    return-void
.end method

.method public registerForNewRingingVideoCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNewRingingVideoCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method public registerForPreciseVideoCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPreciseVideoCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 55
    return-void
.end method

.method public registerForRemoteCamera(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRemoteCamera(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 127
    return-void
.end method

.method public registerForVideoCallCodec(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVideoCallCodec(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 139
    return-void
.end method

.method public registerForVideoCallDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVideoCallDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 91
    return-void
.end method

.method public registerForVideoCallFail(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVideoCallFail(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 115
    return-void
.end method

.method public registerForVideoCallFallBack(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVideoCallFallBack(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 103
    return-void
.end method

.method public setCallForwardingOption(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "serviceClass"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 212
    return-void
.end method

.method public setIccCard(Z)V
    .locals 1
    .parameter "turnOn"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setIccCard(Z)V

    .line 216
    return-void
.end method

.method public unregisterForGprsAttached(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForGprsAttached(Landroid/os/Handler;)V

    .line 153
    return-void
.end method

.method public unregisterForGprsDetached(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForGprsDetached(Landroid/os/Handler;)V

    .line 161
    return-void
.end method

.method public unregisterForIncomingRingVideoCall(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRingVideoCall(Landroid/os/Handler;)V

    .line 85
    return-void
.end method

.method public unregisterForNewRingingVideoCall(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingVideoCall(Landroid/os/Handler;)V

    .line 73
    return-void
.end method

.method public unregisterForPreciseVideoCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseVideoCallStateChanged(Landroid/os/Handler;)V

    .line 61
    return-void
.end method

.method public unregisterForRemoteCamera(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRemoteCamera(Landroid/os/Handler;)V

    .line 133
    return-void
.end method

.method public unregisterForVideoCallCodec(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVideoCallCodec(Landroid/os/Handler;)V

    .line 145
    return-void
.end method

.method public unregisterForVideoCallDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVideoCallDisconnect(Landroid/os/Handler;)V

    .line 97
    return-void
.end method

.method public unregisterForVideoCallFail(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVideoCallFail(Landroid/os/Handler;)V

    .line 121
    return-void
.end method

.method public unregisterForVideoCallFallBack(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVideoCallFallBack(Landroid/os/Handler;)V

    .line 109
    return-void
.end method
