.class public Lcom/android/server/ShowStorage;
.super Landroid/app/Activity;
.source "ShowStorage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShowStorage"


# instance fields
.field private mAlertMessageHeight:I

.field private mApplicationBtn:Landroid/widget/Button;

.field private mDataInitialized:Z

.field private mHeight:I

.field private mLastApplicationSize:J

.field private mLastFreeSize:J

.field private mLastMailSize:J

.field private mLastSmsMmsSize:J

.field private mLastSystemSize:J

.field private mMailBtn:Landroid/widget/Button;

.field private mSmsMmsBtn:Landroid/widget/Button;

.field private mStatePaused:Z

.field private mTextView:Landroid/widget/TextView;

.field private mTotalSize:F

.field private mTotalStatusHeight:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const-wide/16 v1, -0x1

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/ShowStorage;->mTotalSize:F

    .line 30
    iput-wide v1, p0, Lcom/android/server/ShowStorage;->mLastApplicationSize:J

    .line 32
    iput-wide v1, p0, Lcom/android/server/ShowStorage;->mLastMailSize:J

    .line 34
    iput-wide v1, p0, Lcom/android/server/ShowStorage;->mLastSmsMmsSize:J

    .line 36
    iput-wide v1, p0, Lcom/android/server/ShowStorage;->mLastSystemSize:J

    .line 38
    iput-wide v1, p0, Lcom/android/server/ShowStorage;->mLastFreeSize:J

    .line 40
    iput v3, p0, Lcom/android/server/ShowStorage;->mHeight:I

    .line 42
    iput v3, p0, Lcom/android/server/ShowStorage;->mAlertMessageHeight:I

    .line 44
    iput v3, p0, Lcom/android/server/ShowStorage;->mTotalStatusHeight:I

    .line 48
    iput-boolean v4, p0, Lcom/android/server/ShowStorage;->mStatePaused:Z

    .line 49
    iput-boolean v4, p0, Lcom/android/server/ShowStorage;->mDataInitialized:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ShowStorage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/ShowStorage;->sendAppManageIntent()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ShowStorage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/ShowStorage;->sendMailManageIntent()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/ShowStorage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/ShowStorage;->sendSmsAndMmsIntent()V

    return-void
.end method

