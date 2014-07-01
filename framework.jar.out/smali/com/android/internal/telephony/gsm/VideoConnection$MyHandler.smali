.class Lcom/android/internal/telephony/gsm/VideoConnection$MyHandler;
.super Landroid/os/Handler;
.source "VideoConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/VideoConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/VideoConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/VideoConnection;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "l"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/VideoConnection$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/VideoConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/VideoConnection;

    #calls: Lcom/android/internal/telephony/gsm/VideoConnection;->processNextPostDialChar()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/VideoConnection;->access$000(Lcom/android/internal/telephony/gsm/VideoConnection;)V

    goto :goto_0

    .line 105
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoConnection$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/VideoConnection;

    #calls: Lcom/android/internal/telephony/gsm/VideoConnection;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/VideoConnection;->access$100(Lcom/android/internal/telephony/gsm/VideoConnection;)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
