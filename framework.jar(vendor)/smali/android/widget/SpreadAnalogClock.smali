.class public Landroid/widget/SpreadAnalogClock;
.super Landroid/view/View;
.source "SpreadAnalogClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mAttached:Z

.field mCalendar:Landroid/text/format/Time;

.field private mChanged:Z

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDialHeight:I

.field private mDialWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinutes:F

.field private mPaint:Landroid/graphics/Paint;

.field private mSecond:F

.field private mSecondHand:Landroid/graphics/drawable/Drawable;

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SpreadAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SpreadAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Landroid/widget/SpreadAnalogClock;->mHandler:Landroid/os/Handler;

    .line 60
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/widget/SpreadAnalogClock;->mPaint:Landroid/graphics/Paint;

    .line 64
    iput-boolean v3, p0, Landroid/widget/SpreadAnalogClock;->mTickerStopped:Z

    .line 76
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    .local v1, r:Landroid/content/res/Resources;
    sget-object v2, Lcom/android/internal/R$styleable;->SpreadAnalogClock:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SpreadAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 84
    iget-object v2, p0, Landroid/widget/SpreadAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 85
    const v2, 0x108052c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SpreadAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 88
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SpreadAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 90
    iget-object v2, p0, Landroid/widget/SpreadAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 91
    const v2, 0x108052d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SpreadAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 95
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SpreadAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 97
    iget-object v2, p0, Landroid/widget/SpreadAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 98
    const v2, 0x108052e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SpreadAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 102
    :cond_2
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SpreadAnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 104
    iget-object v2, p0, Landroid/widget/SpreadAnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 105
    const v2, 0x108052f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SpreadAnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 109
    :cond_3
    iget-object v2, p0, Landroid/widget/SpreadAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Landroid/widget/SpreadAnalogClock;->mDialWidth:I

    .line 110
    iget-object v2, p0, Landroid/widget/SpreadAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/SpreadAnalogClock;->mDialHeight:I

    .line 112
    iget-object v2, p0, Landroid/widget/SpreadAnalogClock;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v2, p0, Landroid/widget/SpreadAnalogClock;->mCalendar:Landroid/text/format/Time;

    if-nez v2, :cond_4

    .line 115
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iput-object v2, p0, Landroid/widget/SpreadAnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 118
    :cond_4
    return-void
.end method

