.class Landroid/sim/SimManager$2;
.super Ljava/lang/Object;
.source "SimManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/sim/SimManager;->postToHandler(Landroid/os/Handler;Landroid/sim/SimManager$OnSimsUpdateListener;[Landroid/sim/Sim;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sim/SimManager;

.field final synthetic val$listener:Landroid/sim/SimManager$OnSimsUpdateListener;

.field final synthetic val$simsCopy:[Landroid/sim/Sim;


# direct methods
.method constructor <init>(Landroid/sim/SimManager;Landroid/sim/SimManager$OnSimsUpdateListener;[Landroid/sim/Sim;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Landroid/sim/SimManager$2;->this$0:Landroid/sim/SimManager;

    iput-object p2, p0, Landroid/sim/SimManager$2;->val$listener:Landroid/sim/SimManager$OnSimsUpdateListener;

    iput-object p3, p0, Landroid/sim/SimManager$2;->val$simsCopy:[Landroid/sim/Sim;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 241
    :try_start_0
    iget-object v1, p0, Landroid/sim/SimManager$2;->val$listener:Landroid/sim/SimManager$OnSimsUpdateListener;

    iget-object v2, p0, Landroid/sim/SimManager$2;->val$simsCopy:[Landroid/sim/Sim;

    invoke-interface {v1, v2}, Landroid/sim/SimManager$OnSimsUpdateListener;->onSimUpdated([Landroid/sim/Sim;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "SimManager"

    const-string v2, "Can\'t update sims"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
