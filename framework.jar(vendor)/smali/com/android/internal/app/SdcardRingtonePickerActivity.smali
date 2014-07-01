.class public final Lcom/android/internal/app/SdcardRingtonePickerActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SdcardRingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Ljava/lang/Runnable;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;


# static fields
.field private static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field private static final SAVE_CLICKED_POS:Ljava/lang/String; = "clicked_pos"

.field private static final TAG:Ljava/lang/String; = "SdcardRingtonePickerActivity"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mClickedPos:I

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mExistingUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mHasAudioFocus:Z

.field private mHasDefaultItem:Z

.field private mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mSilentPos:I

.field private mStaticItemCount:I

.field private mUriForDefaultItem:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 53
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 69
    iput v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mSilentPos:I

    .line 72
    iput v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mDefaultRingtonePos:I

    .line 75
    iput v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mClickedPos:I

    .line 78
    iput v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mSampleRingtonePos:I

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mHasAudioFocus:Z

    .line 102
    new-instance v0, Lcom/android/internal/app/SdcardRingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/SdcardRingtonePickerActivity$1;-><init>(Lcom/android/internal/app/SdcardRingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/app/SdcardRingtonePickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/app/SdcardRingtonePickerActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/app/SdcardRingtonePickerActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 239
    const v0, 0x1040409

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 243
    const v0, 0x104040b

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addStaticItem(Landroid/widget/ListView;I)I
    .locals 4
    .parameter "listView"
    .parameter "textResId"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090099

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 232
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 233
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 234
    iget v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mStaticItemCount:I

    .line 235
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private getListPosition(I)I
    .locals 1
    .parameter "ringtoneManagerPos"

    .prologue
    .line 407
    if-gez p1, :cond_0

    .line 409
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 1
    .parameter "listPos"

    .prologue
    .line 401
    iget v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private playRingtone(II)V
    .locals 3
    .parameter "position"
    .parameter "delayMs"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 303
    iput p1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mSampleRingtonePos:I

    .line 304
    iget-object v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 305
    return-void
.end method

.method private stopAnyPlayingRingtone()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 392
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mHasAudioFocus:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mHasAudioFocus:Z

    .line 398
    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 250
    if-ne p2, v6, :cond_1

    const/4 v0, 0x1

    .line 253
    .local v0, positiveResult:Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 254
    if-eqz v0, :cond_5

    .line 255
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v1, resultIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 258
    .local v2, uri:Landroid/net/Uri;
    iget v4, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mClickedPos:I

    iget v5, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v4, v5, :cond_2

    .line 260
    iget-object v2, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 269
    :goto_1
    iget v4, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mClickedPos:I

    if-ltz v4, :cond_0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content://settings/system/ringtone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 270
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->setResult(I)V

    .line 282
    .end local v1           #resultIntent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/SdcardRingtonePickerActivity$2;

    invoke-direct {v4, p0}, Lcom/android/internal/app/SdcardRingtonePickerActivity$2;-><init>(Lcom/android/internal/app/SdcardRingtonePickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 288
    invoke-virtual {p0}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->finish()V

    .line 289
    return-void

    .end local v0           #positiveResult:Z
    :cond_1
    move v0, v3

    .line 250
    goto :goto_0

    .line 261
    .restart local v0       #positiveResult:Z
    .restart local v1       #resultIntent:Landroid/content/Intent;
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_2
    iget v4, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mClickedPos:I

    iget v5, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mSilentPos:I

    if-ne v4, v5, :cond_3

    .line 263
    const/4 v2, 0x0

    goto :goto_1

    .line 265
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v5, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mClickedPos:I

    invoke-direct {p0, v5}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/RingtoneManager;->getCustomRingtoneUri(I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 273
    :cond_4
    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, v6, v1}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    .line 279
    .end local v1           #resultIntent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->setResult(I)V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 129
    .local v2, intent:Landroid/content/Intent;
    sget-boolean v5, Lcom/android/internal/app/SdcardRingtonePickerActivity;->UNIVERSEUI_SUPPORT:Z

    if-eqz v5, :cond_0

    .line 130
    const-string/jumbo v5, "theme_key"

    const v6, 0x1030401

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->setTheme(I)V

    .line 137
    :cond_0
    const-string v5, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mHasDefaultItem:Z

    .line 138
    const-string v5, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 139
    iget-object v5, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v5, :cond_1

    .line 140
    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v5, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 143
    :cond_1
    if-eqz p1, :cond_2

    .line 144
    const-string v5, "clicked_pos"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mClickedPos:I

    .line 148
    :cond_2
    new-instance v5, Landroid/media/RingtoneManager;

    invoke-direct {v5, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 150
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 153
    const-string v5, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 155
    .local v0, includeDrm:Z
    iget-object v5, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v5, v0}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 157
    const-string v5, "android.intent.extra.ringtone.INCLUDE_EXTERNAL"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 158
    .local v1, includeExternal:Z
    iget-object v5, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v5, v1}, Landroid/media/RingtoneManager;->setIncludeExternal(Z)V

    .line 160
    const-string v5, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 161
    .local v4, types:I
    if-eq v4, v8, :cond_3

    .line 162
    iget-object v5, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v5, v4}, Landroid/media/RingtoneManager;->setType(I)V

    .line 165
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v5}, Landroid/media/RingtoneManager;->getExternalMusics()Landroid/database/Cursor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 166
    iget-object v5, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_4

    .line 167
    const v5, 0x1040520

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->finish()V

    .line 171
    :cond_4
    iget-object v5, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v5}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->setVolumeControlStream(I)V

    .line 174
    const-string v5, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 177
    iget-object v3, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 178
    .local v3, p:Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v5, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 179
    iget-object v5, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 180
    const-string/jumbo v5, "title"

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 181
    iput-boolean v7, v3, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 182
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 183
    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 184
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 185
    const/high16 v5, 0x104

    invoke-virtual {p0, v5}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 186
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 187
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    .line 189
    const-string v5, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 190
    iget-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-nez v5, :cond_5

    .line 191
    const v5, 0x104040c

    invoke-virtual {p0, v5}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 194
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->setupAlert()V

    .line 195
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 295
    const/16 v0, 0x12c

    invoke-direct {p0, p3, v0}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->playRingtone(II)V

    .line 296
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 299
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 378
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 379
    invoke-direct {p0}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 380
    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mDefaultRingtonePos:I

    iput v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mClickedPos:I

    .line 213
    :cond_0
    iget v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mClickedPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getCunstomRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->getListPosition(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mClickedPos:I

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mClickedPos:I

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 219
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    .line 364
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 366
    iget-object v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->getExternalMusics()Landroid/database/Cursor;

    move-result-object v0

    .line 367
    .local v0, Cursor:Landroid/database/Cursor;
    const-string v1, "SdcardRingtonePickerActivity"

    const-string v2, "anney:onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    if-nez v0, :cond_1

    .line 369
    const-string v1, "SdcardRingtonePickerActivity"

    const-string v2, "anney:onResume finish()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const v1, 0x1040520

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 371
    invoke-virtual {p0}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->finish()V

    .line 374
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 200
    const-string v0, "clicked_pos"

    iget v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 354
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 355
    invoke-direct {p0}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 356
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 309
    iget v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mSilentPos:I

    if-ne v1, v2, :cond_1

    .line 310
    iget-object v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    iget-object v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 320
    iput-object v4, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 324
    :cond_2
    iget v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v1, v2, :cond_5

    .line 325
    iget-object v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_3

    .line 326
    iget-object v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 336
    .local v0, ringtone:Landroid/media/Ringtone;
    iget-object v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 342
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mHasAudioFocus:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_4

    .line 343
    iget-object v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4, v3, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 344
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mHasAudioFocus:Z

    .line 347
    :cond_4
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 339
    .end local v0           #ringtone:Landroid/media/Ringtone;
    :cond_5
    iget-object v1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v2}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getCustomRingtone(I)Landroid/media/Ringtone;

    move-result-object v0

    .restart local v0       #ringtone:Landroid/media/Ringtone;
    goto :goto_1
.end method
