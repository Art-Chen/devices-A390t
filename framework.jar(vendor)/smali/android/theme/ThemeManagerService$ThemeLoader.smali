.class Landroid/theme/ThemeManagerService$ThemeLoader;
.super Ljava/lang/Object;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/theme/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThemeLoader"
.end annotation


# instance fields
.field private mAppliedThemes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/theme/ThemeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mThemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/theme/ThemeInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/theme/ThemeManagerService;


# direct methods
.method constructor <init>(Landroid/theme/ThemeManagerService;)V
    .locals 10
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Landroid/theme/ThemeManagerService$ThemeLoader;->this$0:Landroid/theme/ThemeManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 237
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Landroid/theme/ThemeManagerService$ThemeLoader;->mAppliedThemes:Ljava/util/HashMap;

    .line 241
    invoke-virtual {p0}, Landroid/theme/ThemeManagerService$ThemeLoader;->restore()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Landroid/theme/ThemeManagerService$ThemeLoader;->mThemes:Ljava/util/List;

    .line 243
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v5, themesFromPM:Ljava/util/List;,"Ljava/util/List<Landroid/theme/ThemeInfo;>;"
    #getter for: Landroid/theme/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Landroid/theme/ThemeManagerService;->access$300(Landroid/theme/ThemeManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 245
    .local v2, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 246
    .local v3, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 247
    .local v4, pkgName:Ljava/lang/String;
    #calls: Landroid/theme/ThemeManagerService;->getThemeInfo(Ljava/lang/String;)Landroid/theme/ThemeInfo;
    invoke-static {p1, v4}, Landroid/theme/ThemeManagerService;->access$000(Landroid/theme/ThemeManagerService;Ljava/lang/String;)Landroid/theme/ThemeInfo;

    move-result-object v1

    .line 248
    .local v1, info:Landroid/theme/ThemeInfo;
    if-eqz v1, :cond_0

    .line 249
    const-string/jumbo v7, "sunway"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ThemeManagerService:got theme info:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/theme/ThemeInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    .end local v1           #info:Landroid/theme/ThemeInfo;
    .end local v3           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v6, tmp:Ljava/util/List;,"Ljava/util/List<Landroid/theme/ThemeInfo;>;"
    iget-object v7, p0, Landroid/theme/ThemeManagerService$ThemeLoader;->mThemes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/theme/ThemeInfo;

    .line 257
    .restart local v1       #info:Landroid/theme/ThemeInfo;
    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 258
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 262
    .end local v1           #info:Landroid/theme/ThemeInfo;
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/theme/ThemeInfo;

    .line 263
    .restart local v1       #info:Landroid/theme/ThemeInfo;
    iget-object v7, p0, Landroid/theme/ThemeManagerService$ThemeLoader;->mThemes:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 264
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 267
    .end local v1           #info:Landroid/theme/ThemeInfo;
    :cond_5
    iput-object v6, p0, Landroid/theme/ThemeManagerService$ThemeLoader;->mThemes:Ljava/util/List;

    .line 270
    iget-object v7, p0, Landroid/theme/ThemeManagerService$ThemeLoader;->mThemes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/theme/ThemeInfo;

    .line 271
    .restart local v1       #info:Landroid/theme/ThemeInfo;
    iget-boolean v7, v1, Landroid/theme/ThemeInfo;->mApplied:Z

    if-eqz v7, :cond_6

    .line 272
    iget-object v7, p0, Landroid/theme/ThemeManagerService$ThemeLoader;->mAppliedThemes:Ljava/util/HashMap;

    iget-object v8, v1, Landroid/theme/ThemeInfo;->mTargetPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 275
    .end local v1           #info:Landroid/theme/ThemeInfo;
    :cond_7
    return-void
.end method

.method private check(Landroid/theme/ThemeInfo;)Landroid/theme/ThemeInfo;
    .locals 2
    .parameter "info"

    .prologue
    .line 287
    iget-object v1, p0, Landroid/theme/ThemeManagerService$ThemeLoader;->mThemes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 288
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 289
    const/4 v1, 0x0

    .line 291
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/theme/ThemeManagerService$ThemeLoader;->mThemes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/theme/ThemeInfo;

    goto :goto_0
