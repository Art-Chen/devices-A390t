.class public Landroid/widget/SpreadDigitalClock;
.super Landroid/widget/RelativeLayout;
.source "SpreadDigitalClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SpreadDigitalClock$FormatChangeObserver;
    }
.end annotation


# static fields
.field private static final DATE_ID:I = 0x1

.field private static final DATE_SIZE:I = 0x14

.field private static final TIME_ID:I = 0x2

.field private static final TIME_SIZE:I = 0x37

.field private static final m12:Ljava/lang/String; = "h:mm aa"

.field private static final m24:Ljava/lang/String; = "k:mm"


# instance fields
.field mCalendar:Ljava/util/Calendar;

.field private mDate:Landroid/widget/TextView;

.field mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/widget/SpreadDigitalClock$FormatChangeObserver;

.field private mHandler:Landroid/os/Handler;

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z

.field private mTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SpreadDigitalClock;->mTickerStopped:Z

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/SpreadDigitalClock;->initClock(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SpreadDigitalClock;->mTickerStopped:Z

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/SpreadDigitalClock;->initClock(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Landroid/widget/SpreadDigitalClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Landroid/widget/SpreadDigitalClock;->mTickerStopped:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/SpreadDigitalClock;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/widget/SpreadDigitalClock;->mDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/SpreadDigitalClock;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/widget/SpreadDigitalClock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/SpreadDigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/widget/SpreadDigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/SpreadDigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/SpreadDigitalClock;->setFormat()V

    return-void
.end method

.method private get24HourMode()Z
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/widget/SpreadDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private initClock(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 75
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    .local v1, r:Landroid/content/res/Resources;
    iget-object v2, p0, Landroid/widget/SpreadDigitalClock;->mCalendar:Ljava/util/Calendar;

    if-nez v2, :cond_0

    .line 78
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SpreadDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 81
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 82
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x10900a1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 84
    const v2, 0x1020327

    invoke-virtual {p0, v2}, Landroid/widget/SpreadDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/widget/SpreadDigitalClock;->mDate:Landroid/widget/TextView;

    .line 86
    return-void
.end method

.method private setFormat()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/widget/SpreadDigitalClock;->get24HourMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "k:mm"

    iput-object v0, p0, Landroid/widget/SpreadDigitalClock;->mFormat:Ljava/lang/String;

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    const-string v0, "h:mm aa"

    iput-object v0, p0, Landroid/widget/SpreadDigitalClock;->mFormat:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SpreadDigitalClock;->mTickerStopped:Z

    .line 91
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/SpreadDigitalClock;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Landroid/widget/SpreadDigitalClock$FormatChangeObserver;

    invoke-direct {v0, p0}, Landroid/widget/SpreadDigitalClock$FormatChangeObserver;-><init>(Landroid/widget/SpreadDigitalClock;)V

    iput-object v0, p0, Landroid/widget/SpreadDigitalClock;->mFormatChangeObserver:Landroid/widget/SpreadDigitalClock$FormatChangeObserver;

    .line 95
    invoke-virtual {p0}, Landroid/widget/SpreadDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/widget/SpreadDigitalClock;->mFormatChangeObserver:Landroid/widget/SpreadDigitalClock$FormatChangeObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    invoke-direct {p0}, Landroid/widget/SpreadDigitalClock;->setFormat()V

    .line 103
    new-instance v0, Landroid/widget/SpreadDigitalClock$1;

    invoke-direct {v0, p0}, Landroid/widget/SpreadDigitalClock$1;-><init>(Landroid/widget/SpreadDigitalClock;)V

    iput-object v0, p0, Landroid/widget/SpreadDigitalClock;->mTicker:Ljava/lang/Runnable;

    .line 117
    iget-object v0, p0, Landroid/widget/SpreadDigitalClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 118
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SpreadDigitalClock;->mTickerStopped:Z

    .line 124
    iget-object v0, p0, Landroid/widget/SpreadDigitalClock;->mFormatChangeObserver:Landroid/widget/SpreadDigitalClock$FormatChangeObserver;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SpreadDigitalClock;->mFormatChangeObserver:Landroid/widget/SpreadDigitalClock$FormatChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SpreadDigitalClock;->mFormatChangeObserver:Landroid/widget/SpreadDigitalClock$FormatChangeObserver;

    .line 129
    :cond_0
    return-void
.end method
