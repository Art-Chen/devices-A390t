.class public Lcom/android/server/DeviceStorageMonitorService;
.super Landroid/os/Binder;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceStorageMonitorService$SizeObserver;,
        Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;
    }
.end annotation


# static fields
.field private static final CACHE_PATH:Ljava/lang/String; = "/cache"

.field private static final DATA_PATH:Ljava/lang/String; = "/data"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_CHECK_INTERVAL:J = 0xea60L

.field private static final DEFAULT_DISK_FREE_CHANGE_REPORTING_THRESHOLD:J = 0x200000L

.field private static final DEFAULT_FREE_STORAGE_LOG_INTERVAL_IN_MINUTES:I = 0x2d0

.field private static final DEFAULT_FULL_THRESHOLD_BYTES:I = 0x500000

.field private static final DEFAULT_THRESHOLD_CRITICAL:I = 0xa00000

.field private static final DEFAULT_THRESHOLD_MAX_BYTES:I = 0x1f400000

.field private static final DEFAULT_THRESHOLD_PERCENTAGE:I = 0xa

.field private static final DEVICE_MEMORY_WHAT:I = 0x1

.field private static final GET_MEMORY_ERROR:I = -0x1

.field private static final GET_MEMORY_SUCCUESS:I = 0x0

.field private static final LOW_MEMORY_NOTIFICATION_ID:I = 0x1

.field private static final MONITOR_INTERVAL:I = 0x1

.field public static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final SYSTEM_PATH:Ljava/lang/String; = "/system"

.field private static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final TEMPFILENAME:Ljava/lang/String; = "/data/data/.space.temp"

.field private static final TEMPFILESIZE:I = 0x500000

.field private static final USERSPACELIMITED:I = 0x100000

.field private static final _FALSE:I = 0x0

.field private static final _TRUE:I = 0x1

.field private static final localLOGV:Z


# instance fields
.field private bootCompleted:Z

.field private final bootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mCacheFileStats:Landroid/os/StatFs;

.field private mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

.field private mClearSucceeded:Z

.field private mClearingCache:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDataFileStats:Landroid/os/StatFs;

.field private mFreeMem:J

.field private mGetMemorySuccuess:Z

.field mHandler:Landroid/os/Handler;

.field private mIsCheckingMemory:Z

.field private mLastReportedFreeMem:J

.field private mLastReportedFreeMemTime:J

.field private mLowMemFlag:Z

.field private mMemFullFlag:Z

.field private mMemFullThreshold:I

.field private mMemLowThreshold:J

.field private mStorageFullIntent:Landroid/content/Intent;

.field private mStorageLowIntent:Landroid/content/Intent;

.field private mStorageNotFullIntent:Landroid/content/Intent;

.field private mStorageOkIntent:Landroid/content/Intent;

.field private mSystemFileStats:Landroid/os/StatFs;

.field private mThreadStartTime:J

.field private mTotalMemory:J

.field private mUpdateMemory:Z

.field private mUpdateStorageData:Z

.field private myApplicationMemory:J

.field private myFreeMemory:J

.field private myMailMemory:J

.field myPm:Landroid/content/pm/IPackageManager;

.field private mySmsMmsMemory:J

.field private mySystemMemory:J

.field private myTotalMemory:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x1000

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    .line 474
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 97
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    .line 98
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    .line 108
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 109
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 122
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mUpdateMemory:Z

    .line 123
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->bootCompleted:Z

    .line 126
    iput-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->myTotalMemory:J

    .line 127
    iput-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->myFreeMemory:J

    .line 128
    iput-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->myApplicationMemory:J

    .line 129
    iput-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->myMailMemory:J

    .line 130
    iput-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mySmsMmsMemory:J

    .line 131
    iput-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mySystemMemory:J

    .line 132
    iput-boolean v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mGetMemorySuccuess:Z

    .line 133
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mIsCheckingMemory:Z

    .line 134
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mUpdateStorageData:Z

    .line 150
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$1;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    .line 170
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$2;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->bootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 678
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->myPm:Landroid/content/pm/IPackageManager;

    .line 475
    iput-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 476
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    .line 477
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    .line 479
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/data"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    .line 480
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/system"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    .line 481
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/cache"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    .line 483
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    .line 485
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    .line 486
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 487
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    .line 488
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 489
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    .line 490
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 491
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    .line 492
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 495
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 496
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 497
    const-string v1, "android.intent.action.show_storage"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->bootCompletedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 501
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getMemThreshold()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    .line 502
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getMemFullThreshold()I

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:I

    .line 503
    invoke-direct {p0, v8, v5, v6}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    .line 505
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceStorageMonitorService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->bootCompleted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/DeviceStorageMonitorService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->createTempFile()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/DeviceStorageMonitorService;ZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    return p1
.end method

