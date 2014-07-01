.class Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiWaveViewMethods"
.end annotation


# instance fields
.field private mCameraDisabled:Z

.field private final mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V
    .locals 5
    .parameter
    .parameter "multiWaveView"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 203
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    .line 205
    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {p1}, Lcom/android/internal/policy/impl/LockScreen;->access$600(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 207
    .local v0, cameraDisabled:Z
    if-eqz v0, :cond_0

    .line 208
    const-string v2, "LockScreen"

    const-string v3, "Camera disabled by Device Policy"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    .line 220
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-boolean v3, p1, Lcom/android/internal/policy/impl/LockScreen;->isUniverseSupport:Z

    if-eqz v3, :cond_2

    .line 215
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getTargetResourceId()I

    move-result v3

    const v4, 0x1070011

    if-eq v3, v4, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 217
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getTargetResourceId()I

    move-result v3

    const v4, 0x1070010

    if-eq v3, v4, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    return-object v0
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 241
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 322
    if-eqz p2, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 325
    :cond_0
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 245
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 7
    .parameter "v"
    .parameter "target"

    .prologue
    const/high16 v6, 0x1000

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 248
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/LockScreen;->isUniverseSupport:Z

    if-eqz v1, :cond_9

    .line 249
    if-eqz p2, :cond_0

    if-ne p2, v3, :cond_2

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 314
    :cond_1
    :goto_0
    return-void

    .line 252
    :cond_2
    if-eq p2, v4, :cond_3

    if-ne p2, v5, :cond_4

    .line 255
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v1, "vnd.android.cursor.dir/mms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 259
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$700(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 260
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 261
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    const/4 v1, 0x4

    if-eq p2, v1, :cond_5

    const/4 v1, 0x5

    if-ne p2, v1, :cond_7

    .line 264
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    if-nez v1, :cond_6

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CAMERA_BUTTON"

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 272
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$800(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 273
    const-string v1, "LockScreen"

    const-string v2, "jerry130226  goToUnlockScreen camera"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 277
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->toggleRingMode()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)V

    .line 278
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$900(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 279
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 281
    :cond_7
    const/4 v1, 0x6

    if-eq p2, v1, :cond_8

    const/4 v1, 0x7

    if-ne p2, v1, :cond_1

    .line 282
    :cond_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 283
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 285
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$1000(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 286
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_0

    .line 289
    .end local v0           #intent:Landroid/content/Intent;
    :cond_9
    if-eqz p2, :cond_a

    if-ne p2, v3, :cond_b

    .line 291
    :cond_a
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_0

    .line 292
    :cond_b
    if-eq p2, v4, :cond_c

    if-ne p2, v5, :cond_1

    .line 295
    :cond_c
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    if-nez v1, :cond_d

    .line 302
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CAMERA_BUTTON"

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 303
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$1100(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 304
    const-string v1, "LockScreen"

    const-string v2, "jerry130226  goToUnlockScreen camera2"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_0

    .line 308
    .end local v0           #intent:Landroid/content/Intent;
    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->toggleRingMode()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)V

    .line 309
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$900(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 310
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto/16 :goto_0
.end method

.method public ping()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->ping()V

    .line 337
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->reset(Z)V

    .line 333
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 224
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x107000b

    .line 236
    .local v0, resId:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 237
    return-void

    .line 227
    .end local v0           #resId:I
    :cond_0
    const v0, 0x107000e

    goto :goto_0

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/LockScreen;->isUniverseSupport:Z

    if-eqz v1, :cond_2

    .line 231
    const v0, 0x1070011

    .restart local v0       #resId:I
    goto :goto_0

    .line 233
    .end local v0           #resId:I
    :cond_2
    const v0, 0x1070010

    .restart local v0       #resId:I
    goto :goto_0
.end method
