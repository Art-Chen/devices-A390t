.class public abstract Landroid/sim/ISimManager$Stub;
.super Landroid/os/Binder;
.source "ISimManager.java"

# interfaces
.implements Landroid/sim/ISimManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sim/ISimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sim/ISimManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sim.ISimManager"

.field static final TRANSACTION_getActiveSims:I = 0x4

.field static final TRANSACTION_getAllSims:I = 0x5

.field static final TRANSACTION_getColor:I = 0x8

.field static final TRANSACTION_getColorIndex:I = 0x9

.field static final TRANSACTION_getIccId:I = 0xb

.field static final TRANSACTION_getName:I = 0x6

.field static final TRANSACTION_getSimByIccId:I = 0x2

.field static final TRANSACTION_getSimById:I = 0x1

.field static final TRANSACTION_getSims:I = 0x3

.field static final TRANSACTION_setColorIndex:I = 0xa

.field static final TRANSACTION_setName:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.sim.ISimManager"

    invoke-virtual {p0, p0, v0}, Landroid/sim/ISimManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sim/ISimManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.sim.ISimManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sim/ISimManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/sim/ISimManager;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/sim/ISimManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/sim/ISimManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v4, "android.sim.ISimManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v4, "android.sim.ISimManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/sim/ISimManager$Stub;->getSimById(I)Landroid/sim/Sim;

    move-result-object v2

    .line 54
    .local v2, _result:Landroid/sim/Sim;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {v2, p3, v3}, Landroid/sim/Sim;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v0           #_arg0:I
    .end local v2           #_result:Landroid/sim/Sim;
    :sswitch_2
    const-string v4, "android.sim.ISimManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/sim/ISimManager$Stub;->getSimByIccId(Ljava/lang/String;)Landroid/sim/Sim;

    move-result-object v2

    .line 70
    .restart local v2       #_result:Landroid/sim/Sim;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v2, :cond_1

    .line 72
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {v2, p3, v3}, Landroid/sim/Sim;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Landroid/sim/Sim;
    :sswitch_3
    const-string v4, "android.sim.ISimManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/sim/ISimManager$Stub;->getSims()[Landroid/sim/Sim;

    move-result-object v2

    .line 84
    .local v2, _result:[Landroid/sim/Sim;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 90
    .end local v2           #_result:[Landroid/sim/Sim;
    :sswitch_4
    const-string v4, "android.sim.ISimManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/sim/ISimManager$Stub;->getActiveSims()[Landroid/sim/Sim;

    move-result-object v2

    .line 92
    .restart local v2       #_result:[Landroid/sim/Sim;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 98
    .end local v2           #_result:[Landroid/sim/Sim;
    :sswitch_5
    const-string v4, "android.sim.ISimManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/sim/ISimManager$Stub;->getAllSims()[Landroid/sim/Sim;

    move-result-object v2

    .line 100
    .restart local v2       #_result:[Landroid/sim/Sim;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 106
    .end local v2           #_result:[Landroid/sim/Sim;
    :sswitch_6
    const-string v4, "android.sim.ISimManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/sim/ISimManager$Stub;->getName(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    .end local v0           #_arg0:I
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_7
    const-string v4, "android.sim.ISimManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/sim/ISimManager$Stub;->setName(ILjava/lang/String;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 127
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_8
    const-string v4, "android.sim.ISimManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/sim/ISimManager$Stub;->getColor(I)I

    move-result v2

    .line 131
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 137
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_9
    const-string v4, "android.sim.ISimManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/sim/ISimManager$Stub;->getColorIndex(I)I

    move-result v2

    .line 141
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 147
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_a
    const-string v4, "android.sim.ISimManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sim/ISimManager$Stub;->setColorIndex(II)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 158
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_b
    const-string v4, "android.sim.ISimManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 161
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/sim/ISimManager$Stub;->getIccId(I)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
