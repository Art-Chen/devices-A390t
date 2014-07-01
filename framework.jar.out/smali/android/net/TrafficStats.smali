.class public Landroid/net/TrafficStats;
.super Ljava/lang/Object;
.source "TrafficStats.java"


# static fields
.field public static final TAG_SYSTEM_BACKUP:I = -0xfd

.field public static final TAG_SYSTEM_DOWNLOAD:I = -0xff

.field public static final TAG_SYSTEM_MEDIA:I = -0xfe

.field public static final UID_REMOVED:I = -0x4

.field public static final UID_TETHERING:I = -0x5

.field public static final UNSUPPORTED:I = -0x1

.field private static sActiveProfilingStart:Landroid/net/NetworkStats;

.field private static sProfilingLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearThreadStatsTag()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)V

    .line 122
    return-void
.end method

.method public static clearThreadStatsUid()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsUid(I)V

    .line 144
    return-void
.end method

.method private static getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;
    .locals 4
    .parameter "context"

    .prologue
    .line 504
    const-string/jumbo v3, "netstats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    .line 506
    .local v1, statsService:Landroid/net/INetworkStatsService;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 508
    .local v2, uid:I
    :try_start_0
    invoke-interface {v1, v2}, Landroid/net/INetworkStatsService;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static native getMobileRxBytes()J
.end method

.method public static native getMobileRxPackets()J
.end method

.method public static native getMobileTxBytes()J
.end method

.method public static native getMobileTxPackets()J
.end method

.method public static native getRxBytes(Ljava/lang/String;)J
.end method

.method public static native getRxPackets(Ljava/lang/String;)J
.end method

.method public static getThreadStatsTag()I
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/android/server/NetworkManagementSocketTagger;->getThreadSocketStatsTag()I

    move-result v0

    return v0
.end method

.method public static native getTotalRxBytes()J
.end method

.method public static native getTotalRxPackets()J
.end method

.method public static native getTotalTxBytes()J
.end method

.method public static native getTotalTxPackets()J
.end method

.method public static native getTxBytes(Ljava/lang/String;)J
.end method

.method public static native getTxPackets(Ljava/lang/String;)J
.end method

.method public static native getUidRxBytes(I)J
.end method

.method public static native getUidRxPackets(I)J
.end method

.method public static native getUidTcpRxBytes(I)J
.end method

.method public static native getUidTcpRxSegments(I)J
.end method

.method public static native getUidTcpTxBytes(I)J
.end method

.method public static native getUidTcpTxSegments(I)J
.end method

.method public static native getUidTxBytes(I)J
.end method

.method public static native getUidTxPackets(I)J
.end method

.method public static native getUidUdpRxBytes(I)J
.end method

.method public static native getUidUdpRxPackets(I)J
.end method

.method public static native getUidUdpTxBytes(I)J
.end method

.method public static native getUidUdpTxPackets(I)J
.end method

.method public static incrementOperationCount(I)V
    .locals 1
    .parameter "operationCount"

    .prologue
    .line 218
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    .line 219
    .local v0, tag:I
    invoke-static {v0, p0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 220
    return-void
.end method

.method public static incrementOperationCount(II)V
    .locals 4
    .parameter "tag"
    .parameter "operationCount"

    .prologue
    .line 230
    const-string/jumbo v3, "netstats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    .line 232
    .local v1, statsService:Landroid/net/INetworkStatsService;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 234
    .local v2, uid:I
    :try_start_0
    invoke-interface {v1, v2, p0, p1}, Landroid/net/INetworkStatsService;->incrementOperationCount(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static setThreadStatsTag(I)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 108
    invoke-static {p0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)V

    .line 109
    return-void
.end method

.method public static setThreadStatsUid(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 138
    invoke-static {p0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsUid(I)V

    .line 139
    return-void
.end method

.method public static startDataProfiling(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 175
    sget-object v1, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    sget-object v0, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "already profiling data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 181
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    move-result-object v0

    sput-object v0, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    .line 182
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    return-void
.end method

.method public static stopDataProfiling(Landroid/content/Context;)Landroid/net/NetworkStats;
    .locals 6
    .parameter "context"

    .prologue
    .line 193
    sget-object v4, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    monitor-enter v4

    .line 194
    :try_start_0
    sget-object v3, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    if-nez v3, :cond_0

    .line 195
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "not profiling data"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 207
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 200
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    move-result-object v2

    .line 201
    .local v2, profilingStop:Landroid/net/NetworkStats;
    sget-object v3, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    invoke-virtual {v2, v3}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 202
    .local v1, profilingDelta:Landroid/net/NetworkStats;
    const/4 v3, 0x0

    sput-object v3, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/net/NetworkStats$NonMonotonicException; {:try_start_1 .. :try_end_1} :catch_0

    .line 203
    :try_start_2
    monitor-exit v4

    return-object v1

    .line 204
    .end local v1           #profilingDelta:Landroid/net/NetworkStats;
    .end local v2           #profilingStop:Landroid/net/NetworkStats;
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Landroid/net/NetworkStats$NonMonotonicException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .locals 1
    .parameter "socket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->tag(Ljava/net/Socket;)V

    .line 157
    return-void
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .locals 2
    .parameter "socket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 163
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "trafficstats untagSocket"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->untag(Ljava/net/Socket;)V

    .line 166
    return-void
.end method
