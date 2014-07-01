.class public Landroid/theme/ThemeManagerService;
.super Landroid/theme/IThemeManager$Stub;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/theme/ThemeManagerService$ThemeLoader;
    }
.end annotation


# static fields
.field private static final AUTO_APPLY_ALL_THEME:Z = true


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mThemeLoader:Landroid/theme/ThemeManagerService$ThemeLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/theme/IThemeManager$Stub;-><init>()V

    .line 51
    const-string/jumbo v2, "sunway"

    const-string v3, "ThemeManagerService: start"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Landroid/theme/ThemeManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Landroid/theme/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 55
    iput-object p1, p0, Landroid/theme/ThemeManagerService;->mContext:Landroid/content/Context;

    .line 57
    new-instance v2, Landroid/theme/ThemeManagerService$ThemeLoader;

    invoke-direct {v2, p0}, Landroid/theme/ThemeManagerService$ThemeLoader;-><init>(Landroid/theme/ThemeManagerService;)V

    iput-object v2, p0, Landroid/theme/ThemeManagerService;->mThemeLoader:Landroid/theme/ThemeManagerService$ThemeLoader;

    .line 59
    new-instance v2, Landroid/theme/ThemeManagerService$1;

    invoke-direct {v2, p0}, Landroid/theme/ThemeManagerService$1;-><init>(Landroid/theme/ThemeManagerService;)V

    iput-object v2, p0, Landroid/theme/ThemeManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 93
    iget-object v2, p0, Landroid/theme/ThemeManagerService;->mThemeLoader:Landroid/theme/ThemeManagerService$ThemeLoader;

    invoke-virtual {v2}, Landroid/theme/ThemeManagerService$ThemeLoader;->getThemes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/theme/ThemeInfo;

    .line 94
    .local v1, theme:Landroid/theme/ThemeInfo;
    invoke-virtual {p0, v1}, Landroid/theme/ThemeManagerService;->setTheme(Landroid/theme/ThemeInfo;)Z

    goto :goto_0

    .line 98
    .end local v1           #theme:Landroid/theme/ThemeInfo;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/theme/ThemeManagerService;Ljava/lang/String;)Landroid/theme/ThemeInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/theme/ThemeManagerService;->getThemeInfo(Ljava/lang/String;)Landroid/theme/ThemeInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/theme/ThemeManagerService;Landroid/theme/ThemeInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/theme/ThemeManagerService;->addTheme(Landroid/theme/ThemeInfo;)V

    return-void
.end method

