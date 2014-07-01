.class Lcom/android/server/ShutdownFullscreenActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownFullscreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ShutdownFullscreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ShutdownFullscreenActivity;


# direct methods
.method constructor <init>(Lcom/android/server/ShutdownFullscreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/server/ShutdownFullscreenActivity$3;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 159
    const-string v0, "ShutdownFullScreenActivity"

    const-string v1, "ShutdownFullscreenActivity   onReceive"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v0, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 162
    invoke-static {}, Lcom/android/server/ShutDownWakeLock;->releaseCpuLock()V

    .line 163
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity$3;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->myHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/ShutdownFullscreenActivity;->access$500(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ShutdownFullscreenActivity$3;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->myRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/ShutdownFullscreenActivity;->access$400(Lcom/android/server/ShutdownFullscreenActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity$3;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/ShutdownFullscreenActivity;->access$300(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "ShutdownFullScreenActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShutdownFullscreenActivity   onReceive isShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity$3;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/server/ShutdownFullscreenActivity;->access$300(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity$3;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/android/server/ShutdownFullscreenActivity;->access$600(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity$3;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    iget-object v1, p0, Lcom/android/server/ShutdownFullscreenActivity$3;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/server/ShutdownFullscreenActivity;->access$600(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ShutdownFullscreenActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity$3;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    invoke-virtual {v0}, Lcom/android/server/ShutdownFullscreenActivity;->finish()V

    .line 171
    :cond_2
    return-void
.end method
