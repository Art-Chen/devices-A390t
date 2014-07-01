.class Lcom/android/server/DeviceStorageMonitorService$3;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DeviceStorageMonitorService;->createTempFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceStorageMonitorService;

.field final synthetic val$fSize:I


# direct methods
.method constructor <init>(Lcom/android/server/DeviceStorageMonitorService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    iput p2, p0, Lcom/android/server/DeviceStorageMonitorService$3;->val$fSize:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 218
    const/high16 v8, 0x8

    new-array v0, v8, [B

    .line 219
    .local v0, bytes:[B
    iget v8, p0, Lcom/android/server/DeviceStorageMonitorService$3;->val$fSize:I

    array-length v9, v0

    div-int v1, v8, v9

    .line 220
    .local v1, count:I
    const/4 v3, 0x0

    .line 222
    .local v3, file:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 223
    .local v6, time:J
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/data/.space.temp"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v3           #file:Ljava/io/FileOutputStream;
    .local v4, file:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 225
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 224
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 228
    :cond_0
    const-string v8, "DeviceStorageMonitorService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "end time "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " m"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v8, "DeviceStorageMonitorService"

    const-string v9, "Temporary files created !"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 236
    .end local v4           #file:Ljava/io/FileOutputStream;
    .end local v5           #i:I
    .end local v6           #time:J
    .restart local v3       #file:Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v3, :cond_1

    .line 237
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 243
    :cond_1
    :goto_2
    const/4 v0, 0x0

    .line 244
    return-void

    .line 230
    :catch_0
    move-exception v2

    .line 231
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    const-string v8, "DeviceStorageMonitorService"

    const-string v9, "create temp file exception!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 238
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 239
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v8, "DeviceStorageMonitorService"

    const-string v9, "file close exception!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 230
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #file:Ljava/io/FileOutputStream;
    .restart local v4       #file:Ljava/io/FileOutputStream;
    .restart local v5       #i:I
    .restart local v6       #time:J
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/FileOutputStream;
    goto :goto_3
.end method
