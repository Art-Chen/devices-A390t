.class Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static BACKUP_APP_ADJ:I = 0x0

.field static final CONTENT_APP_IDLE_OFFSET:J = 0x3a98L

.field static final EMPTY_APP_IDLE_OFFSET:J = 0x1d4c0L

.field static FOREGROUND_APP_ADJ:I = 0x0

.field static HEAVY_WEIGHT_APP_ADJ:I = 0x0

.field static HIDDEN_APP_MAX_ADJ:I = 0x0

.field static HIDDEN_APP_MIN_ADJ:I = 0x0

.field static HOME_APP_ADJ:I = 0x0

.field static final MAX_HIDDEN_APPS:I = 0xf

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final MIN_HIDDEN_APPS:I = 0x2

.field static final PAGE_SIZE:I = 0x1000

.field static PERCEPTIBLE_APP_ADJ:I = 0x0

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static PREVIOUS_APP_ADJ:I = 0x0

.field static SERVICE_ADJ:I = 0x0

.field static SERVICE_B_ADJ:I = 0x0

.field static final SYSTEM_ADJ:I = -0x10

.field static VISIBLE_APP_ADJ:I


# instance fields
.field private mHaveDisplaySize:Z

.field private mOomAdj:[I

.field private mOomMinFree:[J

.field private final mOomMinFreeHigh:[J

.field private final mOomMinFreeLow:[J

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0xf

    sput v0, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MAX_ADJ:I

    .line 41
    const/16 v0, 0x9

    sput v0, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    .line 45
    const/16 v0, 0x8

    sput v0, Lcom/android/server/am/ProcessList;->SERVICE_B_ADJ:I

    .line 53
    const/4 v0, 0x7

    sput v0, Lcom/android/server/am/ProcessList;->PREVIOUS_APP_ADJ:I

    .line 58
    const/4 v0, 0x6

    sput v0, Lcom/android/server/am/ProcessList;->HOME_APP_ADJ:I

    .line 62
    const/4 v0, 0x5

    sput v0, Lcom/android/server/am/ProcessList;->SERVICE_ADJ:I

    .line 66
    const/4 v0, 0x4

    sput v0, Lcom/android/server/am/ProcessList;->BACKUP_APP_ADJ:I

    .line 71
    const/4 v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->HEAVY_WEIGHT_APP_ADJ:I

    .line 76
    const/4 v0, 0x2

    sput v0, Lcom/android/server/am/ProcessList;->PERCEPTIBLE_APP_ADJ:I

    .line 80
    const/4 v0, 0x1

    sput v0, Lcom/android/server/am/ProcessList;->VISIBLE_APP_ADJ:I

    .line 84
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/ProcessList;->FOREGROUND_APP_ADJ:I

    return-void
.end method

.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 139
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-array v1, v4, [I

    sget v2, Lcom/android/server/am/ProcessList;->FOREGROUND_APP_ADJ:I

    aput v2, v1, v5

    const/4 v2, 0x1

    sget v3, Lcom/android/server/am/ProcessList;->VISIBLE_APP_ADJ:I

    aput v3, v1, v2

    const/4 v2, 0x2

    sget v3, Lcom/android/server/am/ProcessList;->PERCEPTIBLE_APP_ADJ:I

    aput v3, v1, v2

    const/4 v2, 0x3

    sget v3, Lcom/android/server/am/ProcessList;->BACKUP_APP_ADJ:I

    aput v3, v1, v2

    const/4 v2, 0x4

    sget v3, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    aput v3, v1, v2

    const/4 v2, 0x5

    sget v3, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MAX_ADJ:I

    aput v3, v1, v2

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 122
    new-array v1, v4, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    .line 128
    new-array v1, v4, [J

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    .line 133
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    .line 140
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 141
    .local v0, minfo:Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 142
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 143
    invoke-direct {p0, v5, v5, v5}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 144
    return-void

    .line 122
    nop

    :array_0
    .array-data 0x8
        0x0t 0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x30t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x60t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x70t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 128
    :array_1
    .array-data 0x8
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xa0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xc0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xe0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private updateOomLevels(IIZ)V
    .locals 21
    .parameter "displayWidth"
    .parameter "displayHeight"
    .parameter "write"

    .prologue
    .line 160
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x12c

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x43c8

    div-float v16, v17, v18

    .line 163
    .local v16, scaleMem:F
    const v13, 0x25800

    .line 164
    .local v13, minSize:I
    const v11, 0xfa000

    .line 165
    .local v11, maxSize:I
    mul-int v17, p1, p2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v13

    move/from16 v18, v0

    sub-float v17, v17, v18

    const v18, 0xd4800

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v15, v17, v18

    .line 168
    .local v15, scaleDisp:F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v3, adjString:Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v12, memString:Ljava/lang/StringBuilder;
    cmpl-float v17, v16, v15

    if-lez v17, :cond_1

    move/from16 v14, v16

    .line 173
    .local v14, scale:F
    :goto_0
    const-string v17, "lmk.autocalc"

    const-string v18, "true"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 174
    .local v8, lmkProperty:Ljava/lang/String;
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 175
    .local v4, autocalc:Z
    if-nez v4, :cond_2

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "ro.LMK_SLOT0_ADJ"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    aput v19, v17, v18

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const-string v19, "ro.LMK_SLOT1_ADJ"

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    aput v19, v17, v18

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const-string v19, "ro.LMK_SLOT2_ADJ"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    aput v19, v17, v18

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    const/16 v18, 0x3

    const-string v19, "ro.LMK_SLOT3_ADJ"

    const/16 v20, 0x4

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    aput v19, v17, v18

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    const/16 v18, 0x4

    const-string v19, "ro.LMK_SLOT4_ADJ"

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    aput v19, v17, v18

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    const/16 v18, 0x5

    const-string v19, "ro.LMK_SLOT5_ADJ"

    const/16 v20, 0xf

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    aput v19, v17, v18

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "ro.LMK_SLOT0_MINFREE"

    const/16 v20, 0x2000

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    aput-wide v19, v17, v18

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const-string v19, "ro.LMK_SLOT1_MINFREE"

    const/16 v20, 0x3000

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    aput-wide v19, v17, v18

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const-string v19, "ro.LMK_SLOT2_MINFREE"

    const/16 v20, 0x4000

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    aput-wide v19, v17, v18

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v17, v0

    const/16 v18, 0x3

    const-string v19, "ro.LMK_SLOT3_MINFREE"

    const/16 v20, 0x6000

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    aput-wide v19, v17, v18

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v17, v0

    const/16 v18, 0x4

    const-string v19, "ro.LMK_SLOT4_MINFREE"

    const/16 v20, 0x7000

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    aput-wide v19, v17, v18

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v17, v0

    const/16 v18, 0x5

    const-string v19, "ro.LMK_SLOT5_MINFREE"

    const v20, 0x8000

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    aput-wide v19, v17, v18

    .line 225
    :cond_0
    :goto_1
    return-void

    .end local v4           #autocalc:Z
    .end local v8           #lmkProperty:Ljava/lang/String;
    .end local v14           #scale:F
    :cond_1
    move v14, v15

    .line 171
    goto/16 :goto_0

    .line 203
    .restart local v4       #autocalc:Z
    .restart local v8       #lmkProperty:Ljava/lang/String;
    .restart local v14       #scale:F
    :cond_2
    const/16 v17, 0x0

    cmpg-float v17, v14, v17

    if-gez v17, :cond_5

    const/4 v14, 0x0

    .line 205
    :cond_3
    :goto_2
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_6

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    move-object/from16 v17, v0

    aget-wide v9, v17, v7

    .line 207
    .local v9, low:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    move-object/from16 v17, v0

    aget-wide v5, v17, v7

    .line 208
    .local v5, high:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v17, v0

    long-to-float v0, v9

    move/from16 v18, v0

    sub-long v19, v5, v9

    move-wide/from16 v0, v19

    long-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-long v0, v0

    move-wide/from16 v18, v0

    aput-wide v18, v17, v7

    .line 210
    if-lez v7, :cond_4

    .line 211
    const/16 v17, 0x2c

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    const/16 v17, 0x2c

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    aget v17, v17, v7

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v17, v0

    aget-wide v17, v17, v7

    const-wide/16 v19, 0x400

    mul-long v17, v17, v19

    const-wide/16 v19, 0x1000

    div-long v17, v17, v19

    move-wide/from16 v0, v17

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 205
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 204
    .end local v5           #high:J
    .end local v7           #i:I
    .end local v9           #low:J
    :cond_5
    const/high16 v17, 0x3f80

    cmpl-float v17, v14, v17

    if-lez v17, :cond_3

    const/high16 v14, 0x3f80

    goto :goto_2

    .line 219
    .restart local v7       #i:I
    :cond_6
    if-eqz p3, :cond_0

    .line 220
    const-string v17, "/sys/module/lowmemorykiller/parameters/adj"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v17, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "path"
    .parameter "data"

    .prologue
    .line 237
    const/4 v1, 0x0

    .line 239
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 244
    if-eqz v2, :cond_2

    .line 246
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 251
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 247
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 248
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 241
    :catch_1
    move-exception v0

    .line 242
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 244
    if-eqz v1, :cond_0

    .line 246
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 247
    :catch_2
    move-exception v3

    goto :goto_0

    .line 244
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 246
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 248
    :cond_1
    :goto_3
    throw v3

    .line 247
    :catch_3
    move-exception v4

    goto :goto_3

    .line 244
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 241
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .parameter "wm"

    .prologue
    const/4 v3, 0x1

    .line 147
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_0

    .line 148
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 149
    .local v0, p:Landroid/graphics/Point;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplaySize(Landroid/graphics/Point;)V

    .line 150
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    .line 151
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 152
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 155
    .end local v0           #p:Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method getMemLevel(I)J
    .locals 5
    .parameter "adjustment"

    .prologue
    const-wide/16 v3, 0x400

    .line 228
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    aget-wide v1, v1, v0

    mul-long/2addr v1, v3

    .line 233
    :goto_1
    return-wide v1

    .line 228
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    mul-long/2addr v1, v3

    goto :goto_1
.end method
