.class Lcom/android/server/AppManage$FreeMemory;
.super Ljava/lang/Thread;
.source "AppManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FreeMemory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppManage;


# direct methods
.method private constructor <init>(Lcom/android/server/AppManage;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppManage;Lcom/android/server/AppManage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/android/server/AppManage$FreeMemory;-><init>(Lcom/android/server/AppManage;)V

    return-void
.end method

.method private freeMemorySpace()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 317
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mClearDataList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$700(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 318
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mClearDataList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$700(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 319
    .local v5, pkgName:Ljava/lang/String;
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 320
    .local v0, count1:Ljava/util/concurrent/CountDownLatch;
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mClearDataObserver:Lcom/android/server/AppManage$ClearUserDataObserver;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$800(Lcom/android/server/AppManage;)Lcom/android/server/AppManage$ClearUserDataObserver;

    move-result-object v6

    if-nez v6, :cond_0

    .line 321
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    new-instance v7, Lcom/android/server/AppManage$ClearUserDataObserver;

    iget-object v8, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    invoke-direct {v7, v8}, Lcom/android/server/AppManage$ClearUserDataObserver;-><init>(Lcom/android/server/AppManage;)V

    #setter for: Lcom/android/server/AppManage;->mClearDataObserver:Lcom/android/server/AppManage$ClearUserDataObserver;
    invoke-static {v6, v7}, Lcom/android/server/AppManage;->access$802(Lcom/android/server/AppManage;Lcom/android/server/AppManage$ClearUserDataObserver;)Lcom/android/server/AppManage$ClearUserDataObserver;

    .line 324
    :cond_0
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mClearDataObserver:Lcom/android/server/AppManage$ClearUserDataObserver;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$800(Lcom/android/server/AppManage;)Lcom/android/server/AppManage$ClearUserDataObserver;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/android/server/AppManage$ClearUserDataObserver;->invokeClearData(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    .line 326
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v2

    .line 328
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v6, "AppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clear package data : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    .end local v0           #count1:Ljava/util/concurrent/CountDownLatch;
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mClearDataList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$700(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 333
    .restart local v5       #pkgName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mCache:Lcom/android/server/AppManage$AppInfoMap;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$500(Lcom/android/server/AppManage;)Lcom/android/server/AppManage$AppInfoMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/AppManage$AppInfoMap;->updateAppInfoSize(Ljava/lang/String;)V

    goto :goto_1

    .line 337
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mMove2SdList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$900(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 338
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mMove2SdList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$900(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 340
    .restart local v5       #pkgName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mUninstallList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$1000(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 341
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mUninstallList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$1000(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 344
    :cond_3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 345
    .restart local v0       #count1:Ljava/util/concurrent/CountDownLatch;
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mPackageMoveObserver:Lcom/android/server/AppManage$PackageMoveObserver;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$1100(Lcom/android/server/AppManage;)Lcom/android/server/AppManage$PackageMoveObserver;

    move-result-object v6

    if-nez v6, :cond_4

    .line 346
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    new-instance v7, Lcom/android/server/AppManage$PackageMoveObserver;

    iget-object v8, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    invoke-direct {v7, v8}, Lcom/android/server/AppManage$PackageMoveObserver;-><init>(Lcom/android/server/AppManage;)V

    #setter for: Lcom/android/server/AppManage;->mPackageMoveObserver:Lcom/android/server/AppManage$PackageMoveObserver;
    invoke-static {v6, v7}, Lcom/android/server/AppManage;->access$1102(Lcom/android/server/AppManage;Lcom/android/server/AppManage$PackageMoveObserver;)Lcom/android/server/AppManage$PackageMoveObserver;

    .line 349
    :cond_4
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mPackageMoveObserver:Lcom/android/server/AppManage$PackageMoveObserver;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$1100(Lcom/android/server/AppManage;)Lcom/android/server/AppManage$PackageMoveObserver;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/android/server/AppManage$PackageMoveObserver;->invokeMovePackage(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    .line 352
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 353
    :catch_1
    move-exception v2

    .line 354
    .restart local v2       #e:Ljava/lang/InterruptedException;
    const-string v6, "AppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to Move package to SD card : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 359
    .end local v0           #count1:Ljava/util/concurrent/CountDownLatch;
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mMove2SdList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$900(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 360
    .restart local v5       #pkgName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->myAppInfoAdapter:Lcom/android/server/AppManage$AppInfoAdapter;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$1200(Lcom/android/server/AppManage;)Lcom/android/server/AppManage$AppInfoAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/AppManage$AppInfoAdapter;->deleteItem(Ljava/lang/String;)V

    goto :goto_3

    .line 364
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mUninstallList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$1000(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 365
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mUninstallList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$1000(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 368
    .restart local v5       #pkgName:Ljava/lang/String;
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 369
    .restart local v0       #count1:Ljava/util/concurrent/CountDownLatch;
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mPackageUninstallobserver:Lcom/android/server/AppManage$PackageUninstallObserver;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$1300(Lcom/android/server/AppManage;)Lcom/android/server/AppManage$PackageUninstallObserver;

    move-result-object v6

    if-nez v6, :cond_7

    .line 370
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    new-instance v7, Lcom/android/server/AppManage$PackageUninstallObserver;

    iget-object v8, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/server/AppManage$PackageUninstallObserver;-><init>(Lcom/android/server/AppManage;Lcom/android/server/AppManage$1;)V

    #setter for: Lcom/android/server/AppManage;->mPackageUninstallobserver:Lcom/android/server/AppManage$PackageUninstallObserver;
    invoke-static {v6, v7}, Lcom/android/server/AppManage;->access$1302(Lcom/android/server/AppManage;Lcom/android/server/AppManage$PackageUninstallObserver;)Lcom/android/server/AppManage$PackageUninstallObserver;

    .line 373
    :cond_7
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mPackageUninstallobserver:Lcom/android/server/AppManage$PackageUninstallObserver;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$1300(Lcom/android/server/AppManage;)Lcom/android/server/AppManage$PackageUninstallObserver;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/android/server/AppManage$PackageUninstallObserver;->invokedeletePackage(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    .line 376
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 377
    :catch_2
    move-exception v2

    .line 378
    .restart local v2       #e:Ljava/lang/InterruptedException;
    const-string v6, "AppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to uninstall : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 383
    .end local v0           #count1:Ljava/util/concurrent/CountDownLatch;
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mUninstallList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$1000(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 384
    .restart local v5       #pkgName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->myAppInfoAdapter:Lcom/android/server/AppManage$AppInfoAdapter;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$1200(Lcom/android/server/AppManage;)Lcom/android/server/AppManage$AppInfoAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/AppManage$AppInfoAdapter;->deleteItem(Ljava/lang/String;)V

    goto :goto_5

    .line 389
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_9
    const-string v6, "devicestoragemonitor"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceStorageMonitorService;

    .line 391
    .local v1, dsm:Lcom/android/server/DeviceStorageMonitorService;
    invoke-virtual {v1, v10}, Lcom/android/server/DeviceStorageMonitorService;->setUpdateStorageDataFlag(Z)V

    .line 393
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$600(Lcom/android/server/AppManage;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 395
    .local v4, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/AppManage$FreeMemory;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/AppManage;->access$600(Lcom/android/server/AppManage;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0x1f4

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 396
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/android/server/AppManage$FreeMemory;->freeMemorySpace()V

    .line 312
    return-void
.end method
