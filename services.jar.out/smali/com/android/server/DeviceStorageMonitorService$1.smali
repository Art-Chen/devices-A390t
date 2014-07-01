.class Lcom/android/server/DeviceStorageMonitorService$1;
.super Landroid/os/Handler;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceStorageMonitorService;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 154
    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v0, :cond_0

    .line 155
    const-string v1, "DeviceStorageMonitorService"

    const-string v2, "Will not process invalid message"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 158
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_1

    .line 159
    .local v0, tmp:Z
    :goto_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/DeviceStorageMonitorService$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/DeviceStorageMonitorService$1$1;-><init>(Lcom/android/server/DeviceStorageMonitorService$1;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 158
    .end local v0           #tmp:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
