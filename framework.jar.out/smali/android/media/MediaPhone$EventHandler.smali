.class Landroid/media/MediaPhone$EventHandler;
.super Landroid/os/Handler;
.source "MediaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPhone:Landroid/media/MediaPhone;

.field final synthetic this$0:Landroid/media/MediaPhone;


# direct methods
.method public constructor <init>(Landroid/media/MediaPhone;Landroid/media/MediaPhone;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "mp"
    .parameter "looper"

    .prologue
    .line 718
    iput-object p1, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    .line 719
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 720
    iput-object p2, p0, Landroid/media/MediaPhone$EventHandler;->mMediaPhone:Landroid/media/MediaPhone;

    .line 721
    return-void
.end method

.method private internalResendMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 724
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 725
    .local v1, bundle:Landroid/os/Bundle;
    const-string/jumbo v3, "resend"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 727
    .local v2, tempMsg:Landroid/os/Message;
    if-nez v2, :cond_1

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 731
    .local v0, ar:Landroid/os/AsyncResult;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 732
    if-eqz v2, :cond_0

    .line 733
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 739
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->mMediaPhone:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mNativeContext:I
    invoke-static {v9}, Landroid/media/MediaPhone;->access$300(Landroid/media/MediaPhone;)I

    move-result v9

    if-nez v9, :cond_1

    .line 740
    const-string v9, "MediaPhone"

    const-string/jumbo v10, "mediaphone went away with unhandled events"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    const-string v9, "MediaPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 748
    .local v0, ar:Landroid/os/AsyncResult;
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 894
    const-string v9, "MediaPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown message type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 751
    :sswitch_0
    const-string v9, "MediaPhone"

    const-string/jumbo v10, "receive MEDIA_PREPARED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/media/MediaPhone;->codec(ILandroid/os/Bundle;Landroid/os/Message;)V

    goto :goto_0

    .line 761
    :sswitch_1
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnVideoSizeChangedListener:Landroid/media/MediaPhone$OnVideoSizeChangedListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$400(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnVideoSizeChangedListener;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 762
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnVideoSizeChangedListener:Landroid/media/MediaPhone$OnVideoSizeChangedListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$400(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnVideoSizeChangedListener;

    move-result-object v9

    iget-object v10, p0, Landroid/media/MediaPhone$EventHandler;->mMediaPhone:Landroid/media/MediaPhone;

    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v9, v10, v11, v12}, Landroid/media/MediaPhone$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPhone;II)V

    goto :goto_0

    .line 768
    :sswitch_2
    const-string v9, "MediaPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const/4 v3, 0x0

    .line 770
    .local v3, error_was_handled:Z
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnErrorListener:Landroid/media/MediaPhone$OnErrorListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$500(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnErrorListener;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 771
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnErrorListener:Landroid/media/MediaPhone$OnErrorListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$500(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnErrorListener;

    move-result-object v9

    iget-object v10, p0, Landroid/media/MediaPhone$EventHandler;->mMediaPhone:Landroid/media/MediaPhone;

    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v10, v11, v12}, Landroid/media/MediaPhone$OnErrorListener;->onError(Landroid/media/MediaPhone;ILjava/lang/Object;)Z

    move-result v3

    .line 773
    :cond_2
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    const/4 v10, 0x0

    #calls: Landroid/media/MediaPhone;->stayAwake(Z)V
    invoke-static {v9, v10}, Landroid/media/MediaPhone;->access$600(Landroid/media/MediaPhone;Z)V

    goto/16 :goto_0

    .line 779
    .end local v3           #error_was_handled:Z
    :sswitch_3
    const-string v9, "MediaPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Info ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnMediaInfoListener:Landroid/media/MediaPhone$OnMediaInfoListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$700(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnMediaInfoListener;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 781
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnMediaInfoListener:Landroid/media/MediaPhone$OnMediaInfoListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$700(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnMediaInfoListener;

    move-result-object v9

    iget-object v10, p0, Landroid/media/MediaPhone$EventHandler;->mMediaPhone:Landroid/media/MediaPhone;

    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v10, v11, v12}, Landroid/media/MediaPhone$OnMediaInfoListener;->onMediaInfo(Landroid/media/MediaPhone;ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 794
    :sswitch_4
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 795
    .local v2, e:Ljava/lang/Throwable;
    if-eqz v2, :cond_3

    .line 796
    instance-of v9, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v9, :cond_4

    .line 803
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/MediaPhone$EventHandler;->internalResendMessage(Landroid/os/Message;)V

    .line 804
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    const/4 v10, 0x0

    #calls: Landroid/media/MediaPhone;->stayAwake(Z)V
    invoke-static {v9, v10}, Landroid/media/MediaPhone;->access$600(Landroid/media/MediaPhone;Z)V

    goto/16 :goto_0

    .line 799
    :cond_4
    const-string v9, "MediaPhone"

    const-string v10, "handleMessage(), other exceptions"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 808
    .end local v2           #e:Ljava/lang/Throwable;
    :sswitch_5
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 809
    .local v4, indication:Ljava/lang/String;
    const-string v9, "MediaPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(MEDIA_UNSOL_DATA), indication: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 814
    .end local v4           #indication:Ljava/lang/String;
    :sswitch_6
    if-nez v0, :cond_5

    .line 815
    const-string v9, "MediaPhone"

    const-string v10, "handleMessage(MEDIA_UNSOL_CODEC), ar == null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 818
    :cond_5
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    move-object v5, v9

    check-cast v5, [I

    .line 819
    .local v5, params:[I
    const-string v9, "MediaPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(MEDIA_UNSOL_CODEC), params: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mCodecCount: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mCodecCount:I
    invoke-static {v11}, Landroid/media/MediaPhone;->access$800(Landroid/media/MediaPhone;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/4 v9, 0x0

    aget v9, v5, v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_7

    .line 821
    array-length v9, v5

    const/4 v10, 0x4

    if-lt v9, v10, :cond_0

    .line 822
    const/4 v9, 0x2

    aget v9, v5, v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 823
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    const/4 v10, 0x3

    aget v10, v5, v10

    invoke-virtual {v9, v10}, Landroid/media/MediaPhone;->setDecodeType(I)V

    .line 824
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    invoke-static {v9}, Landroid/media/MediaPhone;->access$808(Landroid/media/MediaPhone;)I

    .line 829
    :goto_1
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    const/4 v10, 0x0

    aget v10, v5, v10

    const/4 v11, 0x2

    aget v11, v5, v11

    invoke-virtual {v9, v10, v11}, Landroid/media/MediaPhone;->onCodecRequest(II)V

    goto/16 :goto_0

    .line 826
    :cond_6
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    const/4 v10, 0x3

    aget v10, v5, v10

    invoke-virtual {v9, v10}, Landroid/media/MediaPhone;->setEncodeType(I)V

    .line 827
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    invoke-static {v9}, Landroid/media/MediaPhone;->access$808(Landroid/media/MediaPhone;)I

    goto :goto_1

    .line 832
    :cond_7
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    const/4 v10, 0x0

    aget v10, v5, v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/media/MediaPhone;->onCodecRequest(II)V

    goto/16 :goto_0

    .line 838
    .end local v5           #params:[I
    :sswitch_7
    if-nez v0, :cond_8

    .line 839
    const-string v9, "MediaPhone"

    const-string v10, "handleMessage(MEDIA_UNSOL_STR), ar == null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 843
    :cond_8
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 844
    .local v6, str:Ljava/lang/String;
    const-string v9, "MediaPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(MEDIA_UNSOL_STR), str == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const-string/jumbo v9, "open_:camera_"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 847
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$900(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnCallEventListener;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 848
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$900(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnCallEventListener;

    move-result-object v9

    iget-object v10, p0, Landroid/media/MediaPhone$EventHandler;->mMediaPhone:Landroid/media/MediaPhone;

    const/16 v11, 0x65

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/media/MediaPhone$OnCallEventListener;->onCallEvent(Landroid/media/MediaPhone;ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 850
    :cond_9
    const-string v9, "close_:camera_"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 851
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$900(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnCallEventListener;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 852
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$900(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnCallEventListener;

    move-result-object v9

    iget-object v10, p0, Landroid/media/MediaPhone$EventHandler;->mMediaPhone:Landroid/media/MediaPhone;

    const/16 v11, 0x64

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/media/MediaPhone$OnCallEventListener;->onCallEvent(Landroid/media/MediaPhone;ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 854
    :cond_a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 855
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$900(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnCallEventListener;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 856
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$900(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnCallEventListener;

    move-result-object v9

    iget-object v10, p0, Landroid/media/MediaPhone$EventHandler;->mMediaPhone:Landroid/media/MediaPhone;

    const/16 v11, 0x66

    invoke-interface {v9, v10, v11, v6}, Landroid/media/MediaPhone$OnCallEventListener;->onCallEvent(Landroid/media/MediaPhone;ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 863
    .end local v6           #str:Ljava/lang/String;
    :sswitch_8
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    move-object v5, v9

    check-cast v5, [I

    .line 864
    .restart local v5       #params:[I
    const/4 v9, 0x0

    aget v1, v5, v9

    .line 865
    .local v1, datatype:I
    const/4 v9, 0x1

    aget v7, v5, v9

    .line 866
    .local v7, sw:I
    const/4 v4, 0x0

    .line 868
    .local v4, indication:I
    array-length v9, v5

    const/4 v10, 0x2

    if-le v9, v10, :cond_b

    .line 869
    const/4 v9, 0x2

    aget v4, v5, v9

    .line 871
    :cond_b
    const/4 v9, 0x1

    if-ne v1, v9, :cond_0

    if-nez v7, :cond_0

    if-nez v4, :cond_0

    goto/16 :goto_0

    .line 877
    .end local v1           #datatype:I
    .end local v4           #indication:I
    .end local v5           #params:[I
    .end local v7           #sw:I
    :sswitch_9
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    move-object v5, v9

    check-cast v5, [I

    .line 878
    .restart local v5       #params:[I
    const/4 v9, 0x0

    aget v8, v5, v9

    .line 879
    .local v8, timer:I
    goto/16 :goto_0

    .line 883
    .end local v5           #params:[I
    .end local v8           #timer:I
    :sswitch_a
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    move-object v5, v9

    check-cast v5, [I

    .line 884
    .restart local v5       #params:[I
    const/4 v9, 0x0

    aget v4, v5, v9

    .line 885
    .restart local v4       #indication:I
    goto/16 :goto_0

    .line 889
    .end local v4           #indication:I
    .end local v5           #params:[I
    :sswitch_b
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$900(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnCallEventListener;

    move-result-object v9

    iget-object v10, p0, Landroid/media/MediaPhone$EventHandler;->mMediaPhone:Landroid/media/MediaPhone;

    const/16 v11, 0x6c

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/media/MediaPhone$OnCallEventListener;->onCallEvent(Landroid/media/MediaPhone;ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 748
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xa -> :sswitch_4
        0xb -> :sswitch_4
        0xc -> :sswitch_4
        0xd -> :sswitch_4
        0xe -> :sswitch_4
        0xf -> :sswitch_4
        0x10 -> :sswitch_4
        0x14 -> :sswitch_5
        0x15 -> :sswitch_6
        0x16 -> :sswitch_7
        0x17 -> :sswitch_8
        0x18 -> :sswitch_9
        0x19 -> :sswitch_a
        0x1a -> :sswitch_b
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_3
    .end sparse-switch
.end method
