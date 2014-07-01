.class Landroid/widget/VideoView$3;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 8
    .parameter "mp"

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 383
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v2}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "onPrepared"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mCurrentState:I
    invoke-static {v2, v6}, Landroid/widget/VideoView;->access$1102(Landroid/widget/VideoView;I)I

    .line 387
    invoke-virtual {p1, v3, v3}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 390
    .local v0, data:Landroid/media/Metadata;
    if-eqz v0, :cond_c

    .line 391
    iget-object v5, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_0
    move v2, v4

    :goto_0
    #setter for: Landroid/widget/VideoView;->mCanPause:Z
    invoke-static {v5, v2}, Landroid/widget/VideoView;->access$1202(Landroid/widget/VideoView;Z)Z

    .line 393
    iget-object v5, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_1
    move v2, v4

    :goto_1
    #setter for: Landroid/widget/VideoView;->mCanSeekBack:Z
    invoke-static {v5, v2}, Landroid/widget/VideoView;->access$1302(Landroid/widget/VideoView;Z)Z

    .line 395
    iget-object v5, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_2
    move v2, v4

    :goto_2
    #setter for: Landroid/widget/VideoView;->mCanSeekForward:Z
    invoke-static {v5, v2}, Landroid/widget/VideoView;->access$1402(Landroid/widget/VideoView;Z)Z

    .line 401
    :goto_3
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v2}, Landroid/widget/VideoView;->access$1500(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 402
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v2}, Landroid/widget/VideoView;->access$1500(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    iget-object v5, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Landroid/widget/VideoView;->access$1600(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 404
    :cond_3
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$1700(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 405
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$1700(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 407
    :cond_4
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    #setter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v2, v4}, Landroid/widget/VideoView;->access$302(Landroid/widget/VideoView;I)I

    .line 408
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    #setter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v2, v4}, Landroid/widget/VideoView;->access$402(Landroid/widget/VideoView;I)I

    .line 410
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1800(Landroid/widget/VideoView;)I

    move-result v1

    .line 411
    .local v1, seekToPosition:I
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v2}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPrepared seekToPosition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v2}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPrepared mTargetState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v5}, Landroid/widget/VideoView;->access$1900(Landroid/widget/VideoView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    if-eqz v1, :cond_5

    .line 414
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 416
    :cond_5
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v2}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPrepared mTargetState2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v5}, Landroid/widget/VideoView;->access$1900(Landroid/widget/VideoView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$300(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$400(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_f

    .line 420
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    iget-object v4, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mIsFullScreen:Z
    invoke-static {v4}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/VideoView;->resize(Z)V

    .line 425
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1900(Landroid/widget/VideoView;)I

    move-result v2

    if-ne v2, v7, :cond_d

    .line 426
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v2}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onPrepared AA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v2}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsStream AA "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mIsStream:Z
    invoke-static {v4}, Landroid/widget/VideoView;->access$2000(Landroid/widget/VideoView;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v2}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " seekToPosition AA "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mIsStream:Z
    invoke-static {v2}, Landroid/widget/VideoView;->access$2000(Landroid/widget/VideoView;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v1, :cond_7

    .line 431
    :cond_6
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 434
    :cond_7
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$1700(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 435
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$1700(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 459
    :cond_8
    :goto_4
    return-void

    .end local v1           #seekToPosition:I
    :cond_9
    move v2, v3

    .line 391
    goto/16 :goto_0

    :cond_a
    move v2, v3

    .line 393
    goto/16 :goto_1

    :cond_b
    move v2, v3

    .line 395
    goto/16 :goto_2

    .line 398
    :cond_c
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    iget-object v5, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    iget-object v6, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mCanSeekForward:Z
    invoke-static {v6, v4}, Landroid/widget/VideoView;->access$1402(Landroid/widget/VideoView;Z)Z

    move-result v6

    #setter for: Landroid/widget/VideoView;->mCanSeekBack:Z
    invoke-static {v5, v6}, Landroid/widget/VideoView;->access$1302(Landroid/widget/VideoView;Z)Z

    move-result v5

    #setter for: Landroid/widget/VideoView;->mCanPause:Z
    invoke-static {v2, v5}, Landroid/widget/VideoView;->access$1202(Landroid/widget/VideoView;Z)Z

    goto/16 :goto_3

    .line 437
    .restart local v1       #seekToPosition:I
    :cond_d
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_8

    if-nez v1, :cond_e

    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    if-lez v2, :cond_8

    .line 439
    :cond_e
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$1700(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 441
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$1700(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/MediaController;->show(I)V

    goto :goto_4

    .line 448
    :cond_f
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1900(Landroid/widget/VideoView;)I

    move-result v2

    if-ne v2, v7, :cond_8

    .line 449
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v2}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onPrepared BB"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v2}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsStream BB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mIsStream:Z
    invoke-static {v4}, Landroid/widget/VideoView;->access$2000(Landroid/widget/VideoView;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v2}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " seekToPosition BB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mIsStream:Z
    invoke-static {v2}, Landroid/widget/VideoView;->access$2000(Landroid/widget/VideoView;)Z

    move-result v2

    if-eqz v2, :cond_10

    if-nez v1, :cond_8

    .line 454
    :cond_10
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    goto/16 :goto_4
.end method
