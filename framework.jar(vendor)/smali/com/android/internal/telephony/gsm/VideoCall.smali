.class Lcom/android/internal/telephony/gsm/VideoCall;
.super Lcom/android/internal/telephony/Call;
.source "VideoCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/VideoCall$1;
    }
.end annotation


# instance fields
.field connections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field owner:Lcom/android/internal/telephony/gsm/VideoCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/VideoCallTracker;)V
    .locals 1
    .parameter "owner"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCall;->connections:Ljava/util/ArrayList;

    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/VideoCall;->owner:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    .line 60
    return-void
.end method

.method static stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;
    .locals 3
    .parameter "dcState"

    .prologue
    .line 44
    sget-object v0, Lcom/android/internal/telephony/gsm/VideoCall$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    .line 50
    :goto_0
    return-object v0

    .line 46
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 47
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 48
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 49
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 50
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V
    .locals 1
    .parameter "conn"
    .parameter "dc"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/VideoCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 110
    return-void
.end method

.method attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .parameter "conn"
    .parameter "state"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iput-object p2, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 117
    return-void
.end method

.method clearDisconnected()V
    .locals 4

    .prologue
    .line 203
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/VideoCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 204
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/VideoCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/VideoConnection;

    .line 206
    .local v0, cn:Lcom/android/internal/telephony/gsm/VideoConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/VideoConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 207
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/VideoCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 203
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 211
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/VideoConnection;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/VideoCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 212
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 214
    :cond_2
    return-void
.end method

.method connectionDisconnected(Lcom/android/internal/telephony/gsm/VideoConnection;)V
    .locals 5
    .parameter "conn"

    .prologue
    .line 124
    iget-object v3, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_1

    .line 127
    const/4 v0, 0x1

    .line 129
    .local v0, hasOnlyDisconnectedConnections:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/VideoCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, s:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 130
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/VideoCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    .line 133
    const/4 v0, 0x0

    .line 138
    :cond_0
    if-eqz v0, :cond_1

    .line 139
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 142
    .end local v0           #hasOnlyDisconnectedConnections:Z
    .end local v1           #i:I
    .end local v2           #s:I
    :cond_1
    return-void

    .line 129
    .restart local v0       #hasOnlyDisconnectedConnections:Z
    .restart local v1       #i:I
    .restart local v2       #s:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method detach(Lcom/android/internal/telephony/gsm/VideoConnection;)V
    .locals 1
    .parameter "conn"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 150
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 152
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCall;->connections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCall;->owner:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/VideoCallTracker;->phone:Lcom/android/internal/telephony/gsm/TDPhone;

    return-object v0
.end method

.method public hangup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCall;->owner:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->hangup(Lcom/android/internal/telephony/gsm/VideoCall;)V

    .line 90
    return-void
.end method

.method isFull()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 175
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VideoCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiparty()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method onHangupLocal()V
    .locals 4

    .prologue
    .line 188
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/VideoCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 189
    .local v2, s:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 191
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/VideoCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/VideoConnection;

    .line 193
    .local v0, cn:Lcom/android/internal/telephony/gsm/VideoConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/VideoConnection;->onHangupLocal()V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/VideoConnection;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 196
    return-void
.end method

.method public sprdHangupAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VideoCall;->owner:Lcom/android/internal/telephony/gsm/VideoCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/VideoCallTracker;->hangup(Lcom/android/internal/telephony/gsm/VideoCall;)V

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(Lcom/android/internal/telephony/gsm/VideoConnection;Lcom/android/internal/telephony/DriverCall;)Z
    .locals 3
    .parameter "conn"
    .parameter "dc"

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, changed:Z
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/VideoCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 161
    .local v1, newState:Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    .line 162
    iput-object v1, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 163
    const/4 v0, 0x1

    .line 166
    :cond_0
    return v0
.end method
