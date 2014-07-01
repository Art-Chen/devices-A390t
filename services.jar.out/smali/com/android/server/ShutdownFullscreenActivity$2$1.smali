.class Lcom/android/server/ShutdownFullscreenActivity$2$1;
.super Ljava/lang/Object;
.source "ShutdownFullscreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ShutdownFullscreenActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ShutdownFullscreenActivity$2;


# direct methods
.method constructor <init>(Lcom/android/server/ShutdownFullscreenActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/server/ShutdownFullscreenActivity$2$1;->this$1:Lcom/android/server/ShutdownFullscreenActivity$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity$2$1;->this$1:Lcom/android/server/ShutdownFullscreenActivity$2;

    iget-object v0, v0, Lcom/android/server/ShutdownFullscreenActivity$2;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    iget-object v1, p0, Lcom/android/server/ShutdownFullscreenActivity$2$1;->this$1:Lcom/android/server/ShutdownFullscreenActivity$2;

    iget-object v1, v1, Lcom/android/server/ShutdownFullscreenActivity$2;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->mConfirm:Z
    invoke-static {v1}, Lcom/android/server/ShutdownFullscreenActivity;->access$800(Lcom/android/server/ShutdownFullscreenActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 126
    return-void
.end method
