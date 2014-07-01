.class Lcom/android/internal/policy/impl/RemoteLockView$1;
.super Ljava/lang/Object;
.source "RemoteLockView.java"

# interfaces
.implements Landroid/widget/ILockScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/RemoteLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/RemoteLockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/RemoteLockView;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$100(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$100(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    .line 163
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSimState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "i"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$100(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$100(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTelephonyPlmn(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "i"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$100(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$100(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getmTelephonyPlmn()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    .line 184
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTelephonySpn(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "i"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$100(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$100(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getmTelephonySpn()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    .line 191
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public goToUnlockScreen()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$000(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$000(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 116
    :cond_0
    return-void
.end method

.method public isDeviceCharged()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$100(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$100(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDevicePluggedIn()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$100(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$100(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$100(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$100(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$000(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$000(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 129
    :cond_0
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$000(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$000(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 136
    :cond_0
    return-void
.end method

.method public shouldShowBatteryInfo()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$100(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$100(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public takeEmergencyCallAction()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$000(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView$1;->this$0:Lcom/android/internal/policy/impl/RemoteLockView;

    #getter for: Lcom/android/internal/policy/impl/RemoteLockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RemoteLockView;->access$000(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 122
    :cond_0
    return-void
.end method
