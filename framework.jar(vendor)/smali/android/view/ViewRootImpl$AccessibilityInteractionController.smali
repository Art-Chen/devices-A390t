.class final Landroid/view/ViewRootImpl$AccessibilityInteractionController;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AccessibilityInteractionController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;
    }
.end annotation


# static fields
.field private static final POOL_SIZE:I = 0x5


# instance fields
.field private final mPool:Landroid/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pool",
            "<",
            "Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;",
            ">;"
        }
    .end annotation
.end field

.field private mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 2
    .parameter

    .prologue
    .line 4649
    iput-object p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4652
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 4658
    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController$1;-><init>(Landroid/view/ViewRootImpl$AccessibilityInteractionController;)V

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Pools;->synchronizedPool(Landroid/util/Pool;)Landroid/util/Pool;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    .line 4674
    return-void
.end method

.method private findViewByAccessibilityId(I)Landroid/view/View;
    .locals 4
    .parameter "accessibilityId"

    .prologue
    const/4 v2, 0x0

    .line 4974
    iget-object v3, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 4975
    .local v1, root:Landroid/view/View;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 4982
    :cond_0
    :goto_0
    return-object v0

    .line 4978
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 4979
    .local v0, foundView:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 4980
    goto :goto_0
.end method

.method private performActionClearFocus(I)Z
    .locals 3
    .parameter "accessibilityId"

    .prologue
    const/4 v1, 0x0

    .line 4938
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 4939
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 4946
    :cond_0
    :goto_0
    return v1

    .line 4942
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4945
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 4946
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private performActionClearSelection(I)Z
    .locals 3
    .parameter "accessibilityId"

    .prologue
    const/4 v1, 0x0

    .line 4962
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 4963
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 4970
    :cond_0
    :goto_0
    return v1

    .line 4966
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4969
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 4970
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private performActionFocus(I)Z
    .locals 3
    .parameter "accessibilityId"

    .prologue
    const/4 v1, 0x0

    .line 4928
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 4929
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 4934
    :cond_0
    :goto_0
    return v1

    .line 4933
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 4934
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0
.end method

