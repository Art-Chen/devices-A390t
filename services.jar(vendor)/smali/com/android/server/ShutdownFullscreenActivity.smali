.class public Lcom/android/server/ShutdownFullscreenActivity;
.super Landroid/app/Activity;
.source "ShutdownFullscreenActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownFullScreenActivity"


# instance fields
.field private IsBatteryLowPoweroff:Z

.field private mConfirm:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mInitialCallState:I

.field private mInitialCallState1:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSeconds:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager1:Landroid/telephony/TelephonyManager;

.field private myHandler:Landroid/os/Handler;

.field private myRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->IsBatteryLowPoweroff:Z

    .line 52
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mSeconds:I

    .line 63
    new-instance v0, Lcom/android/server/ShutdownFullscreenActivity$1;

    invoke-direct {v0, p0}, Lcom/android/server/ShutdownFullscreenActivity$1;-><init>(Lcom/android/server/ShutdownFullscreenActivity;)V

    iput-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->myHandler:Landroid/os/Handler;

    .line 114
    new-instance v0, Lcom/android/server/ShutdownFullscreenActivity$2;

    invoke-direct {v0, p0}, Lcom/android/server/ShutdownFullscreenActivity$2;-><init>(Lcom/android/server/ShutdownFullscreenActivity;)V

    iput-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->myRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ShutdownFullscreenActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->IsBatteryLowPoweroff:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ShutdownFullscreenActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->myRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/ShutdownFullscreenActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mSeconds:I

    return v0
.end method

.method static synthetic access$710(Lcom/android/server/ShutdownFullscreenActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mSeconds:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/ShutdownFullscreenActivity;->mSeconds:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/ShutdownFullscreenActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mConfirm:Z

    return v0
.end method


# virtual methods
.method public finish()V
    .locals 5

    .prologue
    .line 264
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 265
    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    .line 266
    .local v1, showing:Z
    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 267
    .local v0, isNull:Z
    :goto_0
    const-string v2, "ShutdownFullScreenActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShutdownFullscreenActivity  finish  showing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "           isNull = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void

    .line 266
    .end local v0           #isNull:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 138
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/server/ShutdownFullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/ShutdownFullscreenActivity;->mConfirm:Z

    .line 141
    invoke-virtual {p0}, Lcom/android/server/ShutdownFullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "isbatteryLow"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/ShutdownFullscreenActivity;->IsBatteryLowPoweroff:Z

    .line 143
    const-string v3, "ShutdownFullScreenActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate(): confirm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/ShutdownFullscreenActivity;->mConfirm:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/android/server/ShutdownFullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "can_be_cancel"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 145
    .local v0, can_be_cancel:Z
    const-string v3, "ShutdownFullScreenActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ShutdownFullscreenActivity   onCreate can_be_cancel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0, v6}, Lcom/android/server/ShutdownFullscreenActivity;->requestWindowFeature(I)Z

    .line 148
    invoke-virtual {p0}, Lcom/android/server/ShutdownFullscreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 149
    .local v2, win:Landroid/view/Window;
    const/high16 v3, 0x48

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 151
    const v3, 0x200080

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 153
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lcom/android/server/ShutdownFullscreenActivity;->setContentView(Landroid/view/View;)V

    .line 155
    if-eqz v0, :cond_0

    .line 156
    new-instance v3, Lcom/android/server/ShutdownFullscreenActivity$3;

    invoke-direct {v3, p0}, Lcom/android/server/ShutdownFullscreenActivity$3;-><init>(Lcom/android/server/ShutdownFullscreenActivity;)V

    iput-object v3, p0, Lcom/android/server/ShutdownFullscreenActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v3, p0, Lcom/android/server/ShutdownFullscreenActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/server/ShutdownFullscreenActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;

    .line 180
    iget-object v3, p0, Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;

    const v4, 0x104014e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 182
    iget-boolean v3, p0, Lcom/android/server/ShutdownFullscreenActivity;->IsBatteryLowPoweroff:Z

    if-nez v3, :cond_1

    sget-boolean v3, Landroid/os/Build;->IS_AT720B:Z

    if-eqz v3, :cond_2

    .line 183
    :cond_1
    const/16 v3, 0x1e

    iput v3, p0, Lcom/android/server/ShutdownFullscreenActivity;->mSeconds:I

    .line 185
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/ShutdownFullscreenActivity;->IsBatteryLowPoweroff:Z

    if-eqz v3, :cond_3

    .line 186
    iget-object v3, p0, Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;

    const v4, 0x104052e

    new-array v5, v6, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/ShutdownFullscreenActivity;->mSeconds:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/server/ShutdownFullscreenActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 190
    :goto_0
    iget-object v3, p0, Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x3

    const/high16 v5, 0x104

    invoke-virtual {p0, v5}, Lcom/android/server/ShutdownFullscreenActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/android/server/ShutdownFullscreenActivity$4;

    invoke-direct {v6, p0}, Lcom/android/server/ShutdownFullscreenActivity$4;-><init>(Lcom/android/server/ShutdownFullscreenActivity;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 199
    return-void

    .line 188
    :cond_3
    iget-object v3, p0, Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;

    const v4, 0x1040521

    new-array v5, v6, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/ShutdownFullscreenActivity;->mSeconds:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/server/ShutdownFullscreenActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 106
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/ShutdownFullscreenActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 107
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/ShutdownFullscreenActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 110
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 256
    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    .line 257
    .local v1, showing:Z
    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 258
    .local v0, isNull:Z
    :goto_0
    const-string v2, "ShutdownFullScreenActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShutdownFullscreenActivity  onPause  showing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "           isNull = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 257
    .end local v0           #isNull:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x1

    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 203
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 205
    iget-boolean v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mConfirm:Z

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ShutdownFullscreenActivity;->myRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/server/ShutdownFullscreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 211
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/ShutdownFullscreenActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 213
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 214
    const-string v0, "phone1"

    invoke-virtual {p0, v0}, Lcom/android/server/ShutdownFullscreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    .line 216
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/ShutdownFullscreenActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    iput v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mInitialCallState:I

    .line 221
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v4, :cond_2

    .line 222
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    iput v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mInitialCallState1:I

    .line 226
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->IsBatteryLowPoweroff:Z

    if-eqz v0, :cond_3

    .line 250
    :goto_0
    return-void

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/ShutdownFullscreenActivity$5;

    invoke-direct {v1, p0}, Lcom/android/server/ShutdownFullscreenActivity$5;-><init>(Lcom/android/server/ShutdownFullscreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
