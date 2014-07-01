.class Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs;
.super Ljava/lang/Thread;
.source "MsmsGsmDataConnectionTrackerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetachGprs"
.end annotation


# static fields
.field private static final DETACH_GPRS_COMPLETE:I = 0x64


# instance fields
.field private mDone:Z

.field private final mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mHandler:Landroid/os/Handler;

.field private mResult:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .parameter "phone"

    .prologue
    const/4 v0, 0x0

    .line 341
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 332
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs;->mDone:Z

    .line 333
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs;->mResult:Z

    .line 342
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 343
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs;->mResult:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs;->mDone:Z

    return p1
.end method


# virtual methods
.method declared-synchronized detach()V
    .locals 4

    .prologue
    .line 372
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 374
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 372
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 379
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 381
    .local v0, callback:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setGprsDetach(Landroid/os/Message;)V

    .line 383
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    .line 385
    :try_start_4
    const-string v2, "GSM"

    const-string/jumbo v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 387
    :catch_1
    move-exception v1

    .line 389
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 392
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    const-string v2, "GSM"

    const-string v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 393
    monitor-exit p0

    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 347
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 348
    monitor-enter p0

    .line 349
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs$1;-><init>(Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTrackerProxy$DetachGprs;->mHandler:Landroid/os/Handler;

    .line 365
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 366
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 368
    return-void

    .line 366
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
