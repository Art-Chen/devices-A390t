.class Lcom/android/server/DeviceStorageMonitorService$SizeObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SizeObserver"
.end annotation


# instance fields
.field private mCount:Ljava/util/concurrent/CountDownLatch;

.field stats:Landroid/content/pm/PackageStats;

.field succeeded:Z

.field final synthetic this$0:Lcom/android/server/DeviceStorageMonitorService;


# direct methods
.method private constructor <init>(Lcom/android/server/DeviceStorageMonitorService;)V
    .locals 0
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$SizeObserver;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DeviceStorageMonitorService;Lcom/android/server/DeviceStorageMonitorService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 654
    invoke-direct {p0, p1}, Lcom/android/server/DeviceStorageMonitorService$SizeObserver;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    return-void
.end method


# virtual methods
.method public invokeGetSize(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 3
    .parameter "packageName"
    .parameter "count"

    .prologue
    .line 662
    iput-object p2, p0, Lcom/android/server/DeviceStorageMonitorService$SizeObserver;->mCount:Ljava/util/concurrent/CountDownLatch;

    .line 664
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService$SizeObserver;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    iget-object v1, v1, Lcom/android/server/DeviceStorageMonitorService;->myPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p0}, Landroid/content/pm/IPackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    :goto_0
    return-void

    .line 665
    :catch_0
    move-exception v0

    .line 667
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DeviceStorageMonitorService"

    const-string v2, "RemoteException e"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 1
    .parameter "pStats"
    .parameter "pSucceeded"

    .prologue
    .line 672
    iput-boolean p2, p0, Lcom/android/server/DeviceStorageMonitorService$SizeObserver;->succeeded:Z

    .line 673
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    .line 674
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$SizeObserver;->mCount:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 675
    return-void
.end method
