.class Lcom/android/server/ShutdownFullscreenActivity$4;
.super Ljava/lang/Object;
.source "ShutdownFullscreenActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 190
    iput-object p1, p0, Lcom/android/server/ShutdownFullscreenActivity$4;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity$4;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->myHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/ShutdownFullscreenActivity;->access$500(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ShutdownFullscreenActivity$4;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->myRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/ShutdownFullscreenActivity;->access$400(Lcom/android/server/ShutdownFullscreenActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 195
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity$4;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/android/server/ShutdownFullscreenActivity;->access$600(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity$4;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    iget-object v1, p0, Lcom/android/server/ShutdownFullscreenActivity$4;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/server/ShutdownFullscreenActivity;->access$600(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ShutdownFullscreenActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity$4;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    invoke-virtual {v0}, Lcom/android/server/ShutdownFullscreenActivity;->finish()V

    .line 198
    return-void
.end method
