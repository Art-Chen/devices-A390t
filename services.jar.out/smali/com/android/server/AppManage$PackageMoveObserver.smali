.class Lcom/android/server/AppManage$PackageMoveObserver;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "AppManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageMoveObserver"
.end annotation


# instance fields
.field private mCount:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/android/server/AppManage;


# direct methods
.method constructor <init>(Lcom/android/server/AppManage;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/server/AppManage$PackageMoveObserver;->this$0:Lcom/android/server/AppManage;

    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public invokeMovePackage(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 2
    .parameter "packageName"
    .parameter "count"

    .prologue
    .line 260
    iput-object p2, p0, Lcom/android/server/AppManage$PackageMoveObserver;->mCount:Ljava/util/concurrent/CountDownLatch;

    .line 261
    iget-object v0, p0, Lcom/android/server/AppManage$PackageMoveObserver;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/server/AppManage;->access$400(Lcom/android/server/AppManage;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    .line 262
    return-void
.end method

.method public packageMoved(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "returnCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 253
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 254
    const-string v0, "AppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> Move to SD Card FAILED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppManage$PackageMoveObserver;->mCount:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 257
    return-void
.end method
