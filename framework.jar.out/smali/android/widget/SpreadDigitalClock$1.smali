.class Landroid/widget/SpreadDigitalClock$1;
.super Ljava/lang/Object;
.source "SpreadDigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SpreadDigitalClock;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SpreadDigitalClock;


# direct methods
.method constructor <init>(Landroid/widget/SpreadDigitalClock;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Landroid/widget/SpreadDigitalClock$1;->this$0:Landroid/widget/SpreadDigitalClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x3e8

    .line 105
    iget-object v7, p0, Landroid/widget/SpreadDigitalClock$1;->this$0:Landroid/widget/SpreadDigitalClock;

    #getter for: Landroid/widget/SpreadDigitalClock;->mTickerStopped:Z
    invoke-static {v7}, Landroid/widget/SpreadDigitalClock;->access$000(Landroid/widget/SpreadDigitalClock;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 115
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v7, p0, Landroid/widget/SpreadDigitalClock$1;->this$0:Landroid/widget/SpreadDigitalClock;

    iget-object v7, v7, Landroid/widget/SpreadDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 107
    const-string v7, "EEEE"

    iget-object v8, p0, Landroid/widget/SpreadDigitalClock$1;->this$0:Landroid/widget/SpreadDigitalClock;

    iget-object v8, v8, Landroid/widget/SpreadDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 108
    .local v6, week:Ljava/lang/CharSequence;
    iget-object v7, p0, Landroid/widget/SpreadDigitalClock$1;->this$0:Landroid/widget/SpreadDigitalClock;

    invoke-virtual {v7}, Landroid/widget/SpreadDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/SpreadDigitalClock$1;->this$0:Landroid/widget/SpreadDigitalClock;

    iget-object v8, v8, Landroid/widget/SpreadDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, date:Ljava/lang/CharSequence;
    iget-object v7, p0, Landroid/widget/SpreadDigitalClock$1;->this$0:Landroid/widget/SpreadDigitalClock;

    invoke-virtual {v7}, Landroid/widget/SpreadDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x1040529

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, dow:Ljava/lang/CharSequence;
    iget-object v7, p0, Landroid/widget/SpreadDigitalClock$1;->this$0:Landroid/widget/SpreadDigitalClock;

    #getter for: Landroid/widget/SpreadDigitalClock;->mDate:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/SpreadDigitalClock;->access$100(Landroid/widget/SpreadDigitalClock;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v7, p0, Landroid/widget/SpreadDigitalClock$1;->this$0:Landroid/widget/SpreadDigitalClock;

    invoke-virtual {v7}, Landroid/widget/SpreadDigitalClock;->invalidate()V

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 113
    .local v4, now:J
    rem-long v7, v4, v11

    sub-long v7, v11, v7

    add-long v2, v4, v7

    .line 114
    .local v2, next:J
    iget-object v7, p0, Landroid/widget/SpreadDigitalClock$1;->this$0:Landroid/widget/SpreadDigitalClock;

    #getter for: Landroid/widget/SpreadDigitalClock;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/widget/SpreadDigitalClock;->access$300(Landroid/widget/SpreadDigitalClock;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/SpreadDigitalClock$1;->this$0:Landroid/widget/SpreadDigitalClock;

    #getter for: Landroid/widget/SpreadDigitalClock;->mTicker:Ljava/lang/Runnable;
    invoke-static {v8}, Landroid/widget/SpreadDigitalClock;->access$200(Landroid/widget/SpreadDigitalClock;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
