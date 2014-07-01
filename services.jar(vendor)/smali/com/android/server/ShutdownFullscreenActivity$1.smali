.class Lcom/android/server/ShutdownFullscreenActivity$1;
.super Landroid/telephony/PhoneStateListener;
.source "ShutdownFullscreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ShutdownFullscreenActivity;
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
    .line 63
    iput-object p1, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .parameter "state"
    .parameter "ignored"

    .prologue
    .line 66
    const-string v2, "yheng"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "yheng kc  state-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ignored-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 72
    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/android/server/ShutdownFullscreenActivity;->access$000(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 73
    .local v0, state0:I
    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->mTelephonyManager1:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/android/server/ShutdownFullscreenActivity;->access$100(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .line 74
    .local v1, state1:I
    const-string v2, "yheng"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "yheng kc  state-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  state1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    .line 99
    .end local v1           #state1:I
    :cond_0
    :goto_0
    return-void

    .line 77
    .restart local v1       #state1:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->IsBatteryLowPoweroff:Z
    invoke-static {v2}, Lcom/android/server/ShutdownFullscreenActivity;->access$200(Lcom/android/server/ShutdownFullscreenActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/server/ShutdownFullscreenActivity;->access$300(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->cancel()V

    .line 80
    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->myHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/ShutdownFullscreenActivity;->access$500(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->myRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/ShutdownFullscreenActivity;->access$400(Lcom/android/server/ShutdownFullscreenActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/server/ShutdownFullscreenActivity;->access$600(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 82
    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    iget-object v3, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/android/server/ShutdownFullscreenActivity;->access$600(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/ShutdownFullscreenActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    :cond_2
    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    invoke-virtual {v2}, Lcom/android/server/ShutdownFullscreenActivity;->finish()V

    goto :goto_0

    .line 86
    .end local v0           #state0:I
    .end local v1           #state1:I
    :cond_3
    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/android/server/ShutdownFullscreenActivity;->access$000(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 87
    .restart local v0       #state0:I
    const-string v2, "yheng"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "yheng kc  state-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    if-eqz v0, :cond_0

    .line 90
    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->IsBatteryLowPoweroff:Z
    invoke-static {v2}, Lcom/android/server/ShutdownFullscreenActivity;->access$200(Lcom/android/server/ShutdownFullscreenActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/server/ShutdownFullscreenActivity;->access$300(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->cancel()V

    .line 92
    invoke-static {}, Lcom/android/server/ShutDownWakeLock;->releaseCpuLock()V

    .line 93
    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->myHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/ShutdownFullscreenActivity;->access$500(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->myRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/ShutdownFullscreenActivity;->access$400(Lcom/android/server/ShutdownFullscreenActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/server/ShutdownFullscreenActivity;->access$600(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 95
    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    iget-object v3, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/android/server/ShutdownFullscreenActivity;->access$600(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/ShutdownFullscreenActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    :cond_4
    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    invoke-virtual {v2}, Lcom/android/server/ShutdownFullscreenActivity;->finish()V

    goto/16 :goto_0
.end method
