.class Lcom/android/server/AppManage$SizeObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "AppManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SizeObserver"
.end annotation


# instance fields
.field private mCount:Ljava/util/concurrent/CountDownLatch;

.field stats:Landroid/content/pm/PackageStats;

.field succeeded:Z

.field final synthetic this$0:Lcom/android/server/AppManage;


# direct methods
.method private constructor <init>(Lcom/android/server/AppManage;)V
    .locals 0
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/server/AppManage$SizeObserver;->this$0:Lcom/android/server/AppManage;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppManage;Lcom/android/server/AppManage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 683
    invoke-direct {p0, p1}, Lcom/android/server/AppManage$SizeObserver;-><init>(Lcom/android/server/AppManage;)V

    return-void
.end method


# virtual methods
.method public invokeGetSize(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .parameter "packageName"
    .parameter "count"

    .prologue
    .line 691
    iput-object p2, p0, Lcom/android/server/AppManage$SizeObserver;->mCount:Ljava/util/concurrent/CountDownLatch;

    .line 692
    iget-object v0, p0, Lcom/android/server/AppManage$SizeObserver;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/server/AppManage;->access$400(Lcom/android/server/AppManage;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 693
    return-void
.end method

.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 1
    .parameter "pStats"
    .parameter "pSucceeded"

    .prologue
    .line 696
    iput-boolean p2, p0, Lcom/android/server/AppManage$SizeObserver;->succeeded:Z

    .line 697
    iput-object p1, p0, Lcom/android/server/AppManage$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    .line 698
    iget-object v0, p0, Lcom/android/server/AppManage$SizeObserver;->mCount:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 699
    return-void
.end method