.method private performActionSelect(I)Z
    .locals 3
    .parameter "accessibilityId"

    .prologue
    const/4 v1, 0x0

    .line 4950
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 4951
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 4958
    :cond_0
    :goto_0
    return v1

    .line 4954
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4957
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 4958
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityIdClientThread(IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 3
    .parameter "accessibilityId"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 4712
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4713
    .local v0, message:Landroid/os/Message;
    const/16 v1, 0x3fd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4714
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4715
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 4716
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4721
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne p4, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    cmp-long v1, p5, v1

    if-nez v1, :cond_0

    .line 4723
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 4724
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 4728
    :goto_0
    return-void

    .line 4726
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V
    .locals 7
    .parameter "message"

    .prologue
    .line 4731
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4732
    .local v0, accessibilityId:I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 4733
    .local v3, interactionId:I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 4736
    .local v1, callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    const/4 v2, 0x0

    .line 4738
    .local v2, info:Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v4

    .line 4739
    .local v4, target:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 4740
    invoke-virtual {v4}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4744
    :cond_0
    :try_start_1
    invoke-interface {v1, v2, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4749
    :goto_0
    return-void

    .line 4743
    .end local v4           #target:Landroid/view/View;
    :catchall_0
    move-exception v5

    .line 4744
    :try_start_2
    invoke-interface {v1, v2, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4747
    :goto_1
    throw v5

    .line 4745
    .restart local v4       #target:Landroid/view/View;
    :catch_0
    move-exception v5

    goto :goto_0

    .end local v4           #target:Landroid/view/View;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public findAccessibilityNodeInfoByViewIdClientThread(IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 3
    .parameter "viewId"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 4754
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4755
    .local v0, message:Landroid/os/Message;
    const/16 v1, 0x3fe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4756
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4757
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 4758
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4763
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne p4, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    cmp-long v1, p5, v1

    if-nez v1, :cond_0

    .line 4765
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 4766
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 4770
    :goto_0
    return-void

    .line 4768
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public findAccessibilityNodeInfoByViewIdUiThread(Landroid/os/Message;)V
    .locals 8
    .parameter "message"

    .prologue
    .line 4773
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 4774
    .local v5, viewId:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 4775
    .local v2, interactionId:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 4778
    .local v0, callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    const/4 v1, 0x0

    .line 4780
    .local v1, info:Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_0
    iget-object v6, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 4781
    .local v3, root:Landroid/view/View;
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 4782
    .local v4, target:Landroid/view/View;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 4783
    invoke-virtual {v4}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 4787
    :cond_0
    :try_start_1
    invoke-interface {v0, v1, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4792
    :goto_0
    return-void

    .line 4786
    .end local v3           #root:Landroid/view/View;
    .end local v4           #target:Landroid/view/View;
    :catchall_0
    move-exception v6

    .line 4787
    :try_start_2
    invoke-interface {v0, v1, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4790
    :goto_1
    throw v6

    .line 4788
    .restart local v3       #root:Landroid/view/View;
    .restart local v4       #target:Landroid/view/View;
    :catch_0
    move-exception v6

    goto :goto_0

    .end local v3           #root:Landroid/view/View;
    .end local v4           #target:Landroid/view/View;
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public findAccessibilityNodeInfosByViewTextClientThread(Ljava/lang/String;IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 4
    .parameter "text"
    .parameter "accessibilityViewId"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 4798
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 4799
    .local v1, message:Landroid/os/Message;
    const/16 v2, 0x3ff

    iput v2, v1, Landroid/os/Message;->what:I

    .line 4800
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v2}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    .line 4801
    .local v0, args:Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;
    iput-object p1, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    .line 4802
    iput p2, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 4803
    iput p3, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 4804
    iput-object p4, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg2:Ljava/lang/Object;

    .line 4805
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4810
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne p5, v2, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, p6, v2

    if-nez v2, :cond_0

    .line 4812
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 4813
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 4817
    :goto_0
    return-void

    .line 4815
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByViewTextUiThread(Landroid/os/Message;)V
    .locals 13
    .parameter "message"

    .prologue
    .line 4820
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    .line 4821
    .local v1, args:Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;
    iget-object v9, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 4822
    .local v9, text:Ljava/lang/String;
    iget v0, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 4823
    .local v0, accessibilityViewId:I
    iget v7, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 4824
    .local v7, interactionId:I
    iget-object v2, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 4826
    .local v2, callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v11, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v11, v1}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 4828
    const/4 v6, 0x0

    .line 4830
    .local v6, infos:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :try_start_0
    iget-object v11, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v11, Landroid/view/View$AttachInfo;->mFocusablesTempList:Ljava/util/ArrayList;

    .line 4831
    .local v4, foundViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4833
    const/4 v8, 0x0

    .line 4834
    .local v8, root:Landroid/view/View;
    const/4 v11, -0x1

    if-eq v0, v11, :cond_1

    .line 4835
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v8

    .line 4840
    :goto_0
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-eqz v11, :cond_2

    .line 4862
    :cond_0
    :try_start_1
    invoke-interface {v2, v6, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4867
    :goto_1
    return-void

    .line 4837
    :cond_1
    :try_start_2
    iget-object v11, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_0

    .line 4844
    :cond_2
    const/4 v11, 0x3

    invoke-virtual {v8, v4, v9, v11}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 4846
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    if-eqz v11, :cond_3

    .line 4862
    :try_start_3
    invoke-interface {v2, v6, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 4863
    :catch_0
    move-exception v11

    goto :goto_1

    .line 4850
    :cond_3
    :try_start_4
    iget-object v6, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 4851
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 4853
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 4854
    .local v10, viewCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v10, :cond_5

    .line 4855
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4856
    .local v3, foundView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_4

    .line 4857
    invoke-virtual {v3}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4854
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4862
    .end local v3           #foundView:Landroid/view/View;
    :cond_5
    :try_start_5
    invoke-interface {v2, v6, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 4863
    :catch_1
    move-exception v11

    goto :goto_1

    .line 4861
    .end local v4           #foundViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5           #i:I
    .end local v8           #root:Landroid/view/View;
    .end local v10           #viewCount:I
    :catchall_0
    move-exception v11

    .line 4862
    :try_start_6
    invoke-interface {v2, v6, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 4865
    :goto_3
    throw v11

    .line 4863
    .restart local v4       #foundViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v8       #root:Landroid/view/View;
    :catch_2
    move-exception v11

    goto :goto_1

    .end local v4           #foundViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v8           #root:Landroid/view/View;
    :catch_3
    move-exception v12

    goto :goto_3
.end method

.method public performAccessibilityActionClientThread(IIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 4
    .parameter "accessibilityId"
    .parameter "action"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 4872
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 4873
    .local v1, message:Landroid/os/Message;
    const/16 v2, 0x3fc

    iput v2, v1, Landroid/os/Message;->what:I

    .line 4874
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v2}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    .line 4875
    .local v0, args:Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;
    iput p1, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 4876
    iput p2, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 4877
    iput p3, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi3:I

    .line 4878
    iput-object p4, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    .line 4879
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4884
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne p5, v2, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, p6, v2

    if-nez v2, :cond_0

    .line 4886
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 4887
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 4891
    :goto_0
    return-void

    .line 4889
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public perfromAccessibilityActionUiThread(Landroid/os/Message;)V
    .locals 8
    .parameter "message"

    .prologue
    .line 4894
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    .line 4895
    .local v2, args:Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;
    iget v0, v2, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 4896
    .local v0, accessibilityId:I
    iget v1, v2, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 4897
    .local v1, action:I
    iget v4, v2, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi3:I

    .line 4898
    .local v4, interactionId:I
    iget-object v3, v2, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 4900
    .local v3, callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v6, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v6, v2}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 4902
    const/4 v5, 0x0

    .line 4904
    .local v5, succeeded:Z
    packed-switch v1, :pswitch_data_0

    .line 4920
    :goto_0
    :pswitch_0
    :try_start_0
    invoke-interface {v3, v5, v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4925
    :goto_1
    return-void

    .line 4906
    :pswitch_1
    :try_start_1
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->performActionFocus(I)Z

    move-result v5

    .line 4907
    goto :goto_0

    .line 4909
    :pswitch_2
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->performActionClearFocus(I)Z

    move-result v5

    .line 4910
    goto :goto_0

    .line 4912
    :pswitch_3
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->performActionSelect(I)Z

    move-result v5

    .line 4913
    goto :goto_0

    .line 4915
    :pswitch_4
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->performActionClearSelection(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    goto :goto_0

    .line 4919
    :catchall_0
    move-exception v6

    .line 4920
    :try_start_2
    invoke-interface {v3, v5, v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4923
    :goto_2
    throw v6

    .line 4921
    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_2

    .line 4904
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
