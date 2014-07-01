.class Lcom/android/server/AppManage$1;
.super Landroid/os/Handler;
.source "AppManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppManage;


# direct methods
.method constructor <init>(Lcom/android/server/AppManage;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/AppManage$1;->this$0:Lcom/android/server/AppManage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/AppManage$1;->this$0:Lcom/android/server/AppManage;

    invoke-virtual {v0}, Lcom/android/server/AppManage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 114
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/AppManage$1;->this$0:Lcom/android/server/AppManage;

    invoke-virtual {v0}, Lcom/android/server/AppManage;->refreshUI()V

    .line 118
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/AppManage$1;->this$0:Lcom/android/server/AppManage;

    #calls: Lcom/android/server/AppManage;->initListView()V
    invoke-static {v0}, Lcom/android/server/AppManage;->access$000(Lcom/android/server/AppManage;)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
