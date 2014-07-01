.class Landroid/theme/ThemeManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/theme/ThemeManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/theme/ThemeManagerService;


# direct methods
.method constructor <init>(Landroid/theme/ThemeManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Landroid/theme/ThemeManagerService$1;->this$0:Landroid/theme/ThemeManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 72
    const-string/jumbo v1, "sunway"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThemeManagerService:onPackageAdded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Landroid/theme/ThemeManagerService$1;->this$0:Landroid/theme/ThemeManagerService;

    #calls: Landroid/theme/ThemeManagerService;->getThemeInfo(Ljava/lang/String;)Landroid/theme/ThemeInfo;
    invoke-static {v1, p1}, Landroid/theme/ThemeManagerService;->access$000(Landroid/theme/ThemeManagerService;Ljava/lang/String;)Landroid/theme/ThemeInfo;

    move-result-object v0

    .line 74
    .local v0, info:Landroid/theme/ThemeInfo;
    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Landroid/theme/ThemeManagerService$1;->this$0:Landroid/theme/ThemeManagerService;

    #calls: Landroid/theme/ThemeManagerService;->addTheme(Landroid/theme/ThemeInfo;)V
    invoke-static {v1, v0}, Landroid/theme/ThemeManagerService;->access$100(Landroid/theme/ThemeManagerService;Landroid/theme/ThemeInfo;)V

    goto :goto_0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 82
    const-string/jumbo v1, "sunway"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThemeManagerService:onPackageRemoved:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v1, p0, Landroid/theme/ThemeManagerService$1;->this$0:Landroid/theme/ThemeManagerService;

    #calls: Landroid/theme/ThemeManagerService;->getThemeInfo(Ljava/lang/String;)Landroid/theme/ThemeInfo;
    invoke-static {v1, p1}, Landroid/theme/ThemeManagerService;->access$000(Landroid/theme/ThemeManagerService;Ljava/lang/String;)Landroid/theme/ThemeInfo;

    move-result-object v0

    .line 84
    .local v0, info:Landroid/theme/ThemeInfo;
    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Landroid/theme/ThemeManagerService$1;->this$0:Landroid/theme/ThemeManagerService;

    #calls: Landroid/theme/ThemeManagerService;->removeTheme(Landroid/theme/ThemeInfo;)V
    invoke-static {v1, v0}, Landroid/theme/ThemeManagerService;->access$200(Landroid/theme/ThemeManagerService;Landroid/theme/ThemeInfo;)V

    goto :goto_0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Landroid/theme/ThemeManagerService$1;->onPackageAdded(Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/theme/ThemeManagerService$1;->onPackageRemoved(Ljava/lang/String;I)V

    .line 63
    return-void
.end method