.end method


# virtual methods
.method addTheme(Landroid/theme/ThemeInfo;)V
    .locals 1
    .parameter "theme"

    .prologue
    .line 295
    iget-object v0, p0, Landroid/theme/ThemeManagerService$ThemeLoader;->mThemes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {p0}, Landroid/theme/ThemeManagerService$ThemeLoader;->save()V

    .line 297
    return-void
.end method

.method getThemes()Ljava/util/List;
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
    .line 329
    iget-object v0, p0, Landroid/theme/ThemeManagerService$ThemeLoader;->mThemes:Ljava/util/List;

    return-object v0
.end method

.method getToken()Ljava/lang/String;
    .locals 6

    .prologue
    .line 278
    const/4 v3, 0x1

    .line 279
    .local v3, ret:I
    iget-object v4, p0, Landroid/theme/ThemeManagerService$ThemeLoader;->mAppliedThemes:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/theme/ThemeInfo;

    .line 280
    .local v1, info:Landroid/theme/ThemeInfo;
    iget-object v2, v1, Landroid/theme/ThemeInfo;->mPackageName:Ljava/lang/String;

    .line 281
    .local v2, pkg:Ljava/lang/String;
    mul-int/lit8 v4, v3, 0x1f

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v3, v4, v5

    .line 282
    goto :goto_0

    .line 283
    .end local v1           #info:Landroid/theme/ThemeInfo;
    .end local v2           #pkg:Ljava/lang/String;
    :cond_0
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method removeTheme(Landroid/theme/ThemeInfo;)V
    .locals 1
    .parameter "theme"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/theme/ThemeManagerService$ThemeLoader;->mThemes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {p0}, Landroid/theme/ThemeManagerService$ThemeLoader;->save()V

    .line 303
    return-void
.end method

.method restore()Ljava/util/List;
    .locals 10
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
    .line 333
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v5, ret:Ljava/util/List;,"Ljava/util/List<Landroid/theme/ThemeInfo;>;"
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    const-string/jumbo v9, "system"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v8, "themes"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 336
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v6, v5

    .line 351
    .end local v5           #ret:Ljava/util/List;,"Ljava/util/List<Landroid/theme/ThemeInfo;>;"
    .local v6, ret:Ljava/lang/Object;,"Ljava/util/List<Landroid/theme/ThemeInfo;>;"
    :goto_0
    return-object v6

    .line 339
    .end local v6           #ret:Ljava/lang/Object;,"Ljava/util/List<Landroid/theme/ThemeInfo;>;"
    .restart local v5       #ret:Ljava/util/List;,"Ljava/util/List<Landroid/theme/ThemeInfo;>;"
    :cond_0
    const/4 v3, 0x0

    .line 341
    .local v3, in:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v7}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .local v4, in:Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/ArrayList;

    move-object v5, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 348
    if-eqz v4, :cond_1

    .line 350
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    move-object v6, v5

    .line 351
    .restart local v6       #ret:Ljava/lang/Object;,"Ljava/util/List<Landroid/theme/ThemeInfo;>;"
    goto :goto_0

    .line 344
    .end local v4           #in:Ljava/io/ObjectInputStream;
    .end local v6           #ret:Ljava/lang/Object;,"Ljava/util/List<Landroid/theme/ThemeInfo;>;"
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v1

    .line 345
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 348
    if-eqz v3, :cond_2

    .line 350
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_3
    move-object v6, v5

    .line 351
    .restart local v6       #ret:Ljava/lang/Object;,"Ljava/util/List<Landroid/theme/ThemeInfo;>;"
    goto :goto_0

    .line 348
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #ret:Ljava/lang/Object;,"Ljava/util/List<Landroid/theme/ThemeInfo;>;"
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v3, :cond_3

    .line 350
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 351
    :cond_3
    :goto_5
    throw v7

    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v7

    goto :goto_1

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #e:Ljava/lang/Exception;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v7

    goto :goto_3

    .end local v1           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_5

    .line 348
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 344
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    goto :goto_2
.end method

