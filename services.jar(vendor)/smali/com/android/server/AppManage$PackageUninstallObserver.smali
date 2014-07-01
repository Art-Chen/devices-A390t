.class Lcom/android/server/AppManage$PackageUninstallObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "AppManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUninstallObserver"
.end annotation


# instance fields
.field private mCount:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/android/server/AppManage;


# direct methods
.method private constructor <init>(Lcom/android/server/AppManage;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/server/AppManage$PackageUninstallObserver;->this$0:Lcom/android/server/AppManage;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppManage;Lcom/android/server/AppManage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/android/server/AppManage$PackageUninstallObserver;-><init>(Lcom/android/server/AppManage;)V

    return-void
.end method


# virtual methods
.method public invokedeletePackage(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 2
    .parameter "packageName"
    .parameter "count"

    .prologue
    .line 281
    iput-object p2, p0, Lcom/android/server/AppManage$PackageUninstallObserver;->mCount:Ljava/util/concurrent/CountDownLatch;

    .line 282
    iget-object v0, p0, Lcom/android/server/AppManage$PackageUninstallObserver;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/server/AppManage;->access$400(Lcom/android/server/AppManage;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 287
    return-void
.end method

.method public packageDeleted(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "succeeded"

    .prologue
    .line 274
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 275
    const-string v0, "AppManager"

    const-string v1, "Uninstall FAILED"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppManage$PackageUninstallObserver;->mCount:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 278
    return-void
.end method