.method static synthetic access$000(Landroid/widget/SpreadAnalogClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Landroid/widget/SpreadAnalogClock;->mTickerStopped:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/SpreadAnalogClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/SpreadAnalogClock;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/SpreadAnalogClock;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Landroid/widget/SpreadAnalogClock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/SpreadAnalogClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Landroid/widget/SpreadAnalogClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private onTimeChanged()V
    .locals 6

    .prologue
    const/high16 v5, 0x4270

    .line 122
    iget-object v3, p0, Landroid/widget/SpreadAnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 123
    iget-object v3, p0, Landroid/widget/SpreadAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v3, Landroid/text/format/Time;->hour:I

    .line 124
    .local v0, hour:I
    iget-object v3, p0, Landroid/widget/SpreadAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v1, v3, Landroid/text/format/Time;->minute:I

    .line 125
    .local v1, minute:I
    iget-object v3, p0, Landroid/widget/SpreadAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v2, v3, Landroid/text/format/Time;->second:I

    .line 130
    .local v2, second:I
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/SpreadAnalogClock;->mMinutes:F

    .line 131
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/SpreadAnalogClock;->mMinutes:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Landroid/widget/SpreadAnalogClock;->mSecond:F

    const/high16 v5, 0x4561

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/SpreadAnalogClock;->mHour:F

    .line 133
    int-to-float v3, v2

    iput v3, p0, Landroid/widget/SpreadAnalogClock;->mSecond:F

    .line 135
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/SpreadAnalogClock;->mChanged:Z

    .line 137
    iget-object v3, p0, Landroid/widget/SpreadAnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-direct {p0, v3}, Landroid/widget/SpreadAnalogClock;->updateContentDescription(Landroid/text/format/Time;)V

    .line 138
    return-void
.end method

.method private updateContentDescription(Landroid/text/format/Time;)V
    .locals 6
    .parameter "time"

    .prologue
    .line 298
    const/16 v1, 0x81

    .line 299
    .local v1, flags:I
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    const/16 v5, 0x81

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, contentDescription:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/widget/SpreadAnalogClock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 302
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SpreadAnalogClock;->mTickerStopped:Z

    .line 143
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 148
    new-instance v0, Landroid/widget/SpreadAnalogClock$1;

    invoke-direct {v0, p0}, Landroid/widget/SpreadAnalogClock$1;-><init>(Landroid/widget/SpreadAnalogClock;)V

    iput-object v0, p0, Landroid/widget/SpreadAnalogClock;->mTicker:Ljava/lang/Runnable;

    .line 159
    iget-object v0, p0, Landroid/widget/SpreadAnalogClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 172
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SpreadAnalogClock;->mTickerStopped:Z

    .line 178
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    .line 216
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 218
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/SpreadAnalogClock;->mChanged:Z

    .line 220
    .local v6, changed:Z
    if-eqz v6, :cond_0

    .line 221
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SpreadAnalogClock;->mChanged:Z

    .line 224
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v20, v0

    sub-int v5, v19, v20

    .line 225
    .local v5, availableWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v20, v0

    sub-int v4, v19, v20

    .line 227
    .local v4, availableHeight:I
    div-int/lit8 v17, v5, 0x2

    .line 228
    .local v17, x:I
    div-int/lit8 v18, v4, 0x2

    .line 230
    .local v18, y:I
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/SpreadAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 231
    .local v7, dial:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 232
    .local v16, w:I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 234
    .local v10, h:I
    move/from16 v9, v16

    .line 235
    .local v9, dialWidth:I
    move v8, v10

    .line 236
    .local v8, dialHeight:I
    const/4 v14, 0x0

    .line 238
    .local v14, scaled:Z
    move/from16 v0, v16

    if-lt v5, v0, :cond_1

    if-ge v4, v10, :cond_2

    .line 239
    :cond_1
    const/4 v14, 0x1

    .line 240
    int-to-float v0, v5

    move/from16 v19, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    int-to-float v0, v4

    move/from16 v20, v0

    int-to-float v0, v10

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 242
    .local v13, scale:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 243
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v13, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 246
    .end local v13           #scale:F
    :cond_2
    if-eqz v6, :cond_3

    .line 247
    div-int/lit8 v19, v16, 0x2

    sub-int v19, v17, v19

    div-int/lit8 v20, v10, 0x2

    sub-int v20, v18, v20

    div-int/lit8 v21, v16, 0x2

    add-int v21, v21, v17

    div-int/lit8 v22, v10, 0x2

    add-int v22, v22, v18

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 249
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 250
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 252
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpreadAnalogClock;->mHour:F

    move/from16 v19, v0

    const/high16 v20, 0x4140

    div-float v19, v19, v20

    const/high16 v20, 0x43b4

    mul-float v19, v19, v20

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 253
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/SpreadAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 254
    .local v11, hourHand:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_4

    .line 255
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 256
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 257
    div-int/lit8 v19, v16, 0x2

    sub-int v19, v17, v19

    div-int/lit8 v20, v10, 0x2

    sub-int v20, v18, v20

    div-int/lit8 v21, v16, 0x2

    add-int v21, v21, v17

    div-int/lit8 v22, v10, 0x2

    add-int v22, v22, v18

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 259
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 263
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpreadAnalogClock;->mMinutes:F

    move/from16 v19, v0

    const/high16 v20, 0x4270

    div-float v19, v19, v20

    const/high16 v20, 0x43b4

    mul-float v19, v19, v20

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 265
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/SpreadAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 266
    .local v12, minuteHand:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_5

    .line 267
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 268
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 269
    div-int/lit8 v19, v16, 0x2

    sub-int v19, v17, v19

    div-int/lit8 v20, v10, 0x2

    sub-int v20, v18, v20

    div-int/lit8 v21, v16, 0x2

    add-int v21, v21, v17

    div-int/lit8 v22, v10, 0x2

    add-int v22, v22, v18

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 271
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 274
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpreadAnalogClock;->mSecond:F

    move/from16 v19, v0

    const/high16 v20, 0x4270

    div-float v19, v19, v20

    const/high16 v20, 0x43b4

    mul-float v19, v19, v20

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 276
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SpreadAnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 277
    .local v15, secondHand:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_6

    .line 278
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 279
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 280
    div-int/lit8 v19, v16, 0x2

    sub-int v19, v17, v19

    div-int/lit8 v20, v10, 0x2

    sub-int v20, v18, v20

    div-int/lit8 v21, v16, 0x2

    add-int v21, v21, v17

    div-int/lit8 v22, v10, 0x2

    add-int v22, v22, v18

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 282
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 292
    if-eqz v14, :cond_7

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 295
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v9, 0x0

    .line 183
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 184
    .local v5, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 185
    .local v6, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 186
    .local v1, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 188
    .local v2, heightSize:I
    const/high16 v0, 0x3f80

    .line 189
    .local v0, hScale:F
    const/high16 v4, 0x3f80

    .line 191
    .local v4, vScale:F
    if-eqz v5, :cond_0

    iget v7, p0, Landroid/widget/SpreadAnalogClock;->mDialWidth:I

    if-ge v6, v7, :cond_0

    .line 192
    int-to-float v7, v6

    iget v8, p0, Landroid/widget/SpreadAnalogClock;->mDialWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 195
    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Landroid/widget/SpreadAnalogClock;->mDialHeight:I

    if-ge v2, v7, :cond_1

    .line 196
    int-to-float v7, v2

    iget v8, p0, Landroid/widget/SpreadAnalogClock;->mDialHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 199
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 201
    .local v3, scale:F
    iget v7, p0, Landroid/widget/SpreadAnalogClock;->mDialWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1, v9}, Landroid/widget/SpreadAnalogClock;->resolveSizeAndState(III)I

    move-result v7

    iget v8, p0, Landroid/widget/SpreadAnalogClock;->mDialHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2, v9}, Landroid/widget/SpreadAnalogClock;->resolveSizeAndState(III)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Landroid/widget/SpreadAnalogClock;->setMeasuredDimension(II)V

    .line 206
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 210
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SpreadAnalogClock;->mChanged:Z

    .line 212
    return-void
.end method
