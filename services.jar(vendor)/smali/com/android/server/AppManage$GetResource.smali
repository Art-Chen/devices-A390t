.class Lcom/android/server/AppManage$GetResource;
.super Ljava/lang/Thread;
.source "AppManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetResource"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppManage;


# direct methods
.method private constructor <init>(Lcom/android/server/AppManage;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/server/AppManage$GetResource;->this$0:Lcom/android/server/AppManage;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppManage;Lcom/android/server/AppManage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/android/server/AppManage$GetResource;-><init>(Lcom/android/server/AppManage;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/server/AppManage$GetResource;->this$0:Lcom/android/server/AppManage;

    new-instance v2, Lcom/android/server/AppManage$AppInfoMap;

    iget-object v3, p0, Lcom/android/server/AppManage$GetResource;->this$0:Lcom/android/server/AppManage;

    invoke-direct {v2, v3}, Lcom/android/server/AppManage$AppInfoMap;-><init>(Lcom/android/server/AppManage;)V

    #setter for: Lcom/android/server/AppManage;->mCache:Lcom/android/server/AppManage$AppInfoMap;
    invoke-static {v1, v2}, Lcom/android/server/AppManage;->access$502(Lcom/android/server/AppManage;Lcom/android/server/AppManage$AppInfoMap;)Lcom/android/server/AppManage$AppInfoMap;

    .line 298
    iget-object v1, p0, Lcom/android/server/AppManage$GetResource;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/AppManage;->access$600(Lcom/android/server/AppManage;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 299
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/AppManage$GetResource;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/AppManage;->access$600(Lcom/android/server/AppManage;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 300
    return-void
.end method
