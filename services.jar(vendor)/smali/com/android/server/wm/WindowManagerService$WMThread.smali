.class Lcom/android/server/wm/WindowManagerService$WMThread;
.super Ljava/lang/Thread;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WMThread"
.end annotation


# instance fields
.field private final mAllowBootMessages:Z

.field private final mContext:Landroid/content/Context;

.field private final mHaveInputMethods:Z

.field private final mPM:Lcom/android/server/PowerManagerService;

.field mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)V
    .locals 1
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"
    .parameter "allowBootMsgs"

    .prologue
    .line 686
    const-string v0, "WindowManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 687
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mContext:Landroid/content/Context;

    .line 688
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mPM:Lcom/android/server/PowerManagerService;

    .line 689
    iput-boolean p3, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mHaveInputMethods:Z

    .line 690
    iput-boolean p4, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mAllowBootMessages:Z

    .line 691
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 694
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 695
    new-instance v0, Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mPM:Lcom/android/server/PowerManagerService;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mHaveInputMethods:Z

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mAllowBootMessages:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZLcom/android/server/wm/WindowManagerService$1;)V

    .line 697
    .local v0, s:Lcom/android/server/wm/WindowManagerService;
    const/4 v1, -0x2

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 699
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 701
    monitor-enter p0

    .line 702
    :try_start_0
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 703
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 704
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    const-string v1, "WindowManager"

    const-string v2, "Enabled StrictMode logging for WMThread\'s Looper"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 737
    return-void

    .line 704
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 714
    :catch_0
    move-exception v7

    .line 715
    .local v7, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/os/Debug;->isMonkeyOrDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    const-string v1, "system_server"

    invoke-static {v1}, Landroid/os/Debug;->dumpHprof(Ljava/lang/String;)V

    .line 721
    :goto_0
    throw v7

    .line 718
    :cond_1
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t dump hprof file because it is not in monkey test! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->isMonkey()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->isDebug()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 722
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v8

    .line 723
    .local v8, e1:Ljava/lang/RuntimeException;
    invoke-static {}, Landroid/os/Debug;->isMonkeyOrDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 724
    invoke-virtual {v8}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    .line 725
    .local v6, cause:Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string v1, "Caused by: java.lang.OutOfMemoryError"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 726
    const-string v1, "system_server"

    invoke-static {v1}, Landroid/os/Debug;->dumpHprof(Ljava/lang/String;)V

    .line 734
    .end local v6           #cause:Ljava/lang/String;
    :goto_1
    throw v8

    .line 728
    .restart local v6       #cause:Ljava/lang/String;
    :cond_2
    const-string v1, "WindowManager"

    const-string v2, "Don\'t dump hprof file because it is not OOM!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 731
    .end local v6           #cause:Ljava/lang/String;
    :cond_3
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t dump hprof file because it is not in monkey test! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->isMonkey()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->isDebug()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