.method static synthetic access$200(Landroid/theme/ThemeManagerService;Landroid/theme/ThemeInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/theme/ThemeManagerService;->removeTheme(Landroid/theme/ThemeInfo;)V

    return-void
.end method

.method static synthetic access$300(Landroid/theme/ThemeManagerService;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/theme/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private addTheme(Landroid/theme/ThemeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/theme/ThemeManagerService;->mThemeLoader:Landroid/theme/ThemeManagerService$ThemeLoader;

    invoke-virtual {v0, p1}, Landroid/theme/ThemeManagerService$ThemeLoader;->addTheme(Landroid/theme/ThemeInfo;)V

    .line 103
    return-void
.end method

.method private getThemeInfo(Ljava/lang/String;)Landroid/theme/ThemeInfo;
    .locals 13
    .parameter "packageName"

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x0

    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, aInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v10, p0, Landroid/theme/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v11, 0x2080

    invoke-virtual {v10, p1, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 124
    .local v1, bundle:Landroid/os/Bundle;
    if-nez v1, :cond_0

    move-object v3, v9

    .line 166
    .end local v1           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v3

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v3, v9

    .line 120
    goto :goto_0

    .line 128
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #bundle:Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v10, "target_package"

    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, targetPackageName:Ljava/lang/String;
    const-string v10, "is_theme_package"

    invoke-virtual {v1, v10, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 131
    .local v4, isThemePackage:Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    if-nez v6, :cond_2

    :cond_1
    move-object v3, v9

    .line 132
    goto :goto_0

    .line 135
    :cond_2
    new-instance v3, Landroid/theme/ThemeInfo;

    invoke-direct {v3, p1, v6}, Landroid/theme/ThemeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .local v3, info:Landroid/theme/ThemeInfo;
    const-string/jumbo v10, "theme_name"

    invoke-virtual {v1, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 139
    .local v7, themeNameResId:I
    const-string/jumbo v10, "theme_preview"

    invoke-virtual {v1, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 141
    .local v8, themePreviewResId:I
    if-eqz v7, :cond_3

    .line 142
    invoke-virtual {v3, v7}, Landroid/theme/ThemeInfo;->setThemeName(I)V

    .line 145
    :cond_3
    if-eqz v8, :cond_4

    .line 146
    invoke-virtual {v3, v8}, Landroid/theme/ThemeInfo;->setThemePreview(I)V

    .line 150
    :cond_4
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/theme/ThemeInfo;->setResDir(Ljava/lang/String;)V

    .line 153
    const-string v10, "android"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 154
    const-string v9, "/system/framework/framework-res.apk"

    invoke-virtual {v3, v9}, Landroid/theme/ThemeInfo;->setTargetResDir(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_5
    :try_start_1
    iget-object v10, p0, Landroid/theme/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v11, 0x2080

    invoke-virtual {v10, v6, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 160
    .local v5, targetAInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/theme/ThemeInfo;->setTargetResDir(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 161
    .end local v5           #targetAInfo:Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v2

    .line 162
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v3, v9

    .line 163
    goto :goto_0
.end method

.method private onThemeChanged()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Landroid/theme/ThemeManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.theme_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 226
    return-void
.end method

.method private onThemePackageChanged()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Landroid/theme/ThemeManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.theme_package_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 222
    return-void
.end method

.method private removeTheme(Landroid/theme/ThemeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 106
    iget-object v0, p0, Landroid/theme/ThemeManagerService;->mThemeLoader:Landroid/theme/ThemeManagerService$ThemeLoader;

    invoke-virtual {v0, p1}, Landroid/theme/ThemeManagerService$ThemeLoader;->removeTheme(Landroid/theme/ThemeInfo;)V

    .line 109
    return-void
.end method

.method private setThemeInternal(Landroid/theme/ThemeInfo;Z)Z
    .locals 5
    .parameter "theme"
    .parameter "isSet"

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    const/4 v2, 0x0

    .line 206
    :goto_0
    return v2

    .line 193
    :cond_0
    invoke-static {}, Landroid/theme/ThemeManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 195
    .local v0, identityToken:J
    :try_start_0
    const-string/jumbo v2, "sunway"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTheme:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    if-eqz p2, :cond_1

    .line 198
    iget-object v2, p0, Landroid/theme/ThemeManagerService;->mThemeLoader:Landroid/theme/ThemeManagerService$ThemeLoader;

    invoke-virtual {v2, p1}, Landroid/theme/ThemeManagerService$ThemeLoader;->setTheme(Landroid/theme/ThemeInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :goto_1
    const/4 v2, 0x1

    .line 206
    invoke-static {v0, v1}, Landroid/theme/ThemeManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 200
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/theme/ThemeManagerService;->mThemeLoader:Landroid/theme/ThemeManagerService$ThemeLoader;

    invoke-virtual {v2, p1}, Landroid/theme/ThemeManagerService$ThemeLoader;->unsetTheme(Landroid/theme/ThemeInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 206
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/theme/ThemeManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 229
    const-string v2, "Themes:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Landroid/theme/ThemeManagerService;->mThemeLoader:Landroid/theme/ThemeManagerService$ThemeLoader;

    invoke-virtual {v2}, Landroid/theme/ThemeManagerService$ThemeLoader;->getThemes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/theme/ThemeInfo;

    .line 231
    .local v1, info:Landroid/theme/ThemeInfo;
    invoke-virtual {v1}, Landroid/theme/ThemeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    .end local v1           #info:Landroid/theme/ThemeInfo;
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 234
    return-void
.end method

.method public getAppliedTheme(Ljava/lang/String;)Landroid/theme/ThemeInfo;
    .locals 5
    .parameter "resDir"

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/theme/ThemeManagerService;->getThemes()Ljava/util/List;

    move-result-object v2

    .line 172
    .local v2, themes:Ljava/util/List;,"Ljava/util/List<Landroid/theme/ThemeInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/theme/ThemeInfo;

    .line 173
    .local v1, info:Landroid/theme/ThemeInfo;
    invoke-virtual {v1}, Landroid/theme/ThemeInfo;->getTargetResDir()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 174
    const-string/jumbo v3, "sunway"

    const-string v4, "getAppliedTheme: info resdir null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_1
    iget-boolean v3, v1, Landroid/theme/ThemeInfo;->mApplied:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/theme/ThemeInfo;->getTargetResDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    .end local v1           #info:Landroid/theme/ThemeInfo;
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getThemes()Ljava/util/List;
    .locals 1
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
    .line 186
    iget-object v0, p0, Landroid/theme/ThemeManagerService;->mThemeLoader:Landroid/theme/ThemeManagerService$ThemeLoader;

    invoke-virtual {v0}, Landroid/theme/ThemeManagerService$ThemeLoader;->getThemes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setTheme(Landroid/theme/ThemeInfo;)Z
    .locals 1
    .parameter "newTheme"

    .prologue
    .line 217
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/theme/ThemeManagerService;->setThemeInternal(Landroid/theme/ThemeInfo;Z)Z

    move-result v0

    return v0
.end method

.method public unsetTheme(Landroid/theme/ThemeInfo;)Z
    .locals 1
    .parameter "origTheme"

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/theme/ThemeManagerService;->setThemeInternal(Landroid/theme/ThemeInfo;Z)Z

    move-result v0

    return v0
.end method
