.class Lcom/android/server/MountService$4;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$second:Ljava/lang/String;

.field final synthetic val$secondState:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iput-object p2, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/MountService$4;->val$secondState:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/MountService$4;->val$second:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iput-object p2, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1113
    :try_start_0
    const-string v2, "MountService"

    const-string v3, "Disabling UMS after cable disconnect"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object v2, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1115
    iget-object v2, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    const-string v4, "ums"

    const/4 v5, 0x0

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1116
    iget-object v2, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v1

    .local v1, rc:I
    if-eqz v1, :cond_0

    .line 1117
    const-string v2, "MountService"

    const-string v3, "Failed to remount {%s} on UMS enabled-disconnect (%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    .end local v1           #rc:I
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService$4;->val$secondState:Ljava/lang/String;

    const-string v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1123
    iget-object v2, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$4;->val$second:Ljava/lang/String;

    const-string v4, "ums"

    const/4 v5, 0x0

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1124
    iget-object v2, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$4;->val$second:Ljava/lang/String;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v1

    .restart local v1       #rc:I
    if-eqz v1, :cond_1

    .line 1125
    const-string v2, "MountService"

    const-string v3, "Failed to remount {%s} on UMS enabled-disconnect (%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/MountService$4;->val$second:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    .end local v1           #rc:I
    :cond_1
    :goto_0
    return-void

    .line 1130
    :catch_0
    move-exception v0

    .line 1131
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "MountService"

    const-string v3, "Failed to mount media on UMS enabled-disconnect"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
