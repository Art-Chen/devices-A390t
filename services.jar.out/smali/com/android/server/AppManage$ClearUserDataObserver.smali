.class Lcom/android/server/AppManage$ClearUserDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "AppManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearUserDataObserver"
.end annotation


# instance fields
.field private mCount:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/android/server/AppManage;


# direct methods
.method constructor <init>(Lcom/android/server/AppManage;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/server/AppManage$ClearUserDataObserver;->this$0:Lcom/android/server/AppManage;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public invokeClearData(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 3
    .parameter "packageName"
    .parameter "count"

    .prologue
    .line 236
    iput-object p2, p0, Lcom/android/server/AppManage$ClearUserDataObserver;->mCount:Ljava/util/concurrent/CountDownLatch;

    .line 237
    iget-object v1, p0, Lcom/android/server/AppManage$ClearUserDataObserver;->this$0:Lcom/android/server/AppManage;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Lcom/android/server/AppManage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 238
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, p1, p0}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    .line 239
    return-void
.end method

.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 3
    .parameter "packageName"
    .parameter "succeeded"

    .prologue
    .line 229
    if-nez p2, :cond_0

    .line 230
    const-string v0, "AppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> ClearData FAILED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppManage$ClearUserDataObserver;->mCount:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 233
    return-void
.end method
