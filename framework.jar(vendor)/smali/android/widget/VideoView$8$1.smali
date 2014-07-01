.class Landroid/widget/VideoView$8$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/VideoView$8;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/VideoView$8;


# direct methods
.method constructor <init>(Landroid/widget/VideoView$8;)V
    .locals 0
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Landroid/widget/VideoView$8$1;->this$1:Landroid/widget/VideoView$8;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Landroid/widget/VideoView$8$1;->this$1:Landroid/widget/VideoView$8;

    iget-object v0, v0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x1

    #calls: Landroid/widget/VideoView;->release(Z)V
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$3200(Landroid/widget/VideoView;Z)V

    .line 641
    return-void
.end method
