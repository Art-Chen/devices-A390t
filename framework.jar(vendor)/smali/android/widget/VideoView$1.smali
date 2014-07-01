.class Landroid/widget/VideoView$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/VideoView;->openVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;

.field final synthetic val$player:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    iput-object p2, p0, Landroid/widget/VideoView$1;->val$player:Landroid/media/MediaPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    iget-object v1, p0, Landroid/widget/VideoView$1;->val$player:Landroid/media/MediaPlayer;

    #calls: Landroid/widget/VideoView;->releaseMediaPlayer(Landroid/media/MediaPlayer;)V
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;Landroid/media/MediaPlayer;)V

    .line 290
    return-void
.end method
