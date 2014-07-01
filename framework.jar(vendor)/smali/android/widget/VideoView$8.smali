.class Landroid/widget/VideoView$8;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    .line 605
    iput-object p1, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 7
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 609
    iget-object v4, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v4}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "surfaceChanged w = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", h = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v4, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mSurfaceWidth:I
    invoke-static {v4, p3}, Landroid/widget/VideoView;->access$2702(Landroid/widget/VideoView;I)I

    .line 611
    iget-object v4, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mSurfaceHeight:I
    invoke-static {v4, p4}, Landroid/widget/VideoView;->access$2802(Landroid/widget/VideoView;I)I

    .line 612
    iget-object v4, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$1900(Landroid/widget/VideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 613
    .local v1, isValidState:Z
    :goto_0
    iget-object v4, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$300(Landroid/widget/VideoView;)I

    move-result v4

    if-ne v4, p3, :cond_3

    iget-object v4, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$400(Landroid/widget/VideoView;)I

    move-result v4

    if-ne v4, p4, :cond_3

    move v0, v2

    .line 614
    .local v0, hasValidSize:Z
    :goto_1
    iget-object v2, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Landroid/widget/VideoView;->access$1600(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 615
    iget-object v2, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1800(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 616
    iget-object v2, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    iget-object v3, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v3}, Landroid/widget/VideoView;->access$1800(Landroid/widget/VideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->seekTo(I)V

    .line 618
    :cond_0
    iget-object v2, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 620
    :cond_1
    return-void

    .end local v0           #hasValidSize:Z
    .end local v1           #isValidState:Z
    :cond_2
    move v1, v3

    .line 612
    goto :goto_0

    .restart local v1       #isValidState:Z
    :cond_3
    move v0, v3

    .line 613
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 624
    iget-object v0, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "surfaceCreated "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Landroid/widget/VideoView;->access$2902(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 626
    iget-object v0, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #calls: Landroid/widget/VideoView;->openVideo()V
    invoke-static {v0}, Landroid/widget/VideoView;->access$3000(Landroid/widget/VideoView;)V

    .line 627
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 631
    iget-object v0, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "surfaceDestroyed "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v0, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$2902(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 634
    iget-object v0, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/VideoView;->access$1700(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/VideoView;->access$1700(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 635
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #calls: Landroid/widget/VideoView;->isStream()Z
    invoke-static {v0}, Landroid/widget/VideoView;->access$3100(Landroid/widget/VideoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/widget/VideoView$8$1;

    invoke-direct {v1, p0}, Landroid/widget/VideoView$8$1;-><init>(Landroid/widget/VideoView$8;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 647
    :goto_0
    return-void

    .line 644
    :cond_1
    iget-object v0, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x1

    #calls: Landroid/widget/VideoView;->release(Z)V
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$3200(Landroid/widget/VideoView;Z)V

    goto :goto_0
.end method
