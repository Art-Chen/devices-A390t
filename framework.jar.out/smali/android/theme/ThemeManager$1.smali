.class Landroid/theme/ThemeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/theme/ThemeManager;-><init>(Landroid/content/Context;Landroid/theme/IThemeManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/theme/ThemeManager;


# direct methods
.method constructor <init>(Landroid/theme/ThemeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Landroid/theme/ThemeManager$1;->this$0:Landroid/theme/ThemeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const-string v1, "android.intent.action.theme_package_changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    iget-object v1, p0, Landroid/theme/ThemeManager$1;->this$0:Landroid/theme/ThemeManager;

    #getter for: Landroid/theme/ThemeManager;->mThemePackageChangedListener:Landroid/theme/ThemeManager$OnThemePackageChangedListener;
    invoke-static {v1}, Landroid/theme/ThemeManager;->access$000(Landroid/theme/ThemeManager;)Landroid/theme/ThemeManager$OnThemePackageChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Landroid/theme/ThemeManager$1;->this$0:Landroid/theme/ThemeManager;

    #getter for: Landroid/theme/ThemeManager;->mThemePackageChangedListener:Landroid/theme/ThemeManager$OnThemePackageChangedListener;
    invoke-static {v1}, Landroid/theme/ThemeManager;->access$000(Landroid/theme/ThemeManager;)Landroid/theme/ThemeManager$OnThemePackageChangedListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/theme/ThemeManager$OnThemePackageChangedListener;->onThemePackageChanged()V

    goto :goto_0

    .line 50
    :cond_2
    const-string v1, "android.intent.action.theme_changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    iget-object v1, p0, Landroid/theme/ThemeManager$1;->this$0:Landroid/theme/ThemeManager;

    #getter for: Landroid/theme/ThemeManager;->mThemeChangedListener:Landroid/theme/ThemeManager$OnThemeChangedListener;
    invoke-static {v1}, Landroid/theme/ThemeManager;->access$100(Landroid/theme/ThemeManager;)Landroid/theme/ThemeManager$OnThemeChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Landroid/theme/ThemeManager$1;->this$0:Landroid/theme/ThemeManager;

    #getter for: Landroid/theme/ThemeManager;->mThemeChangedListener:Landroid/theme/ThemeManager$OnThemeChangedListener;
    invoke-static {v1}, Landroid/theme/ThemeManager;->access$100(Landroid/theme/ThemeManager;)Landroid/theme/ThemeManager$OnThemeChangedListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/theme/ThemeManager$OnThemeChangedListener;->onThemeChanged()V

    goto :goto_0

    .line 55
    :cond_3
    const-string/jumbo v1, "sunway"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThemeManager: unknown action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