.method save()V
    .locals 7

    .prologue
    .line 357
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "system"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v5, "themes"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 358
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 360
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    const/4 v2, 0x0

    .line 367
    .local v2, out:Ljava/io/ObjectOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 368
    .end local v2           #out:Ljava/io/ObjectOutputStream;
    .local v3, out:Ljava/io/ObjectOutputStream;
    :try_start_2
    iget-object v4, p0, Landroid/theme/ThemeManagerService$ThemeLoader;->mThemes:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 372
    if-eqz v3, :cond_3

    .line 374
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v3

    .line 378
    .end local v3           #out:Ljava/io/ObjectOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 375
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #out:Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/ObjectOutputStream;
    .restart local v2       #out:Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 369
    :catch_2
    move-exception v0

    .line 370
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 372
    if-eqz v2, :cond_1

    .line 374
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 375
    :catch_3
    move-exception v4

    goto :goto_0

    .line 372
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_2

    .line 374
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 375
    :cond_2
    :goto_3
    throw v4

    :catch_4
    move-exception v5

    goto :goto_3

    .line 372
    .end local v2           #out:Ljava/io/ObjectOutputStream;
    .restart local v3       #out:Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/ObjectOutputStream;
    .restart local v2       #out:Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 369
    .end local v2           #out:Ljava/io/ObjectOutputStream;
    .restart local v3       #out:Ljava/io/ObjectOutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/ObjectOutputStream;
    .restart local v2       #out:Ljava/io/ObjectOutputStream;
    goto :goto_1

    .end local v2           #out:Ljava/io/ObjectOutputStream;
    .restart local v3       #out:Ljava/io/ObjectOutputStream;
    :cond_3
    move-object v2, v3

    .end local v3           #out:Ljava/io/ObjectOutputStream;
    .restart local v2       #out:Ljava/io/ObjectOutputStream;
    goto :goto_0
.end method

.method setTheme(Landroid/theme/ThemeInfo;)V
    .locals 2
    .parameter "newTheme"

    .prologue
    .line 306
    invoke-direct {p0, p1}, Landroid/theme/ThemeManagerService$ThemeLoader;->check(Landroid/theme/ThemeInfo;)Landroid/theme/ThemeInfo;

    move-result-object p1

    .line 307
    if-nez p1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/theme/ThemeInfo;->mApplied:Z

    .line 311
    iget-object v0, p0, Landroid/theme/ThemeManagerService$ThemeLoader;->mAppliedThemes:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/theme/ThemeInfo;->mTargetPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-virtual {p0}, Landroid/theme/ThemeManagerService$ThemeLoader;->save()V

    goto :goto_0
.end method

.method unsetTheme(Landroid/theme/ThemeInfo;)V
    .locals 3
    .parameter "newTheme"

    .prologue
    .line 316
    const-string/jumbo v0, "sunway"

    const-string/jumbo v1, "unsetTheme 1:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-direct {p0, p1}, Landroid/theme/ThemeManagerService$ThemeLoader;->check(Landroid/theme/ThemeInfo;)Landroid/theme/ThemeInfo;

    move-result-object p1

    .line 318
    const-string/jumbo v0, "sunway"

    const-string/jumbo v1, "unsetTheme 2:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    if-nez p1, :cond_0

    .line 326
    :goto_0
    return-void

    .line 322
    :cond_0
    const-string/jumbo v0, "sunway"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsetTheme 3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/theme/ThemeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/theme/ThemeInfo;->mApplied:Z

    .line 324
    iget-object v0, p0, Landroid/theme/ThemeManagerService$ThemeLoader;->mAppliedThemes:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/theme/ThemeInfo;->mTargetPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-virtual {p0}, Landroid/theme/ThemeManagerService$ThemeLoader;->save()V

    goto :goto_0
.end method
