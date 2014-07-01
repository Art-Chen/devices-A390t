.class public Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;
.super Ljava/lang/Object;
.source "LockPatternKeyguardViewProperties.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardViewProperties;


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 43
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 44
    return-void
.end method

.method private isSimPinSecure()Z
    .locals 5

    .prologue
    .line 59
    const/4 v2, 0x0

    .line 61
    .local v2, isSecure:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 62
    .local v0, cnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 63
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    .line 64
    .local v3, simState:Lcom/android/internal/telephony/IccCard$State;
    if-nez v2, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 62
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 69
    .end local v3           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_2
    return v2
.end method


# virtual methods
.method public createKeyguardView(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardWindowController;)Lcom/android/internal/policy/impl/KeyguardViewBase;
    .locals 2
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "controller"

    .prologue
    .line 49
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