.method private getLastSizeFromArray([J)V
    .locals 9
    .parameter "lastSize"

    .prologue
    const/4 v8, 0x1

    .line 256
    const/4 v5, 0x0

    .line 257
    .local v5, mTOTALLOCATION:I
    const/4 v1, 0x1

    .line 258
    .local v1, mFREELOCATION:I
    const/4 v0, 0x2

    .line 259
    .local v0, mAPPLICATIONLOCATION:I
    const/4 v2, 0x3

    .line 260
    .local v2, mMAILLOCATION:I
    const/4 v3, 0x4

    .line 261
    .local v3, mSMSMMSLOCATION:I
    const/4 v4, 0x5

    .line 263
    .local v4, mSYSTEMLOCATION:I
    if-nez p1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 266
    :cond_0
    const/4 v6, 0x0

    aget-wide v6, p1, v6

    long-to-float v6, v6

    iput v6, p0, Lcom/android/server/ShowStorage;->mTotalSize:F

    .line 267
    aget-wide v6, p1, v8

    iput-wide v6, p0, Lcom/android/server/ShowStorage;->mLastFreeSize:J

    .line 268
    const/4 v6, 0x2

    aget-wide v6, p1, v6

    iput-wide v6, p0, Lcom/android/server/ShowStorage;->mLastApplicationSize:J

    .line 269
    const/4 v6, 0x3

    aget-wide v6, p1, v6

    iput-wide v6, p0, Lcom/android/server/ShowStorage;->mLastMailSize:J

    .line 270
    const/4 v6, 0x4

    aget-wide v6, p1, v6

    iput-wide v6, p0, Lcom/android/server/ShowStorage;->mLastSmsMmsSize:J

    .line 271
    const/4 v6, 0x5

    aget-wide v6, p1, v6

    iput-wide v6, p0, Lcom/android/server/ShowStorage;->mLastSystemSize:J

    .line 272
    iput-boolean v8, p0, Lcom/android/server/ShowStorage;->mDataInitialized:Z

    goto :goto_0
.end method

.method private initButton()V
    .locals 2

    .prologue
    .line 171
    const v0, 0x102031e

    invoke-virtual {p0, v0}, Lcom/android/server/ShowStorage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/server/ShowStorage;->mApplicationBtn:Landroid/widget/Button;

    .line 172
    const v0, 0x1020321

    invoke-virtual {p0, v0}, Lcom/android/server/ShowStorage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/server/ShowStorage;->mMailBtn:Landroid/widget/Button;

    .line 173
    const v0, 0x1020324

    invoke-virtual {p0, v0}, Lcom/android/server/ShowStorage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/server/ShowStorage;->mSmsMmsBtn:Landroid/widget/Button;

    .line 175
    iget-object v0, p0, Lcom/android/server/ShowStorage;->mApplicationBtn:Landroid/widget/Button;

    new-instance v1, Lcom/android/server/ShowStorage$1;

    invoke-direct {v1, p0}, Lcom/android/server/ShowStorage$1;-><init>(Lcom/android/server/ShowStorage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/server/ShowStorage;->mMailBtn:Landroid/widget/Button;

    new-instance v1, Lcom/android/server/ShowStorage$2;

    invoke-direct {v1, p0}, Lcom/android/server/ShowStorage$2;-><init>(Lcom/android/server/ShowStorage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/android/server/ShowStorage;->mSmsMmsBtn:Landroid/widget/Button;

    new-instance v1, Lcom/android/server/ShowStorage$3;

    invoke-direct {v1, p0}, Lcom/android/server/ShowStorage$3;-><init>(Lcom/android/server/ShowStorage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    return-void
.end method

.method private sendAppManageIntent()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/server/AppManage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/server/ShowStorage;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method private sendMailManageIntent()V
    .locals 4

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.email"

    const-string v3, "com.android.email.activity.Welcome"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .local v1, mCp:Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 77
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/server/ShowStorage;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method private sendSmsAndMmsIntent()V
    .locals 4

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.ConversationList"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v1, mCp:Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 87
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/server/ShowStorage;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method private setAlertMessage()V
    .locals 2

    .prologue
    .line 121
    const v1, 0x1020313

    invoke-virtual {p0, v1}, Lcom/android/server/ShowStorage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    .line 123
    iget-object v1, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 124
    .local v0, mLinearParams:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/android/server/ShowStorage;->mAlertMessageHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 125
    iget-object v1, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    return-void
.end method

.method private setAllMemoryViewText()V
    .locals 3

    .prologue
    .line 195
    const v0, 0x102031b

    invoke-virtual {p0, v0}, Lcom/android/server/ShowStorage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    .line 196
    iget-object v0, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/android/server/ShowStorage;->mLastFreeSize:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ShowStorage;->setMemoryViewText(Landroid/widget/TextView;J)V

    .line 197
    const v0, 0x102031d

    invoke-virtual {p0, v0}, Lcom/android/server/ShowStorage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/android/server/ShowStorage;->mLastApplicationSize:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ShowStorage;->setMemoryViewText(Landroid/widget/TextView;J)V

    .line 199
    const v0, 0x1020320

    invoke-virtual {p0, v0}, Lcom/android/server/ShowStorage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    .line 200
    iget-object v0, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/android/server/ShowStorage;->mLastMailSize:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ShowStorage;->setMemoryViewText(Landroid/widget/TextView;J)V

    .line 201
    const v0, 0x1020323

    invoke-virtual {p0, v0}, Lcom/android/server/ShowStorage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/android/server/ShowStorage;->mLastSmsMmsSize:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ShowStorage;->setMemoryViewText(Landroid/widget/TextView;J)V

    .line 203
    const v0, 0x1020326

    invoke-virtual {p0, v0}, Lcom/android/server/ShowStorage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    .line 204
    iget-object v0, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/android/server/ShowStorage;->mLastSystemSize:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ShowStorage;->setMemoryViewText(Landroid/widget/TextView;J)V

    .line 205
    return-void
.end method

.method private setAllStatusBar(FFFFF)V
    .locals 9
    .parameter "otherRatio"
    .parameter "applicationRatio"
    .parameter "mailRatio"
    .parameter "smsMmsRatio"
    .parameter "systemRatio"

    .prologue
    .line 132
    const/4 v2, -0x1

    .line 133
    .local v2, mOtherHeight:I
    const/4 v0, -0x1

    .line 134
    .local v0, mApplicationHeight:I
    const/4 v1, -0x1

    .line 135
    .local v1, mMailHeight:I
    const/4 v4, -0x1

    .line 136
    .local v4, mSmsMmsHeight:I
    const/4 v6, -0x1

    .line 138
    .local v6, mSystemHeight:I
    const/16 v3, 0xa

    .line 139
    .local v3, mShortestHeight:I
    const/4 v5, 0x5

    .line 140
    .local v5, mStatusBarNumber:I
    iget v8, p0, Lcom/android/server/ShowStorage;->mTotalStatusHeight:I

    add-int/lit8 v7, v8, -0x32

    .line 142
    .local v7, myTotalStatusHeight:I
    int-to-float v8, v7

    mul-float/2addr v8, p2

    float-to-int v8, v8

    add-int/lit8 v0, v8, 0xa

    .line 143
    int-to-float v8, v7

    mul-float/2addr v8, p3

    float-to-int v8, v8

    add-int/lit8 v1, v8, 0xa

    .line 144
    int-to-float v8, v7

    mul-float/2addr v8, p4

    float-to-int v8, v8

    add-int/lit8 v4, v8, 0xa

    .line 145
    int-to-float v8, v7

    mul-float/2addr v8, p1

    float-to-int v8, v8

    add-int/lit8 v2, v8, 0xa

    .line 146
    sub-int v8, v7, v0

    sub-int/2addr v8, v1

    sub-int/2addr v8, v4

    sub-int v6, v8, v2

    .line 149
    const v8, 0x1020315

    invoke-virtual {p0, v8}, Lcom/android/server/ShowStorage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    .line 150
    iget-object v8, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v8, v2}, Lcom/android/server/ShowStorage;->setStatusBar(Landroid/widget/TextView;I)V

    .line 151
    const v8, 0x1020316

    invoke-virtual {p0, v8}, Lcom/android/server/ShowStorage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    .line 152
    iget-object v8, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v8, v0}, Lcom/android/server/ShowStorage;->setStatusBar(Landroid/widget/TextView;I)V

    .line 153
    const v8, 0x1020317

    invoke-virtual {p0, v8}, Lcom/android/server/ShowStorage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    .line 154
    iget-object v8, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v8, v1}, Lcom/android/server/ShowStorage;->setStatusBar(Landroid/widget/TextView;I)V

    .line 155
    const v8, 0x1020318

    invoke-virtual {p0, v8}, Lcom/android/server/ShowStorage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    .line 156
    iget-object v8, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v8, v4}, Lcom/android/server/ShowStorage;->setStatusBar(Landroid/widget/TextView;I)V

    .line 157
    const v8, 0x1020319

    invoke-virtual {p0, v8}, Lcom/android/server/ShowStorage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    .line 158
    iget-object v8, p0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v8, v6}, Lcom/android/server/ShowStorage;->setStatusBar(Landroid/widget/TextView;I)V

    .line 159
    return-void
