.class Lcom/android/server/WallpaperManagerService$1;
.super Landroid/os/FileObserver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WallpaperManagerService;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 9
    .parameter "event"
    .parameter "path"

    .prologue
    const/16 v6, 0x8

    .line 123
    if-nez p2, :cond_0

    .line 152
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v5, v4, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 128
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 129
    .local v2, origId:J
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 130
    .local v0, bm:Landroid/app/backup/BackupManager;
    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 131
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    .local v1, changedFile:Ljava/io/File;
    sget-object v4, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 136
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    #calls: Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked()V
    invoke-static {v4}, Lcom/android/server/WallpaperManagerService;->access$000(Lcom/android/server/WallpaperManagerService;)V

    .line 137
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    if-ne p1, v6, :cond_1

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-boolean v4, v4, Lcom/android/server/WallpaperManagerService;->mImageWallpaperPending:Z

    if-eqz v4, :cond_3

    .line 139
    :cond_1
    if-ne p1, v6, :cond_2

    .line 140
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/server/WallpaperManagerService;->mImageWallpaperPending:Z

    .line 142
    :cond_2
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, v6, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    .line 144
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    #calls: Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V
    invoke-static {v4}, Lcom/android/server/WallpaperManagerService;->access$100(Lcom/android/server/WallpaperManagerService;)V

    .line 151
    :cond_3
    :goto_1
    monitor-exit v5

    goto :goto_0

    .end local v0           #bm:Landroid/app/backup/BackupManager;
    .end local v1           #changedFile:Ljava/io/File;
    .end local v2           #origId:J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 146
    .restart local v0       #bm:Landroid/app/backup/BackupManager;
    .restart local v1       #changedFile:Ljava/io/File;
    .restart local v2       #origId:J
    :cond_4
    :try_start_1
    sget-object v4, Lcom/android/server/WallpaperManagerService;->LOCKSCRENN_FILE:Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 147
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    #calls: Lcom/android/server/WallpaperManagerService;->notifyCallbacksLockedByLockScreen()V
    invoke-static {v4}, Lcom/android/server/WallpaperManagerService;->access$200(Lcom/android/server/WallpaperManagerService;)V

    goto :goto_1

    .line 148
    :cond_5
    sget-object v4, Lcom/android/server/WallpaperManagerService;->MAINMENU_FILE:Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    #calls: Lcom/android/server/WallpaperManagerService;->notifyCallbacksLockedByMainMenu()V
    invoke-static {v4}, Lcom/android/server/WallpaperManagerService;->access$300(Lcom/android/server/WallpaperManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
