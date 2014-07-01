.class Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;
.super Landroid/os/Handler;
.source "TDPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/TDPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/TDPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/TDPhone;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 830
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->this$0:Lcom/android/internal/telephony/gsm/TDPhone;

    .line 832
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 833
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 837
    const-string v1, "TD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage msg.what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 907
    :goto_0
    return-void

    .line 840
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 841
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->this$0:Lcom/android/internal/telephony/gsm/TDPhone;

    #getter for: Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/TDPhone;->access$000(Lcom/android/internal/telephony/gsm/TDPhone;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 842
    :try_start_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 843
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->this$0:Lcom/android/internal/telephony/gsm/TDPhone;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/internal/telephony/gsm/TDPhone;->mGsmAuthen:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/android/internal/telephony/gsm/TDPhone;->access$102(Lcom/android/internal/telephony/gsm/TDPhone;Ljava/lang/String;)Ljava/lang/String;

    .line 849
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->this$0:Lcom/android/internal/telephony/gsm/TDPhone;

    #getter for: Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/TDPhone;->access$000(Lcom/android/internal/telephony/gsm/TDPhone;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 850
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 846
    :cond_0
    :try_start_1
    const-string v1, "TD"

    const-string v3, "handleMessage GSM error!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->this$0:Lcom/android/internal/telephony/gsm/TDPhone;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/TDPhone;->mGsmAuthen:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/TDPhone;->access$102(Lcom/android/internal/telephony/gsm/TDPhone;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 853
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 854
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->this$0:Lcom/android/internal/telephony/gsm/TDPhone;

    #getter for: Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/TDPhone;->access$000(Lcom/android/internal/telephony/gsm/TDPhone;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 855
    :try_start_2
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 856
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->this$0:Lcom/android/internal/telephony/gsm/TDPhone;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/internal/telephony/gsm/TDPhone;->mUsimAuthen:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/android/internal/telephony/gsm/TDPhone;->access$202(Lcom/android/internal/telephony/gsm/TDPhone;Ljava/lang/String;)Ljava/lang/String;

    .line 862
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->this$0:Lcom/android/internal/telephony/gsm/TDPhone;

    #getter for: Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/TDPhone;->access$000(Lcom/android/internal/telephony/gsm/TDPhone;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 863
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 859
    :cond_1
    :try_start_3
    const-string v1, "TD"

    const-string v3, "handleMessage USIM error!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->this$0:Lcom/android/internal/telephony/gsm/TDPhone;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/TDPhone;->mUsimAuthen:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/TDPhone;->access$202(Lcom/android/internal/telephony/gsm/TDPhone;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 866
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 867
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->this$0:Lcom/android/internal/telephony/gsm/TDPhone;

    #getter for: Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/TDPhone;->access$000(Lcom/android/internal/telephony/gsm/TDPhone;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 868
    :try_start_4
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 869
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->this$0:Lcom/android/internal/telephony/gsm/TDPhone;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/internal/telephony/gsm/TDPhone;->mSimType:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/android/internal/telephony/gsm/TDPhone;->access$302(Lcom/android/internal/telephony/gsm/TDPhone;Ljava/lang/String;)Ljava/lang/String;

    .line 875
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->this$0:Lcom/android/internal/telephony/gsm/TDPhone;

    #getter for: Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/TDPhone;->access$000(Lcom/android/internal/telephony/gsm/TDPhone;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 876
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    .line 872
    :cond_2
    :try_start_5
    const-string v1, "TD"

    const-string v3, "handleMessage SIM type error!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->this$0:Lcom/android/internal/telephony/gsm/TDPhone;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/TDPhone;->mSimType:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/TDPhone;->access$302(Lcom/android/internal/telephony/gsm/TDPhone;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 879
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 880
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->this$0:Lcom/android/internal/telephony/gsm/TDPhone;

    #getter for: Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/TDPhone;->access$000(Lcom/android/internal/telephony/gsm/TDPhone;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 881
    :try_start_6
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 882
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->this$0:Lcom/android/internal/telephony/gsm/TDPhone;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    #setter for: Lcom/android/internal/telephony/gsm/TDPhone;->mRegistrationState:[Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/android/internal/telephony/gsm/TDPhone;->access$402(Lcom/android/internal/telephony/gsm/TDPhone;[Ljava/lang/String;)[Ljava/lang/String;

    .line 888
    :goto_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->this$0:Lcom/android/internal/telephony/gsm/TDPhone;

    #getter for: Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/TDPhone;->access$000(Lcom/android/internal/telephony/gsm/TDPhone;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 889
    monitor-exit v2

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    .line 885
    :cond_3
    :try_start_7
    const-string v1, "TD"

    const-string v3, "handleMessage registration state error!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->this$0:Lcom/android/internal/telephony/gsm/TDPhone;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/TDPhone;->mRegistrationState:[Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/TDPhone;->access$402(Lcom/android/internal/telephony/gsm/TDPhone;[Ljava/lang/String;)[Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    .line 892
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 893
    .restart local v0       #ar:Landroid/os/AsyncResult;
    const-string v1, "TD"

    const-string v2, "handleMessage EVENT_GET_REMIAN_TIMES_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->this$0:Lcom/android/internal/telephony/gsm/TDPhone;

    #getter for: Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/TDPhone;->access$000(Lcom/android/internal/telephony/gsm/TDPhone;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 895
    :try_start_8
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    .line 896
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->this$0:Lcom/android/internal/telephony/gsm/TDPhone;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v4, 0x0

    aget v1, v1, v4

    #setter for: Lcom/android/internal/telephony/gsm/TDPhone;->mRemainTimes:I
    invoke-static {v3, v1}, Lcom/android/internal/telephony/gsm/TDPhone;->access$502(Lcom/android/internal/telephony/gsm/TDPhone;I)I

    .line 902
    :goto_5
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->this$0:Lcom/android/internal/telephony/gsm/TDPhone;

    #getter for: Lcom/android/internal/telephony/gsm/TDPhone;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/TDPhone;->access$000(Lcom/android/internal/telephony/gsm/TDPhone;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 903
    monitor-exit v2

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1

    .line 899
    :cond_4
    :try_start_9
    const-string v1, "TD"

    const-string v3, "handleMessage registration state error!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDPhone$SyncHandler;->this$0:Lcom/android/internal/telephony/gsm/TDPhone;

    const/4 v3, -0x1

    #setter for: Lcom/android/internal/telephony/gsm/TDPhone;->mRemainTimes:I
    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/TDPhone;->access$502(Lcom/android/internal/telephony/gsm/TDPhone;I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_5

    .line 838
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
