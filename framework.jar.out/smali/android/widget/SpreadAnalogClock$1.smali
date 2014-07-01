.class Landroid/widget/SpreadAnalogClock$1;
.super Ljava/lang/Object;
.source "SpreadAnalogClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SpreadAnalogClock;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SpreadAnalogClock;


# direct methods
.method constructor <init>(Landroid/widget/SpreadAnalogClock;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Landroid/widget/SpreadAnalogClock$1;->this$0:Landroid/widget/SpreadAnalogClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 150
    iget-object v4, p0, Landroid/widget/SpreadAnalogClock$1;->this$0:Landroid/widget/SpreadAnalogClock;

    #getter for: Landroid/widget/SpreadAnalogClock;->mTickerStopped:Z
    invoke-static {v4}, Landroid/widget/SpreadAnalogClock;->access$000(Landroid/widget/SpreadAnalogClock;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v4, p0, Landroid/widget/SpreadAnalogClock$1;->this$0:Landroid/widget/SpreadAnalogClock;

    #calls: Landroid/widget/SpreadAnalogClock;->onTimeChanged()V
    invoke-static {v4}, Landroid/widget/SpreadAnalogClock;->access$100(Landroid/widget/SpreadAnalogClock;)V

    .line 153
    iget-object v4, p0, Landroid/widget/SpreadAnalogClock$1;->this$0:Landroid/widget/SpreadAnalogClock;

    invoke-virtual {v4}, Landroid/widget/SpreadAnalogClock;->invalidate()V

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 155
    .local v2, now:J
    rem-long v4, v2, v6

    sub-long v4, v6, v4

    add-long v0, v2, v4

    .line 156
    .local v0, next:J
    iget-object v4, p0, Landroid/widget/SpreadAnalogClock$1;->this$0:Landroid/widget/SpreadAnalogClock;

    #getter for: Landroid/widget/SpreadAnalogClock;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/widget/SpreadAnalogClock;->access$300(Landroid/widget/SpreadAnalogClock;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/SpreadAnalogClock$1;->this$0:Landroid/widget/SpreadAnalogClock;

    #getter for: Landroid/widget/SpreadAnalogClock;->mTicker:Ljava/lang/Runnable;
    invoke-static {v5}, Landroid/widget/SpreadAnalogClock;->access$200(Landroid/widget/SpreadAnalogClock;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
