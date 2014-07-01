.class public Lcom/android/internal/os/storage/ExternalStorageFormatter;
.super Landroid/app/Service;
.source "ExternalStorageFormatter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;
    }
.end annotation


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName; = null

.field public static final EXTRA_ALWAYS_RESET:Ljava/lang/String; = "always_reset"

.field public static final EXTRA_FORMAT_EXTERNAL:Ljava/lang/String; = "format_external"

.field public static final EXTRA_FORMAT_INTERNAL:Ljava/lang/String; = "format_internal"

.field public static final FORMAT_AND_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

.field public static final FORMAT_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ONLY"

.field private static final MESSAGE_TYPE_BAD_REMOVAL:I = 0x3

.field private static final MESSAGE_TYPE_CHECKING:I = 0x4

.field private static final MESSAGE_TYPE_ERASING:I = 0x1

.field private static final MESSAGE_TYPE_FORMAT_ERROR:I = 0x2

.field private static final MESSAGE_TYPE_REMOVED:I = 0x5

.field private static final MESSAGE_TYPE_SHARED:I = 0x6

.field private static final MESSAGE_TYPE_UNKNOWN_STATE:I = 0x7

.field private static final MESSAGE_TYPE_UNMOUNTING:I = 0x0

.field private static final STORAGE_TYPE_EXTERNAL:I = 0x1

.field private static final STORAGE_TYPE_INTERNAL:I = 0x0

.field private static final STORAGE_TYPE_INVALID:I = -0x1

.field static final TAG:Ljava/lang/String; = "ExternalStorageFormatter"


# instance fields
.field private mAlwaysReset:Z

.field private mExternalStoragePath:Ljava/lang/String;

.field private mFactoryReset:Z

.field private mFinished:Z

.field private mFormatStorageCount:I

.field private mFormatStorageIndex:I

.field private mFormatStorageInfo:Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;

