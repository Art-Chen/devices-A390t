.class public final Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;
.super Lcom/android/internal/telephony/gsm/SIMFileHandler;
.source "TDUSIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field private static final EVENT_GET_USIM_ECC_DONE:I = 0x10

.field static final LOG_TAG:Ljava/lang/String; = "TD-SCDMA"

.field protected static final RESPONSE_DATA_FCP_FLAG:B = 0x0t

.field protected static final RESPONSE_DATA_FILE_DES_FLAG:B = 0x2t

.field protected static final RESPONSE_DATA_FILE_DES_LEN_FLAG:B = 0x3t

.field protected static final RESPONSE_DATA_FILE_RECORD_COUNT_FLAG:B = 0x8t

.field protected static final RESPONSE_DATA_FILE_RECORD_LEN_1:B = 0x6t

.field protected static final RESPONSE_DATA_FILE_RECORD_LEN_2:B = 0x7t

.field protected static final TYPE_FCP:B = 0x62t

.field protected static final TYPE_FCP_SIZE:B = -0x80t

.field protected static final TYPE_FILE_DES:B = -0x7et

.field protected static final TYPE_FILE_DES_LEN:B = 0x5t

.field private static final USIM_DATA_OFFSET_2:I = 0x2

.field private static final USIM_DATA_OFFSET_3:I = 0x3

.field private static final USIM_RECORD_COUNT:B = 0x6t

.field private static final USIM_RECORD_SIZE_1:B = 0x4t

.field private static final USIM_RECORD_SIZE_2:B = 0x5t


