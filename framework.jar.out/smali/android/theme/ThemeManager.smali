.class public Landroid/theme/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/theme/ThemeManager$OnThemeChangedListener;,
        Landroid/theme/ThemeManager$OnThemePackageChangedListener;
    }
.end annotation


# static fields
.field public static final INTENT_ACTION_THEME_CHANGED:Ljava/lang/String; = "android.intent.action.theme_changed"

.field public static final INTENT_ACTION_THEME_PACKAGE_CHANGED:Ljava/lang/String; = "android.intent.action.theme_package_changed"

.field public static final KEY_IS_THEME_PACKAGE:Ljava/lang/String; = "is_theme_package"

.field public static final KEY_TARGET_PACKAGE_NAME:Ljava/lang/String; = "target_package"

.field public static final KEY_THEME_NAME:Ljava/lang/String; = "theme_name"

.field public static final KEY_THEME_PREVIEW:Ljava/lang/String; = "theme_preview"

.field private static sFilter:Landroid/content/IntentFilter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/theme/IThemeManager;

.field private mThemeChangedListener:Landroid/theme/ThemeManager$OnThemeChangedListener;

.field private mThemePackageChangedListener:Landroid/theme/ThemeManager$OnThemePackageChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Landroid/theme/ThemeManager;->sFilter:Landroid/content/IntentFilter;

    .line 32
    sget-object v0, Landroid/theme/ThemeManager;->sFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.theme_package_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    sget-object v0, Landroid/theme/ThemeManager;->sFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.theme_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/theme/IThemeManager;)V
    .locals 3
    .parameter "context"
    .parameter "service"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/theme/ThemeManager;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Landroid/theme/ThemeManager;->mService:Landroid/theme/IThemeManager;

    .line 39
    iget-object v0, p0, Landroid/theme/ThemeManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/theme/ThemeManager$1;

    invoke-direct {v1, p0}, Landroid/theme/ThemeManager$1;-><init>(Landroid/theme/ThemeManager;)V

    sget-object v2, Landroid/theme/ThemeManager;->sFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method static synthetic access$000(Landroid/theme/ThemeManager;)Landroid/theme/ThemeManager$OnThemePackageChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Landroid/theme/ThemeManager;->mThemePackageChangedListener:Landroid/theme/ThemeManager$OnThemePackageChangedListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/theme/ThemeManager;)Landroid/theme/ThemeManager$OnThemeChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Landroid/theme/ThemeManager;->mThemeChangedListener:Landroid/theme/ThemeManager$OnThemeChangedListener;

    return-object v0
.end method


# virtual methods
.method public getAppliedTheme(Ljava/lang/String;)Landroid/theme/ThemeInfo;
    .locals 2
    .parameter "resDir"

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Landroid/theme/ThemeManager;->mService:Landroid/theme/IThemeManager;

    invoke-interface {v1, p1}, Landroid/theme/IThemeManager;->getAppliedTheme(Ljava/lang/String;)Landroid/theme/ThemeInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getThemes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/theme/ThemeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Landroid/theme/ThemeManager;->mService:Landroid/theme/IThemeManager;

    invoke-interface {v1}, Landroid/theme/IThemeManager;->getThemes()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerOnThemeChangedListener(Landroid/theme/ThemeManager$OnThemeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 95
    iput-object p1, p0, Landroid/theme/ThemeManager;->mThemeChangedListener:Landroid/theme/ThemeManager$OnThemeChangedListener;

    .line 96
    return-void
.end method

.method public registerOnThemePackageChangedListener(Landroid/theme/ThemeManager$OnThemePackageChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 99
    iput-object p1, p0, Landroid/theme/ThemeManager;->mThemePackageChangedListener:Landroid/theme/ThemeManager$OnThemePackageChangedListener;

    .line 100
    return-void
.end method

.method public setTheme(Landroid/theme/ThemeInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Landroid/theme/ThemeManager;->mService:Landroid/theme/IThemeManager;

    invoke-interface {v1, p1}, Landroid/theme/IThemeManager;->setTheme(Landroid/theme/ThemeInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unsetTheme(Landroid/theme/ThemeInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    .line 88
    :try_start_0
    iget-object v1, p0, Landroid/theme/ThemeManager;->mService:Landroid/theme/IThemeManager;

    invoke-interface {v1, p1}, Landroid/theme/IThemeManager;->unsetTheme(Landroid/theme/ThemeInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
