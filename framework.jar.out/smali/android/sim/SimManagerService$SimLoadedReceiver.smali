.class Landroid/sim/SimManagerService$SimLoadedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sim/SimManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimLoadedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sim/SimManagerService;


# direct methods
.method private constructor <init>(Landroid/sim/SimManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/sim/SimManagerService;Landroid/sim/SimManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/sim/SimManagerService$SimLoadedReceiver;-><init>(Landroid/sim/SimManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 127
    const-string/jumbo v13, "phone_id"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 128
    .local v8, phoneId:I
    const-string/jumbo v13, "phone"

    invoke-static {v13, v8}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 130
    .local v12, telManager:Landroid/telephony/TelephonyManager;
    const-string v13, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 131
    const-string/jumbo v13, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 133
    .local v11, state:Ljava/lang/String;
    const-string v13, "SimManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ACTION_SIM_STATE_CHANGED:phoneId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", state="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v13, "LOADED"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 135
    const-string v13, "SimManagerService"

    const-string/jumbo v14, "sim didn\'t loaded"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v11           #state:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 140
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    #getter for: Landroid/sim/SimManagerService;->mSimCacheByPhoneId:Ljava/util/Map;
    invoke-static {v13}, Landroid/sim/SimManagerService;->access$100(Landroid/sim/SimManagerService;)Ljava/util/Map;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/sim/Sim;

    .line 142
    .local v10, sim:Landroid/sim/Sim;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 146
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, operator:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 148
    const-string v13, "SimManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Can not get the operator info now, and the operator is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_2
    const-string v6, ""

    .line 153
    .local v6, name:Ljava/lang/String;
    invoke-virtual {v10}, Landroid/sim/Sim;->getSerialNum()I

    move-result v9

    .line 154
    .local v9, serial:I
    const/16 v13, 0xa

    if-ge v9, v13, :cond_3

    .line 155
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " 0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 159
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    #getter for: Landroid/sim/SimManagerService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v13}, Landroid/sim/SimManagerService;->access$200(Landroid/sim/SimManagerService;)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 160
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "name"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    invoke-virtual {v10, v6}, Landroid/sim/Sim;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 166
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #operator:Ljava/lang/String;
    .end local v9           #serial:I
    .end local v10           #sim:Landroid/sim/Sim;
    :cond_4
    const-string v13, "SimManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v13, "SimManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "phoneId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v13

    if-nez v13, :cond_5

    .line 170
    const-string v13, "SimManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "slot "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " has no card"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 173
    :cond_5
    invoke-virtual {v12, v8}, Landroid/telephony/TelephonyManager;->getSimIccId(I)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, iccId:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 176
    const-string v13, "SimManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "iccId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 179
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    #getter for: Landroid/sim/SimManagerService;->mSimCache:Ljava/util/Map;
    invoke-static {v13}, Landroid/sim/SimManagerService;->access$300(Landroid/sim/SimManagerService;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 180
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    #getter for: Landroid/sim/SimManagerService;->mSimCache:Ljava/util/Map;
    invoke-static {v13}, Landroid/sim/SimManagerService;->access$300(Landroid/sim/SimManagerService;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/sim/Sim;

    .line 181
    .restart local v10       #sim:Landroid/sim/Sim;
    invoke-virtual {v10, v8}, Landroid/sim/Sim;->setPhoneId(I)V

    .line 183
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    #getter for: Landroid/sim/SimManagerService;->mSimCacheByPhoneId:Ljava/util/Map;
    invoke-static {v13}, Landroid/sim/SimManagerService;->access$100(Landroid/sim/SimManagerService;)Ljava/util/Map;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    iget-object v13, v13, Landroid/sim/SimManagerService;->mUsedColors:Ljava/util/Set;

    invoke-virtual {v10}, Landroid/sim/Sim;->getColorIndex()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    const-string v13, "SimManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "2--sim:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v5, insertSims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/sim/Sim;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    #getter for: Landroid/sim/SimManagerService;->mSimCacheByPhoneId:Ljava/util/Map;
    invoke-static {v13}, Landroid/sim/SimManagerService;->access$100(Landroid/sim/SimManagerService;)Ljava/util/Map;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    #calls: Landroid/sim/SimManagerService;->sendSimsChangedBroadcast(Ljava/util/ArrayList;)V
    invoke-static {v13, v5}, Landroid/sim/SimManagerService;->access$500(Landroid/sim/SimManagerService;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 187
    .end local v5           #insertSims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/sim/Sim;>;"
    .end local v10           #sim:Landroid/sim/Sim;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    invoke-static {v13}, Landroid/sim/SimManagerService;->access$408(Landroid/sim/SimManagerService;)I

    .line 190
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v7

    .line 191
    .restart local v7       #operator:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 192
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    .line 194
    :cond_8
    const-string v6, ""

    .line 195
    .restart local v6       #name:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 196
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    #getter for: Landroid/sim/SimManagerService;->mSimCount:I
    invoke-static {v13}, Landroid/sim/SimManagerService;->access$400(Landroid/sim/SimManagerService;)I

    move-result v13

    const/16 v14, 0xa

    if-ge v13, v14, :cond_b

    .line 197
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " 0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    #getter for: Landroid/sim/SimManagerService;->mSimCount:I
    invoke-static {v14}, Landroid/sim/SimManagerService;->access$400(Landroid/sim/SimManagerService;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 204
    :cond_9
    :goto_3
    const/4 v1, 0x0

    .line 205
    .local v1, colorIndex:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    sget-object v13, Landroid/sim/SimManager;->COLORS:[I

    array-length v13, v13

    if-ge v3, v13, :cond_a

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    iget-object v13, v13, Landroid/sim/SimManagerService;->mUsedColors:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 207
    move v1, v3

    .line 211
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    #getter for: Landroid/sim/SimManagerService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v13}, Landroid/sim/SimManagerService;->access$200(Landroid/sim/SimManagerService;)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 212
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v13, "count"

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    #getter for: Landroid/sim/SimManagerService;->mSimCount:I
    invoke-static {v14}, Landroid/sim/SimManagerService;->access$400(Landroid/sim/SimManagerService;)I

    move-result v14

    invoke-interface {v2, v13, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 213
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "phone_id"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    #getter for: Landroid/sim/SimManagerService;->mSimCount:I
    invoke-static {v14}, Landroid/sim/SimManagerService;->access$400(Landroid/sim/SimManagerService;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 214
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "icc_id"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    #getter for: Landroid/sim/SimManagerService;->mSimCount:I
    invoke-static {v14}, Landroid/sim/SimManagerService;->access$400(Landroid/sim/SimManagerService;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 215
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "name"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    #getter for: Landroid/sim/SimManagerService;->mSimCount:I
    invoke-static {v14}, Landroid/sim/SimManagerService;->access$400(Landroid/sim/SimManagerService;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 216
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "color_index"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    #getter for: Landroid/sim/SimManagerService;->mSimCount:I
    invoke-static {v14}, Landroid/sim/SimManagerService;->access$400(Landroid/sim/SimManagerService;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 218
    new-instance v10, Landroid/sim/Sim;

    invoke-direct {v10, v8, v4, v6, v1}, Landroid/sim/Sim;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 219
    .restart local v10       #sim:Landroid/sim/Sim;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    #getter for: Landroid/sim/SimManagerService;->mSimCount:I
    invoke-static {v13}, Landroid/sim/SimManagerService;->access$400(Landroid/sim/SimManagerService;)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/sim/Sim;->setSerialNum(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    #getter for: Landroid/sim/SimManagerService;->mSimCache:Ljava/util/Map;
    invoke-static {v13}, Landroid/sim/SimManagerService;->access$300(Landroid/sim/SimManagerService;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    #getter for: Landroid/sim/SimManagerService;->mSimCacheByPhoneId:Ljava/util/Map;
    invoke-static {v13}, Landroid/sim/SimManagerService;->access$100(Landroid/sim/SimManagerService;)Ljava/util/Map;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    iget-object v13, v13, Landroid/sim/SimManagerService;->mUsedColors:Ljava/util/Set;

    invoke-virtual {v10}, Landroid/sim/Sim;->getColorIndex()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    const-string v13, "SimManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "3--sim:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 199
    .end local v1           #colorIndex:I
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #i:I
    .end local v10           #sim:Landroid/sim/Sim;
    :cond_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/sim/SimManagerService$SimLoadedReceiver;->this$0:Landroid/sim/SimManagerService;

    #getter for: Landroid/sim/SimManagerService;->mSimCount:I
    invoke-static {v14}, Landroid/sim/SimManagerService;->access$400(Landroid/sim/SimManagerService;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 205
    .restart local v1       #colorIndex:I
    .restart local v3       #i:I
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4
.end method
