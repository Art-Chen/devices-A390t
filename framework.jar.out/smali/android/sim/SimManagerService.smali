.class public Landroid/sim/SimManagerService;
.super Landroid/sim/ISimManager$Stub;
.source "SimManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sim/SimManagerService$1;,
        Landroid/sim/SimManagerService$SimLoadedReceiver;
    }
.end annotation


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "sim.detail.ui.info"

.field private static final SIMS_CHANGED_INTENT:Landroid/content/Intent; = null

.field public static final SIM_CHANGED:Ljava/lang/String; = "sim"

.field public static final SIM_COLOR_INDEX:Ljava/lang/String; = "color_index"

.field public static final SIM_COUNT:Ljava/lang/String; = "count"

.field public static final SIM_ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final SIM_NAME:Ljava/lang/String; = "name"

.field public static final SIM_PHONE_ID:Ljava/lang/String; = "phone_id"

.field private static final TAG:Ljava/lang/String; = "SimManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private mReceiver:Landroid/sim/SimManagerService$SimLoadedReceiver;

.field private mSimCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/sim/Sim;",
            ">;"
        }
    .end annotation
.end field

.field private mSimCacheByPhoneId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/sim/Sim;",
            ">;"
        }
    .end annotation
.end field

.field private mSimCount:I

