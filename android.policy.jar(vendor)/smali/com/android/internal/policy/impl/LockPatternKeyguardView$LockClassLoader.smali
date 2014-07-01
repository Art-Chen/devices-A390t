.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockClassLoader;
.super Ldalvik/system/PathClassLoader;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockClassLoader"
.end annotation


# static fields
.field private static final LOCKSCREEN_APK_PATH:Ljava/lang/String; = "/system/app/lockscreen.apk"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1011
    const-string v0, "/system/app/lockscreen.apk"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1012
    return-void
.end method