.method private final cancelFullNotification()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 570
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 571
    return-void
.end method

.method private final cancelNotification()V
    .locals 3

    .prologue
    .line 546
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 550
    .local v0, mNotificationMgr:Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 552
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 553
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 554
    return-void
.end method

.method private final checkMemory(Z)V
    .locals 10
    .parameter "checkCache"

    .prologue
    const-wide/32 v8, 0xa00000

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 338
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mIsCheckingMemory:Z

    if-ne v2, v7, :cond_0

    .line 339
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "other thread is checking memory now ,return"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :goto_0
    return-void

    .line 342
    :cond_0
    iput-boolean v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mIsCheckingMemory:Z

    .line 348
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    if-eqz v2, :cond_2

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    sub-long v0, v2, v4

    .line 352
    .local v0, diffTime:J
    const-wide/32 v2, 0x927c0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 353
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Thread that clears cache file seems to run for ever"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .end local v0           #diffTime:J
    :cond_1
    :goto_1
    const-wide/32 v2, 0xea60

    invoke-direct {p0, v7, v2, v3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    .line 425
    iput-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mIsCheckingMemory:Z

    goto :goto_0

    .line 356
    :cond_2
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->restatDataDir()V

    .line 360
    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    .line 361
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mUpdateMemory:Z

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    cmp-long v2, v2, v8

    if-gez v2, :cond_3

    .line 362
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Risk, Running low on memory. Start activity automaticly."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->startShowStorageActivity()V

    .line 366
    :cond_3
    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    cmp-long v2, v2, v8

    if-ltz v2, :cond_4

    .line 367
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getShowStorageData()V

    .line 370
    :cond_4
    iput-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mUpdateMemory:Z

    .line 371
    iput-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mUpdateStorageData:Z

    .line 373
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-nez v2, :cond_5

    .line 374
    if-eqz p1, :cond_7

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 379
    iput-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 380
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->clearCache()V

    .line 392
    :cond_5
    :goto_2
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "rm -r /data/corefile/*"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :cond_6
    :goto_3
    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_a

    .line 411
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-nez v2, :cond_1

    .line 412
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendFullNotification()V

    .line 413
    iput-boolean v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    goto :goto_1

    .line 382
    :cond_7
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Running low on memory. Sending notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendNotification()V

    .line 384
    iput-boolean v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto :goto_2

    .line 399
    :cond_8
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mUpdateStorageData:Z

    if-eqz v2, :cond_9

    .line 400
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "update StorageData"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iput-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mUpdateStorageData:Z

    .line 402
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getShowStorageData()V

    .line 404
    :cond_9
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-eqz v2, :cond_6

    .line 405
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Memory available. Cancelling notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelNotification()V

    .line 407
    iput-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto :goto_3

    .line 416
    :cond_a
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-eqz v2, :cond_1

    .line 417
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelFullNotification()V

    .line 418
    iput-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    goto/16 :goto_1

    .line 393
    :catch_0
    move-exception v2

    goto :goto_3
.end method

.method private final clearCache()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 321
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    if-nez v1, :cond_0

    .line 323
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    .line 325
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    .line 328
    :try_start_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get handle for PackageManger Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    .line 333
    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    goto :goto_0
.end method

.method private createShowStorageIntent(Z)Landroid/content/Intent;
    .locals 13
    .parameter "hasData"

    .prologue
    .line 610
    const/4 v9, 0x0

    .line 611
    .local v9, showStorageIntent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getShowStorageData()V

    .line 612
    iget-boolean v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mGetMemorySuccuess:Z

    if-eqz v10, :cond_0

    .line 613
    new-instance v9, Landroid/content/Intent;

    .end local v9           #showStorageIntent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-class v11, Lcom/android/server/ShowStorage;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 614
    .restart local v9       #showStorageIntent:Landroid/content/Intent;
    const/high16 v10, 0x3000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 617
    if-eqz p1, :cond_0

    .line 618
    const/4 v7, 0x0

    .line 619
    .local v7, mTOTALLOCATION:I
    const/4 v3, 0x1

    .line 620
    .local v3, mFREELOCATION:I
    const/4 v1, 0x2

    .line 621
    .local v1, mAPPLICATIONLOCATION:I
    const/4 v4, 0x3

    .line 622
    .local v4, mMAILLOCATION:I
    const/4 v5, 0x4

    .line 623
    .local v5, mSMSMMSLOCATION:I
    const/4 v6, 0x5

    .line 624
    .local v6, mSYSTEMLOCATION:I
    const/4 v2, 0x6

    .line 626
    .local v2, mELEMENTCOUNT:I
    const/4 v10, 0x6

    new-array v8, v10, [J

    .line 627
    .local v8, mySize:[J
    const/4 v10, 0x0

    iget-wide v11, p0, Lcom/android/server/DeviceStorageMonitorService;->myTotalMemory:J

    aput-wide v11, v8, v10

    .line 628
    const/4 v10, 0x1

    iget-wide v11, p0, Lcom/android/server/DeviceStorageMonitorService;->myFreeMemory:J

    aput-wide v11, v8, v10

    .line 629
    const/4 v10, 0x2

    iget-wide v11, p0, Lcom/android/server/DeviceStorageMonitorService;->myApplicationMemory:J

    aput-wide v11, v8, v10

    .line 630
    const/4 v10, 0x3

    iget-wide v11, p0, Lcom/android/server/DeviceStorageMonitorService;->myMailMemory:J

    aput-wide v11, v8, v10

    .line 631
    const/4 v10, 0x4

    iget-wide v11, p0, Lcom/android/server/DeviceStorageMonitorService;->mySmsMmsMemory:J

    aput-wide v11, v8, v10

    .line 632
    const/4 v10, 0x5

    iget-wide v11, p0, Lcom/android/server/DeviceStorageMonitorService;->mySystemMemory:J

    aput-wide v11, v8, v10

    .line 634
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 635
    .local v0, data:Landroid/os/Bundle;
    const-string v10, "lastSize"

    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 636
    invoke-virtual {v9, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 639
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #mAPPLICATIONLOCATION:I
    .end local v2           #mELEMENTCOUNT:I
    .end local v3           #mFREELOCATION:I
    .end local v4           #mMAILLOCATION:I
    .end local v5           #mSMSMMSLOCATION:I
    .end local v6           #mSYSTEMLOCATION:I
    .end local v7           #mTOTALLOCATION:I
    .end local v8           #mySize:[J
    :cond_0
    return-object v9
.end method

.method private final createTempFile()V
    .locals 11

    .prologue
    .line 203
    invoke-static {}, Lcom/android/server/DeviceStorageMonitorService;->getUserSpace()J

    move-result-wide v5

    .line 204
    .local v5, size:J
    new-instance v1, Ljava/io/File;

    const-string v7, "/data/data/.space.temp"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, f:Ljava/io/File;
    const/high16 v0, 0x50

    .line 206
    .local v0, defaultSize:I
    long-to-double v7, v5

    const-wide v9, 0x3fe999999999999aL

    mul-double v3, v7, v9

    .line 207
    .local v3, fileSize:D
    int-to-double v7, v0

    cmpl-double v7, v3, v7

    if-lez v7, :cond_0

    .line 208
    int-to-double v3, v0

    .line 210
    :cond_0
    const-string v7, "DeviceStorageMonitorService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Temporary files size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/high16 v9, 0x4090

    div-double v9, v3, v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " kB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-double v7, v7

    cmpg-double v7, v7, v3

    if-gez v7, :cond_2

    .line 212
    :cond_1
    double-to-int v2, v3

    .line 213
    .local v2, fSize:I
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/server/DeviceStorageMonitorService$3;

    invoke-direct {v8, p0, v2}, Lcom/android/server/DeviceStorageMonitorService$3;-><init>(Lcom/android/server/DeviceStorageMonitorService;I)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 250
    .end local v2           #fSize:I
    :goto_0
    return-void

    .line 248
    :cond_2
    const-string v7, "DeviceStorageMonitorService"

    const-string v8, "Temporary file do not need to create"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static freeSpace()V
    .locals 9

    .prologue
    .line 187
    invoke-static {}, Lcom/android/server/DeviceStorageMonitorService;->getUserSpace()J

    move-result-wide v0

    .line 188
    .local v0, size:J
    const-string v3, "DeviceStorageMonitorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userdata space size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v0, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-wide/32 v3, 0x100000

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 190
    const-string v3, "DeviceStorageMonitorService"

    const-string v4, "userdata space size < 1M  !"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/.space.temp"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v2, temp:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    const-string v3, "DeviceStorageMonitorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Temporary file size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " KB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 195
    const-string v3, "DeviceStorageMonitorService"

    const-string v4, "Temporary file deleted !"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v2           #temp:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 197
    .restart local v2       #temp:Ljava/io/File;
    :cond_1
    const-string v3, "DeviceStorageMonitorService"

    const-string v4, "Temporary file does not exist !"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getApplicationSize()I
    .locals 25

    .prologue
    .line 682
    const-wide/16 v11, 0x0

    .line 683
    .local v11, myApplicationSize:J
    const-wide/16 v13, 0x0

    .line 684
    .local v13, myMailSize:J
    const-wide/16 v16, 0x0

    .line 685
    .local v16, mySmsMmsSize:J
    const-string v8, "com.android.email"

    .line 686
    .local v8, mMAILPACKAGE:Ljava/lang/String;
    const-string v9, "com.android.mms"

    .line 689
    .local v9, mMMSPACKAGE:Ljava/lang/String;
    new-instance v10, Lcom/android/server/DeviceStorageMonitorService$SizeObserver;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v10, v0, v1}, Lcom/android/server/DeviceStorageMonitorService$SizeObserver;-><init>(Lcom/android/server/DeviceStorageMonitorService;Lcom/android/server/DeviceStorageMonitorService$1;)V

    .line 691
    .local v10, mSizeObserver:Lcom/android/server/DeviceStorageMonitorService$SizeObserver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->myPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 692
    const-string v21, "DeviceStorageMonitorService"

    const-string v22, "PM service is not running"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const/16 v21, -0x1

    .line 772
    :goto_0
    return v21

    .line 704
    :cond_0
    const/16 v21, 0x2000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceStorageMonitorService;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v19

    .line 705
    .local v19, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    .line 707
    .local v3, count:I
    const/16 v18, 0x0

    .local v18, p:I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v3, :cond_a

    .line 708
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 712
    .local v6, info:Landroid/content/pm/PackageInfo;
    const-string v21, "android"

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 707
    :cond_1
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 716
    :cond_2
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v21, v0

    const/high16 v22, 0x4

    and-int v21, v21, v22

    if-nez v21, :cond_1

    .line 719
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 720
    .local v4, count1:Ljava/util/concurrent/CountDownLatch;
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v4}, Lcom/android/server/DeviceStorageMonitorService$SizeObserver;->invokeGetSize(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    .line 723
    const-wide/16 v21, 0x1f4

    :try_start_0
    sget-object v23, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v21

    move-object/from16 v2, v23

    invoke-virtual {v4, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :goto_3
    iget-object v15, v10, Lcom/android/server/DeviceStorageMonitorService$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    .line 730
    .local v15, myPackageStats:Landroid/content/pm/PackageStats;
    iget-boolean v0, v10, Lcom/android/server/DeviceStorageMonitorService$SizeObserver;->succeeded:Z

    move/from16 v20, v0

    .line 731
    .local v20, succeeded:Z
    if-nez v15, :cond_4

    .line 732
    if-eqz v20, :cond_3

    .line 733
    const-string v21, "DeviceStorageMonitorService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed getting size for pkg : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :goto_4
    const/16 v21, -0x1

    goto/16 :goto_0

    .line 724
    .end local v15           #myPackageStats:Landroid/content/pm/PackageStats;
    .end local v20           #succeeded:Z
    :catch_0
    move-exception v5

    .line 725
    .local v5, e:Ljava/lang/InterruptedException;
    const-string v21, "DeviceStorageMonitorService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed computing size for pkg : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 735
    .end local v5           #e:Ljava/lang/InterruptedException;
    .restart local v15       #myPackageStats:Landroid/content/pm/PackageStats;
    .restart local v20       #succeeded:Z
    :cond_3
    const-string v21, "DeviceStorageMonitorService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Time out getting size for pkg : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 739
    :cond_4
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_7

    .line 740
    const-string v21, "com.android.email"

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 741
    iget-wide v0, v15, Landroid/content/pm/PackageStats;->dataSize:J

    move-wide/from16 v21, v0

    add-long v13, v13, v21

    .line 742
    goto/16 :goto_2

    .line 744
    :cond_5
    const-string v21, "com.android.mms"

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 745
    iget-wide v0, v15, Landroid/content/pm/PackageStats;->dataSize:J

    move-wide/from16 v21, v0

    add-long v16, v16, v21

    .line 746
    goto/16 :goto_2

    .line 748
    :cond_6
    iget-wide v0, v15, Landroid/content/pm/PackageStats;->dataSize:J

    move-wide/from16 v21, v0

    add-long v11, v11, v21

    goto/16 :goto_2

    .line 751
    :cond_7
    const-string v21, "com.android.email"

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 752
    iget-wide v0, v15, Landroid/content/pm/PackageStats;->dataSize:J

    move-wide/from16 v21, v0

    iget-wide v0, v15, Landroid/content/pm/PackageStats;->codeSize:J

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    add-long v13, v13, v21

    .line 753
    goto/16 :goto_2

    .line 755
    :cond_8
    const-string v21, "com.android.mms"

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 756
    iget-wide v0, v15, Landroid/content/pm/PackageStats;->dataSize:J

    move-wide/from16 v21, v0

    iget-wide v0, v15, Landroid/content/pm/PackageStats;->codeSize:J

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    add-long v16, v16, v21

    .line 757
    goto/16 :goto_2

    .line 759
    :cond_9
    iget-wide v0, v15, Landroid/content/pm/PackageStats;->dataSize:J

    move-wide/from16 v21, v0

    iget-wide v0, v15, Landroid/content/pm/PackageStats;->codeSize:J

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    add-long v11, v11, v21

    goto/16 :goto_2

    .line 767
    .end local v4           #count1:Ljava/util/concurrent/CountDownLatch;
    .end local v6           #info:Landroid/content/pm/PackageInfo;
    .end local v15           #myPackageStats:Landroid/content/pm/PackageStats;
    .end local v20           #succeeded:Z
    :cond_a
    const/16 v7, 0x400

    .line 768
    .local v7, mKiloSize:I
    const-wide/16 v21, 0x400

    div-long v21, v11, v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DeviceStorageMonitorService;->myApplicationMemory:J

    .line 769
    const-wide/16 v21, 0x400

    div-long v21, v13, v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DeviceStorageMonitorService;->myMailMemory:J

    .line 770
    const-wide/16 v21, 0x400

    div-long v21, v16, v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DeviceStorageMonitorService;->mySmsMmsMemory:J

    .line 772
    const/16 v21, 0x0

    goto/16 :goto_0
.end method

.method private getMemFullThreshold()I
    .locals 4

    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "sys_storage_full_threshold_bytes"

    const/high16 v3, 0x50

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 467
    .local v0, value:I
    return v0
.end method

.method private getMemThreshold()J
    .locals 7

    .prologue
    .line 442
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "sys_storage_threshold_percentage"

    const/16 v6, 0xa

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    int-to-long v2, v4

    .line 447
    .local v2, value:J
    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    mul-long/2addr v2, v4

    .line 448
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "sys_storage_threshold_max_bytes"

    const/high16 v6, 0x1f40

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    int-to-long v0, v4

    .line 453
    .local v0, maxValue:J
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .end local v2           #value:J
    :goto_0
    return-wide v2

    .restart local v2       #value:J
    :cond_0
    move-wide v2, v0

    goto :goto_0
.end method

.method private getShowStorageData()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x400

    .line 585
    const/16 v0, 0x400

    .line 586
    .local v0, mKiloSize:I
    const/4 v1, 0x0

    .line 589
    .local v1, ret:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    const-string v3, "/data"

    invoke-virtual {v2, v3}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 590
    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :goto_0
    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-long v2, v2

    div-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->myTotalMemory:J

    .line 598
    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    div-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->myFreeMemory:J

    .line 600
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getApplicationSize()I

    move-result v1

    .line 601
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 602
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Get (MailMemory SmsMmsMemory ApplicationMemory) Error"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mGetMemorySuccuess:Z

    .line 605
    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->myTotalMemory:J

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->myFreeMemory:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->myMailMemory:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mySmsMmsMemory:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->myApplicationMemory:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mySystemMemory:J

    .line 607
    return-void

    .line 604
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 592
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static final getUserSpace()J
    .locals 8

    .prologue
    .line 252
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 253
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 254
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 255
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 256
    .local v0, availableBlocks:J
    mul-long v6, v2, v0

    return-wide v6
.end method

.method private postCheckMemoryMsg(ZJ)V
    .locals 5
    .parameter "clearCache"
    .parameter "delay"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 430
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 431
    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 434
    return-void

    :cond_0
    move v0, v2

    .line 431
    goto :goto_0
.end method

.method private final restatDataDir()V
    .locals 20

    .prologue
    .line 270
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    const-string v16, "/data"

    invoke-virtual/range {v15 .. v16}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 277
    :goto_0
    const-string v15, "debug.freemem"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, debugFreeMem:Ljava/lang/String;
    const-string v15, ""

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 279
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    .line 282
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v16, "sys_free_storage_log_interval"

    const-wide/16 v17, 0x2d0

    invoke-static/range {v15 .. v18}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v15

    const-wide/16 v17, 0x3c

    mul-long v15, v15, v17

    const-wide/16 v17, 0x3e8

    mul-long v7, v15, v17

    .line 286
    .local v7, freeMemLogInterval:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 287
    .local v2, currTime:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    sub-long v15, v2, v15

    cmp-long v15, v15, v7

    if-ltz v15, :cond_2

    .line 289
    :cond_1
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 290
    const-wide/16 v11, -0x1

    .local v11, mFreeSystem:J
    const-wide/16 v9, -0x1

    .line 292
    .local v9, mFreeCache:J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    const-string v16, "/system"

    invoke-virtual/range {v15 .. v16}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v11, v15, v17

    .line 299
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    const-string v16, "/cache"

    invoke-virtual/range {v15 .. v16}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v9, v15, v17

    .line 305
    :goto_2
    const/16 v15, 0xaba

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 309
    .end local v9           #mFreeCache:J
    .end local v11           #mFreeSystem:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v16, "disk_free_change_reporting_threshold"

    const-wide/32 v17, 0x200000

    invoke-static/range {v15 .. v18}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    .line 313
    .local v13, threshold:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    move-wide/from16 v17, v0

    sub-long v5, v15, v17

    .line 314
    .local v5, delta:J
    cmp-long v15, v5, v13

    if-gtz v15, :cond_3

    neg-long v15, v13

    cmp-long v15, v5, v15

    if-gez v15, :cond_4

    .line 315
    :cond_3
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    .line 316
    const/16 v15, 0xab8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 318
    :cond_4
    return-void

    .line 302
    .end local v5           #delta:J
    .end local v13           #threshold:J
    .restart local v9       #mFreeCache:J
    .restart local v11       #mFreeSystem:J
    :catch_0
    move-exception v15

    goto :goto_2

    .line 295
    :catch_1
    move-exception v15

    goto/16 :goto_1

    .line 273
    .end local v2           #currTime:J
    .end local v4           #debugFreeMem:Ljava/lang/String;
    .end local v7           #freeMemLogInterval:J
    .end local v9           #mFreeCache:J
    .end local v11           #mFreeSystem:J
    :catch_2
    move-exception v15

    goto/16 :goto_0
.end method

.method private final sendFullNotification()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 562
    return-void
.end method

.method private final sendNotification()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 516
    const/16 v6, 0xab9

    iget-wide v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v6, v7, v8}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 518
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/server/ShowStorage;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 519
    .local v2, lowMemIntent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 521
    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 524
    .local v3, mNotificationMgr:Landroid/app/NotificationManager;
    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v7, 0x10403cf

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 526
    .local v5, title:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v7, 0x10403d0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 529
    .local v0, details:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 531
    .local v1, intent:Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 532
    .local v4, notification:Landroid/app/Notification;
    const v6, 0x1080533

    iput v6, v4, Landroid/app/Notification;->icon:I

    .line 533
    iput-object v5, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 534
    iget v6, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v4, Landroid/app/Notification;->flags:I

    .line 535
    iget v6, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v4, Landroid/app/Notification;->flags:I

    .line 536
    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6, v5, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 537
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 538
    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 539
    return-void
.end method

.method private startShowStorageActivity()V
    .locals 2

    .prologue
    .line 643
    iget-boolean v1, p0, Lcom/android/server/DeviceStorageMonitorService;->bootCompleted:Z

    if-eqz v1, :cond_0

    .line 644
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/DeviceStorageMonitorService;->createShowStorageIntent(Z)Landroid/content/Intent;

    move-result-object v0

    .line 645
    .local v0, showStorageIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 646
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 649
    .end local v0           #showStorageIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public callOK()[J
    .locals 11

    .prologue
    .line 800
    const/4 v6, 0x0

    .line 801
    .local v6, mTOTALLOCATION:I
    const/4 v2, 0x1

    .line 802
    .local v2, mFREELOCATION:I
    const/4 v0, 0x2

    .line 803
    .local v0, mAPPLICATIONLOCATION:I
    const/4 v3, 0x3

    .line 804
    .local v3, mMAILLOCATION:I
    const/4 v4, 0x4

    .line 805
    .local v4, mSMSMMSLOCATION:I
    const/4 v5, 0x5

    .line 806
    .local v5, mSYSTEMLOCATION:I
    const/4 v1, 0x6

    .line 808
    .local v1, mELEMENTCOUNT:I
    const-string v8, "DeviceStorageMonitorService"

    const-string v9, "remote call is accepted callOK"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const/4 v8, 0x6

    new-array v7, v8, [J

    .line 812
    .local v7, mySize:[J
    const/4 v8, 0x0

    iget-wide v9, p0, Lcom/android/server/DeviceStorageMonitorService;->myTotalMemory:J

    aput-wide v9, v7, v8

    .line 813
    const/4 v8, 0x1

    iget-wide v9, p0, Lcom/android/server/DeviceStorageMonitorService;->myFreeMemory:J

    aput-wide v9, v7, v8

    .line 814
    const/4 v8, 0x2

    iget-wide v9, p0, Lcom/android/server/DeviceStorageMonitorService;->myApplicationMemory:J

    aput-wide v9, v7, v8

    .line 815
    const/4 v8, 0x3

    iget-wide v9, p0, Lcom/android/server/DeviceStorageMonitorService;->myMailMemory:J

    aput-wide v9, v7, v8

    .line 816
    const/4 v8, 0x4

    iget-wide v9, p0, Lcom/android/server/DeviceStorageMonitorService;->mySmsMmsMemory:J

    aput-wide v9, v7, v8

    .line 817
    const/4 v8, 0x5

    iget-wide v9, p0, Lcom/android/server/DeviceStorageMonitorService;->mySystemMemory:J

    aput-wide v9, v7, v8

    .line 819
    return-object v7
.end method

.method public getCallOKSuccuess()Z
    .locals 1

    .prologue
    .line 823
    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mGetMemorySuccuess:Z

    return v0
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .locals 7
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 777
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .local v3, packageInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .line 782
    .local v1, lastItem:Landroid/content/pm/PackageInfo;
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 783
    .local v2, lastKey:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/server/DeviceStorageMonitorService;->myPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, p1, v2}, Landroid/content/pm/IPackageManager;->getInstalledPackages(ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 784
    .local v4, slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    sget-object v5, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/ParceledListSlice;->populateList(Ljava/util/List;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #lastItem:Landroid/content/pm/PackageInfo;
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 785
    .restart local v1       #lastItem:Landroid/content/pm/PackageInfo;
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->isLastSlice()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 787
    return-object v3

    .line 782
    .end local v2           #lastKey:Ljava/lang/String;
    .end local v4           #slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 788
    .end local v1           #lastItem:Landroid/content/pm/PackageInfo;
    .end local v3           #packageInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v0

    .line 789
    .local v0, e:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Package manager has died"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getMemoryLowThreshold()J
    .locals 2

    .prologue
    .line 833
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    return-wide v0
.end method

.method public isMemoryLow()Z
    .locals 1

    .prologue
    .line 843
    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    return v0
.end method

.method public setUpdateStorageDataFlag(Z)V
    .locals 3
    .parameter "updateFlag"

    .prologue
    .line 794
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mUpdateStorageData:Z

    .line 795
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    .line 796
    return-void
.end method

.method public updateMemory()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 574
    invoke-static {}, Lcom/android/server/DeviceStorageMonitorService;->getCallingUid()I

    move-result v0

    .line 575
    .local v0, callingUid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 581
    :goto_0
    return-void

    .line 578
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mUpdateMemory:Z

    .line 580
    const-wide/16 v1, 0x0

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    goto :goto_0
.end method