.field mUsedColors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.sim.INSERT_SIMS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/sim/SimManagerService;->SIMS_CHANGED_INTENT:Landroid/content/Intent;

    .line 77
    sget-object v0, Landroid/sim/SimManagerService;->SIMS_CHANGED_INTENT:Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    .line 80
    invoke-direct {p0}, Landroid/sim/ISimManager$Stub;-><init>()V

    .line 62
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Landroid/sim/SimManagerService;->mSimCache:Ljava/util/Map;

    .line 64
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Landroid/sim/SimManagerService;->mSimCacheByPhoneId:Ljava/util/Map;

    .line 66
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    iput-object v9, p0, Landroid/sim/SimManagerService;->mUsedColors:Ljava/util/Set;

    .line 72
    iput v12, p0, Landroid/sim/SimManagerService;->mSimCount:I

    .line 81
    const/4 v8, 0x0

    .line 83
    .local v8, temp:Landroid/content/Context;
    :try_start_0
    const-string v9, "com.android.settings"

    const/4 v10, 0x2

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 88
    :goto_0
    iput-object v8, p0, Landroid/sim/SimManagerService;->mContext:Landroid/content/Context;

    .line 89
    new-instance v9, Landroid/sim/SimManagerService$SimLoadedReceiver;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Landroid/sim/SimManagerService$SimLoadedReceiver;-><init>(Landroid/sim/SimManagerService;Landroid/sim/SimManagerService$1;)V

    iput-object v9, p0, Landroid/sim/SimManagerService;->mReceiver:Landroid/sim/SimManagerService$SimLoadedReceiver;

    .line 90
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v9, "android.intent.action.SIM_ACTIVED_STATE"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v9, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v9, p0, Landroid/sim/SimManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Landroid/sim/SimManagerService;->mReceiver:Landroid/sim/SimManagerService$SimLoadedReceiver;

    invoke-virtual {v9, v10, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    iget-object v9, p0, Landroid/sim/SimManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "sim.detail.ui.info"

    invoke-virtual {v9, v10, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Landroid/sim/SimManagerService;->mPreferences:Landroid/content/SharedPreferences;

    .line 97
    iget-object v9, p0, Landroid/sim/SimManagerService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "count"

    invoke-interface {v9, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Landroid/sim/SimManagerService;->mSimCount:I

    .line 99
    const-string v9, "SimManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mSimCount:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/sim/SimManagerService;->mSimCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v3, 0x1

    .local v3, i:I
    :goto_1
    iget v9, p0, Landroid/sim/SimManagerService;->mSimCount:I

    if-gt v3, v9, :cond_0

    .line 102
    const/4 v6, -0x1

    .line 103
    .local v6, phoneId:I
    iget-object v9, p0, Landroid/sim/SimManagerService;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "icc_id"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, iccId:Ljava/lang/String;
    iget-object v9, p0, Landroid/sim/SimManagerService;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "name"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, name:Ljava/lang/String;
    iget-object v9, p0, Landroid/sim/SimManagerService;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "color_index"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 108
    .local v0, color:I
    new-instance v7, Landroid/sim/Sim;

    invoke-direct {v7, v6, v4, v5, v0}, Landroid/sim/Sim;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 109
    .local v7, sim:Landroid/sim/Sim;
    invoke-virtual {v7, v3}, Landroid/sim/Sim;->setSerialNum(I)V

    .line 110
    iget-object v9, p0, Landroid/sim/SimManagerService;->mSimCache:Ljava/util/Map;

    invoke-interface {v9, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v9, "SimManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1--sim:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 84
    .end local v0           #color:I
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #i:I
    .end local v4           #iccId:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #phoneId:I
    .end local v7           #sim:Landroid/sim/Sim;
    :catch_0
    move-exception v1

    .line 85
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 114
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #filter:Landroid/content/IntentFilter;
    .restart local v3       #i:I
    :cond_0
    return-void
.end method

.method static synthetic access$100(Landroid/sim/SimManagerService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/sim/SimManagerService;->mSimCacheByPhoneId:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Landroid/sim/SimManagerService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/sim/SimManagerService;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Landroid/sim/SimManagerService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/sim/SimManagerService;->mSimCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Landroid/sim/SimManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Landroid/sim/SimManagerService;->mSimCount:I

    return v0
.end method

.method static synthetic access$408(Landroid/sim/SimManagerService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Landroid/sim/SimManagerService;->mSimCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/sim/SimManagerService;->mSimCount:I

    return v0
.end method

.method static synthetic access$500(Landroid/sim/SimManagerService;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/sim/SimManagerService;->sendSimsChangedBroadcast(Ljava/util/ArrayList;)V

    return-void
.end method

.method private sendSimsChangedBroadcast(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sim/Sim;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, changedSims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/sim/Sim;>;"
    const-string v0, "SimManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSimsChangedBroadcast android.sim.INSERT_SIMS_CHANGED, changedSims:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v0, Landroid/sim/SimManagerService;->SIMS_CHANGED_INTENT:Landroid/content/Intent;

    const-string/jumbo v1, "sim"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 120
    iget-object v0, p0, Landroid/sim/SimManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/sim/SimManagerService;->SIMS_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 121
    return-void
.end method


# virtual methods
.method public getActiveSims()[Landroid/sim/Sim;
    .locals 15

    .prologue
    const/4 v11, 0x1

    .line 322
    iget-object v12, p0, Landroid/sim/SimManagerService;->mSimCacheByPhoneId:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v5

    .line 323
    .local v5, len:I
    new-array v10, v5, [Landroid/sim/Sim;

    .line 325
    .local v10, sims:[Landroid/sim/Sim;
    iget-object v12, p0, Landroid/sim/SimManagerService;->mSimCacheByPhoneId:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 326
    .local v7, phoneIdSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 327
    .local v0, activeCount:I
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 328
    .local v6, phoneId:Ljava/lang/Integer;
    iget-object v12, p0, Landroid/sim/SimManagerService;->mSimCacheByPhoneId:Ljava/util/Map;

    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/sim/Sim;

    .line 329
    .local v9, sim:Landroid/sim/Sim;
    iget-object v12, p0, Landroid/sim/SimManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "sim_standby"

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/internal/telephony/PhoneFactory;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v11, :cond_1

    move v4, v11

    .line 331
    .local v4, isSimEnabled:Z
    :goto_1
    if-eqz v4, :cond_0

    .line 332
    add-int/lit8 v1, v0, 0x1

    .end local v0           #activeCount:I
    .local v1, activeCount:I
    aput-object v9, v10, v0

    move v0, v1

    .line 334
    .end local v1           #activeCount:I
    .restart local v0       #activeCount:I
    :cond_0
    const-string v12, "SimManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getActiveSims, the SIM in slot "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    .end local v4           #isSimEnabled:Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 337
    .end local v6           #phoneId:Ljava/lang/Integer;
    .end local v9           #sim:Landroid/sim/Sim;
    :cond_2
    new-array v8, v0, [Landroid/sim/Sim;

    .line 338
    .local v8, retSims:[Landroid/sim/Sim;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 339
    aget-object v11, v10, v2

    aput-object v11, v8, v2

    .line 338
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 341
    :cond_3
    return-object v8
.end method

.method public getAllSims()[Landroid/sim/Sim;
    .locals 11

    .prologue
    .line 360
    iget-object v8, p0, Landroid/sim/SimManagerService;->mSimCache:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v5

    .line 361
    .local v5, len:I
    new-array v6, v5, [Landroid/sim/Sim;

    .line 362
    .local v6, retSims:[Landroid/sim/Sim;
    iget-object v8, p0, Landroid/sim/SimManagerService;->mSimCache:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 363
    .local v4, iccIdSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 364
    .local v0, i:I
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 365
    .local v3, iccId:Ljava/lang/String;
    iget-object v8, p0, Landroid/sim/SimManagerService;->mSimCache:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/sim/Sim;

    .line 366
    .local v7, sim:Landroid/sim/Sim;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aput-object v7, v6, v0

    .line 367
    const-string v8, "SimManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAllSims, the SIM with icc id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 368
    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 369
    .end local v3           #iccId:Ljava/lang/String;
    .end local v7           #sim:Landroid/sim/Sim;
    :cond_0
    return-object v6
.end method

.method public getColor(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    .line 260
    iget-object v1, p0, Landroid/sim/SimManagerService;->mSimCacheByPhoneId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sim/Sim;

    .line 261
    .local v0, sim:Landroid/sim/Sim;
    if-nez v0, :cond_0

    .line 262
    const/4 v1, 0x0

    .line 264
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/sim/Sim;->getColor()I

    move-result v1

    goto :goto_0
.end method

.method public getColorIndex(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    .line 269
    iget-object v1, p0, Landroid/sim/SimManagerService;->mSimCacheByPhoneId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sim/Sim;

    .line 270
    .local v0, sim:Landroid/sim/Sim;
    if-nez v0, :cond_0

    .line 271
    const/4 v1, 0x0

    .line 273
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/sim/Sim;->getColorIndex()I

    move-result v1

    goto :goto_0
.end method

.method public getIccId(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    .line 296
    iget-object v1, p0, Landroid/sim/SimManagerService;->mSimCacheByPhoneId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sim/Sim;

    .line 297
    .local v0, sim:Landroid/sim/Sim;
    if-nez v0, :cond_0

    .line 298
    const-string v1, ""

    .line 300
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/sim/Sim;->getIccId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    .line 233
    iget-object v1, p0, Landroid/sim/SimManagerService;->mSimCacheByPhoneId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sim/Sim;

    .line 234
    .local v0, sim:Landroid/sim/Sim;
    if-nez v0, :cond_0

    .line 235
    const-string v1, ""

    .line 237
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSimByIccId(Ljava/lang/String;)Landroid/sim/Sim;
    .locals 1
    .parameter "iccId"

    .prologue
    .line 317
    iget-object v0, p0, Landroid/sim/SimManagerService;->mSimCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sim/Sim;

    return-object v0
.end method

.method public getSimById(I)Landroid/sim/Sim;
    .locals 2
    .parameter "phoneId"

    .prologue
    .line 309
    iget-object v0, p0, Landroid/sim/SimManagerService;->mSimCacheByPhoneId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sim/Sim;

    return-object v0
.end method

.method public getSims()[Landroid/sim/Sim;
    .locals 11

    .prologue
    .line 346
    iget-object v8, p0, Landroid/sim/SimManagerService;->mSimCacheByPhoneId:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v3

    .line 347
    .local v3, len:I
    new-array v6, v3, [Landroid/sim/Sim;

    .line 348
    .local v6, retSims:[Landroid/sim/Sim;
    iget-object v8, p0, Landroid/sim/SimManagerService;->mSimCacheByPhoneId:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 349
    .local v5, phoneIdSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 350
    .local v0, i:I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 351
    .local v4, phoneId:Ljava/lang/Integer;
    iget-object v8, p0, Landroid/sim/SimManagerService;->mSimCacheByPhoneId:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/sim/Sim;

    .line 352
    .local v7, sim:Landroid/sim/Sim;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aput-object v7, v6, v0

    .line 353
    const-string v8, "SimManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSims, the SIM in slot "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 354
    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 355
    .end local v4           #phoneId:Ljava/lang/Integer;
    .end local v7           #sim:Landroid/sim/Sim;
    :cond_0
    return-object v6
.end method

.method public setColorIndex(II)V
    .locals 6
    .parameter "phoneId"
    .parameter "colorIndex"

    .prologue
    .line 278
    iget-object v4, p0, Landroid/sim/SimManagerService;->mSimCacheByPhoneId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sim/Sim;

    .line 279
    .local v3, sim:Landroid/sim/Sim;
    if-eqz v3, :cond_0

    .line 280
    invoke-virtual {v3, p2}, Landroid/sim/Sim;->setColorIndex(I)V

    .line 283
    :cond_0
    invoke-virtual {v3}, Landroid/sim/Sim;->getSerialNum()I

    move-result v2

    .line 284
    .local v2, serialNum:I
    iget-object v4, p0, Landroid/sim/SimManagerService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 285
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "color_index"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v0, changedSims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/sim/Sim;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-direct {p0, v0}, Landroid/sim/SimManagerService;->sendSimsChangedBroadcast(Ljava/util/ArrayList;)V

    .line 293
    return-void
.end method

.method public setName(ILjava/lang/String;)V
    .locals 6
    .parameter "phoneId"
    .parameter "name"

    .prologue
    .line 242
    iget-object v4, p0, Landroid/sim/SimManagerService;->mSimCacheByPhoneId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sim/Sim;

    .line 243
    .local v3, sim:Landroid/sim/Sim;
    if-eqz v3, :cond_0

    .line 244
    invoke-virtual {v3, p2}, Landroid/sim/Sim;->setName(Ljava/lang/String;)V

    .line 247
    :cond_0
    invoke-virtual {v3}, Landroid/sim/Sim;->getSerialNum()I

    move-result v2

    .line 248
    .local v2, serialNum:I
    iget-object v4, p0, Landroid/sim/SimManagerService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 249
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v0, changedSims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/sim/Sim;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-direct {p0, v0}, Landroid/sim/SimManagerService;->sendSimsChangedBroadcast(Ljava/util/ArrayList;)V

    .line 257
    return-void
.end method