.end method

.method private setMemoryViewText(Landroid/widget/TextView;J)V
    .locals 16
    .parameter "myTextView"
    .parameter "mMemorySize"

    .prologue
    .line 216
    const/16 v3, 0x400

    .line 217
    .local v3, mKiloSize:I
    const/16 v4, 0x3e8

    .line 219
    .local v4, mMaxSizeLimit:I
    const/16 v2, 0xa

    .line 220
    .local v2, iDecimalBaseNuber:I
    const/high16 v1, 0x4120

    .line 222
    .local v1, fDecimalBaseNuber:F
    move-wide/from16 v8, p2

    .line 223
    .local v8, mySizeOfKb:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ShowStorage;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v7, v14, v15

    .line 224
    .local v7, mText:Ljava/lang/String;
    const-wide/16 v14, 0x3e8

    cmp-long v14, v8, v14

    if-gez v14, :cond_0

    .line 225
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "KB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, mStr:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    return-void

    .line 227
    .end local v5           #mStr:Ljava/lang/String;
    :cond_0
    const-wide/16 v14, 0x400

    div-long v14, v8, v14

    long-to-float v10, v14

    .line 228
    .local v10, mySizeOfMb:F
    const/high16 v14, 0x4120

    mul-float/2addr v14, v10

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x4120

    div-float v10, v14, v15

    .line 229
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    .line 230
    .local v11, myString:Ljava/lang/String;
    const-string v14, "\\."

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, mStrArry:[Ljava/lang/String;
    array-length v14, v6

    int-to-long v12, v14

    .line 234
    .local v12, sLen:J
    const-wide/16 v14, 0x2

    cmp-long v14, v12, v14

    if-nez v14, :cond_2

    .line 235
    const/4 v14, 0x1

    aget-object v14, v6, v14

    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 236
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v6, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "MB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #mStr:Ljava/lang/String;
    goto :goto_0

    .line 238
    .end local v5           #mStr:Ljava/lang/String;
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "MB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #mStr:Ljava/lang/String;
    goto :goto_0

    .line 241
    .end local v5           #mStr:Ljava/lang/String;
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "MB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #mStr:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private setStatusBar(Landroid/widget/TextView;I)V
    .locals 1
    .parameter "mTextView"
    .parameter "mStatusHeight"

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 165
    .local v0, mLinearParams:Landroid/widget/LinearLayout$LayoutParams;
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 166
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 55
    const-string v0, "ShowStorage"

    const-string v1, "finish for get ActivityResult"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    if-nez p1, :cond_0

    .line 64
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v3, 0x109009d

    invoke-virtual {p0, v3}, Lcom/android/server/ShowStorage;->setContentView(I)V

    .line 97
    const/4 v2, 0x4

    .line 99
    .local v2, layoutDevisionNumber:I
    invoke-virtual {p0}, Lcom/android/server/ShowStorage;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/server/ShowStorage;->mHeight:I

    .line 100
    iget v3, p0, Lcom/android/server/ShowStorage;->mHeight:I

    div-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/server/ShowStorage;->mAlertMessageHeight:I

    .line 101
    iget v3, p0, Lcom/android/server/ShowStorage;->mHeight:I

    iget v4, p0, Lcom/android/server/ShowStorage;->mAlertMessageHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/ShowStorage;->mTotalStatusHeight:I

    .line 103
    invoke-direct {p0}, Lcom/android/server/ShowStorage;->setAlertMessage()V

    .line 104
    invoke-direct {p0}, Lcom/android/server/ShowStorage;->initButton()V

    .line 106
    invoke-virtual {p0}, Lcom/android/server/ShowStorage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 108
    const-string v3, "lastSize"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, [J

    move-object v1, v3

    check-cast v1, [J

    .line 109
    .local v1, lastSize:[J
    invoke-direct {p0, v1}, Lcom/android/server/ShowStorage;->getLastSizeFromArray([J)V

    .line 111
    .end local v1           #lastSize:[J
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 116
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ShowStorage;->mStatePaused:Z

    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 252
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 277
    iget-boolean v0, p0, Lcom/android/server/ShowStorage;->mStatePaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ShowStorage;->mDataInitialized:Z

    if-nez v0, :cond_2

    .line 278
    :cond_0
    const-string v0, "devicestoragemonitor"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    check-cast v6, Lcom/android/server/DeviceStorageMonitorService;

    .line 280
    .local v6, dsm:Lcom/android/server/DeviceStorageMonitorService;
    const/4 v7, 0x0

    .line 281
    .local v7, lastSize:[J
    if-eqz v6, :cond_1

    .line 282
    invoke-virtual {v6}, Lcom/android/server/DeviceStorageMonitorService;->callOK()[J

    move-result-object v7

    .line 283
    invoke-virtual {v6}, Lcom/android/server/DeviceStorageMonitorService;->getCallOKSuccuess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    invoke-direct {p0, v7}, Lcom/android/server/ShowStorage;->getLastSizeFromArray([J)V

    .line 287
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/ShowStorage;->mStatePaused:Z

    .line 290
    .end local v6           #dsm:Lcom/android/server/DeviceStorageMonitorService;
    .end local v7           #lastSize:[J
    :cond_2
    iget-wide v0, p0, Lcom/android/server/ShowStorage;->mLastApplicationSize:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/android/server/ShowStorage;->mApplicationBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 293
    :cond_3
    iget-wide v0, p0, Lcom/android/server/ShowStorage;->mLastMailSize:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_4

    .line 294
    iget-object v0, p0, Lcom/android/server/ShowStorage;->mMailBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 296
    :cond_4
    iget-wide v0, p0, Lcom/android/server/ShowStorage;->mLastSmsMmsSize:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_5

    .line 297
    iget-object v0, p0, Lcom/android/server/ShowStorage;->mSmsMmsBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 300
    :cond_5
    iget-wide v0, p0, Lcom/android/server/ShowStorage;->mLastFreeSize:J

    long-to-float v0, v0

    iget v1, p0, Lcom/android/server/ShowStorage;->mTotalSize:F

    div-float v1, v0, v1

    iget-wide v2, p0, Lcom/android/server/ShowStorage;->mLastApplicationSize:J

    long-to-float v0, v2

    iget v2, p0, Lcom/android/server/ShowStorage;->mTotalSize:F

    div-float v2, v0, v2

    iget-wide v3, p0, Lcom/android/server/ShowStorage;->mLastMailSize:J

    long-to-float v0, v3

    iget v3, p0, Lcom/android/server/ShowStorage;->mTotalSize:F

    div-float v3, v0, v3

    iget-wide v4, p0, Lcom/android/server/ShowStorage;->mLastSmsMmsSize:J

    long-to-float v0, v4

    iget v4, p0, Lcom/android/server/ShowStorage;->mTotalSize:F

    div-float v4, v0, v4

    iget-wide v8, p0, Lcom/android/server/ShowStorage;->mLastSystemSize:J

    long-to-float v0, v8

    iget v5, p0, Lcom/android/server/ShowStorage;->mTotalSize:F

    div-float v5, v0, v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ShowStorage;->setAllStatusBar(FFFFF)V

    .line 303
    invoke-direct {p0}, Lcom/android/server/ShowStorage;->setAllMemoryViewText()V

    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 307
    return-void
.end method
