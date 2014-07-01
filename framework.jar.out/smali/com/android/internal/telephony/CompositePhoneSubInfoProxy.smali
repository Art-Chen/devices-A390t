.class public Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;
.super Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.source "CompositePhoneSubInfoProxy.java"


# instance fields
.field private mPhoneSubInfo:[Lcom/android/internal/telephony/PhoneSubInfoProxy;


# direct methods
.method public constructor <init>([Lcom/android/internal/telephony/PhoneSubInfoProxy;)V
    .locals 1
    .parameter "phoneSubInfo"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->mPhoneSubInfo:[Lcom/android/internal/telephony/PhoneSubInfoProxy;

    .line 32
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    const-string v0, "iphonesubinfo"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 35
    :cond_0
    return-void
.end method

.method private getSimplePolicyPhoneId()I
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhoneId()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->mPhoneSubInfo:[Lcom/android/internal/telephony/PhoneSubInfoProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->mPhoneSubInfo:[Lcom/android/internal/telephony/PhoneSubInfoProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->mPhoneSubInfo:[Lcom/android/internal/telephony/PhoneSubInfoProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->mPhoneSubInfo:[Lcom/android/internal/telephony/PhoneSubInfoProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->mPhoneSubInfo:[Lcom/android/internal/telephony/PhoneSubInfoProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->mPhoneSubInfo:[Lcom/android/internal/telephony/PhoneSubInfoProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimImpi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->mPhoneSubInfo:[Lcom/android/internal/telephony/PhoneSubInfoProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimImpu()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->mPhoneSubInfo:[Lcom/android/internal/telephony/PhoneSubInfoProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->mPhoneSubInfo:[Lcom/android/internal/telephony/PhoneSubInfoProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->mPhoneSubInfo:[Lcom/android/internal/telephony/PhoneSubInfoProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->mPhoneSubInfo:[Lcom/android/internal/telephony/PhoneSubInfoProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->mPhoneSubInfo:[Lcom/android/internal/telephony/PhoneSubInfoProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->mPhoneSubInfo:[Lcom/android/internal/telephony/PhoneSubInfoProxy;

    invoke-direct {p0}, Lcom/android/internal/telephony/CompositePhoneSubInfoProxy;->getSimplePolicyPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
