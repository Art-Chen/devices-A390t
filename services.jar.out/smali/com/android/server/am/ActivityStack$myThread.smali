.class Lcom/android/server/am/ActivityStack$myThread;
.super Ljava/lang/Thread;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myThread"
.end annotation


# instance fields
.field mTargetActivityRecord:Lcom/android/server/am/ActivityRecord;

.field final synthetic this$0:Lcom/android/server/am/ActivityStack;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .parameter
    .parameter "target"

    .prologue
    .line 4276
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$myThread;->this$0:Lcom/android/server/am/ActivityStack;

    .line 4277
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4278
    iput-object p2, p0, Lcom/android/server/am/ActivityStack$myThread;->mTargetActivityRecord:Lcom/android/server/am/ActivityRecord;

    .line 4279
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4282
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$myThread;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 4283
    :try_start_0
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=================="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack$myThread;->mTargetActivityRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=================="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4284
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$myThread;->mTargetActivityRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 4285
    monitor-exit v1

    .line 4286
    return-void

    .line 4285
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
