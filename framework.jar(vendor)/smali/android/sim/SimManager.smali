.class public Landroid/sim/SimManager;
.super Ljava/lang/Object;
.source "SimManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sim/SimManager$OnSimsUpdateListener;
    }
.end annotation


# static fields
.field public static final ABSENT_SIM_COLOR:I = -0x7f7f80

.field public static final COLORS:[I = null

.field public static final COLORS_IMAGES:[I = null

.field public static final INSERT_SIMS_CHANGED_ACTION:Ljava/lang/String; = "android.sim.INSERT_SIMS_CHANGED"

.field private static final TAG:Ljava/lang/String; = "SimManager"

.field private static sInstance:Landroid/sim/SimManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mService:Landroid/sim/ISimManager;

.field private final mSimsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mSimsUpdatedListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/sim/SimManager$OnSimsUpdateListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/sim/SimManager;->COLORS:[I

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/sim/SimManager;->COLORS_IMAGES:[I

    return-void

    .line 48
    nop

    :array_0
    .array-data 0x4
        0x3at 0x38t 0xfft 0xfft
        0x97t 0xbet 0xd9t 0xfft
        0xd9t 0x72t 0xa3t 0xfft
        0xa7t 0x49t 0xfft 0xfft
        0x21t 0xaft 0xfft 0xfft
        0x37t 0xc7t 0x49t 0xfft
        0xd5t 0xdet 0x3at 0xfft
        0xdbt 0x74t 0x42t 0xfft
    .end array-data

    .line 53
    :array_1
    .array-data 0x4
        0xfct 0x4t 0x8t 0x1t
        0xfdt 0x4t 0x8t 0x1t
        0xfet 0x4t 0x8t 0x1t
        0xfft 0x4t 0x8t 0x1t
        0x0t 0x5t 0x8t 0x1t
        0x1t 0x5t 0x8t 0x1t
        0x2t 0x5t 0x8t 0x1t
        0x3t 0x5t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/sim/ISimManager;)V
    .locals 2
    .parameter "context"
    .parameter "service"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/sim/SimManager;->mSimsUpdatedListeners:Ljava/util/HashMap;

    .line 99
    new-instance v0, Landroid/sim/SimManager$1;

    invoke-direct {v0, p0}, Landroid/sim/SimManager$1;-><init>(Landroid/sim/SimManager;)V

    iput-object v0, p0, Landroid/sim/SimManager;->mSimsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    iput-object p1, p0, Landroid/sim/SimManager;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Landroid/sim/SimManager;->mService:Landroid/sim/ISimManager;

    .line 73
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/sim/SimManager;->mMainHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method static synthetic access$000(Landroid/sim/SimManager;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/sim/SimManager;->mSimsUpdatedListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Landroid/sim/SimManager;Landroid/os/Handler;Landroid/sim/SimManager$OnSimsUpdateListener;[Landroid/sim/Sim;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/sim/SimManager;->postToHandler(Landroid/os/Handler;Landroid/sim/SimManager$OnSimsUpdateListener;[Landroid/sim/Sim;)V

    return-void
.end method

.method public static get(Landroid/content/Context;)Landroid/sim/SimManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 83
    if-nez p0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    sget-object v0, Landroid/sim/SimManager;->sInstance:Landroid/sim/SimManager;

    if-nez v0, :cond_1

    .line 86
    new-instance v0, Landroid/sim/SimManager;

    const-string/jumbo v1, "sim_manager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/sim/ISimManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sim/ISimManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/sim/SimManager;-><init>(Landroid/content/Context;Landroid/sim/ISimManager;)V

    sput-object v0, Landroid/sim/SimManager;->sInstance:Landroid/sim/SimManager;

    .line 89
    :cond_1
    sget-object v0, Landroid/sim/SimManager;->sInstance:Landroid/sim/SimManager;

    return-object v0
.end method

.method private postToHandler(Landroid/os/Handler;Landroid/sim/SimManager$OnSimsUpdateListener;[Landroid/sim/Sim;)V
    .locals 3
    .parameter "handler"
    .parameter "listener"
    .parameter "sims"

    .prologue
    const/4 v2, 0x0

    .line 233
    array-length v1, p3

    new-array v0, v1, [Landroid/sim/Sim;

    .line 236
    .local v0, simsCopy:[Landroid/sim/Sim;
    array-length v1, v0

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/sim/SimManager;->mMainHandler:Landroid/os/Handler;

    .line 238
    :cond_0
    new-instance v1, Landroid/sim/SimManager$2;

    invoke-direct {v1, p0, p2, v0}, Landroid/sim/SimManager$2;-><init>(Landroid/sim/SimManager;Landroid/sim/SimManager$OnSimsUpdateListener;[Landroid/sim/Sim;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    return-void
.end method


# virtual methods
.method public addOnSimsUpdatedListener(Landroid/sim/SimManager$OnSimsUpdateListener;Landroid/os/Handler;Z)V
    .locals 5
    .parameter "listener"
    .parameter "handler"
    .parameter "updateImmediately"

    .prologue
    .line 289
    if-nez p1, :cond_0

    .line 290
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "the listener is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 292
    :cond_0
    iget-object v3, p0, Landroid/sim/SimManager;->mSimsUpdatedListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 293
    :try_start_0
    iget-object v2, p0, Landroid/sim/SimManager;->mSimsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "this listener is already added"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 296
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/sim/SimManager;->mSimsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    .line 298
    .local v1, wasEmpty:Z
    iget-object v2, p0, Landroid/sim/SimManager;->mSimsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    if-eqz v1, :cond_2

    .line 302
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 303
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.sim.INSERT_SIMS_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Landroid/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/sim/SimManager;->mSimsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 308
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    if-eqz p3, :cond_3

    .line 311
    invoke-virtual {p0}, Landroid/sim/SimManager;->getSims()[Landroid/sim/Sim;

    move-result-object v2

    invoke-direct {p0, p2, p1, v2}, Landroid/sim/SimManager;->postToHandler(Landroid/os/Handler;Landroid/sim/SimManager$OnSimsUpdateListener;[Landroid/sim/Sim;)V

    .line 313
    :cond_3
    return-void
.end method

.method public getActiveSims()[Landroid/sim/Sim;
    .locals 2

    .prologue
    .line 129
    :try_start_0
    iget-object v1, p0, Landroid/sim/SimManager;->mService:Landroid/sim/ISimManager;

    invoke-interface {v1}, Landroid/sim/ISimManager;->getActiveSims()[Landroid/sim/Sim;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 130
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAllSims()[Landroid/sim/Sim;
    .locals 2

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Landroid/sim/SimManager;->mService:Landroid/sim/ISimManager;

    invoke-interface {v1}, Landroid/sim/ISimManager;->getAllSims()[Landroid/sim/Sim;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getColor(I)I
    .locals 2
    .parameter "phoneId"

    .prologue
    .line 197
    :try_start_0
    iget-object v1, p0, Landroid/sim/SimManager;->mService:Landroid/sim/ISimManager;

    invoke-interface {v1, p1}, Landroid/sim/ISimManager;->getColor(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 198
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getColorIndex(I)I
    .locals 2
    .parameter "phoneId"

    .prologue
    .line 206
    :try_start_0
    iget-object v1, p0, Landroid/sim/SimManager;->mService:Landroid/sim/ISimManager;

    invoke-interface {v1, p1}, Landroid/sim/ISimManager;->getColorIndex(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 207
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getIccId(I)Ljava/lang/String;
    .locals 2
    .parameter "phoneId"

    .prologue
    .line 225
    :try_start_0
    iget-object v1, p0, Landroid/sim/SimManager;->mService:Landroid/sim/ISimManager;

    invoke-interface {v1, p1}, Landroid/sim/ISimManager;->getIccId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 226
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getName(I)Ljava/lang/String;
    .locals 2
    .parameter "phoneId"

    .prologue
    .line 178
    :try_start_0
    iget-object v1, p0, Landroid/sim/SimManager;->mService:Landroid/sim/ISimManager;

    invoke-interface {v1, p1}, Landroid/sim/ISimManager;->getName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 179
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSimByIccId(Ljava/lang/String;)Landroid/sim/Sim;
    .locals 2
    .parameter "iccId"

    .prologue
    .line 169
    :try_start_0
    iget-object v1, p0, Landroid/sim/SimManager;->mService:Landroid/sim/ISimManager;

    invoke-interface {v1, p1}, Landroid/sim/ISimManager;->getSimByIccId(Ljava/lang/String;)Landroid/sim/Sim;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 170
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSimById(I)Landroid/sim/Sim;
    .locals 2
    .parameter "phoneId"

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Landroid/sim/SimManager;->mService:Landroid/sim/ISimManager;

    invoke-interface {v1, p1}, Landroid/sim/ISimManager;->getSimById(I)Landroid/sim/Sim;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 156
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSims()[Landroid/sim/Sim;
    .locals 2

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Landroid/sim/SimManager;->mService:Landroid/sim/ISimManager;

    invoke-interface {v1}, Landroid/sim/ISimManager;->getSims()[Landroid/sim/Sim;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 118
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeOnSimsUpdatedListener(Landroid/sim/SimManager$OnSimsUpdateListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 329
    if-nez p1, :cond_0

    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_0
    iget-object v1, p0, Landroid/sim/SimManager;->mSimsUpdatedListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 332
    :try_start_0
    iget-object v0, p0, Landroid/sim/SimManager;->mSimsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 333
    const-string v0, "SimManager"

    const-string v2, "Listener was not previously added"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    monitor-exit v1

    .line 341
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Landroid/sim/SimManager;->mSimsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Landroid/sim/SimManager;->mSimsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Landroid/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/sim/SimManager;->mSimsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 340
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setColorIndex(II)V
    .locals 2
    .parameter "phoneId"
    .parameter "colorIndex"

    .prologue
    .line 215
    :try_start_0
    iget-object v1, p0, Landroid/sim/SimManager;->mService:Landroid/sim/ISimManager;

    invoke-interface {v1, p1, p2}, Landroid/sim/ISimManager;->setColorIndex(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setName(ILjava/lang/String;)V
    .locals 2
    .parameter "phoneId"
    .parameter "name"

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Landroid/sim/SimManager;->mService:Landroid/sim/ISimManager;

    invoke-interface {v1, p1, p2}, Landroid/sim/ISimManager;->setName(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
