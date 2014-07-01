.class public Lcom/android/internal/policy/impl/RemoteLockView;
.super Landroid/widget/RelativeLayout;
.source "RemoteLockView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteLockView"


# instance fields
.field private isExecCreate:Z

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenListener:Landroid/widget/ILockScreenListener;

.field private mLockScreenProxy:Landroid/widget/AbsLockScreen;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Ljava/lang/ClassLoader;)V
    .locals 4
    .parameter "context"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockClassLoader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/RemoteLockView;->isExecCreate:Z

    .line 110
    new-instance v1, Lcom/android/internal/policy/impl/RemoteLockView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/RemoteLockView$1;-><init>(Lcom/android/internal/policy/impl/RemoteLockView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenListener:Landroid/widget/ILockScreenListener;

    .line 38
    iput-object p4, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 39
    iput-object p2, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 40
    iput-object p3, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 41
    iput-object p1, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/RemoteLockView;->setFocusable(Z)V

    .line 43
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/RemoteLockView;->setFocusableInTouchMode(Z)V

    .line 44
    const/high16 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/RemoteLockView;->setDescendantFocusability(I)V

    .line 46
    iget-object v1, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 47
    iget-object v1, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 48
    invoke-direct {p0, p5}, Lcom/android/internal/policy/impl/RemoteLockView;->createRemoteLockView(Ljava/lang/ClassLoader;)Landroid/widget/AbsLockScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    .line 49
    iget-object v1, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    if-eqz v1, :cond_0

    .line 50
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/impl/RemoteLockView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/RemoteLockView;->isExecCreate:Z

    .line 59
    return-void

    .line 55
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Create remote view false ,to create default lock view ."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/RemoteLockView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method private createRemoteLockView(Ljava/lang/ClassLoader;)Landroid/widget/AbsLockScreen;
    .locals 7
    .parameter "classLoader"

    .prologue
    .line 63
    const-string v4, "RemoteLockView"

    const-string v5, "createRemoteLockView..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :try_start_0
    const-string v4, "com.spreadst.lockscreen.LockscreenPoxy"

    invoke-virtual {p1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    .local v0, c:Ljava/lang/Class;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/widget/ILockScreenListener;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 74
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Landroid/widget/ILockScreenProxy;>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenListener:Landroid/widget/ILockScreenListener;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ILockScreenProxy;

    .line 76
    .local v3, lockScreenProxy:Landroid/widget/ILockScreenProxy;
    invoke-interface {v3}, Landroid/widget/ILockScreenProxy;->getLockViewOfCustom()Landroid/widget/AbsLockScreen;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v4

    return-object v4

    .line 77
    .end local v0           #c:Ljava/lang/Class;
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Landroid/widget/ILockScreenProxy;>;"
    .end local v3           #lockScreenProxy:Landroid/widget/ILockScreenProxy;
    :catch_0
    move-exception v2

    .line 78
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 79
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Create remote Proxy false . because IllegalArgumentException"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 81
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 82
    .local v2, e:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 83
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Create remote Proxy false . because SecurityException"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 85
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    .line 86
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 87
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Create remote Proxy false . because IllegalAccessException"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 89
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 90
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 91
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Create remote Proxy false . because InvocationTargetException"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 93
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v2

    .line 94
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 95
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Create remote Proxy false . because NoSuchMethodException"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 97
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v2

    .line 98
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 99
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Create remote Proxy false . because ClassNotFoundException"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 101
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_6
    move-exception v2

    .line 102
    .local v2, e:Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 103
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Create remote Proxy false . because InstantiationException"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    invoke-virtual {v0}, Landroid/widget/AbsLockScreen;->onStopAnim()V

    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    invoke-virtual {v0}, Landroid/widget/AbsLockScreen;->cleanUp()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 208
    iput-object v1, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 209
    iput-object v1, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 210
    iput-object v1, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 211
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    invoke-virtual {v0}, Landroid/widget/AbsLockScreen;->needsInput()Z

    move-result v0

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClockVisibilityChanged()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    invoke-virtual {v0}, Landroid/widget/AbsLockScreen;->onClockVisibilityChanged()V

    .line 294
    :cond_0
    return-void
.end method

.method public onDeleteMessageCount(I)V
    .locals 1
    .parameter "messagecount"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    invoke-virtual {v0, p1}, Landroid/widget/AbsLockScreen;->onDeleteMessageCount(I)V

    .line 318
    :cond_0
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    invoke-virtual {v0}, Landroid/widget/AbsLockScreen;->onDeviceProvisioned()V

    .line 302
    :cond_0
    return-void
.end method

.method public onMessageCountChanged(I)V
    .locals 1
    .parameter "messagecount"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    invoke-virtual {v0, p1}, Landroid/widget/AbsLockScreen;->onMessageCountChanged(I)V

    .line 310
    :cond_0
    return-void
.end method

.method public onMissedCallCountChanged(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    invoke-virtual {v0, p1}, Landroid/widget/AbsLockScreen;->onMissedCallCountChanged(I)V

    .line 326
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    invoke-virtual {v0}, Landroid/widget/AbsLockScreen;->onStopAnim()V

    .line 223
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    invoke-virtual {v0}, Landroid/widget/AbsLockScreen;->onPause()V

    .line 225
    :cond_0
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 3
    .parameter "phoneState"

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    invoke-virtual {v1, p1}, Landroid/widget/AbsLockScreen;->onPhoneStateChanged(I)Landroid/widget/Button;

    move-result-object v0

    .line 248
    .local v0, button:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 253
    .end local v0           #button:Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 1
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsLockScreen;->onRefreshBatteryInfo(ZZI)V

    .line 261
    :cond_0
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsLockScreen;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 268
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    invoke-virtual {v0}, Landroid/widget/AbsLockScreen;->onResume()V

    .line 230
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->isExecCreate:Z

    if-eqz v0, :cond_1

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->isExecCreate:Z

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsLockScreen;->onRefreshBatteryInfo(ZZI)V

    .line 243
    :cond_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    invoke-virtual {v0}, Landroid/widget/AbsLockScreen;->onStartAnim()V

    goto :goto_0
.end method

.method public onRingerModeChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    invoke-virtual {v0, p1}, Landroid/widget/AbsLockScreen;->onRingerModeChanged(I)V

    .line 274
    :cond_0
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 1
    .parameter "simState"
    .parameter "subscription"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsLockScreen;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V

    .line 286
    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/RemoteLockView;->mLockScreenProxy:Landroid/widget/AbsLockScreen;

    invoke-virtual {v0}, Landroid/widget/AbsLockScreen;->onTimeChanged()V

    .line 280
    :cond_0
    return-void
.end method
