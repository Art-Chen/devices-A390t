.class Landroid/widget/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 355
    iput-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x1

    .line 357
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mSizeChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->isPlaying:Z
    invoke-static {v0, v2}, Landroid/widget/VideoView;->access$202(Landroid/widget/VideoView;Z)Z

    .line 359
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    #setter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$302(Landroid/widget/VideoView;I)I

    .line 360
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    #setter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$402(Landroid/widget/VideoView;I)I

    .line 361
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v0}, Landroid/widget/VideoView;->access$300(Landroid/widget/VideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v0}, Landroid/widget/VideoView;->access$400(Landroid/widget/VideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v1}, Landroid/widget/VideoView;->access$300(Landroid/widget/VideoView;)I

    move-result v1

    #setter for: Landroid/widget/VideoView;->mVideoWidthFrist:I
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$502(Landroid/widget/VideoView;I)I

    .line 367
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v1}, Landroid/widget/VideoView;->access$400(Landroid/widget/VideoView;)I

    move-result v1

    #setter for: Landroid/widget/VideoView;->mVideoHeightFrist:I
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$602(Landroid/widget/VideoView;I)I

    .line 368
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mIsFullScreen:Z
    invoke-static {v1}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->resize(Z)V

    .line 370
    :cond_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 371
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-------- Unsupport video track that no image to display ---------"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mIsVideoTrackUnsupport:Z
    invoke-static {v0, v2}, Landroid/widget/VideoView;->access$802(Landroid/widget/VideoView;Z)Z

    .line 373
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #calls: Landroid/widget/VideoView;->setMeasuredDimension(II)V
    invoke-static {v0, p2, p3}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;II)V

    .line 375
    :cond_1
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v0}, Landroid/widget/VideoView;->access$1000(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v0}, Landroid/widget/VideoView;->access$1000(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 378
    :cond_2
    return-void
.end method
