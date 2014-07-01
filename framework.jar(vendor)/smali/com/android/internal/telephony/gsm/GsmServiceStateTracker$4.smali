.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;
.super Ljava/lang/Object;
.source "GsmServiceStateTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNitzFromSntp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 1695
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 1698
    const-string v7, "GSM"

    const-string v8, "UpdateNitzFromSntp thread\uff1adoInBackground"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107002d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1700
    .local v6, sntpList:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 1701
    .local v5, sntp:Ljava/lang/String;
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sntp is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mClient:Landroid/net/SntpClient;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Landroid/net/SntpClient;

    move-result-object v7

    const/16 v8, 0x2710

    invoke-virtual {v7, v5, v8}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1703
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mClient:Landroid/net/SntpClient;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Landroid/net/SntpClient;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v1

    .line 1704
    .local v1, cachedNtp:J
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sntp NtpTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-eqz v7, :cond_0

    .line 1706
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mClient:Landroid/net/SntpClient;
    invoke-static {v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Landroid/net/SntpClient;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v10

    sub-long/2addr v8, v10

    add-long/2addr v8, v1

    #calls: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V
    invoke-static {v7, v8, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$500(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;J)V

    .line 1709
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v8, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isSntpStart:Z
    invoke-static {v7, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$602(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z

    .line 1713
    .end local v1           #cachedNtp:J
    .end local v5           #sntp:Ljava/lang/String;
    :cond_1
    return-void

    .line 1700
    .restart local v5       #sntp:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
