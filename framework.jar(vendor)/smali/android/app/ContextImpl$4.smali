.class final Landroid/app/ContextImpl$4;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 274
    const-string/jumbo v2, "theme"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 275
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/theme/IThemeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/theme/IThemeManager;

    move-result-object v1

    .line 276
    .local v1, service:Landroid/theme/IThemeManager;
    new-instance v2, Landroid/theme/ThemeManager;

    invoke-direct {v2, p1, v1}, Landroid/theme/ThemeManager;-><init>(Landroid/content/Context;Landroid/theme/IThemeManager;)V

    return-object v2
.end method
