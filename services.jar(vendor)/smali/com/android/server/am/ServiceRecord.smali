.class Lcom/android/server/am/ServiceRecord;
.super Landroid/os/Binder;
.source "ServiceRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ServiceRecord$StartItem;
    }
.end annotation


# static fields
.field static final MAX_DELIVERY_COUNT:I = 0x3

.field static final MAX_DONE_EXECUTING_COUNT:I = 0x6


# instance fields
.field final ams:Lcom/android/server/am/ActivityManagerService;

.field app:Lcom/android/server/am/ProcessRecord;

.field final appInfo:Landroid/content/pm/ApplicationInfo;

.field final baseDir:Ljava/lang/String;

.field final bindings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Lcom/android/server/am/IntentBindRecord;",
            ">;"
        }
    .end annotation
.end field

.field callStart:Z

.field final connections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field crashCount:I

.field final createTime:J

.field final dataDir:Ljava/lang/String;

.field final deliveredStarts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord$StartItem;",
            ">;"
        }
    .end annotation
.end field

.field executeNesting:I

.field executingStart:J

.field final exported:Z

.field foregroundId:I

.field foregroundNoti:Landroid/app/Notification;

.field final intent:Landroid/content/Intent$FilterComparison;

.field isForeground:Z

.field lastActivity:J

.field private lastStartId:I

.field final name:Landroid/content/ComponentName;

.field nextRestartTime:J

.field final packageName:Ljava/lang/String;

.field final pendingStarts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord$StartItem;",
            ">;"
        }
    .end annotation
.end field

.field final permission:Ljava/lang/String;

.field final processName:Ljava/lang/String;

.field final resDir:Ljava/lang/String;

.field restartCount:I

.field restartDelay:J

.field restartForKill:Z

.field restartTime:J

.field final restarter:Ljava/lang/Runnable;

.field final serviceInfo:Landroid/content/pm/ServiceInfo;

.field final shortName:Ljava/lang/String;

.field startRequested:Z

.field final stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

.field stopIfKilled:Z

.field stringName:Ljava/lang/String;

.field totalRestartCount:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;Landroid/content/ComponentName;Landroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "ams"
    .parameter "servStats"
    .parameter "name"
    .parameter "intent"
    .parameter "sInfo"
    .parameter "restarter"

    .prologue
    .line 276
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->bindings:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Ljava/util/HashMap;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 277
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 278
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 279
    iput-object p3, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 280
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    .line 281
    iput-object p4, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 282
    iput-object p5, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 283
    iget-object v0, p5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 284
    iget-object v0, p5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 285
    iget-object v0, p5, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 286
    iget-object v0, p5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    .line 287
    iget-object v0, p5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->baseDir:Ljava/lang/String;

    .line 288
    iget-object v0, p5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->resDir:Ljava/lang/String;

    .line 289
    iget-object v0, p5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->dataDir:Ljava/lang/String;

    .line 290
    iget-boolean v0, p5, Landroid/content/pm/ServiceInfo;->exported:Z

    iput-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->exported:Z

    .line 291
    iput-object p6, p0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->createTime:J

    .line 293
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 294
    return-void
.end method


