.class Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker$1;
.super Landroid/database/ContentObserver;
.source "MsmsGsmDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .parameter "selfChange"

    .prologue
    .line 98
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    const-string v5, "Default Data Phone Id is changed"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 99
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->access$000(Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v2

    .line 101
    .local v2, defaultDataPhoneId:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultDataPhoneId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " dataEnabled[APN_DEFAULT_ID]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->access$100(Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    const-string v7, "default"

    invoke-virtual {v4, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 103
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->access$200(Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-eq v2, v4, :cond_0

    .line 104
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->isDisconnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->setDataDisabledOfDefaultAPN()V

    .line 107
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 120
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->access$400(Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 121
    const/4 v1, 0x1

    .line 123
    .local v1, dataEnabledSetting:Z
    :try_start_0
    const-string v4, "connectivity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->access$500(Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/net/IConnectivityManager;->getMobileDataEnabledByPhoneId(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 129
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->setDataEnabledOfDefaultAPN()V

    .line 132
    .end local v1           #dataEnabledSetting:Z
    :cond_1
    return-void

    .line 109
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->access$300(Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 110
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 111
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ApnContext;->setEnabled(Z)V

    .line 113
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isDisconnected()Z

    move-result v4

    if-nez v4, :cond_3

    .line 115
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/MsmsGsmDataConnectionTracker;->disableApnType(Ljava/lang/String;)I

    goto :goto_1

    .line 125
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v3           #i$:Ljava/util/Iterator;
    .restart local v1       #dataEnabledSetting:Z
    :catch_0
    move-exception v4

    goto :goto_0
.end method
