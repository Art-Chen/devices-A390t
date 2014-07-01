.class public Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# static fields
.field private static final Watchdog_MONITOR:I = 0xa9e


# instance fields
.field private mBlocked:Z

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Landroid/os/Message;

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:I

.field mQuitAllowed:Z

.field private mQuiting:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 99
    invoke-direct {p0}, Landroid/os/MessageQueue;->nativeInit()V

    .line 100
    return-void
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeInit()V
.end method

.method private native nativePollOnce(II)V
.end method

.method private native nativeWake(I)V
.end method


# virtual methods
.method public final addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    monitor-exit p0

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final enqueueMessage(Landroid/os/Message;J)Z
    .locals 10
    .parameter "msg"
    .parameter "when"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    .line 187
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 188
    new-instance v4, Landroid/util/AndroidRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " This message is already in use."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 191
    :cond_0
    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v5, :cond_1

    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-nez v5, :cond_1

    .line 192
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Main thread not allowed to quit"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 195
    :cond_1
    monitor-enter p0

    .line 196
    :try_start_0
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuiting:Z

    if-eqz v5, :cond_3

    .line 197
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sending message to a Handler on a dead thread"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    const/4 v4, 0x0

    monitor-exit p0

    .line 234
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    return v4

    .line 201
    :cond_3
    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v5, :cond_4

    .line 202
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/os/MessageQueue;->mQuiting:Z

    .line 206
    :cond_4
    const/16 v5, 0xa9e

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_6

    .line 207
    const-wide/16 p2, 0x0

    .line 208
    const-wide/16 v5, 0x0

    iput-wide v5, p1, Landroid/os/Message;->when:J

    .line 209
    const-string v5, "MessageQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "**** Watchdog MEG ENQUEUE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ****"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_1
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 216
    .local v2, p:Landroid/os/Message;
    if-eqz v2, :cond_5

    cmp-long v5, p2, v8

    if-eqz v5, :cond_5

    iget-wide v5, v2, Landroid/os/Message;->when:J

    cmp-long v5, p2, v5

    if-gez v5, :cond_7

    .line 217
    :cond_5
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 218
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 219
    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 230
    .local v1, needWake:Z
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    if-eqz v1, :cond_2

    .line 232
    iget v5, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v5}, Landroid/os/MessageQueue;->nativeWake(I)V

    goto :goto_0

    .line 211
    .end local v1           #needWake:Z
    .end local v2           #p:Landroid/os/Message;
    :cond_6
    :try_start_1
    iput-wide p2, p1, Landroid/os/Message;->when:J

    goto :goto_1

    .line 230
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 221
    .restart local v2       #p:Landroid/os/Message;
    :cond_7
    const/4 v3, 0x0

    .line 222
    .local v3, prev:Landroid/os/Message;
    :goto_3
    if-eqz v2, :cond_8

    :try_start_2
    iget-wide v5, v2, Landroid/os/Message;->when:J

    cmp-long v5, v5, p2

    if-gtz v5, :cond_8

    .line 223
    move-object v3, v2

    .line 224
    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_3

    .line 226
    :cond_8
    iget-object v5, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v5, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 227
    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    const/4 v1, 0x0

    .restart local v1       #needWake:Z
    goto :goto_2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->nativeDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 109
    return-void

    .line 107
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method final next()Landroid/os/Message;
    .locals 15

    .prologue
    .line 112
    const/4 v7, -0x1

    .line 113
    .local v7, pendingIdleHandlerCount:I
    const/4 v4, 0x0

    .line 116
    .local v4, nextPollTimeoutMillis:I
    :goto_0
    if-eqz v4, :cond_0

    .line 117
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 119
    :cond_0
    iget v11, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v11, v4}, Landroid/os/MessageQueue;->nativePollOnce(II)V

    .line 121
    monitor-enter p0

    .line 123
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 124
    .local v5, now:J
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 125
    .local v3, msg:Landroid/os/Message;
    if-eqz v3, :cond_3

    .line 126
    iget-wide v9, v3, Landroid/os/Message;->when:J

    .line 127
    .local v9, when:J
    cmp-long v11, v5, v9

    if-ltz v11, :cond_1

    .line 128
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 129
    iget-object v11, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v11, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 130
    const/4 v11, 0x0

    iput-object v11, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 132
    invoke-virtual {v3}, Landroid/os/Message;->markInUse()V

    .line 133
    monitor-exit p0

    return-object v3

    .line 135
    :cond_1
    sub-long v11, v9, v5

    const-wide/32 v13, 0x7fffffff

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v4, v11

    .line 142
    .end local v9           #when:J
    :goto_1
    if-gez v7, :cond_2

    .line 143
    iget-object v11, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 145
    :cond_2
    if-nez v7, :cond_4

    .line 147
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 148
    monitor-exit p0

    goto :goto_0

    .line 155
    .end local v3           #msg:Landroid/os/Message;
    .end local v5           #now:J
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 138
    .restart local v3       #msg:Landroid/os/Message;
    .restart local v5       #now:J
    :cond_3
    const/4 v4, -0x1

    goto :goto_1

    .line 151
    :cond_4
    :try_start_1
    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v11, :cond_5

    .line 152
    const/4 v11, 0x4

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    new-array v11, v11, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 154
    :cond_5
    iget-object v11, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v12, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 155
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v7, :cond_7

    .line 160
    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v1, v11, v0

    .line 161
    .local v1, idler:Landroid/os/MessageQueue$IdleHandler;
    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    const/4 v12, 0x0

    aput-object v12, v11, v0

    .line 163
    const/4 v2, 0x0

    .line 165
    .local v2, keep:Z
    :try_start_2
    invoke-interface {v1}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    .line 170
    :goto_3
    if-nez v2, :cond_6

    .line 171
    monitor-enter p0

    .line 172
    :try_start_3
    iget-object v11, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 173
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 159
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 166
    :catch_0
    move-exception v8

    .line 167
    .local v8, t:Ljava/lang/Throwable;
    const-string v11, "MessageQueue"

    const-string v12, "IdleHandler threw exception"

    invoke-static {v11, v12, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 173
    .end local v8           #t:Ljava/lang/Throwable;
    :catchall_1
    move-exception v11

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11

    .line 178
    .end local v1           #idler:Landroid/os/MessageQueue$IdleHandler;
    .end local v2           #keep:Z
    :cond_7
    const/4 v7, 0x0

    .line 182
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method final removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "object"

    .prologue
    .line 310
    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 315
    .local v2, p:Landroid/os/Message;
    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_1

    .line 316
    :cond_0
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 317
    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 318
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 319
    move-object v2, v0

    .line 320
    goto :goto_0

    .line 323
    .end local v0           #n:Landroid/os/Message;
    :cond_1
    :goto_1
    if-eqz v2, :cond_4

    .line 324
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 325
    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_3

    .line 326
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_3

    .line 327
    :cond_2
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 328
    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 329
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 335
    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 333
    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_3
    move-object v2, v0

    .line 334
    goto :goto_1

    .line 335
    .end local v0           #n:Landroid/os/Message;
    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    return-void
.end method

.method public final removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 95
    monitor-exit p0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "r"
    .parameter "object"

    .prologue
    .line 276
    if-nez p2, :cond_0

    .line 307
    :goto_0
    return-void

    .line 280
    :cond_0
    monitor-enter p0

    .line 281
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 285
    .local v2, p:Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    iget-object v3, v2, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_2

    .line 286
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 287
    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 288
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 289
    move-object v2, v0

    .line 290
    goto :goto_1

    .line 293
    .end local v0           #n:Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 294
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 295
    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_4

    .line 296
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    iget-object v3, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_4

    .line 298
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 299
    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 300
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 306
    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 304
    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_4
    move-object v2, v0

    .line 305
    goto :goto_2

    .line 306
    .end local v0           #n:Landroid/os/Message;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final removeMessages(Landroid/os/Handler;ILjava/lang/Object;Z)Z
    .locals 6
    .parameter "h"
    .parameter "what"
    .parameter "object"
    .parameter "doRemove"

    .prologue
    const/4 v4, 0x1

    .line 239
    monitor-enter p0

    .line 240
    :try_start_0
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 241
    .local v3, p:Landroid/os/Message;
    const/4 v0, 0x0

    .line 245
    .local v0, found:Z
    :goto_0
    if-eqz v3, :cond_3

    iget-object v5, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v5, p1, :cond_3

    iget v5, v3, Landroid/os/Message;->what:I

    if-ne v5, p2, :cond_3

    if-eqz p3, :cond_0

    iget-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v5, p3, :cond_3

    .line 246
    :cond_0
    if-nez p4, :cond_1

    monitor-exit p0

    .line 271
    :goto_1
    return v4

    .line 247
    :cond_1
    const/4 v0, 0x1

    .line 248
    iget-object v1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 249
    .local v1, n:Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 250
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 251
    move-object v3, v1

    .line 252
    goto :goto_0

    .line 261
    :cond_2
    const/4 v0, 0x1

    .line 262
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 263
    .local v2, nn:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 264
    iput-object v2, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 255
    .end local v1           #n:Landroid/os/Message;
    .end local v2           #nn:Landroid/os/Message;
    :cond_3
    :goto_2
    if-eqz v3, :cond_6

    .line 256
    iget-object v1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 257
    .restart local v1       #n:Landroid/os/Message;
    if-eqz v1, :cond_5

    .line 258
    iget-object v5, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v5, p1, :cond_5

    iget v5, v1, Landroid/os/Message;->what:I

    if-ne v5, p2, :cond_5

    if-eqz p3, :cond_4

    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v5, p3, :cond_5

    .line 260
    :cond_4
    if-nez p4, :cond_2

    monitor-exit p0

    goto :goto_1

    .line 272
    .end local v0           #found:Z
    .end local v1           #n:Landroid/os/Message;
    .end local v3           #p:Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 268
    .restart local v0       #found:Z
    .restart local v1       #n:Landroid/os/Message;
    .restart local v3       #p:Landroid/os/Message;
    :cond_5
    move-object v3, v1

    .line 269
    goto :goto_2

    .line 271
    .end local v1           #n:Landroid/os/Message;
    :cond_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v0

    goto :goto_1
.end method
