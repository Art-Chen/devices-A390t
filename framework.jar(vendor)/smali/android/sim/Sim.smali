.class public Landroid/sim/Sim;
.super Ljava/lang/Object;
.source "Sim.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/sim/Sim;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColorIndex:I

.field private mIccId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPhoneId:I

.field private mSerialNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Landroid/sim/Sim$1;

    invoke-direct {v0}, Landroid/sim/Sim$1;-><init>()V

    sput-object v0, Landroid/sim/Sim;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "phoneId"
    .parameter "iccId"
    .parameter "name"
    .parameter "colorIndex"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Landroid/sim/Sim;->mPhoneId:I

    .line 45
    iput p1, p0, Landroid/sim/Sim;->mPhoneId:I

    .line 46
    iput-object p2, p0, Landroid/sim/Sim;->mIccId:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Landroid/sim/Sim;->mName:Ljava/lang/String;

    .line 48
    iput p4, p0, Landroid/sim/Sim;->mColorIndex:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Landroid/sim/Sim;->mPhoneId:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sim/Sim;->mPhoneId:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sim/Sim;->mIccId:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sim/Sim;->mName:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sim/Sim;->mColorIndex:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sim/Sim;->mSerialNum:I

    .line 59
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 80
    if-ne p1, p0, :cond_0

    .line 81
    const/4 v1, 0x1

    .line 85
    :goto_0
    return v1

    .line 82
    :cond_0
    instance-of v1, p1, Landroid/sim/Sim;

    if-nez v1, :cond_1

    .line 83
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 84
    check-cast v0, Landroid/sim/Sim;

    .line 85
    .local v0, other:Landroid/sim/Sim;
    iget-object v1, p0, Landroid/sim/Sim;->mIccId:Ljava/lang/String;

    iget-object v2, v0, Landroid/sim/Sim;->mIccId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getColor()I
    .locals 2

    .prologue
    .line 109
    sget-object v0, Landroid/sim/SimManager;->COLORS:[I

    iget v1, p0, Landroid/sim/Sim;->mColorIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getColorIndex()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Landroid/sim/Sim;->mColorIndex:I

    return v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/sim/Sim;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/sim/Sim;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Landroid/sim/Sim;->mPhoneId:I

    return v0
.end method

.method public getSerialNum()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Landroid/sim/Sim;->mSerialNum:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 89
    const/16 v0, 0x11

    .line 90
    .local v0, result:I
    iget-object v1, p0, Landroid/sim/Sim;->mIccId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 91
    return v0
.end method

.method public setColorIndex(I)V
    .locals 0
    .parameter "colorIndex"

    .prologue
    .line 133
    iput p1, p0, Landroid/sim/Sim;->mColorIndex:I

    .line 134
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 129
    iput-object p1, p0, Landroid/sim/Sim;->mName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setPhoneId(I)V
    .locals 0
    .parameter "phoneId"

    .prologue
    .line 137
    iput p1, p0, Landroid/sim/Sim;->mPhoneId:I

    .line 138
    return-void
.end method

.method public setSerialNum(I)V
    .locals 0
    .parameter "serialNum"

    .prologue
    .line 141
    iput p1, p0, Landroid/sim/Sim;->mSerialNum:I

    .line 142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM {name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/sim/Sim;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", colorIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sim/Sim;->mColorIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serialNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sim/Sim;->mSerialNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iccId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/sim/Sim;->mIccId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sim/Sim;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 62
    iget v0, p0, Landroid/sim/Sim;->mPhoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Landroid/sim/Sim;->mIccId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Landroid/sim/Sim;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget v0, p0, Landroid/sim/Sim;->mColorIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Landroid/sim/Sim;->mSerialNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    return-void
.end method