.field private mFormatStorageInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInternalStoragePath:Ljava/lang/String;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mNextStorageHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 52
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 56
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 58
    iput-boolean v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 61
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mInternalStoragePath:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExternalStoragePath:Ljava/lang/String;

    .line 64
    iput v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageIndex:I

    .line 65
    iput v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageCount:I

    .line 69
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageInfo:Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageInfos:Ljava/util/ArrayList;

    .line 73
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mNextStorageHandler:Landroid/os/Handler;

    .line 105
    iput-boolean v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFinished:Z

    .line 107
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFinished:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/os/storage/ExternalStorageFormatter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMessageID(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->nextStorageOrFactoryReset(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    return v0
.end method

.method private getExternalStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExternalStoragePath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 150
    invoke-static {}, Landroid/os/Environment;->getSecondStorageType()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getSecondStorageType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 152
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExternalStoragePath:Ljava/lang/String;

    .line 158
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExternalStoragePath:Ljava/lang/String;

    return-object v0

    .line 154
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getSecondStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExternalStoragePath:Ljava/lang/String;

    goto :goto_0
.end method

.method private getInternalStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mInternalStoragePath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 137
    invoke-static {}, Landroid/os/Environment;->getSecondStorageType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 138
    invoke-static {}, Landroid/os/Environment;->getSecondStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mInternalStoragePath:Ljava/lang/String;

    .line 140
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getSecondStorageType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 141
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mInternalStoragePath:Ljava/lang/String;

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mInternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method private getMessageID(I)I
    .locals 2
    .parameter "messageType"

    .prologue
    .line 307
    const/4 v0, 0x1

    .line 308
    .local v0, storageType:I
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageInfo:Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageInfo:Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;

    iget v0, v1, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;->mType:I

    .line 311
    :cond_0
    if-nez v0, :cond_1

    .line 312
    packed-switch p1, :pswitch_data_0

    .line 350
    :goto_0
    const v1, 0x104000f

    :goto_1
    return v1

    .line 314
    :pswitch_0
    const v1, 0x10404a8

    goto :goto_1

    .line 316
    :pswitch_1
    const v1, 0x10404a9

    goto :goto_1

    .line 318
    :pswitch_2
    const v1, 0x10404aa

    goto :goto_1

    .line 320
    :pswitch_3
    const v1, 0x10404ab

    goto :goto_1

    .line 322
    :pswitch_4
    const v1, 0x10404ac

    goto :goto_1

    .line 324
    :pswitch_5
    const v1, 0x10404ad

    goto :goto_1

    .line 326
    :pswitch_6
    const v1, 0x10404ae

    goto :goto_1

    .line 328
    :pswitch_7
    const v1, 0x10404af

    goto :goto_1

    .line 331
    :cond_1
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 333
    :pswitch_8
    const v1, 0x10404a0

    goto :goto_1

    .line 335
    :pswitch_9
    const v1, 0x10404a1

    goto :goto_1

    .line 337
    :pswitch_a
    const v1, 0x10404a2

    goto :goto_1

    .line 339
    :pswitch_b
    const v1, 0x10404a3

    goto :goto_1

    .line 341
    :pswitch_c
    const v1, 0x10404a4

    goto :goto_1

    .line 343
    :pswitch_d
    const v1, 0x10404a5

    goto :goto_1

    .line 345
    :pswitch_e
    const v1, 0x10404a6

    goto :goto_1

    .line 347
    :pswitch_f
    const v1, 0x10404a7

    goto :goto_1

    .line 312
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 331
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private nextStorageOrFactoryReset(Z)Z
    .locals 2
    .parameter "factoryReset"

    .prologue
    .line 291
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageIndex:I

    .line 292
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageIndex:I

    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageCount:I

    if-ge v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mNextStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;

    invoke-direct {v1, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    const/4 v0, 0x1

    .line 303
    :goto_0
    return v0

    .line 300
    :cond_0
    if-eqz p1, :cond_1

    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 303
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method fail(I)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 282
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 283
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    invoke-direct {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->nextStorageOrFactoryReset(Z)Z

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 285
    return-void
.end method

.method getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 449
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 450
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 451
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 456
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 453
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 272
    .local v1, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageCount:I

    iput v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageIndex:I

    .line 273
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageInfo:Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageInfo:Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;

    iget-object v2, v2, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;->mPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 279
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ExternalStorageFormatter"

    const-string v3, "Failed talking with mount service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 125
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 126
    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 127
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 130
    :cond_0
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ExternalStorageFormatter"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 132
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 133
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 260
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 261
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, formatInternal:Z
    const/4 v1, 0x0

    .line 167
    .local v1, formatExternal:Z
    const-string v6, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 168
    iput-boolean v10, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 170
    :cond_0
    const-string v6, "always_reset"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 171
    iput-boolean v10, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 173
    :cond_1
    const-string v6, "format_internal"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 174
    const-string v6, "format_external"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 176
    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    .line 177
    :cond_2
    const-string v7, "ExternalStorageFormatter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onStartCommand format : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v2, :cond_9

    const-string v6, "internal"

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    and-int v6, v2, v1

    if-eqz v6, :cond_a

    const-string v6, ","

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v1, :cond_b

    const-string v6, "external"

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_3
    iput-boolean v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFinished:Z

    .line 184
    const-string/jumbo v6, "storage_volume"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    iput-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 185
    const-string v6, "ExternalStorageFormatter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onStartCommand format : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageCount:I

    if-lez v6, :cond_4

    .line 188
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 191
    :cond_4
    const/4 v5, 0x0

    .line 192
    .local v5, storagePath:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v6, :cond_6

    .line 193
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 194
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, internalStoragePath:Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 196
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageInfos:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;

    invoke-direct {v7, p0, v5, v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 199
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageInfos:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;

    invoke-direct {v7, p0, v5, v10}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v4           #internalStoragePath:Ljava/lang/String;
    :cond_6
    if-nez v2, :cond_c

    if-nez v1, :cond_c

    .line 203
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v6, :cond_7

    .line 204
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageInfos:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8, v10}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_7
    :goto_3
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageCount:I

    .line 226
    iput v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageIndex:I

    .line 227
    iget v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageCount:I

    if-lez v6, :cond_8

    .line 228
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;

    iput-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageInfo:Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;

    .line 229
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mNextStorageHandler:Landroid/os/Handler;

    .line 232
    :cond_8
    const-string v6, "ExternalStorageFormatter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onStartCommand mFormatStorageCount is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v3, 0x0

    .local v3, index:I
    :goto_4
    iget v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageCount:I

    if-ge v3, v6, :cond_10

    .line 234
    const-string v6, "ExternalStorageFormatter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onStartCommand mFormatStorageInfos["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageInfos:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 177
    .end local v3           #index:I
    .end local v5           #storagePath:Ljava/lang/String;
    :cond_9
    const-string v6, ""

    goto/16 :goto_0

    :cond_a
    const-string v6, ""

    goto/16 :goto_1

    :cond_b
    const-string v6, ""

    goto/16 :goto_2

    .line 207
    .restart local v5       #storagePath:Ljava/lang/String;
    :cond_c
    if-eqz v2, :cond_e

    .line 208
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v4

    .line 209
    .restart local v4       #internalStoragePath:Ljava/lang/String;
    if-eqz v4, :cond_e

    .line 210
    if-eqz v5, :cond_d

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 211
    :cond_d
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageInfos:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;

    invoke-direct {v7, p0, v4, v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v4           #internalStoragePath:Ljava/lang/String;
    :cond_e
    if-eqz v1, :cond_7

    .line 216
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, externalStoragePath:Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 218
    if-eqz v5, :cond_f

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 219
    :cond_f
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageInfos:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;

    invoke-direct {v7, p0, v0, v10}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 236
    .end local v0           #externalStoragePath:Ljava/lang/String;
    .restart local v3       #index:I
    :cond_10
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v6, :cond_12

    .line 237
    new-instance v6, Landroid/app/ProgressDialog;

    invoke-direct {v6, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 238
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v10}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 239
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 240
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 241
    iget-boolean v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-nez v6, :cond_11

    .line 242
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 244
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V

    .line 245
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 248
    :cond_12
    const/4 v6, 0x3

    return v6
.end method

.method public updateProgressDialog(I)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 438
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 440
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 441
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 445
    return-void
.end method

.method updateProgressState()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 354
    iget v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageIndex:I

    iget v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageCount:I

    if-ge v4, v5, :cond_1

    .line 355
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageInfos:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;

    iput-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageInfo:Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;

    .line 360
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStorageInfo:Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;

    iget-object v1, v4, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;->mPath:Ljava/lang/String;

    .line 361
    .local v1, formatStoragePath:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, status:Ljava/lang/String;
    const-string/jumbo v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "mounted_ro"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 364
    :cond_0
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMessageID(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 368
    .local v2, mountService:Landroid/os/storage/IMountService;
    const/4 v4, 0x1

    :try_start_0
    iget-boolean v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    invoke-interface {v2, v1, v4, v5}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v1           #formatStoragePath:Ljava/lang/String;
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    .end local v3           #status:Ljava/lang/String;
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto :goto_0

    .line 369
    .restart local v1       #formatStoragePath:Ljava/lang/String;
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    .restart local v3       #status:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 370
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Failed talking with mount service"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 372
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_2
    const-string/jumbo v4, "nofs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "unmounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "unmountable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 375
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMessageID(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 376
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 377
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    if-eqz v2, :cond_4

    .line 378
    new-instance v4, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->start()V

    goto :goto_0

    .line 418
    :cond_4
    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Unable to locate IMountService"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_5
    const-string v4, "bad_removal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 421
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMessageID(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto :goto_0

    .line 422
    :cond_6
    const-string v4, "checking"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 423
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMessageID(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto :goto_0

    .line 424
    :cond_7
    const-string/jumbo v4, "removed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 425
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMessageID(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto :goto_0

    .line 426
    :cond_8
    const-string/jumbo v4, "shared"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 427
    const/4 v4, 0x6

    invoke-direct {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMessageID(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 429
    :cond_9
    const/4 v4, 0x7

    invoke-direct {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMessageID(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    .line 430
    const-string v4, "ExternalStorageFormatter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
