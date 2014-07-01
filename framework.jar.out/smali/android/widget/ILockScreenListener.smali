.class public interface abstract Landroid/widget/ILockScreenListener;
.super Ljava/lang/Object;
.source "ILockScreenListener.java"


# virtual methods
.method public abstract getBatteryLevel()I
.end method

.method public abstract getSimState()Lcom/android/internal/telephony/IccCard$State;
.end method

.method public abstract getSimState(I)Lcom/android/internal/telephony/IccCard$State;
.end method

.method public abstract getTelephonyPlmn(I)Ljava/lang/CharSequence;
.end method

.method public abstract getTelephonySpn(I)Ljava/lang/CharSequence;
.end method

.method public abstract goToUnlockScreen()V
.end method

.method public abstract isDeviceCharged()Z
.end method

.method public abstract isDevicePluggedIn()Z
.end method

.method public abstract isDeviceProvisioned()Z
.end method

.method public abstract pokeWakelock()V
.end method

.method public abstract pokeWakelock(I)V
.end method

.method public abstract shouldShowBatteryInfo()Z
.end method

.method public abstract takeEmergencyCallAction()V
.end method