# instance fields
.field private final mDualMapFile:[I

.field private mDualMapFileList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mLock:Ljava/lang/Object;

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mDualMapFile:[I

    .line 99
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 100
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->initDualMapFileSet()V

    .line 102
    return-void

    .line 71
    :array_0
    .array-data 0x4
        0x3ct 0x6ft 0x0t 0x0t
        0x30t 0x4ft 0x0t 0x0t
    .end array-data
.end method

.method private UpdatePathOfDualMapFile(ILjava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "path"

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdatePathOfDualMapFile  efid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->loge(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mDualMapFileList:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mDualMapFileList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_0
    return-void
.end method

.method private clearDualMapFileSet()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mFileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 117
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mFileList:Ljava/util/ArrayList;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mDualMapFileList:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mDualMapFileList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 122
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mDualMapFileList:Ljava/util/Map;

    .line 125
    :cond_1
    return-void
.end method

.method private getCommonIccEFPathOfUsim(I)Ljava/lang/String;
    .locals 1
    .parameter "efid"

    .prologue
    .line 819
    sparse-switch p1, :sswitch_data_0

    .line 836
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 829
    :sswitch_0
    const-string v0, "3F007F10"

    goto :goto_0

    .line 832
    :sswitch_1
    const-string v0, "3F00"

    goto :goto_0

    .line 834
    :sswitch_2
    const-string v0, "3F007F105F50"

    goto :goto_0

    .line 819
    :sswitch_data_0
    .sparse-switch
        0x2fe2 -> :sswitch_1
        0x4f20 -> :sswitch_2
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f4a -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
    .end sparse-switch
.end method

.method private getEfPathFromList(I)Ljava/lang/String;
    .locals 5
    .parameter "efid"

    .prologue
    const/4 v3, 0x0

    .line 776
    const/4 v1, 0x0

    .line 778
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mDualMapFileList:Ljava/util/Map;

    if-nez v2, :cond_0

    move-object v2, v3

    .line 814
    :goto_0
    return-object v2

    .line 783
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mDualMapFileList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 785
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mDualMapFileList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #path:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 787
    .restart local v1       #path:Ljava/lang/String;
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 789
    goto :goto_0

    .line 793
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mFileList:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    move-object v2, v3

    .line 795
    goto :goto_0

    .line 798
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 800
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 802
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mDualMapFileList:Ljava/util/Map;

    const/16 v4, 0x4f30

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #path:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 804
    .restart local v1       #path:Ljava/lang/String;
    if-eqz v1, :cond_4

    move-object v2, v1

    .line 806
    goto :goto_0

    .line 798
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v2, v3

    .line 814
    goto :goto_0
.end method

.method private initDualMapFileSet()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mDualMapFileList:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mFileList:Ljava/util/ArrayList;

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mDualMapFileList:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mDualMapFile:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3F007FFF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mDualMapFileList:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mDualMapFile:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3F007F105F3A"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method private isDualMapFile(I)Z
    .locals 4
    .parameter "fileId"

    .prologue
    const/4 v0, 0x0

    .line 201
    const-string v1, "TD-SCDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDualMapFile  fileId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDualMapFileList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mDualMapFileList:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mDualMapFileList:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mDualMapFileList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFinishLoadFile(II)Z
    .locals 4
    .parameter "fileId"
    .parameter "pathNum"

    .prologue
    const/4 v0, 0x1

    .line 219
    const-string v1, "TD-SCDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFinishLoadFile  fileId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pathNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->isDualMapFile(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    if-ne p2, v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    if-nez p2, :cond_0

    .line 231
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    .line 180
    if-nez p1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 186
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public addDualMapFile(I)V
    .locals 4
    .parameter "efid"

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, isExist:Z
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mFileList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 132
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 136
    const/4 v1, 0x1

    .line 142
    :cond_0
    if-nez v1, :cond_1

    .line 144
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mFileList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v0           #i:I
    :cond_1
    return-void

    .line 132
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->dispose()V

    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->clearDualMapFileSet()V

    .line 172
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 175
    const-string v0, "TD-SCDMA"

    const-string v1, "TDUSIMFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 5
    .parameter "efid"

    .prologue
    const/16 v4, 0x4f30

    .line 841
    iget-object v3, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 842
    .local v0, card:Lcom/android/internal/telephony/IccCard;
    const/4 v1, 0x0

    .line 843
    .local v1, isUsim:Z
    const/4 v2, 0x0

    .line 845
    .local v2, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 846
    const/4 v1, 0x1

    .line 847
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->getEfPathFromList(I)Ljava/lang/String;

    move-result-object v2

    .line 849
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 915
    :goto_0
    return-object v3

    .line 855
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 899
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v2

    .line 901
    if-nez v2, :cond_5

    .line 908
    if-eqz v1, :cond_4

    .line 911
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mDualMapFileList:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 857
    :sswitch_0
    if-eqz v1, :cond_2

    .line 858
    const-string v3, "3F007FFF"

    goto :goto_0

    .line 860
    :cond_2
    const-string v3, "3F007F10"

    goto :goto_0

    .line 873
    :sswitch_1
    if-eqz v1, :cond_3

    .line 874
    const-string v3, "3F007FFF"

    goto :goto_0

    .line 877
    :cond_3
    const-string v3, "3F007F20"

    goto :goto_0

    .line 879
    :sswitch_2
    if-eqz v1, :cond_1

    .line 880
    const-string v3, "3F007FFF"

    goto :goto_0

    .line 890
    :sswitch_3
    const-string v3, "3F007F20"

    goto :goto_0

    .line 896
    :sswitch_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->mDualMapFileList:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 913
    :cond_4
    const-string v3, "TD-SCDMA"

    const-string v4, "Error: EF Path being returned in null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v3, v2

    .line 915
    goto :goto_0

    .line 855
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_4
        0x6f11 -> :sswitch_3
        0x6f13 -> :sswitch_3
        0x6f14 -> :sswitch_3
        0x6f15 -> :sswitch_3
        0x6f16 -> :sswitch_3
        0x6f17 -> :sswitch_3
        0x6f18 -> :sswitch_3
        0x6f38 -> :sswitch_1
        0x6f3b -> :sswitch_2
        0x6f3c -> :sswitch_0
        0x6f46 -> :sswitch_1
        0x6fad -> :sswitch_1
        0x6fb7 -> :sswitch_1
        0x6fc5 -> :sswitch_1
        0x6fc7 -> :sswitch_1
        0x6fc8 -> :sswitch_1
        0x6fc9 -> :sswitch_1
        0x6fca -> :sswitch_1
        0x6fcb -> :sswitch_1
        0x6fcd -> :sswitch_1
    .end sparse-switch
.end method

.method protected getEFPathofUsim(I)Ljava/lang/String;
    .locals 10
    .parameter "efid"

    .prologue
    const/4 v9, 0x4

    const/4 v2, 0x0

    const/16 v8, 0x8

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, oldPath:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 243
    .local v0, card:Lcom/android/internal/telephony/IccCard;
    const/4 v1, 0x0

    .line 244
    .local v1, isUsim:Z
    if-eqz v0, :cond_0

    sget-object v7, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 245
    const/4 v1, 0x1

    .line 247
    :cond_0
    if-nez v1, :cond_2

    .line 287
    :cond_1
    :goto_0
    return-object v2

    .line 252
    :cond_2
    const-string v4, ""

    .line 253
    .local v4, pathFirst:Ljava/lang/String;
    const-string v6, ""

    .line 254
    .local v6, pathSecond:Ljava/lang/String;
    const-string v5, ""

    .line 257
    .local v5, pathLast:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v8, :cond_1

    .line 261
    const/4 v7, 0x0

    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-virtual {v3, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 264
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v8, :cond_3

    .line 265
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 269
    :cond_3
    const-string v7, "TD-SCDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getEFPathofUsim false , try again pathFirst "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pathSecond "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pathLast "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v7, "7FFF"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 272
    const-string v6, "7F10"

    .line 285
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, newPath:Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->UpdatePathOfDualMapFile(ILjava/lang/String;)V

    goto :goto_0

    .line 275
    .end local v2           #newPath:Ljava/lang/String;
    :cond_4
    const-string v7, "7F10"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 277
    const-string v6, "7FFF"

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 37
    .parameter "msg"

    .prologue
    .line 359
    const/16 v35, 0x0

    .line 369
    .local v35, response:Landroid/os/Message;
    const/16 v29, 0x0

    .line 370
    .local v29, index:I
    const/16 v30, 0x0

    .line 371
    .local v30, isUsim:Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    .line 373
    .local v32, pathNum:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v22

    .line 374
    .local v22, card:Lcom/android/internal/telephony/IccCard;
    if-eqz v22, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 375
    const/16 v30, 0x1

    .line 378
    :cond_0
    :try_start_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 772
    :cond_1
    :goto_0
    return-void

    .line 380
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 381
    .local v21, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 382
    .local v31, lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/IccIoResult;

    .line 383
    .local v36, result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v35, v0

    .line 385
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 386
    const-string v4, "TD-SCDMA"

    const-string v5, "EVENT_READ_IMG_DONE ar fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 765
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v31           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v36           #result:Lcom/android/internal/telephony/IccIoResult;
    :catch_0
    move-exception v24

    .line 766
    .local v24, exc:Ljava/lang/Exception;
    if-eqz v35, :cond_30

    .line 767
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 390
    .end local v24           #exc:Ljava/lang/Exception;
    .restart local v21       #ar:Landroid/os/AsyncResult;
    .restart local v31       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .restart local v36       #result:Lcom/android/internal/telephony/IccIoResult;
    :cond_2
    :try_start_1
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v28

    .line 392
    .local v28, iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v28, :cond_3

    .line 393
    const-string v4, "TD-SCDMA"

    const-string v5, "EVENT_READ_IMG_DONE icc fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 397
    :cond_3
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v23, v0

    .line 398
    .local v23, data:[B
    move-object/from16 v0, v31

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 399
    .local v6, fileid:I
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v33, v0

    .line 400
    .local v33, recordNum:I
    const-string v4, "TD-SCDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " fileid = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " recordNum = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v4, 0x4

    const/4 v5, 0x6

    aget-byte v5, v23, v5

    if-eq v4, v5, :cond_4

    .line 403
    const-string v4, "TD-SCDMA"

    const-string v5, "EVENT_READ_IMG_DONE TYPE_EF mismatch"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 406
    :cond_4
    const/4 v4, 0x1

    const/16 v5, 0xd

    aget-byte v5, v23, v5

    if-eq v4, v5, :cond_5

    .line 407
    const-string v4, "TD-SCDMA"

    const-string v5, "EVENT_READ_IMG_DONE EF_TYPE_LINEAR_FIXED mismatch"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 410
    :cond_5
    const/16 v4, 0xe

    aget-byte v4, v23, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, v31

    iput v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 411
    const/4 v4, 0x2

    aget-byte v4, v23, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x3

    aget-byte v5, v23, v5

    and-int/lit16 v5, v5, 0xff

    add-int v10, v4, v5

    .line 413
    .local v10, size:I
    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    div-int v4, v10, v4

    move-object/from16 v0, v31

    iput v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 414
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-eqz v4, :cond_6

    .line 415
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v31

    iput-object v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 417
    :cond_6
    const-string v4, "TD-SCDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "recordsize:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget v8, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "counts:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget v8, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xb2

    move-object/from16 v0, v31

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .end local v6           #fileid:I
    move-object/from16 v0, v31

    iget v8, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v31

    iget v8, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v9, 0x4

    move-object/from16 v0, v31

    iget v10, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .end local v10           #size:I
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v4 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 426
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v23           #data:[B
    .end local v28           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v31           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v33           #recordNum:I
    .end local v36           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 427
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Landroid/os/Message;

    move-object/from16 v35, v0

    .line 428
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/IccIoResult;

    .line 430
    .restart local v36       #result:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v28

    .line 432
    .restart local v28       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v28, :cond_7

    .line 433
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 435
    :cond_7
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 439
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v28           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v36           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 440
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 441
    .restart local v31       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/IccIoResult;

    .line 442
    .restart local v36       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v35, v0

    .line 443
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v23, v0

    .line 446
    .restart local v23       #data:[B
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_8

    .line 447
    const-string v4, "TD-SCDMA"

    const-string v5, "EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE exception "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 452
    :cond_8
    if-eqz v23, :cond_9

    .line 453
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->logbyte([B)V

    .line 456
    :cond_9
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v28

    .line 458
    .restart local v28       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v30, :cond_11

    .line 460
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v26, v0

    .line 462
    .local v26, fileId:I
    if-nez v28, :cond_a

    const/16 v4, 0x4f30

    move/from16 v0, v26

    if-ne v0, v4, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->isDataValid([B)Z

    move-result v4

    if-nez v4, :cond_b

    .line 465
    :cond_a
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v32

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->loadFileAgain(IIILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 467
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 471
    :cond_b
    if-eqz v28, :cond_c

    .line 472
    const-string v4, "EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE ar.exception"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->loge(Ljava/lang/String;)V

    .line 473
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 477
    :cond_c
    const/16 v27, 0x0

    .local v27, i:I
    :goto_1
    move-object/from16 v0, v23

    array-length v4, v0

    move/from16 v0, v27

    if-ge v0, v4, :cond_d

    .line 478
    aget-byte v4, v23, v27

    const/16 v5, -0x7e

    if-ne v4, v5, :cond_e

    .line 480
    move/from16 v29, v27

    .line 486
    :cond_d
    const/4 v4, 0x2

    move/from16 v0, v29

    if-ge v0, v4, :cond_f

    .line 487
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 477
    :cond_e
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 490
    :cond_f
    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v34, v0

    .line 492
    .local v34, recordSize:[I
    const/4 v4, 0x0

    add-int/lit8 v5, v29, 0x4

    aget-byte v5, v23, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v8, v29, 0x5

    aget-byte v8, v23, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v5, v8

    aput v5, v34, v4

    .line 494
    const/4 v4, 0x2

    add-int/lit8 v5, v29, 0x6

    aget-byte v5, v23, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v34, v4

    .line 495
    const/4 v4, 0x1

    const/4 v5, 0x0

    aget v5, v34, v5

    const/4 v8, 0x2

    aget v8, v34, v8

    mul-int/2addr v5, v8

    aput v5, v34, v4

    .line 496
    const/16 v27, 0x0

    :goto_2
    const/4 v4, 0x3

    move/from16 v0, v27

    if-ge v0, v4, :cond_10

    .line 497
    const-string v4, "TD-SCDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE  recordSize["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "] "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v8, v34, v27

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 501
    :cond_10
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v35

    iput v4, v0, Landroid/os/Message;->arg2:I

    .line 502
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 505
    .end local v26           #fileId:I
    .end local v27           #i:I
    .end local v34           #recordSize:[I
    :cond_11
    const-string v4, "TD-SCDMA"

    const-string v5, "EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE (4)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    if-eqz v28, :cond_12

    .line 507
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 511
    :cond_12
    const/4 v4, 0x4

    const/4 v5, 0x6

    aget-byte v5, v23, v5

    if-ne v4, v5, :cond_13

    const/4 v4, 0x1

    const/16 v5, 0xd

    aget-byte v5, v23, v5

    if-eq v4, v5, :cond_14

    .line 513
    :cond_13
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 516
    :cond_14
    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v34, v0

    .line 517
    .restart local v34       #recordSize:[I
    const/4 v4, 0x0

    const/16 v5, 0xe

    aget-byte v5, v23, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v34, v4

    .line 518
    const/4 v4, 0x1

    const/4 v5, 0x2

    aget-byte v5, v23, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v8, 0x3

    aget-byte v8, v23, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v5, v8

    aput v5, v34, v4

    .line 520
    const/4 v4, 0x2

    const/4 v5, 0x1

    aget v5, v34, v5

    const/4 v8, 0x0

    aget v8, v34, v8

    div-int/2addr v5, v8

    aput v5, v34, v4

    .line 522
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 525
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v23           #data:[B
    .end local v28           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v31           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v34           #recordSize:[I
    .end local v36           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_3
    const-string v4, "EVENT_GET_RECORD_SIZE_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->logd(Ljava/lang/String;)V

    .line 526
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 527
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 528
    .restart local v31       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/IccIoResult;

    .line 529
    .restart local v36       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v35, v0

    .line 530
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_15

    .line 531
    const-string v4, "EVENT_GET_RECORD_SIZE_DONE ar.exception"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->loge(Ljava/lang/String;)V

    .line 532
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 536
    :cond_15
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v23, v0

    .line 537
    .restart local v23       #data:[B
    move-object/from16 v0, v31

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 538
    .restart local v6       #fileid:I
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v33, v0

    .line 539
    .restart local v33       #recordNum:I
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v28

    .line 540
    .restart local v28       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v30, :cond_17

    .line 542
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v26, v0

    .line 544
    .restart local v26       #fileId:I
    if-nez v28, :cond_16

    const/16 v4, 0x4f30

    move/from16 v0, v26

    if-ne v0, v4, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->isDataValid([B)Z

    move-result v4

    if-nez v4, :cond_17

    .line 546
    :cond_16
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v32

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->loadFileAgain(IIILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 547
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 554
    .end local v26           #fileId:I
    :cond_17
    if-eqz v28, :cond_18

    .line 555
    const-string v4, "EVENT_GET_RECORD_SIZE_DONE iccException"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->loge(Ljava/lang/String;)V

    .line 556
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 561
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GET_RECORD_SIZE_DONE, fileid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->logd(Ljava/lang/String;)V

    .line 563
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->logbyte([B)V

    .line 564
    const-string v4, "TD-SCDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FCP:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v8, 0x0

    aget-byte v8, v23, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " DES:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v8, 0x2

    aget-byte v8, v23, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " DES_LEN:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v8, 0x3

    aget-byte v8, v23, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/16 v4, 0x62

    const/4 v5, 0x0

    aget-byte v5, v23, v5

    if-ne v4, v5, :cond_1c

    .line 575
    const/4 v4, 0x2

    aget-byte v4, v23, v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v25, v0

    .line 576
    .local v25, fcp_size:I
    const/16 v4, -0x7e

    const/4 v5, 0x2

    aget-byte v5, v23, v5

    if-eq v4, v5, :cond_19

    .line 577
    const-string v4, "TYPE_FILE_DES exception"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->loge(Ljava/lang/String;)V

    .line 578
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 580
    :cond_19
    const/4 v4, 0x5

    const/4 v5, 0x3

    aget-byte v5, v23, v5

    if-eq v4, v5, :cond_1a

    .line 581
    const-string v4, "TYPE_FILE_DES_LEN exception"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->loge(Ljava/lang/String;)V

    .line 582
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 584
    :cond_1a
    const/4 v4, 0x6

    aget-byte v4, v23, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x7

    aget-byte v5, v23, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    move-object/from16 v0, v31

    iput v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 586
    const/16 v4, 0x8

    aget-byte v4, v23, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, v31

    iput v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 602
    .end local v25           #fcp_size:I
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recordsize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " counts:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->loge(Ljava/lang/String;)V

    .line 604
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-eqz v4, :cond_1b

    .line 605
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v31

    iput-object v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 608
    :cond_1b
    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v7

    .line 609
    .local v7, path:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GET_RECORD_SIZE_DONE, path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  lc.recordNum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->logd(Ljava/lang/String;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xb2

    move-object/from16 v0, v31

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .end local v6           #fileid:I
    move-object/from16 v0, v31

    iget v8, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v9, 0x4

    move-object/from16 v0, v31

    iget v10, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x7

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v31

    invoke-virtual {v0, v13, v14, v1, v2}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v4 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 588
    .end local v7           #path:Ljava/lang/String;
    .restart local v6       #fileid:I
    :cond_1c
    const/4 v4, 0x4

    const/4 v5, 0x6

    aget-byte v5, v23, v5

    if-eq v4, v5, :cond_1d

    .line 589
    const-string v4, "GSM: TYPE_EF exception"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->loge(Ljava/lang/String;)V

    .line 590
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 592
    :cond_1d
    const/4 v4, 0x1

    const/16 v5, 0xd

    aget-byte v5, v23, v5

    if-eq v4, v5, :cond_1e

    .line 593
    const-string v4, "GSM: EF_TYPE_LINEAR_FIXED exception"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->loge(Ljava/lang/String;)V

    .line 594
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 596
    :cond_1e
    const/16 v4, 0xe

    aget-byte v4, v23, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, v31

    iput v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 597
    const/4 v4, 0x2

    aget-byte v4, v23, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x3

    aget-byte v5, v23, v5

    and-int/lit16 v5, v5, 0xff

    add-int v10, v4, v5

    .line 600
    .restart local v10       #size:I
    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    div-int v4, v10, v4

    move-object/from16 v0, v31

    iput v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    goto/16 :goto_3

    .line 616
    .end local v6           #fileid:I
    .end local v10           #size:I
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v23           #data:[B
    .end local v28           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v31           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v33           #recordNum:I
    .end local v36           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 617
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Landroid/os/Message;

    move-object/from16 v35, v0

    .line 618
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/IccIoResult;

    .line 620
    .restart local v36       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1f

    .line 621
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 625
    :cond_1f
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v28

    .line 627
    .restart local v28       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v30, :cond_20

    .line 629
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    .line 630
    .restart local v26       #fileId:I
    if-eqz v28, :cond_20

    .line 632
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v32

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->loadFileAgain(IIILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 633
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 640
    .end local v26           #fileId:I
    :cond_20
    if-eqz v28, :cond_21

    .line 641
    const-string v4, "EVENT_GET_BINARY_SIZE_DONE iccException"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->loge(Ljava/lang/String;)V

    .line 642
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 646
    :cond_21
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v23, v0

    .line 647
    .restart local v23       #data:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->logbyte([B)V

    .line 648
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 649
    .restart local v6       #fileid:I
    const/16 v4, 0x62

    const/4 v5, 0x0

    aget-byte v5, v23, v5

    if-ne v4, v5, :cond_27

    .line 650
    const-string v4, "TD-SCDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_GET_BINARY_SIZE_DONE fileid "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/16 v27, 0x0

    .restart local v27       #i:I
    :goto_4
    move-object/from16 v0, v23

    array-length v4, v0

    move/from16 v0, v27

    if-ge v0, v4, :cond_22

    .line 653
    aget-byte v4, v23, v27

    const/16 v5, -0x7e

    if-ne v4, v5, :cond_23

    .line 655
    move/from16 v29, v27

    .line 660
    :cond_22
    const-string v4, "TD-SCDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TYPE_FILE_DES index "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    add-int/lit8 v4, v29, 0x2

    aget-byte v4, v23, v4

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_24

    .line 663
    const-string v4, "TD-SCDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_GET_BINARY_SIZE_DONE the efid "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " is not transparent file"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 652
    :cond_23
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 666
    :cond_24
    move/from16 v27, v29

    :goto_5
    move-object/from16 v0, v23

    array-length v4, v0

    move/from16 v0, v27

    if-ge v0, v4, :cond_25

    .line 667
    aget-byte v4, v23, v27

    const/16 v5, -0x80

    if-ne v4, v5, :cond_26

    .line 668
    move/from16 v29, v27

    .line 675
    :cond_25
    const-string v4, "TD-SCDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TYPE_FCP_SIZE index "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    add-int/lit8 v4, v29, 0x2

    aget-byte v4, v23, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v29, 0x3

    aget-byte v5, v23, v5

    and-int/lit16 v5, v5, 0xff

    add-int v10, v4, v5

    .line 692
    .end local v27           #i:I
    .restart local v10       #size:I
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v7

    .line 693
    .restart local v7       #path:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GET_BINARY_SIZE_DONE path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->loge(Ljava/lang/String;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xb0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v35

    invoke-virtual {v0, v13, v6, v1, v2}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v4 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 671
    .end local v7           #path:Ljava/lang/String;
    .end local v10           #size:I
    .restart local v27       #i:I
    :cond_26
    add-int/lit8 v4, v27, 0x1

    aget-byte v4, v23, v4

    add-int/lit8 v4, v4, 0x2

    add-int v27, v27, v4

    goto :goto_5

    .line 680
    .end local v27           #i:I
    :cond_27
    const/4 v4, 0x4

    const/4 v5, 0x6

    aget-byte v5, v23, v5

    if-eq v4, v5, :cond_28

    .line 681
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 684
    :cond_28
    const/16 v4, 0xd

    aget-byte v4, v23, v4

    if-eqz v4, :cond_29

    .line 685
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 688
    :cond_29
    const/4 v4, 0x2

    aget-byte v4, v23, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x3

    aget-byte v5, v23, v5

    and-int/lit16 v5, v5, 0xff

    add-int v10, v4, v5

    .restart local v10       #size:I
    goto :goto_6

    .line 702
    .end local v6           #fileid:I
    .end local v10           #size:I
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v23           #data:[B
    .end local v28           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v36           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 703
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 704
    .restart local v31       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/IccIoResult;

    .line 705
    .restart local v36       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v35, v0

    .line 707
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2a

    .line 708
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 712
    :cond_2a
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v28

    .line 714
    .restart local v28       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v28, :cond_2b

    .line 715
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 719
    :cond_2b
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-nez v4, :cond_2c

    .line 720
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 722
    :cond_2c
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v31

    iput v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    .line 726
    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    if-le v4, v5, :cond_2d

    .line 727
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 730
    :cond_2d
    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v7

    .line 733
    .restart local v7       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v11, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v12, 0xb2

    move-object/from16 v0, v31

    iget v13, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, v31

    iget v15, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/16 v16, 0x4

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v31

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    move-object v14, v7

    invoke-interface/range {v11 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 745
    .end local v7           #path:Ljava/lang/String;
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v28           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v31           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v36           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 746
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Landroid/os/Message;

    move-object/from16 v35, v0

    .line 747
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/IccIoResult;

    .line 749
    .restart local v36       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2e

    .line 750
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 754
    :cond_2e
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v28

    .line 756
    .restart local v28       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v28, :cond_2f

    .line 757
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 761
    :cond_2f
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 769
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v28           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v36           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local v24       #exc:Ljava/lang/Exception;
    :cond_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uncaught exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected isDataValid([B)Z
    .locals 5
    .parameter "data"

    .prologue
    .line 939
    const/4 v1, 0x0

    .line 940
    .local v1, isValid:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 941
    aget-byte v2, p1, v0

    const/16 v3, 0xff

    if-eq v2, v3, :cond_1

    .line 942
    const/4 v1, 0x1

    .line 947
    :cond_0
    const-string v2, "TD-SCDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDataValid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    return v1

    .line 940
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v10

    .line 338
    .local v10, card:Lcom/android/internal/telephony/IccCard;
    const-string v0, "TD-SCDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadEFTransparent fileid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    if-eqz v10, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6fb7

    if-ne p1, v0, :cond_0

    .line 340
    const-string v0, "TD-SCDMA"

    const-string v1, "loadEFTransparent is usim card"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 350
    :goto_0
    return-void

    .line 344
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v4, p2}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 346
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public loadFileAgain(IIILjava/lang/Object;)Z
    .locals 14
    .parameter "fileId"
    .parameter "pathNum"
    .parameter "event"
    .parameter "obj"

    .prologue
    .line 295
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v12

    .line 296
    .local v12, card:Lcom/android/internal/telephony/IccCard;
    const/4 v13, 0x0

    .line 297
    .local v13, isUsim:Z
    if-eqz v12, :cond_0

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v12, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    const/4 v13, 0x1

    .line 301
    :cond_0
    if-nez v13, :cond_1

    .line 303
    const/4 v2, 0x0

    .line 328
    :goto_0
    return v2

    .line 307
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->isFinishLoadFile(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 309
    const/4 v2, 0x0

    goto :goto_0

    .line 313
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->getEFPathofUsim(I)Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, newPath:Ljava/lang/String;
    if-nez v5, :cond_3

    .line 316
    const/4 v2, 0x0

    goto :goto_0

    .line 319
    :cond_3
    const/4 v2, 0x1

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 322
    .local v11, response:Landroid/os/Message;
    const-string v2, "TD-SCDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFinishLoadFile  try again newPath   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xc0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v4, p1

    invoke-interface/range {v2 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 328
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected logbyte([B)V
    .locals 5
    .parameter "data"

    .prologue
    .line 927
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 928
    .local v1, test:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logbyte, data length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/TDUSIMFileHandler;->logd(Ljava/lang/String;)V

    .line 929
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 930
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 931
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 932
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 934
    :cond_0
    const-string v2, "TD-SCDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "payload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 936
    :cond_1
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 919
    const-string v0, "TD-SCDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TDUSIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 923
    const-string v0, "TD-SCDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TDUSIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    return-void
.end method
