.class Lcom/android/server/DeviceStorageMonitorService$1$1;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DeviceStorageMonitorService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/DeviceStorageMonitorService$1;

.field final synthetic val$tmp:Z


# direct methods
.method constructor <init>(Lcom/android/server/DeviceStorageMonitorService$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$1$1;->this$1:Lcom/android/server/DeviceStorageMonitorService$1;

    iput-boolean p2, p0, Lcom/android/server/DeviceStorageMonitorService$1$1;->val$tmp:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$1$1;->this$1:Lcom/android/server/DeviceStorageMonitorService$1;

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    iget-boolean v1, p0, Lcom/android/server/DeviceStorageMonitorService$1$1;->val$tmp:Z

    #calls: Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V
    invoke-static {v0, v1}, Lcom/android/server/DeviceStorageMonitorService;->access$000(Lcom/android/server/DeviceStorageMonitorService;Z)V

    .line 164
    return-void
.end method
