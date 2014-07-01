.class public final Lcom/android/server/am/QuickbootActivityManagerServiceHook;
.super Ljava/lang/Object;
.source "QuickbootActivityManagerServiceHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;
    }
.end annotation


# static fields
.field private static final CHARGER_PICTURE_SHOW_TIMES:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "QuickbootActivityManagerServiceHook"

.field private static final mBatteryLevels:[I

.field private static final mChargerPicIds:[I

.field private static final mDefaultWhiteList:[Ljava/lang/String;

.field private static mHook:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

.field private static mInitPicIndex:I

.field private static mIsQbShutdown:Z


# instance fields
.field private final ACTION_QUICKBOOT_BOOT:Ljava/lang/String;

.field private final ACTION_QUICKBOOT_BOOT_NOTICE:Ljava/lang/String;

.field private final ACTION_QUICKBOOT_SHUTDOWN:Ljava/lang/String;

.field private final ACTION_QUICKBOOT_SHUTDOWN_DONE:Ljava/lang/String;

.field private final ACTION_QUICKBOOT_START_CHARGE:Ljava/lang/String;

.field private final ACTION_QUICKBOOT_STOP_CHARGE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mMainHandler:Landroid/os/Handler;

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private final mSetBackgroundTask:Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x6

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mHook:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "system"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.process.acore"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.wallpaper"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.baidu.home2"

    aput-object v2, v0, v1

    const-string v1, "com.baidu.baiduclock"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mDefaultWhiteList:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mBatteryLevels:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mChargerPicIds:[I

    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mInitPicIndex:I

    sput-boolean v4, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mIsQbShutdown:Z

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        #drawable@battery_0#a
        #drawable@battery_1#a
        #drawable@battery_2#a
        #drawable@battery_3#a
        #drawable@battery_4#a
        #drawable@battery_5#a
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .parameter "context"
    .parameter "service"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "QbAmsHook"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mHandlerThread:Landroid/os/HandlerThread;

    const-string v0, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    iput-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->ACTION_QUICKBOOT_SHUTDOWN:Ljava/lang/String;

    const-string v0, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN_DONE"

    iput-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->ACTION_QUICKBOOT_SHUTDOWN_DONE:Ljava/lang/String;

    const-string v0, "android.intent.action.ACTION_QUICKBOOT_BOOT"

    iput-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->ACTION_QUICKBOOT_BOOT:Ljava/lang/String;

    const-string v0, "android.intent.action.ACTION_QUICKBOOT_START_CHARGE"

    iput-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->ACTION_QUICKBOOT_START_CHARGE:Ljava/lang/String;

    const-string v0, "android.intent.action.ACTION_QUICKBOOT_STOP_CHARGE"

    iput-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->ACTION_QUICKBOOT_STOP_CHARGE:Ljava/lang/String;

    const-string v0, "android.intent.action.ACTION_QUICKBOOT_BOOT_NOTICE"

    iput-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->ACTION_QUICKBOOT_BOOT_NOTICE:Ljava/lang/String;

    new-instance v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;-><init>(Lcom/android/server/am/QuickbootActivityManagerServiceHook;Lcom/android/server/am/QuickbootActivityManagerServiceHook$1;)V

    iput-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mSetBackgroundTask:Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;

    iput-object p1, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mMainHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->init()V

    return-void
.end method

.method static synthetic access$iget-mMainHandler-2477bf(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$sput-mIsQbShutdown-813321(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mIsQbShutdown:Z

    return p0
.end method

.method static synthetic access$sget-mChargerPicIds-8a087a()[I
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mChargerPicIds:[I

    return-object v0
.end method

.method static synthetic access$iget-mHandler-c75905(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$sget-mDefaultWhiteList-2c1b1a()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mDefaultWhiteList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$iget-mService-ef7067(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$iget-mContext-c8f26c(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$invoke-resetActivityStack-43b2b7(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->resetActivityStack()V

    return-void
.end method

.method static synthetic access$invoke-notifyBootCompleted-0dccd9(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->notifyBootCompleted()V

    return-void
.end method

.method static synthetic access$sget-mInitPicIndex-ba8f8c()I
    .locals 1

    .prologue
    sget v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mInitPicIndex:I

    return v0
.end method

.method static synthetic access$sput-mInitPicIndex-cc4c22(I)I
    .locals 0
    .parameter "x0"

    .prologue
    sput p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mInitPicIndex:I

    return p0
.end method

.method static synthetic access$invoke-getChargerPicIndex-cfd6c8(Lcom/android/server/am/QuickbootActivityManagerServiceHook;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->getChargerPicIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$invoke-setQbChargerBackground-b4c1f6(Lcom/android/server/am/QuickbootActivityManagerServiceHook;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->setQbChargerBackground(II)V

    return-void
.end method

.method static synthetic access$iget-mSetBackgroundTask-23f9d3(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mSetBackgroundTask:Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;

    return-object v0
.end method

.method public static createHook(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    sget-object v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mHook:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mHook:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    :cond_0
    return-void
.end method

.method static filterReceiversForQbShutdown(Ljava/util/List;Landroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/BroadcastFilter;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, receivers:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-boolean v7, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mIsQbShutdown:Z

    if-eqz v7, :cond_3

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, size:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastFilter;

    .local v1, filter:Lcom/android/server/am/BroadcastFilter;
    sget-object v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mDefaultWhiteList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .local v6, target:Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v7, v7, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v2, v2, -0x1

    .end local v6           #target:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #filter:Lcom/android/server/am/BroadcastFilter;
    .end local v2           #i:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #size:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #filter:Lcom/android/server/am/BroadcastFilter;
    .restart local v2       #i:I
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #size:I
    .restart local v6       #target:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #filter:Lcom/android/server/am/BroadcastFilter;
    .end local v2           #i:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #size:I
    .end local v6           #target:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private getChargerPicIndex(I)I
    .locals 4
    .parameter "level"

    .prologue
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    :try_start_0
    sget-object v2, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mBatteryLevels:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mBatteryLevels:[I

    aget v2, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge p1, v2, :cond_1

    :cond_0
    add-int/lit8 v2, v1, -0x1

    :goto_1
    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "QuickbootActivityManagerServiceHook"

    const-string v3, "getChargerPicId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;
    .locals 5
    .parameter "pendingResult"

    .prologue
    const/4 v3, 0x0

    instance-of v2, p0, Lcom/android/server/am/PendingIntentRecord;

    if-nez v2, :cond_0

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/android/server/am/PendingIntentRecord;

    move-object v1, v0

    .local v1, res:Lcom/android/server/am/PendingIntentRecord;
    iget-object v2, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v3, v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    goto :goto_1

    .end local v1           #res:Lcom/android/server/am/PendingIntentRecord;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_QUICKBOOT_BOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_QUICKBOOT_BOOT_NOTICE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_QUICKBOOT_START_CHARGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_QUICKBOOT_STOP_CHARGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/QuickbootActivityManagerServiceHook$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/QuickbootActivityManagerServiceHook$1;-><init>(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private notifyBootCompleted()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/QuickbootActivityManagerServiceHook$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/QuickbootActivityManagerServiceHook$2;-><init>(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private resetActivityStack()V
    .locals 10

    .prologue
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, size:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, list:Ljava/util/ArrayList;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v8, :cond_1

    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    add-int/lit8 v6, v8, -0x1

    :goto_2
    if-ltz v6, :cond_2

    :try_start_0
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v2

    .local v2, idx:I
    const-string v0, "QuickbootActivityManagerServiceHook"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHistory.index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " list.index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "clear"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    .end local v2           #idx:I
    :cond_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setQbChargerBackground(II)V
    .locals 4
    .parameter "PicIndex"
    .parameter "delay"

    .prologue
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mSetBackgroundTask:Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;

    iput p1, v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;->nextIndex:I

    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mSetBackgroundTask:Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mSetBackgroundTask:Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mSetBackgroundTask:Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "QuickbootActivityManagerServiceHook"

    const-string v1, "Delay time is invalid!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
