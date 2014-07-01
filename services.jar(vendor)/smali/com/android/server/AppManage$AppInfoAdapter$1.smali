.class Lcom/android/server/AppManage$AppInfoAdapter$1;
.super Ljava/lang/Object;
.source "AppManage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppManage$AppInfoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AppManage$AppInfoAdapter;

.field final synthetic val$appInfo:Landroid/content/pm/ApplicationInfo;


# direct methods
.method constructor <init>(Lcom/android/server/AppManage$AppInfoAdapter;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/server/AppManage$AppInfoAdapter$1;->this$1:Lcom/android/server/AppManage$AppInfoAdapter;

    iput-object p2, p0, Lcom/android/server/AppManage$AppInfoAdapter$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 587
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 588
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 590
    .local v1, isChecked:Z
    if-eqz v1, :cond_1

    .line 591
    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter$1;->this$1:Lcom/android/server/AppManage$AppInfoAdapter;

    iget-object v2, v2, Lcom/android/server/AppManage$AppInfoAdapter;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mMove2SdList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/AppManage;->access$900(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 592
    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter$1;->this$1:Lcom/android/server/AppManage$AppInfoAdapter;

    iget-object v2, v2, Lcom/android/server/AppManage$AppInfoAdapter;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mMove2SdList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/AppManage;->access$900(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter$1;->this$1:Lcom/android/server/AppManage$AppInfoAdapter;

    iget-object v2, v2, Lcom/android/server/AppManage$AppInfoAdapter;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mMove2SdCheckList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/AppManage;->access$1800(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter$1;->this$1:Lcom/android/server/AppManage$AppInfoAdapter;

    iget-object v2, v2, Lcom/android/server/AppManage$AppInfoAdapter;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mUninstallCheckList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/AppManage;->access$2000(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter$1;->this$1:Lcom/android/server/AppManage$AppInfoAdapter;

    iget-object v2, v2, Lcom/android/server/AppManage$AppInfoAdapter;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mUninstallList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/AppManage;->access$1000(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 597
    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter$1;->this$1:Lcom/android/server/AppManage$AppInfoAdapter;

    iget-object v2, v2, Lcom/android/server/AppManage$AppInfoAdapter;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mUninstallCheckList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/AppManage;->access$2000(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 598
    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter$1;->this$1:Lcom/android/server/AppManage$AppInfoAdapter;

    invoke-virtual {v2}, Lcom/android/server/AppManage$AppInfoAdapter;->notifyDataSetChanged()V

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter$1;->this$1:Lcom/android/server/AppManage$AppInfoAdapter;

    iget-object v2, v2, Lcom/android/server/AppManage$AppInfoAdapter;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mMove2SdList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/AppManage;->access$900(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter$1;->this$1:Lcom/android/server/AppManage$AppInfoAdapter;

    iget-object v2, v2, Lcom/android/server/AppManage$AppInfoAdapter;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mMove2SdList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/AppManage;->access$900(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 604
    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter$1;->this$1:Lcom/android/server/AppManage$AppInfoAdapter;

    iget-object v2, v2, Lcom/android/server/AppManage$AppInfoAdapter;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mMove2SdCheckList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/AppManage;->access$1800(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
