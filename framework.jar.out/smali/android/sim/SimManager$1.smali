.class Landroid/sim/SimManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sim/SimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sim/SimManager;


# direct methods
.method constructor <init>(Landroid/sim/SimManager;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Landroid/sim/SimManager$1;->this$0:Landroid/sim/SimManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 101
    iget-object v3, p0, Landroid/sim/SimManager$1;->this$0:Landroid/sim/SimManager;

    invoke-virtual {v3}, Landroid/sim/SimManager;->getSims()[Landroid/sim/Sim;

    move-result-object v2

    .line 103
    .local v2, sims:[Landroid/sim/Sim;
    iget-object v3, p0, Landroid/sim/SimManager$1;->this$0:Landroid/sim/SimManager;

    #getter for: Landroid/sim/SimManager;->mSimsUpdatedListeners:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/sim/SimManager;->access$000(Landroid/sim/SimManager;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 104
    :try_start_0
    iget-object v3, p0, Landroid/sim/SimManager$1;->this$0:Landroid/sim/SimManager;

    #getter for: Landroid/sim/SimManager;->mSimsUpdatedListeners:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/sim/SimManager;->access$000(Landroid/sim/SimManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 106
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/sim/SimManager$OnSimsUpdateListener;Landroid/os/Handler;>;"
    iget-object v6, p0, Landroid/sim/SimManager$1;->this$0:Landroid/sim/SimManager;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sim/SimManager$OnSimsUpdateListener;

    #calls: Landroid/sim/SimManager;->postToHandler(Landroid/os/Handler;Landroid/sim/SimManager$OnSimsUpdateListener;[Landroid/sim/Sim;)V
    invoke-static {v6, v3, v4, v2}, Landroid/sim/SimManager;->access$100(Landroid/sim/SimManager;Landroid/os/Handler;Landroid/sim/SimManager$OnSimsUpdateListener;[Landroid/sim/Sim;)V

    goto :goto_0

    .line 108
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/sim/SimManager$OnSimsUpdateListener;Landroid/os/Handler;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    return-void
.end method