# virtual methods
.method public cancelNotification()V
    .locals 4

    .prologue
    .line 380
    iget v2, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v2, :cond_0

    .line 383
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 384
    .local v1, localPackageName:Ljava/lang/String;
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 385
    .local v0, localForegroundId:I
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/ServiceRecord$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/server/am/ServiceRecord$2;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 401
    .end local v0           #localForegroundId:I
    .end local v1           #localPackageName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public clearDeliveredStartsLocked()V
    .locals 2

    .prologue
    .line 404
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 404
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 408
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 22
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 196
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "intent={"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->toShortString(ZZZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 198
    const/16 v3, 0x7d

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 199
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "packageName="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "processName="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 202
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "permission="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 205
    .local v7, now:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 206
    .local v20, nowReal:J
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "baseDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->baseDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->resDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->baseDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 208
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "resDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->resDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "dataDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->dataDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "app="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 212
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v3, :cond_3

    .line 213
    :cond_2
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "isForeground="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 214
    const-string v3, " foregroundId="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 215
    const-string v3, " foregroundNoti="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 217
    :cond_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "createTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/am/ServiceRecord;->createTime:J

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    invoke-static {v3, v4, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 219
    const-string v3, " lastActivity="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move-object/from16 v0, p1

    invoke-static {v3, v4, v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 221
    const-string v3, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "executingStart="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    move-object/from16 v0, p1

    invoke-static {v3, v4, v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 224
    const-string v3, " restartTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    move-object/from16 v0, p1

    invoke-static {v3, v4, v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 226
    const-string v3, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-eqz v3, :cond_5

    .line 228
    :cond_4
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "startRequested="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 229
    const-string v3, " stopIfKilled="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 230
    const-string v3, " callStart="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->callStart:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 231
    const-string v3, " lastStartId="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 233
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    .line 235
    :cond_6
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "executeNesting="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 236
    const-string v3, " restartCount="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 237
    const-string v3, " restartDelay="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-object/from16 v0, p1

    invoke-static {v3, v4, v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 239
    const-string v3, " nextRestartTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-object/from16 v0, p1

    invoke-static {v3, v4, v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 241
    const-string v3, " crashCount="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 243
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 244
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Delivered Starts:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    .line 247
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 248
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Pending Starts:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const-wide/16 v13, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    .line 251
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->bindings:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->bindings:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 253
    .local v18, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/IntentBindRecord;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Bindings:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 255
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/IntentBindRecord;

    .line 256
    .local v15, b:Lcom/android/server/am/IntentBindRecord;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "* IntentBindRecord{"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    invoke-static {v15}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 258
    const-string v3, "}:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v3}, Lcom/android/server/am/IntentBindRecord;->dumpInService(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .end local v15           #b:Lcom/android/server/am/IntentBindRecord;
    .end local v18           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/IntentBindRecord;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->connections:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 263
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "All Connections:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->connections:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 265
    .local v19, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    :cond_b
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 266
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 267
    .local v16, c:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_b

    .line 268
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 267
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 272
    .end local v16           #c:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v17           #i:I
    .end local v19           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    :cond_c
    return-void
.end method

.method dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V
    .locals 5
    .parameter "pw"
    .parameter "prefix"
    .parameter
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ServiceRecord$StartItem;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ServiceRecord$StartItem;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 160
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_7

    .line 161
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 162
    .local v2, si:Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 163
    const-string v3, " id="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 164
    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-eqz v3, :cond_0

    .line 165
    const-string v3, " dur="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    iget-wide v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    invoke-static {v3, v4, p4, p5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 168
    :cond_0
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-eqz v3, :cond_1

    .line 169
    const-string v3, " dc="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 171
    :cond_1
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-eqz v3, :cond_2

    .line 172
    const-string v3, " dxc="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 174
    :cond_2
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  intent="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_6

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    :goto_1
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->targetPermissionUid:I

    if-ltz v3, :cond_3

    .line 179
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  targetPermissionUid="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->targetPermissionUid:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 182
    :cond_3
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v3, :cond_5

    .line 183
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v3, v3, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    if-eqz v3, :cond_4

    .line 184
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  readUriPermissions="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v3, v3, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 187
    :cond_4
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v3, v3, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    if-eqz v3, :cond_5

    .line 188
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  writeUriPermissions="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v3, v3, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 160
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 177
    :cond_6
    const-string v3, "null"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 193
    .end local v2           #si:Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_7
    return-void
.end method

.method public findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;
    .locals 4
    .parameter "id"
    .parameter "remove"

    .prologue
    .line 320
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 321
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 322
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 323
    .local v2, si:Lcom/android/server/am/ServiceRecord$StartItem;
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    if-ne v3, p1, :cond_1

    .line 324
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 329
    .end local v2           #si:Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_0
    :goto_1
    return-object v2

    .line 321
    .restart local v2       #si:Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    .end local v2           #si:Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getLastStartId()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    return v0
.end method

.method public makeNextStartId()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 337
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 338
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-ge v0, v1, :cond_0

    .line 339
    iput v1, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 341
    :cond_0
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    return v0
.end method

.method public postNotification()V
    .locals 8

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 346
    .local v3, appUid:I
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 347
    .local v4, appPid:I
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 350
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 351
    .local v2, localPackageName:Ljava/lang/String;
    iget v5, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 352
    .local v5, localForegroundId:I
    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 353
    .local v6, localForegroundNoti:Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/ServiceRecord$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ServiceRecord$1;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;IIILandroid/app/Notification;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 377
    .end local v2           #localPackageName:Ljava/lang/String;
    .end local v5           #localForegroundId:I
    .end local v6           #localForegroundNoti:Landroid/app/Notification;
    :cond_0
    return-void
.end method

.method public resetRestartCounter()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 315
    iput-wide v1, p0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 316
    iput-wide v1, p0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 317
    return-void
.end method

.method public retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;
    .locals 5
    .parameter "intent"
    .parameter "app"

    .prologue
    .line 298
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 299
    .local v2, filter:Landroid/content/Intent$FilterComparison;
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->bindings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/IntentBindRecord;

    .line 300
    .local v3, i:Lcom/android/server/am/IntentBindRecord;
    if-nez v3, :cond_0

    .line 301
    new-instance v3, Lcom/android/server/am/IntentBindRecord;

    .end local v3           #i:Lcom/android/server/am/IntentBindRecord;
    invoke-direct {v3, p0, v2}, Lcom/android/server/am/IntentBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent$FilterComparison;)V

    .line 302
    .restart local v3       #i:Lcom/android/server/am/IntentBindRecord;
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->bindings:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_0
    iget-object v4, v3, Lcom/android/server/am/IntentBindRecord;->apps:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBindRecord;

    .line 305
    .local v0, a:Lcom/android/server/am/AppBindRecord;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 310
    .end local v0           #a:Lcom/android/server/am/AppBindRecord;
    .local v1, a:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 308
    .end local v1           #a:Ljava/lang/Object;
    .restart local v0       #a:Lcom/android/server/am/AppBindRecord;
    :cond_1
    new-instance v0, Lcom/android/server/am/AppBindRecord;

    .end local v0           #a:Lcom/android/server/am/AppBindRecord;
    invoke-direct {v0, p0, v3, p2}, Lcom/android/server/am/AppBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 309
    .restart local v0       #a:Lcom/android/server/am/AppBindRecord;
    iget-object v4, v3, Lcom/android/server/am/IntentBindRecord;->apps:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 310
    .restart local v1       #a:Ljava/lang/Object;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 411
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    .line 418
    :goto_0
    return-object v1

    .line 414
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 415
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "ServiceRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    goto :goto_0
.end method
