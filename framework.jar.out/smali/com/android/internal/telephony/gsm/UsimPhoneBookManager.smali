.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Lcom/android/internal/telephony/IccThreadHandler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;,
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_AAS_LOAD_DONE:I = 0x6

.field private static final EVENT_ADN_RECORD_COUNT:I = 0x5

.field private static final EVENT_ANR_LOAD_DONE:I = 0xa

.field private static final EVENT_EF_CC_LOAD_DONE:I = 0xc

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_GAS_LOAD_DONE:I = 0x9

.field private static final EVENT_GRP_LOAD_DONE:I = 0x8

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_LOAD_EF_PBC_RECORD_DONE:I = 0xe

.field private static final EVENT_PBC_LOAD_DONE:I = 0xb

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_SNE_LOAD_DONE:I = 0x7

.field private static final EVENT_UPDATE_RECORD_DONE:I = 0xd

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "UsimPhoneBookManager"

.field public static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field public static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field public static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field public static final USIM_EFGAS_TAG:I = 0xc8

.field public static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field public static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field public static final USIM_SUBJCET_ANR:I = 0x1

.field public static final USIM_SUBJCET_EMAIL:I = 0x0

.field public static final USIM_SUBJCET_GRP:I = 0x2

.field public static final USIM_TYPE1_TAG:I = 0xa8

.field public static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field public anrFileCount:I

.field public ishaveAas:Z

.field public ishaveAnr:Z

.field public ishaveEmail:Z

.field public ishaveGas:Z

.field public ishaveGrp:Z

.field public ishaveSne:Z

.field private mAasFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAasRecordSizeArray:[I

.field private mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field public mAdnRecordSizeArray:[I

.field private mAnrFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAnrInfoFromPBR:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;",
            ">;"
        }
    .end annotation
.end field

.field private mAnrPresentInIap:Z

.field private mAnrRecordSizeArray:[I

.field private mDoneAdnCount:I

.field private mEmailFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEmailInfoFromPBR:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailPresentInIap:Z

.field private mEmailRecordSizeArray:[I

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/IccFileHandler;

.field private mGasFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mGasList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGasRecordSizeArray:[I

.field public mGrpCount:I

.field private mGrpFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mGrpRecordSizeArray:[I

.field private mIapFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mIapFileRecordArray:[Ljava/lang/Object;

.field private mIapRecordSizeArray:[I

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mLock:Ljava/lang/Object;

.field private mPbcFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field public mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSneFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mSneRecordSizeArray:[I

.field protected mTotalSize:[I

.field private newEmailNum:I

.field protected recordSize:[I

.field private usedEmailNumSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/AdnRecordCache;)V
    .locals 3
    .parameter "phone"
    .parameter "fh"
    .parameter "cache"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Lcom/android/internal/telephony/IccThreadHandler;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 61
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 71
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    .line 119
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->anrFileCount:I

    .line 120
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpCount:I

    .line 140
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    .line 141
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    .line 142
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    .line 143
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    .line 164
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 165
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    .line 168
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 172
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 173
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 175
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveEmail:Z

    .line 176
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveAnr:Z

    .line 177
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveAas:Z

    .line 178
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveSne:Z

    .line 179
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveGrp:Z

    .line 180
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveGas:Z

    .line 182
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    .line 184
    invoke-virtual {p3}, Lcom/android/internal/telephony/AdnRecordCache;->getLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 185
    return-void
.end method

.method private CheckRepeatType2Ef()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1682
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getType2Ef(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1683
    .local v0, efs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 1684
    .local v1, i:I
    const-string v2, "CheckRepeatType2Ef "

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1685
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1687
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->SetMapOfRepeatEfid(II)V

    .line 1685
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1691
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getType2Ef(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1692
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1694
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->SetMapOfRepeatEfid(II)V

    .line 1692
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1698
    :cond_1
    return-void
.end method

.method private SetMapOfRepeatEfid(II)V
    .locals 11
    .parameter "type"
    .parameter "efid"

    .prologue
    .line 799
    const/4 v4, 0x0

    .line 800
    .local v4, lst:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;>;"
    const/4 v2, 0x0

    .line 803
    .local v2, index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 804
    .local v7, totalSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    packed-switch p1, :pswitch_data_0

    .line 819
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-eqz v8, :cond_2

    .line 820
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v3, 0x0

    .line 824
    .local v3, j:I
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 826
    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    check-cast v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    .line 828
    .restart local v2       #index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    if-eqz v2, :cond_1

    iget-object v8, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    if-eqz v8, :cond_1

    iget-object v8, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    if-eqz v8, :cond_1

    iget-object v8, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 829
    iget-object v8, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 830
    .local v0, count:I
    const-string v8, "UsimPhoneBookManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SetMapOfRepeatEfid  count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsedNumSetIndex(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)I

    move-result v5

    .line 834
    .local v5, num:I
    if-ltz v5, :cond_1

    .line 835
    iget-object v8, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aget-object v6, v8, v5

    check-cast v6, Ljava/util/Set;

    .line 836
    .local v6, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_0

    .line 837
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SetMapOfRepeatEfid  size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 839
    :cond_0
    invoke-virtual {p0, v7, v6, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsedNumSet(Ljava/util/Set;Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v7

    .line 824
    .end local v0           #count:I
    .end local v5           #num:I
    .end local v6           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 808
    .end local v1           #i:I
    .end local v3           #j:I
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    .line 809
    goto/16 :goto_0

    .line 813
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    .line 814
    goto/16 :goto_0

    .line 845
    :cond_2
    if-eqz v7, :cond_3

    .line 846
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SetMapOfRepeatEfid  size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 848
    :cond_3
    invoke-direct {p0, p1, p2, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->SetRepeatUsedNumSet(IILjava/util/Set;)V

    .line 851
    return-void

    .line 804
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private SetRepeatUsedNumSet(IILjava/util/Set;)V
    .locals 6
    .parameter "type"
    .parameter "efid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 735
    .local p3, totalSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 736
    .local v0, index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    const/4 v1, 0x0

    .line 738
    .local v1, lst:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;>;"
    packed-switch p1, :pswitch_data_0

    .line 753
    :goto_0
    if-nez v1, :cond_1

    .line 773
    :cond_0
    return-void

    .line 742
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    .line 743
    goto :goto_0

    .line 747
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    .line 748
    goto :goto_0

    .line 758
    :cond_1
    const/4 v2, 0x0

    .local v2, m:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 760
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    .line 762
    .restart local v0       #index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 765
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsedNumSetIndex(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)I

    move-result v3

    .line 766
    .local v3, num:I
    if-ltz v3, :cond_2

    .line 767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " SetRepeatUsedNumSet efid  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  totalSet.size  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 768
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aput-object p3, v4, v3

    .line 769
    invoke-direct {p0, p1, v2, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    .line 758
    .end local v3           #num:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 738
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    return p1
.end method

.method private composeGrpString([B)Ljava/lang/String;
    .locals 5
    .parameter "data"

    .prologue
    .line 1921
    const/4 v0, 0x0

    .line 1922
    .local v0, groupInfo:Ljava/lang/String;
    array-length v3, p1

    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpCount:I

    .line 1923
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpCount:I

    if-ge v1, v3, :cond_3

    .line 1925
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 1926
    .local v2, temp:I
    if-eqz v2, :cond_0

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1

    .line 1923
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1929
    :cond_1
    if-nez v0, :cond_2

    .line 1930
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1932
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1935
    .end local v2           #temp:I
    :cond_3
    return-object v0
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 2418
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 2419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 2420
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 2424
    :goto_0
    return-void

    .line 2423
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    goto :goto_0
.end method

.method private getAnr(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;[BI)Ljava/lang/String;
    .locals 9
    .parameter "num"
    .parameter "anrInfo"
    .parameter "record"
    .parameter "adnNum"

    .prologue
    .line 2052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAnr adnNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "num "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2055
    const/4 v7, 0x0

    .line 2056
    .local v7, anrGroup:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2058
    .local v6, anr:Ljava/lang/String;
    iget-object v0, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v0, v0

    if-nez v0, :cond_1

    .line 2060
    :cond_0
    const-string v0, "getAnr anrInfo.efids == null ||anrInfo.efids.length == 0 "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2061
    const/4 v0, 0x0

    .line 2085
    :goto_0
    return-object v0

    .line 2064
    :cond_1
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    iget-object v0, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v0, v0

    if-ge v8, v0, :cond_5

    .line 2066
    iget-object v0, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v0, v0, v8

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_2

    .line 2068
    iget-object v0, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v0, v0, v8

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getType1Anr(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;II)Ljava/lang/String;

    move-result-object v6

    .line 2072
    :cond_2
    iget-object v0, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v0, v0, v8

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_3

    iget-object v0, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 2074
    iget-object v0, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v5, v0, v8

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getType2Anr(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;[BII)Ljava/lang/String;

    move-result-object v6

    .line 2077
    :cond_3
    if-nez v8, :cond_4

    .line 2078
    move-object v7, v6

    .line 2064
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2080
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_5
    move-object v0, v7

    .line 2085
    goto :goto_0
.end method

.method private getAvalibleAdnCount()I
    .locals 6

    .prologue
    .line 421
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 422
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    const/4 v4, 0x0

    .line 423
    .local v4, totalCount:I
    const/4 v2, 0x0

    .line 424
    .local v2, count:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 426
    const/4 v5, 0x0

    .line 442
    :goto_0
    return v5

    .line 429
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 431
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 432
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .line 433
    .local v0, adnRecord:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 435
    add-int/lit8 v2, v2, 0x1

    .line 431
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #adnRecord:Lcom/android/internal/telephony/AdnRecord;
    :cond_2
    move v5, v2

    .line 442
    goto :goto_0
.end method

.method private getEmail(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;[BI)[Ljava/lang/String;
    .locals 10
    .parameter "num"
    .parameter "emailInfo"
    .parameter "record"
    .parameter "adnNum"

    .prologue
    const/4 v9, 0x0

    .line 2091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEmail adnNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "num "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2094
    const/4 v6, 0x0

    .line 2095
    .local v6, emails:[Ljava/lang/String;
    const/4 v8, 0x1

    .line 2097
    .local v8, isEmpty:Z
    iget-object v0, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v0, v0

    if-nez v0, :cond_1

    .line 2099
    :cond_0
    const-string v0, "getEmail emailInfo.efids == null ||emailInfo.efids.length == 0 "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object v0, v9

    .line 2135
    :goto_0
    return-object v0

    .line 2103
    :cond_1
    iget-object v0, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v0, v0

    new-array v6, v0, [Ljava/lang/String;

    .line 2105
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    iget-object v0, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v0, v0

    if-ge v7, v0, :cond_4

    .line 2107
    iget-object v0, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v0, v0, v7

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_2

    .line 2109
    iget-object v0, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v0, v0, v7

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getType1Email(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .line 2113
    :cond_2
    iget-object v0, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v0, v0, v7

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_3

    iget-object v0, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 2115
    iget-object v0, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v5, v0, v7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getType2Email(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;[BII)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .line 2105
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2121
    :cond_4
    const/4 v7, 0x0

    :goto_2
    array-length v0, v6

    if-ge v7, v0, :cond_6

    .line 2123
    aget-object v0, v6, v7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2125
    const/4 v8, 0x0

    .line 2121
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2130
    :cond_6
    if-eqz v8, :cond_7

    move-object v0, v9

    .line 2132
    goto :goto_0

    :cond_7
    move-object v0, v6

    .line 2135
    goto :goto_0
.end method

.method private getGrp(I)Ljava/lang/String;
    .locals 2
    .parameter "adnNum"

    .prologue
    .line 1913
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1914
    const/4 v0, 0x0

    .line 1917
    :goto_0
    return-object v0

    .line 1916
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->composeGrpString([B)Ljava/lang/String;

    move-result-object v0

    .line 1917
    .local v0, retGrp:Ljava/lang/String;
    goto :goto_0
.end method

.method private getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    .locals 3
    .parameter "type"
    .parameter "num"

    .prologue
    .line 571
    const/4 v1, 0x0

    .line 572
    .local v1, lst:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;>;"
    const/4 v0, 0x0

    .line 573
    .local v0, index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    packed-switch p1, :pswitch_data_0

    .line 588
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    .restart local v0       #index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    move-object v2, v0

    .line 594
    :goto_1
    return-object v2

    .line 577
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    .line 578
    goto :goto_0

    .line 582
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    .line 583
    goto :goto_0

    .line 594
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 573
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getType1Anr(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;II)Ljava/lang/String;
    .locals 7
    .parameter "num"
    .parameter "anrInfo"
    .parameter "adnNum"
    .parameter "efid"

    .prologue
    const/4 v6, 0x2

    .line 1974
    const-string v0, ""

    .line 1978
    .local v0, anr:Ljava/lang/String;
    iget-object v4, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1980
    .local v2, anrFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez v2, :cond_0

    move-object v1, v0

    .line 1994
    .end local v0           #anr:Ljava/lang/String;
    .local v1, anr:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1985
    .end local v1           #anr:Ljava/lang/String;
    .restart local v0       #anr:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p3, v4, :cond_1

    .line 1986
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1987
    .local v3, anrRec:[B
    aget-byte v4, v3, v6

    and-int/lit16 v4, v4, 0xff

    invoke-static {v3, v6, v4}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v0

    .end local v3           #anrRec:[B
    :goto_1
    move-object v1, v0

    .line 1994
    .end local v0           #anr:Ljava/lang/String;
    .restart local v1       #anr:Ljava/lang/String;
    goto :goto_0

    .line 1991
    .end local v1           #anr:Ljava/lang/String;
    .restart local v0       #anr:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private getType1Email(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;II)Ljava/lang/String;
    .locals 4
    .parameter "num"
    .parameter "emailInfo"
    .parameter "adnNum"
    .parameter "efid"

    .prologue
    const/4 v2, 0x0

    .line 1892
    const/4 v0, 0x0

    .line 1894
    .local v0, emails:Ljava/lang/String;
    iget-object v1, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 1895
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    move-object v1, v2

    .line 1908
    :goto_0
    return-object v1

    .line 1899
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getType1Email size "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1900
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v0

    .line 1901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getType1Email,emails "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1903
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1905
    const-string v1, "getType1Email,emails==null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object v1, v2

    .line 1906
    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 1908
    goto :goto_0
.end method

.method private getType2Anr(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;[BII)Ljava/lang/String;
    .locals 10
    .parameter "num"
    .parameter "anrInfo"
    .parameter "record"
    .parameter "adnNum"
    .parameter "efid"

    .prologue
    .line 1827
    const-string v0, ""

    .line 1832
    .local v0, anr:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1834
    .local v5, index:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " getType2Anr  >> anrInfo.recordNumInIap.size() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "adnNum  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1836
    if-nez p3, :cond_0

    move-object v1, v0

    .line 1884
    .end local v0           #anr:Ljava/lang/String;
    .local v1, anr:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1841
    .end local v1           #anr:Ljava/lang/String;
    .restart local v0       #anr:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p5, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsedNumSetIndex(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)I

    move-result v5

    .line 1842
    const/4 v8, -0x1

    if-ne v5, v8, :cond_1

    move-object v1, v0

    .line 1844
    .end local v0           #anr:Ljava/lang/String;
    .restart local v1       #anr:Ljava/lang/String;
    goto :goto_0

    .line 1848
    .end local v1           #anr:Ljava/lang/String;
    .restart local v0       #anr:Ljava/lang/String;
    :cond_1
    iget-object v8, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1850
    .local v4, anrTagNumberInIap:I
    iget-object v8, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1852
    .local v2, anrFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez v2, :cond_2

    move-object v1, v0

    .line 1854
    .end local v0           #anr:Ljava/lang/String;
    .restart local v1       #anr:Ljava/lang/String;
    goto :goto_0

    .line 1856
    .end local v1           #anr:Ljava/lang/String;
    .restart local v0       #anr:Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " getType2Anr anrTagNumberInIap"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1858
    aget-byte v8, p3, v4

    and-int/lit16 v6, v8, 0xff

    .line 1859
    .local v6, recNum:I
    const/16 v8, 0xff

    if-ne v6, v8, :cond_3

    const/4 v6, -0x1

    .line 1860
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " getType2Anr iap recNum == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1862
    const/4 v8, -0x1

    if-eq v6, v8, :cond_5

    .line 1864
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1865
    .local v3, anrRec:[B
    const/4 v8, 0x2

    const/4 v9, 0x2

    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v3, v8, v9}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 1867
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAnrInIap anr:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1869
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1870
    const-string v8, "getAnrInIap anr is emtry"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1871
    const/4 v8, -0x1

    invoke-virtual {p0, p1, p4, v8, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setIapFileRecord(IIBI)V

    move-object v1, v0

    .line 1872
    .end local v0           #anr:Ljava/lang/String;
    .restart local v1       #anr:Ljava/lang/String;
    goto/16 :goto_0

    .line 1875
    .end local v1           #anr:Ljava/lang/String;
    .restart local v0       #anr:Ljava/lang/String;
    :cond_4
    iget-object v8, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aget-object v7, v8, v5

    check-cast v7, Ljava/util/Set;

    .line 1876
    .local v7, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1877
    iget-object v8, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aput-object v7, v8, v5

    .line 1878
    const/4 v8, 0x1

    invoke-direct {p0, v8, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    .line 1883
    .end local v3           #anrRec:[B
    .end local v7           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getType2Anr  >>>>>>>>>>>> anr "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object v1, v0

    .line 1884
    .end local v0           #anr:Ljava/lang/String;
    .restart local v1       #anr:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private getType2Ef(I)Ljava/util/ArrayList;
    .locals 9
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1702
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1703
    .local v0, efs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 1704
    .local v6, lst:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;>;"
    const/4 v2, 0x0

    .line 1705
    .local v2, index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    const/4 v3, 0x0

    .line 1706
    .local v3, isAdd:Z
    packed-switch p1, :pswitch_data_0

    .line 1721
    :goto_0
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-eqz v7, :cond_4

    .line 1722
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getType2Ef size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1723
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 1725
    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    check-cast v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    .line 1727
    .restart local v2       #index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    if-eqz v2, :cond_3

    iget-object v7, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-eqz v7, :cond_3

    iget-object v7, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    if-eqz v7, :cond_3

    .line 1730
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    iget-object v7, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v7, v7

    if-ge v4, v7, :cond_3

    .line 1732
    iget-object v7, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v7, v7, v4

    const/16 v8, 0xa9

    if-ne v7, v8, :cond_2

    .line 1733
    const/4 v3, 0x1

    .line 1734
    const/4 v5, 0x0

    .local v5, k:I
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 1736
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v8, v8, v4

    if-ne v7, v8, :cond_0

    .line 1738
    const/4 v3, 0x0

    .line 1734
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1710
    .end local v1           #i:I
    .end local v4           #j:I
    .end local v5           #k:I
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    .line 1711
    goto :goto_0

    .line 1715
    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    .line 1716
    goto :goto_0

    .line 1743
    .restart local v1       #i:I
    .restart local v4       #j:I
    .restart local v5       #k:I
    :cond_1
    if-eqz v3, :cond_2

    .line 1744
    iget-object v7, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v7, v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1730
    .end local v5           #k:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1723
    .end local v4           #j:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1757
    .end local v1           #i:I
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getType2Ef  type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " efs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1758
    return-object v0

    .line 1706
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getType2Email(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;[BII)Ljava/lang/String;
    .locals 7
    .parameter "num"
    .parameter "emailInfo"
    .parameter "record"
    .parameter "andNum"
    .parameter "efid"

    .prologue
    const/4 v5, -0x1

    .line 1624
    const/4 v0, 0x0

    .line 1625
    .local v0, emails:Ljava/lang/String;
    const/4 v1, -0x1

    .line 1626
    .local v1, index:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getType2Email >>  emailInfo.recordNumInIap.size() "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " adnNum "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " efid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1628
    if-nez p3, :cond_0

    move-object v4, v0

    .line 1677
    :goto_0
    return-object v4

    .line 1634
    :cond_0
    invoke-direct {p0, p5, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsedNumSetIndex(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)I

    move-result v1

    .line 1637
    if-ne v1, v5, :cond_1

    move-object v4, v0

    .line 1639
    goto :goto_0

    .line 1642
    :cond_1
    iget-object v4, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 1645
    iget-object v4, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 1647
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    move-object v4, v0

    .line 1649
    goto :goto_0

    .line 1652
    :cond_2
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v4, p3, v4

    and-int/lit16 v2, v4, 0xff

    .line 1653
    .local v2, recNum:I
    const/16 v4, 0xff

    if-ne v2, v4, :cond_3

    move v2, v5

    .line 1654
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getType2Email  iap recNum == "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1655
    if-eq v2, v5, :cond_5

    .line 1658
    add-int/lit8 v4, v2, -0x1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v0

    .line 1659
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getType2Email,emails "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1661
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1663
    const-string v4, "getType2Email,emails ==null"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1664
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    invoke-virtual {p0, p1, p4, v5, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setIapFileRecord(IIBI)V

    .line 1666
    const/4 v4, 0x0

    goto :goto_0

    .line 1668
    :cond_4
    iget-object v4, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aget-object v3, v4, v1

    check-cast v3, Ljava/util/Set;

    .line 1669
    .local v3, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getType2Email  size (0)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1670
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1671
    iget-object v4, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aput-object v3, v4, v1

    .line 1672
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getType2Email  size (1)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1673
    const/4 v4, 0x0

    invoke-direct {p0, v4, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    .end local v3           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_5
    move-object v4, v0

    .line 1677
    goto/16 :goto_0
.end method

.method private getUsedNumSetIndex(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)I
    .locals 4
    .parameter "efid"
    .parameter "index"

    .prologue
    .line 775
    const/4 v0, -0x1

    .line 777
    .local v0, count:I
    if-eqz p2, :cond_1

    iget-object v2, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-eqz v2, :cond_1

    .line 779
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    iget-object v2, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsedNumSetIndex index.type[k] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 782
    iget-object v2, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v2, v2, v1

    const/16 v3, 0xa9

    if-ne v2, v3, :cond_0

    .line 783
    add-int/lit8 v0, v0, 0x1

    .line 784
    iget-object v2, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsedNumSetIndex count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v2, v0

    .line 794
    .end local v1           #k:I
    :goto_1
    return v2

    .line 779
    .restart local v1       #k:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 794
    .end local v1           #k:I
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private handleReadFileResult(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V
    .locals 5
    .parameter "records"

    .prologue
    .line 1442
    const-string v3, "handleReadFileResult  "

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1443
    const/4 v1, 0x0

    .line 1444
    .local v1, i:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1445
    .local v0, efs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-nez v3, :cond_1

    .line 1446
    :cond_0
    const-string v3, "handleReadFileResult records == null ||records.efids == null "

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1475
    :goto_0
    return-void

    .line 1451
    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 1453
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v3, v3, v1

    if-eqz v3, :cond_3

    .line 1455
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1451
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1457
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleReadFileResult err efid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1458
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1459
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1464
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleReadFileResult  efs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1465
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 1466
    .local v2, validEf:[I
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1468
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 1466
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1472
    :cond_5
    iput-object v2, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    goto/16 :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2904
    const-string v0, "UsimPhoneBookManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2905
    return-void
.end method

.method private readAdnFileAndWait(I)[I
    .locals 8
    .parameter "recNum"

    .prologue
    const/16 v7, 0xc2

    const/4 v5, 0x0

    .line 1231
    const-string v4, "UsimPhoneBookManager"

    const-string/jumbo v6, "readAdnFileAndWait"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1233
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_0

    .line 1234
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1236
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1237
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_1

    .line 1238
    const-string v4, "UsimPhoneBookManager"

    const-string v6, "Error: Pbr file is empty"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->isPbrFileExisting:Z

    .line 1240
    const-string v4, "UsimPhoneBookManager"

    const-string v6, "isPbrFileExisting = false"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 1265
    :goto_0
    return-object v4

    .line 1236
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1245
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1246
    .local v3, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move-object v4, v5

    .line 1247
    goto :goto_0

    .line 1249
    :cond_3
    const/4 v2, 0x0

    .line 1251
    .local v2, extEf:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1252
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1255
    :cond_4
    const/16 v4, 0xc0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1256
    .local v1, efId:Ljava/lang/Integer;
    if-nez v1, :cond_5

    move-object v4, v5

    .line 1257
    goto :goto_0

    .line 1258
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v2, v6}, Lcom/android/internal/telephony/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 1261
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1265
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    goto :goto_0

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "UsimPhoneBookManager"

    const-string v5, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private readAdnFileSizeAndWait(I)[I
    .locals 7
    .parameter "recNum"

    .prologue
    const/4 v3, 0x0

    .line 1166
    const-string v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "readAdnFileSizeAndWait"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1168
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_0

    .line 1169
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1171
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1172
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_2

    .line 1173
    const-string v4, "UsimPhoneBookManager"

    const-string v5, "Error: Pbr file is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :cond_1
    :goto_0
    return-object v3

    .line 1171
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1178
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1179
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readAdnFileSizeAndWait, the current recNum is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1184
    const/16 v4, 0xc0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1185
    .local v1, efId:Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 1187
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 1191
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1196
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    goto :goto_0

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private readAnrFileAndWait(I)V
    .locals 9
    .parameter "recNum"

    .prologue
    const/4 v8, 0x1

    .line 1478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readAnrFileAndWait recNum "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1479
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1480
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_0

    .line 1481
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1483
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1484
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_2

    .line 1485
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Error: Pbr file is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_1
    :goto_0
    return-void

    .line 1483
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1488
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readAnrFileAndWait recNum is\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1490
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1492
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_3

    .line 1493
    const-string/jumbo v5, "readAnrFileAndWait  fileIds == null"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1497
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readAnrFileAndWait  mAnrInfoFromPBR !=null fileIds.size()\t "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1498
    const/16 v5, 0xc4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1499
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveAnr:Z

    .line 1501
    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v4

    .line 1503
    .local v4, records:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    if-nez v4, :cond_4

    .line 1504
    const-string/jumbo v5, "readAnrFileAndWait  records == null "

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1508
    :cond_4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    .line 1510
    iget-object v5, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-eqz v5, :cond_5

    iget-object v5, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v5, v5

    if-nez v5, :cond_6

    .line 1512
    :cond_5
    const-string/jumbo v5, "readAnrFileAndWait  records.efids == null || records.efids.length == 0"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1515
    :cond_6
    iget-object v5, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v5, v5

    iput v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->anrFileCount:I

    .line 1516
    const/4 v3, 0x0

    .line 1517
    .local v3, isFail:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readAnrFileAndWait anrFileCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->anrFileCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1519
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->anrFileCount:I

    if-ge v2, v5, :cond_8

    .line 1521
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v6, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v6, v6, v2

    const/16 v7, 0xa

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1524
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1530
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load ANR times ...... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1532
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    if-nez v5, :cond_7

    .line 1533
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Error: ANR file is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    iget-object v5, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    const/4 v6, 0x0

    aput v6, v5, v2

    .line 1535
    const/4 v3, 0x1

    .line 1519
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1525
    :catch_0
    move-exception v0

    .line 1526
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1539
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_7
    iget-object v5, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    iget-object v6, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    goto :goto_3

    .line 1544
    :cond_8
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->handleReadFileResult(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    .line 1546
    invoke-direct {p0, v8, p1, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    .line 1547
    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectUsedNum(II)V

    goto/16 :goto_0
.end method

.method private readAnrRecord(I)Ljava/lang/String;
    .locals 15
    .parameter "recNum"

    .prologue
    .line 2331
    const/4 v3, 0x0

    .line 2332
    .local v3, anr1Rec:[B
    const/4 v5, 0x0

    .line 2333
    .local v5, anr2Rec:[B
    const/4 v7, 0x0

    .line 2334
    .local v7, anr3Rec:[B
    const/4 v2, 0x0

    .line 2335
    .local v2, anr1:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2336
    .local v4, anr2:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2337
    .local v6, anr3:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2339
    .local v1, anr:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSizeArray:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    iget v13, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->anrFileCount:I

    div-int v9, v12, v13

    .line 2341
    .local v9, firstAnrFileRecordCount:I
    iget v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->anrFileCount:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 2342
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #anr1Rec:[B
    check-cast v3, [B

    .line 2343
    .restart local v3       #anr1Rec:[B
    const/4 v12, 0x2

    const/4 v13, 0x2

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    invoke-static {v3, v12, v13}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 2345
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "readAnrRecord anr:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object v12, v1

    .line 2413
    :goto_0
    return-object v12

    .line 2348
    :cond_0
    move/from16 v0, p1

    if-ge v0, v9, :cond_2

    .line 2350
    :try_start_0
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, [B

    move-object v3, v0

    .line 2351
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    add-int v13, p1, v9

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, [B

    move-object v5, v0

    .line 2353
    iget v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->anrFileCount:I

    const/4 v13, 0x2

    if-le v12, v13, :cond_1

    .line 2354
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    mul-int/lit8 v13, v9, 0x2

    add-int v13, v13, p1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, [B

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2367
    :cond_1
    const/4 v12, 0x2

    const/4 v13, 0x2

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    invoke-static {v3, v12, v13}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 2369
    const/4 v12, 0x2

    const/4 v13, 0x2

    aget-byte v13, v5, v13

    and-int/lit16 v13, v13, 0xff

    invoke-static {v5, v12, v13}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v4

    .line 2371
    iget v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->anrFileCount:I

    const/4 v13, 0x2

    if-le v12, v13, :cond_5

    .line 2372
    const/4 v12, 0x2

    const/4 v13, 0x2

    aget-byte v13, v7, v13

    and-int/lit16 v13, v13, 0xff

    invoke-static {v7, v12, v13}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v6

    .line 2374
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2375
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "readAnrRecord anr:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object v12, v1

    .line 2376
    goto/16 :goto_0

    .line 2363
    :catch_0
    move-exception v8

    .line 2364
    .local v8, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2378
    .end local v8           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    move/from16 v0, p1

    if-lt v0, v9, :cond_4

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->anrFileCount:I

    div-int/2addr v12, v13

    move/from16 v0, p1

    if-ge v0, v12, :cond_4

    .line 2380
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSizeArray:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    sub-int/2addr v12, v13

    iget v13, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->anrFileCount:I

    div-int v10, v12, v13

    .line 2384
    .local v10, secondAnrFileRecordCount:I
    :try_start_1
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSizeArray:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    rem-int v13, p1, v9

    add-int v11, v12, v13

    .line 2386
    .local v11, secondAnrfileread:I
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, [B

    move-object v3, v0

    .line 2387
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    add-int v13, v11, v10

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, [B

    move-object v5, v0

    .line 2389
    iget v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->anrFileCount:I

    const/4 v13, 0x2

    if-le v12, v13, :cond_3

    .line 2390
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    mul-int/lit8 v13, v10, 0x2

    add-int/2addr v13, v11

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, [B

    move-object v7, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2396
    :cond_3
    const/4 v12, 0x2

    const/4 v13, 0x2

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    invoke-static {v3, v12, v13}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 2398
    const/4 v12, 0x2

    const/4 v13, 0x2

    aget-byte v13, v5, v13

    and-int/lit16 v13, v13, 0xff

    invoke-static {v5, v12, v13}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v4

    .line 2400
    iget v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->anrFileCount:I

    const/4 v13, 0x2

    if-le v12, v13, :cond_5

    .line 2401
    const/4 v12, 0x2

    const/4 v13, 0x2

    aget-byte v13, v7, v13

    and-int/lit16 v13, v13, 0xff

    invoke-static {v7, v12, v13}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v6

    .line 2403
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2404
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "readAnrRecord anr:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object v12, v1

    .line 2405
    goto/16 :goto_0

    .line 2393
    .end local v11           #secondAnrfileread:I
    :catch_1
    move-exception v8

    .line 2394
    .restart local v8       #e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2408
    .end local v8           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v10           #secondAnrFileRecordCount:I
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "the total anr size is exceed mAnrFileRecord.size()  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2411
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2412
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "readAnrRecord anr:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object v12, v1

    .line 2413
    goto/16 :goto_0
.end method

.method private readEmailFileAndWait(I)V
    .locals 10
    .parameter "recNum"

    .prologue
    const/16 v9, 0xca

    const/4 v8, 0x0

    .line 1362
    const-string/jumbo v5, "readEmailFileAndWait"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1364
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1365
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_0

    .line 1366
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1368
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1369
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_2

    .line 1370
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Error: Pbr file is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_1
    :goto_0
    return-void

    .line 1368
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1374
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1375
    .local v3, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_1

    .line 1378
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1379
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveEmail:Z

    .line 1380
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1385
    .local v2, efid:I
    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v4

    .line 1386
    .local v4, records:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    if-nez v4, :cond_3

    .line 1387
    const-string/jumbo v5, "readEmailFileAndWait  records == null "

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1390
    :cond_3
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v5, :cond_4

    .line 1392
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-nez v5, :cond_4

    .line 1393
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Error: IAP file is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    const/4 v4, 0x0

    .line 1395
    invoke-direct {p0, v8, p1, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    goto :goto_0

    .line 1400
    :cond_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1401
    .local v1, efId:Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 1403
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1407
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1412
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    .line 1413
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Error: Email file is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    const/4 v4, 0x0

    .line 1415
    invoke-direct {p0, v8, p1, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    goto/16 :goto_0

    .line 1408
    :catch_0
    move-exception v0

    .line 1409
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1419
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_5
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    .line 1420
    iget-object v5, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readEmailFileAndWait recNum "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  mEmailFileRecord  size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fileid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1423
    invoke-direct {p0, v8, p1, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    .line 1424
    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectUsedNum(II)V

    .line 1426
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method private readEmailRecord(I)Ljava/lang/String;
    .locals 6
    .parameter "recNum"

    .prologue
    .line 2318
    const/4 v3, 0x0

    .line 2320
    .local v3, emailRec:[B
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2326
    const/4 v4, 0x0

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 2327
    :goto_0
    return-object v2

    .line 2321
    :catch_0
    move-exception v1

    .line 2322
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readGasFileAndWait(I)V
    .locals 6
    .parameter "recNum"

    .prologue
    .line 1299
    const-string v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "readGasFileAndWait"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1301
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_0

    .line 1302
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1304
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1305
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_2

    .line 1306
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "Error: Pbr file is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->isPbrFileExisting:Z

    .line 1308
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "isPbrFileExisting = false"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :cond_1
    :goto_0
    return-void

    .line 1304
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1312
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1313
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1316
    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1317
    .local v1, efId:Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 1319
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x9

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1321
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1323
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1327
    :goto_1
    :try_start_3
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 1324
    :catch_0
    move-exception v0

    .line 1325
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "UsimPhoneBookManager"

    const-string v5, "Interrupted Exception in readGasFileAndWait"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method

.method private readGrpFileAndWait(I)V
    .locals 6
    .parameter "recNum"

    .prologue
    .line 1269
    const-string v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "readGrpFileAndWait"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1271
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_0

    .line 1272
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1274
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1275
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_2

    .line 1276
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "Error: Pbr file is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :cond_1
    :goto_0
    return-void

    .line 1274
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1281
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1282
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1285
    const/16 v3, 0xc6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1286
    .local v1, efId:Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 1288
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1291
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1292
    :catch_0
    move-exception v0

    .line 1293
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "Interrupted Exception in readGrpFileAndWait"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readIapFile(I)V
    .locals 4
    .parameter "recNum"

    .prologue
    .line 1332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readIapFile recNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1334
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1335
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_0

    .line 1336
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1338
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1339
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_2

    .line 1340
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "Error: Pbr file is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :cond_1
    :goto_0
    return-void

    .line 1338
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1345
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1346
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readIapFile mAnrPresentInIap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readIapFile mEmailPresentInIap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1351
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v2, :cond_1

    .line 1352
    :cond_3
    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1353
    .local v0, efId:Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 1355
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(I)V

    goto :goto_0
.end method

.method private readIapFileAndWait(I)V
    .locals 3
    .parameter "efid"

    .prologue
    .line 1432
    const-string v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "readIapFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1436
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1440
    :goto_0
    return-void

    .line 1437
    :catch_0
    move-exception v0

    .line 1438
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "Interrupted Exception in readIapFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readPbrFileAndWait()V
    .locals 4

    .prologue
    .line 1219
    const-string v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "readPbrFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1223
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1228
    :goto_0
    return-void

    .line 1224
    :catch_0
    move-exception v0

    .line 1225
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setAnrIapFileRecord(IIBI)V
    .locals 4
    .parameter "num"
    .parameter "index"
    .parameter "value"
    .parameter "numInIap"

    .prologue
    .line 2022
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAnrIapFileRecord >> num:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " numInIap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2024
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    aget-object v1, v2, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 2025
    .local v1, tmpIapFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2026
    .local v0, record:[B
    aput-byte p3, v0, p4

    .line 2027
    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2028
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    aput-object v1, v2, p1

    .line 2030
    return-void
.end method

.method private setEmailandAnr(I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "adnNum"
    .parameter "emails"
    .parameter "anr"

    .prologue
    .line 1999
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .line 2000
    .local v0, rec:Lcom/android/internal/telephony/AdnRecord;
    if-nez v0, :cond_1

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 2002
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/AdnRecord;

    .end local v0           #rec:Lcom/android/internal/telephony/AdnRecord;
    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    .restart local v0       #rec:Lcom/android/internal/telephony/AdnRecord;
    :cond_1
    if-eqz p2, :cond_2

    .line 2006
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 2008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEmailandAnr AdnRecord  emails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2011
    :cond_2
    if-eqz p3, :cond_3

    .line 2012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEmailandAnr AdnRecord  anr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2014
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 2016
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2018
    return-void
.end method

.method private setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V
    .locals 2
    .parameter "type"
    .parameter "num"
    .parameter "subjectIndex"

    .prologue
    .line 668
    const/4 v0, 0x0

    .line 670
    .local v0, index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    packed-switch p1, :pswitch_data_0

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 673
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v1, p2, p3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 682
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 686
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v1, p2, p3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 670
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSubjectUsedNum(II)V
    .locals 5
    .parameter "type"
    .parameter "num"

    .prologue
    .line 1802
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v1

    .line 1804
    .local v1, index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setSubjectUsedNum num "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1806
    if-nez v1, :cond_0

    .line 1822
    :goto_0
    return-void

    .line 1810
    :cond_0
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v2, v3

    .line 1811
    .local v2, size:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setSubjectUsedNum size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1813
    new-array v3, v2, [Ljava/lang/Object;

    iput-object v3, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    .line 1815
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 1817
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    aput-object v4, v3, v0

    .line 1815
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1820
    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    goto :goto_0
.end method

.method private setUsedNumOfEfid(IIILjava/lang/Object;)V
    .locals 6
    .parameter "type"
    .parameter "idx"
    .parameter "efid"
    .parameter "obj"

    .prologue
    .line 1763
    const/4 v3, 0x0

    .line 1764
    .local v3, lst:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;>;"
    const/4 v1, 0x0

    .line 1765
    .local v1, index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    packed-switch p1, :pswitch_data_0

    .line 1780
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1781
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUsedNumOfEfid size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1782
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1784
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    check-cast v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    .line 1786
    .restart local v1       #index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-eqz v4, :cond_0

    .line 1787
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    iget-object v4, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 1789
    iget-object v4, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v4, v4, v2

    if-ne v4, p3, :cond_1

    .line 1791
    iget-object v4, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aput-object p4, v4, p2

    .line 1792
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    .line 1782
    .end local v2           #j:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1769
    .end local v0           #i:I
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    .line 1770
    goto :goto_0

    .line 1774
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    .line 1775
    goto :goto_0

    .line 1787
    .restart local v0       #i:I
    .restart local v2       #j:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1799
    .end local v0           #i:I
    .end local v2           #j:I
    :cond_2
    return-void

    .line 1765
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateAdnRecord(I)V
    .locals 17
    .parameter "num"

    .prologue
    .line 2197
    const/4 v7, 0x0

    .line 2198
    .local v7, emailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    const/4 v8, 0x0

    .line 2199
    .local v8, emailType:I
    const/4 v9, 0x0

    .line 2200
    .local v9, emails:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 2201
    .local v3, anrInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    const/4 v4, 0x0

    .line 2202
    .local v4, anrType:I
    const/4 v2, 0x0

    .line 2203
    .local v2, anr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2205
    .local v11, numAdnRecs:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    aput v15, v14, p1

    .line 2206
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateAdnRecord numAdnRecs : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " num "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2208
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move/from16 v0, p1

    if-ge v10, v0, :cond_0

    .line 2209
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    aget v15, v14, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    move-object/from16 v16, v0

    aget v16, v16, v10

    sub-int v15, v15, v16

    aput v15, v14, p1

    .line 2208
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2212
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateAdnRecord mAdnRecordSizeArray[num] : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    aget v15, v15, p1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " num "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2215
    const/4 v12, 0x0

    .line 2216
    .local v12, numIapRec:I
    const/4 v6, 0x0

    .line 2217
    .local v6, efid:I
    const/4 v13, 0x0

    .line 2219
    .local v13, record:[B
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v7

    .line 2221
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v3

    .line 2225
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v14, :cond_1

    .line 2234
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 2235
    const-string v14, "UsimPhoneBookManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateAdnRecord mIapRecordSizeArray[num] : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    aput-object v15, v14, p1

    .line 2239
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapRecordSizeArray:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    aput v15, v14, p1

    .line 2241
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateAdnRecord,numIapRec  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2245
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    sub-int v14, v11, v14

    if-le v14, v12, :cond_5

    .line 2247
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateAdnRecord,numIapRec  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mDoneAdnCount "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2248
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    add-int/2addr v14, v12

    if-ge v10, v14, :cond_6

    .line 2250
    const/4 v13, 0x0

    .line 2252
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v14, :cond_2

    .line 2255
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    sub-int v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, [B

    move-object v13, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2263
    :cond_2
    :goto_3
    if-eqz v7, :cond_3

    .line 2264
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    sub-int v14, v10, v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v13, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmail(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;[BI)[Ljava/lang/String;

    move-result-object v9

    .line 2265
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setEmailandAnr(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    :cond_3
    if-eqz v3, :cond_4

    .line 2268
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    sub-int v14, v10, v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3, v13, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnr(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;[BI)Ljava/lang/String;

    move-result-object v2

    .line 2269
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setEmailandAnr(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 2248
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2245
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    sub-int v12, v11, v14

    goto :goto_1

    .line 2257
    :catch_0
    move-exception v5

    .line 2259
    .local v5, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v14, "UsimPhoneBookManager"

    const-string v15, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2274
    .end local v5           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 2276
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    add-int/2addr v14, v11

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    .line 2277
    return-void
.end method

.method private updateAdnRecordNum()V
    .locals 5

    .prologue
    .line 2186
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2187
    .local v2, numAdnRecs:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAdnRecord Num and grp info, adn size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2188
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2189
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .line 2190
    .local v0, adn:Lcom/android/internal/telephony/AdnRecord;
    if-nez v0, :cond_0

    .line 2188
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2191
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/AdnRecord;->setRecordNumber(I)V

    .line 2192
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getGrp(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/AdnRecord;->setGrp(Ljava/lang/String;)V

    goto :goto_1

    .line 2194
    .end local v0           #adn:Lcom/android/internal/telephony/AdnRecord;
    :cond_1
    return-void
.end method

.method private updatePbcAndCc()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2140
    const-string v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "update EFpbc begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 2143
    .local v9, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2179
    :cond_0
    :goto_0
    return-void

    .line 2145
    :cond_1
    const/16 v0, 0xc5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 2146
    .local v8, efPbcId:Ljava/lang/Integer;
    if-eqz v8, :cond_0

    .line 2148
    const-string v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " USIM_EFPBC_TAG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    const/4 v6, 0x0

    .line 2150
    .local v6, changeCounter:I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 2152
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2156
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbcFileRecord:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2157
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbcFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_3

    .line 2158
    const/4 v11, 0x0

    .line 2159
    .local v11, temp:[B
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbcFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #temp:[B
    check-cast v11, [B

    .line 2160
    .restart local v11       #temp:[B
    if-eqz v11, :cond_2

    aget-byte v0, v11, v12

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v13, :cond_2

    .line 2161
    add-int/lit8 v6, v6, 0x1

    .line 2162
    const/4 v0, 0x2

    new-array v3, v0, [B

    .line 2163
    .local v3, data:[B
    aput-byte v12, v3, v12

    .line 2164
    aput-byte v12, v3, v13

    .line 2166
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v2, v10, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 2157
    .end local v3           #data:[B
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2153
    .end local v10           #i:I
    .end local v11           #temp:[B
    :catch_0
    move-exception v7

    .line 2154
    .local v7, e:Ljava/lang/InterruptedException;
    const-string v0, "UsimPhoneBookManager"

    const-string v1, "Interrupted Exception in updatePbcAndCc"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2171
    .end local v7           #e:Ljava/lang/InterruptedException;
    .restart local v10       #i:I
    :cond_3
    const-string v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update EFpbc end, changeCounter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    if-lez v6, :cond_0

    .line 2176
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x4f23

    const/16 v2, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0
.end method

.method private updatePhoneAdnRecord()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1553
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v9, :cond_1

    .line 1618
    :cond_0
    :goto_0
    return-void

    .line 1555
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1556
    .local v5, numAdnRecs:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    .line 1565
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 1566
    const/4 v8, 0x0

    .line 1568
    .local v8, record:[B
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #record:[B
    check-cast v8, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1573
    .restart local v8       #record:[B
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v7, v8, v9

    .line 1575
    .local v7, recNum:I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    .line 1576
    const/4 v9, 0x1

    new-array v2, v9, [Ljava/lang/String;

    .line 1578
    .local v2, emails:[Ljava/lang/String;
    add-int/lit8 v9, v7, -0x1

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v11

    .line 1579
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    .line 1580
    .local v6, rec:Lcom/android/internal/telephony/AdnRecord;
    if-eqz v6, :cond_5

    .line 1581
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 1586
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1565
    .end local v2           #emails:[Ljava/lang/String;
    .end local v6           #rec:Lcom/android/internal/telephony/AdnRecord;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1569
    .end local v7           #recNum:I
    .end local v8           #record:[B
    :catch_0
    move-exception v0

    .line 1570
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "UsimPhoneBookManager"

    const-string v10, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v3           #i:I
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1598
    .local v4, len:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    if-nez v9, :cond_4

    .line 1599
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1EmailFile(I)V

    .line 1601
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v5, :cond_0

    .line 1602
    const/4 v1, 0x0

    .line 1604
    .local v1, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1608
    .restart local v1       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_6

    .line 1601
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1584
    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #len:I
    .restart local v2       #emails:[Ljava/lang/String;
    .restart local v6       #rec:Lcom/android/internal/telephony/AdnRecord;
    .restart local v7       #recNum:I
    .restart local v8       #record:[B
    :cond_5
    new-instance v6, Lcom/android/internal/telephony/AdnRecord;

    .end local v6           #rec:Lcom/android/internal/telephony/AdnRecord;
    const-string v9, ""

    const-string v10, ""

    invoke-direct {v6, v9, v10, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v6       #rec:Lcom/android/internal/telephony/AdnRecord;
    goto :goto_2

    .line 1605
    .end local v2           #emails:[Ljava/lang/String;
    .end local v6           #rec:Lcom/android/internal/telephony/AdnRecord;
    .end local v7           #recNum:I
    .end local v8           #record:[B
    .restart local v4       #len:I
    :catch_1
    move-exception v0

    .line 1606
    .restart local v0       #e:Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0

    .line 1610
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    .line 1612
    .restart local v6       #rec:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v2, v9, [Ljava/lang/String;

    .line 1613
    .restart local v2       #emails:[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v9, v11, v2, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1615
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 1616
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method


# virtual methods
.method public findEFAnrInfo(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/16 v4, 0xc4

    const/4 v1, -0x1

    .line 1045
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1046
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_0

    .line 1047
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1049
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 1051
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "Error: Pbr file is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :goto_0
    return v1

    .line 1049
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1054
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1055
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_2

    .line 1056
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findEFAnrInfo  fileIds == null  index :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1059
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1060
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 1063
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findEFEmailInfo(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/16 v4, 0xca

    const/4 v1, -0x1

    .line 1019
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1020
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_0

    .line 1021
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1023
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 1025
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "Error: Pbr file is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :goto_0
    return v1

    .line 1023
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1028
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1029
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_2

    .line 1030
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findEFEmailInfo  fileIds == null  index :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1033
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1035
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 1038
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findEFGasInfo()I
    .locals 6

    .prologue
    const/16 v5, 0xc8

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1070
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1071
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_0

    .line 1072
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1074
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1075
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_1

    .line 1076
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "Error: Pbr file is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :goto_0
    return v1

    .line 1074
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1079
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1080
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_2

    .line 1081
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "findEFGasInfo fileIds == null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1084
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1085
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 1088
    goto :goto_0
.end method

.method public findEFIapInfo(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/16 v4, 0xc1

    const/4 v1, -0x1

    .line 1095
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1096
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_0

    .line 1097
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1099
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 1101
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "Error: Pbr file is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :goto_0
    return v1

    .line 1099
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1104
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1105
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_2

    .line 1106
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findEFIapInfo  fileIds == null  index :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1109
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1110
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 1113
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findEFInfo(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/16 v4, 0xc0

    const/4 v1, -0x1

    .line 939
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 940
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_0

    .line 941
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 943
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_2

    .line 945
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "Error: Pbr file is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_1
    :goto_0
    return v1

    .line 943
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 948
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 950
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_3

    .line 951
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "Error: fileIds is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 955
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 956
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public findExtensionEFInfo(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/16 v4, 0xc2

    const/4 v1, -0x1

    .line 966
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 967
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_0

    .line 968
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 970
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 972
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "Error: Pbr file is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :goto_0
    return v1

    .line 970
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 975
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 977
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_2

    .line 978
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "Error: fileIds is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 982
    :cond_2
    const-string v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findExtensionEFInfo fileIds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 986
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 989
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAdnRecordSizeArray()[I
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    return-object v0
.end method

.method public declared-synchronized getAdnRecordsSize()[I
    .locals 8

    .prologue
    .line 1119
    monitor-enter p0

    const/4 v3, 0x3

    :try_start_0
    new-array v2, v3, [I

    .line 1121
    .local v2, size:[I
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "getAdnRecordsSize"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1126
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    if-eqz v3, :cond_0

    .line 1128
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1157
    :goto_0
    monitor-exit p0

    return-object v3

    .line 1131
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_1

    .line 1132
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1135
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_2

    .line 1136
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_0

    .line 1156
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1119
    .end local v2           #size:[I
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1138
    .restart local v2       #size:[I
    :cond_2
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 1140
    .local v1, numRecs:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_5

    .line 1142
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileSizeAndWait(I)[I

    move-result-object v2

    .line 1144
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    if-nez v3, :cond_3

    .line 1146
    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    .line 1148
    :cond_3
    if-eqz v2, :cond_4

    .line 1149
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v2, v6

    aput v6, v3, v5

    .line 1150
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    const/4 v5, 0x1

    aget v6, v3, v5

    const/4 v7, 0x1

    aget v7, v2, v7

    add-int/2addr v6, v7

    aput v6, v3, v5

    .line 1151
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    const/4 v5, 0x2

    aget v6, v3, v5

    const/4 v7, 0x2

    aget v7, v2, v7

    add-int/2addr v6, v7

    aput v6, v3, v5

    .line 1140
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1156
    :cond_5
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1157
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public getAnrNum()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 318
    const/4 v1, 0x0

    .line 320
    .local v1, num:I
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectEfids(II)[I

    move-result-object v0

    .line 322
    .local v0, efids:[I
    if-nez v0, :cond_0

    .line 330
    :goto_0
    return v2

    .line 326
    :cond_0
    array-length v1, v0

    .line 328
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAnrNum  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 330
    goto :goto_0
.end method

.method public getAnrTagNumberInIap(I)[[I
    .locals 6
    .parameter "num"

    .prologue
    .line 654
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v3, v3

    const/4 v4, 0x2

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 655
    .local v2, result:[[I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    iget-object v0, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    .line 656
    .local v0, anrTagMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 657
    aget-object v4, v2, v1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v3, v3, v1

    aput v3, v4, v5

    .line 658
    aget-object v4, v2, v1

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v5

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 661
    :cond_0
    return-object v2
.end method

.method public getAvalibleAnrCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)[I
    .locals 9
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "anrNums"

    .prologue
    .line 526
    new-instance v0, Lcom/android/internal/telephony/AdnRecord;

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    .local v0, adn:Lcom/android/internal/telephony/AdnRecord;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getValidNumToMatch(Lcom/android/internal/telephony/AdnRecord;I[I)[I

    move-result-object v1

    return-object v1
.end method

.method public getAvalibleEmailCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)[I
    .locals 9
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "emailNums"

    .prologue
    .line 537
    new-instance v0, Lcom/android/internal/telephony/AdnRecord;

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    .local v0, adn:Lcom/android/internal/telephony/AdnRecord;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getValidNumToMatch(Lcom/android/internal/telephony/AdnRecord;I[I)[I

    move-result-object v1

    return-object v1
.end method

.method public getAvalibleSubjectCount(IIII[I)[I
    .locals 13
    .parameter "num"
    .parameter "type"
    .parameter "efid"
    .parameter "adnNum"
    .parameter "subjectNums"

    .prologue
    .line 448
    const/4 v5, 0x0

    .line 449
    .local v5, index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    const/4 v2, 0x0

    .line 450
    .local v2, count:I
    const/4 v1, 0x0

    .line 451
    .local v1, avalibleNum:I
    const/4 v9, 0x0

    .line 452
    .local v9, ret:[I
    const/4 v8, 0x0

    .line 455
    .local v8, n:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAvalibleSubjectCount efid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " num "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 456
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAvalibleSubjectCount   type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " adnNum "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  subjectNums "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 458
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v5

    .line 460
    if-nez v5, :cond_0

    .line 462
    const/4 v11, 0x0

    .line 517
    :goto_0
    return-object v11

    .line 465
    :cond_0
    move-object/from16 v0, p5

    array-length v11, v0

    new-array v9, v11, [I

    .line 466
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAvalibleSubjectCount adnEfid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->adnEfid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 468
    if-eqz v5, :cond_4

    iget v11, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->adnEfid:I

    move/from16 v0, p3

    if-ne v11, v0, :cond_4

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    if-eqz v11, :cond_4

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-eqz v11, :cond_4

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    if-eqz v11, :cond_4

    .line 471
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    iget-object v11, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v11, v11

    if-ge v6, v11, :cond_4

    .line 473
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAvalibleSubjectCount efid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v12, v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 475
    const/4 v7, 0x0

    .local v7, l:I
    :goto_2
    move-object/from16 v0, p5

    array-length v11, v0

    if-ge v7, v11, :cond_1

    .line 477
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAvalibleSubjectCount efid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, p5, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 478
    aget v11, p5, v7

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    iget-object v12, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v12, v12, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    iget-object v12, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v12, v12, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 480
    iget-object v11, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    iget-object v12, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v12, v12, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 482
    iget-object v11, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v11, v11, v6

    const/16 v12, 0xa8

    if-ne v11, v12, :cond_2

    .line 484
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAvalibleAdnCount()I

    move-result v11

    aput v11, v9, v8

    .line 485
    add-int/lit8 v8, v8, 0x1

    .line 471
    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 488
    :cond_2
    iget-object v11, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v11, v11, v6

    const/16 v12, 0xa9

    if-ne v11, v12, :cond_3

    .line 490
    iget-object v11, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v11, v11, v6

    invoke-direct {p0, v11, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsedNumSetIndex(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)I

    move-result v4

    .line 491
    .local v4, idx:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAvalibleSubjectCount idx "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 493
    if-ltz v4, :cond_3

    .line 494
    iget-object v11, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aget-object v10, v11, v4

    check-cast v10, Ljava/util/Set;

    .line 495
    .local v10, usedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v11

    sub-int v1, v2, v11

    .line 496
    aput v1, v9, v8

    .line 497
    add-int/lit8 v8, v8, 0x1

    .line 498
    goto :goto_3

    .line 475
    .end local v4           #idx:I
    .end local v10           #usedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 506
    .end local v6           #j:I
    .end local v7           #l:I
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAvalibleSubjectCount  n "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 507
    if-nez v8, :cond_5

    .line 509
    const/4 v9, 0x0

    move-object v11, v9

    .line 510
    goto/16 :goto_0

    .line 513
    :cond_5
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    array-length v11, v9

    if-ge v3, v11, :cond_6

    .line 515
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAvalibleSubjectCount  ret[] "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v9, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 513
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    move-object v11, v9

    .line 517
    goto/16 :goto_0
.end method

.method public getEfFilesFromUsim()[I
    .locals 7

    .prologue
    .line 1201
    const/4 v0, 0x0

    .line 1203
    .local v0, efids:[I
    const/4 v3, 0x0

    .line 1205
    .local v3, len:I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 1206
    const-string v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEfFilesFromUsim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    new-array v0, v3, [I

    .line 1209
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1210
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1211
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v4, 0xc0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    .line 1212
    const-string v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEfFilesFromUsim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1215
    .end local v1           #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    return-object v0
.end method

.method public getEfIdByTag(II)I
    .locals 4
    .parameter "recordNum"
    .parameter "fileTag"

    .prologue
    const/4 v1, -0x1

    .line 997
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_0

    .line 998
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "getEfIdByTag error, Pbr file is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :goto_0
    return v1

    .line 1001
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1003
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_1

    .line 1004
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "getEfIdByTag error, fileIds is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1008
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1009
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 1012
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEmailNum()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 352
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ishaveEmail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveEmail:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {p0, v5, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectEfids(II)[I

    move-result-object v0

    .line 356
    .local v0, efids:[I
    if-nez v0, :cond_0

    .line 357
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "efids is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v1, -0x2

    .line 363
    :goto_0
    return v1

    .line 361
    :cond_0
    array-length v1, v0

    .line 362
    .local v1, num:I
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEmailNum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEmailRecordSizeArray()[I
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSizeArray:[I

    return-object v0
.end method

.method public getEmailType()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 343
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-ne v1, v0, :cond_0

    .line 344
    const/4 v0, 0x2

    .line 346
    :cond_0
    return v0
.end method

.method public getIapFileRecord(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "recNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findEFIapInfo(I)I

    move-result v0

    .line 548
    .local v0, efid:I
    if-gez v0, :cond_0

    .line 549
    const/4 v1, 0x0

    .line 551
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    aget-object v1, v1, p1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getIapRecordSizeArray()[I
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapRecordSizeArray:[I

    return-object v0
.end method

.method public getNewSubjectNumber(IIIIIZ)I
    .locals 9
    .parameter "type"
    .parameter "num"
    .parameter "efid"
    .parameter "index"
    .parameter "adnNum"
    .parameter "isInIap"

    .prologue
    .line 856
    const-string v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNewSubjectNumber   adnNum "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isInIap "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " efid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v2

    .line 859
    .local v2, idx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    const/4 v3, -0x1

    .line 860
    .local v3, newSubjectNum:I
    if-nez v2, :cond_1

    .line 862
    const/4 p5, -0x1

    .line 901
    .end local p5
    :cond_0
    :goto_0
    return p5

    .line 865
    .restart local p5
    :cond_1
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    if-eqz v6, :cond_2

    iget-object v6, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 866
    :cond_2
    const-string v6, "getNewSubjectNumber idx.record == null || !idx.record.containsKey(efid)  "

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 867
    const/4 p5, -0x1

    goto :goto_0

    .line 869
    :cond_3
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 871
    .local v0, count:I
    const-string v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNewSubjectNumber  count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "adnNum "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    if-eqz p6, :cond_6

    .line 876
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aget-object v4, v6, p4

    check-cast v4, Ljava/util/Set;

    .line 877
    .local v4, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    if-gt v1, v0, :cond_4

    .line 878
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 881
    .local v5, subjectNum:Ljava/lang/Integer;
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 883
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 884
    const-string v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNewSubjectNumber  subjectNum(1) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 887
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aput-object v4, v6, p4

    .line 888
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    .line 889
    invoke-direct {p0, p1, p3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->SetRepeatUsedNumSet(IILjava/util/Set;)V

    .end local v5           #subjectNum:Ljava/lang/Integer;
    :cond_4
    move p5, v3

    .line 901
    goto/16 :goto_0

    .line 877
    .restart local v5       #subjectNum:Ljava/lang/Integer;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 895
    .end local v1           #i:I
    .end local v4           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v5           #subjectNum:Ljava/lang/Integer;
    :cond_6
    if-le p5, v0, :cond_0

    move p5, v3

    .line 896
    goto/16 :goto_0
.end method

.method public getNumRecs()I
    .locals 3

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v0, :cond_1

    .line 309
    const-string v0, "UsimPhoneBookManager"

    const-string v2, "Error: Pbr file is empty"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v0, 0x0

    monitor-exit v1

    .line 313
    :goto_0
    return v0

    .line 312
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPbrFile()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    return-object v0
.end method

.method public getPhoneBookRecordsNum()I
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPhoneNumMaxLen()I
    .locals 1

    .prologue
    .line 338
    const/16 v0, 0x14

    return v0
.end method

.method public getRepeatUsedNumSet(Ljava/util/LinkedList;IILjava/util/Set;I)Ljava/util/Set;
    .locals 5
    .parameter
    .parameter "idx"
    .parameter "efid"
    .parameter
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;",
            ">;II",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    .local p1, lst:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;>;"
    .local p4, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 717
    .local v0, index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    move-object v3, p4

    .line 719
    .local v3, totalSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    add-int/lit8 v1, p2, 0x1

    .local v1, m:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 721
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    .line 723
    .restart local v0       #index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    if-eqz v0, :cond_0

    .line 725
    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsedNumSetIndex(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)I

    move-result v2

    .line 726
    .local v2, num:I
    if-ltz v2, :cond_0

    .line 727
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aget-object v4, v4, v2

    check-cast v4, Ljava/util/Set;

    invoke-virtual {p0, v4, v3, p5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsedNumSet(Ljava/util/Set;Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v3

    .line 719
    .end local v2           #num:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 731
    :cond_1
    return-object v3
.end method

.method public getSubjectEfids(II)[I
    .locals 5
    .parameter "type"
    .parameter "num"

    .prologue
    .line 600
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v0

    .line 602
    .local v0, index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    if-nez v0, :cond_1

    .line 604
    const/4 v1, 0x0

    .line 612
    :cond_0
    :goto_0
    return-object v1

    .line 607
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    .line 608
    .local v1, result:[I
    if-eqz v1, :cond_0

    .line 609
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubjectEfids  length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSubjectTagNumberInIap(II)[[I
    .locals 9
    .parameter "type"
    .parameter "num"

    .prologue
    const/4 v5, 0x0

    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, anrTagMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v2

    .line 620
    .local v2, index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    const/4 v3, 0x0

    .line 621
    .local v3, isInIap:Z
    if-nez v2, :cond_0

    .line 623
    check-cast v5, [[I

    .line 647
    :goto_0
    return-object v5

    .line 626
    :cond_0
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v6, v6

    const/4 v7, 0x2

    filled-new-array {v6, v7}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 627
    .local v4, result:[[I
    iget-object v0, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    .line 628
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 629
    :cond_1
    const-string v6, "getSubjectTagNumberInIap recordNumInIap == null"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 630
    check-cast v5, [[I

    goto :goto_0

    .line 632
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v6, v6

    if-ge v1, v6, :cond_4

    .line 634
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 635
    aget-object v7, v4, v1

    const/4 v8, 0x1

    iget-object v6, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v7, v8

    .line 636
    aget-object v6, v4, v1

    const/4 v7, 0x0

    iget-object v8, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v8, v8, v1

    aput v8, v6, v7

    .line 637
    const/4 v3, 0x1

    .line 632
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 641
    :cond_4
    if-nez v3, :cond_5

    move-object v4, v5

    .line 643
    check-cast v4, [[I

    .line 644
    const-string v5, "getSubjectTagNumberInIap isInIap == false"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    :cond_5
    move-object v5, v4

    .line 647
    goto :goto_0
.end method

.method public getUsedNumSet(Ljava/util/Set;Ljava/util/Set;I)Ljava/util/Set;
    .locals 6
    .parameter
    .parameter
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 697
    .local p1, set1:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, set2:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object v2, p1

    .line 699
    .local v2, totalSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, p3, :cond_1

    .line 700
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 701
    .local v1, subjectNum:Ljava/lang/Integer;
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 703
    const-string v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUsedNumSet  subjectNum(1) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    .end local v1           #subjectNum:Ljava/lang/Integer;
    :cond_1
    return-object v2
.end method

.method public getValidNumToMatch(Lcom/android/internal/telephony/AdnRecord;I[I)[I
    .locals 11
    .parameter "adn"
    .parameter "type"
    .parameter "subjectNums"

    .prologue
    const/4 v10, 0x0

    .line 367
    const/4 v9, 0x0

    .line 368
    .local v9, ret:[I
    const/4 v3, 0x0

    .line 370
    .local v3, efid:I
    const/4 v1, 0x0

    .local v1, num:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getNumRecs()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 372
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findEFInfo(I)I

    move-result v3

    .line 374
    if-gtz v3, :cond_0

    move-object v0, v10

    .line 416
    :goto_1
    return-object v0

    .line 378
    :cond_0
    const-string v0, "UsimPhoneBookManager"

    const-string v2, "getEfIdToMatch "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v0, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "efid is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 384
    .local v8, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    if-nez v8, :cond_1

    move-object v0, v10

    .line 386
    goto :goto_1

    .line 388
    :cond_1
    const-string v0, "UsimPhoneBookManager"

    const-string v2, "getEfIdToMatch (2)"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v6, 0x1

    .line 393
    .local v6, count:I
    const/4 v4, 0x0

    .line 395
    .local v4, adnIndex:I
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 396
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/AdnRecord;->isEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    const-string v0, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "we got the index "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    move v4, v6

    move-object v0, p0

    move v2, p2

    move-object v5, p3

    .line 400
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAvalibleSubjectCount(IIII[I)[I

    move-result-object v9

    .line 401
    if-eqz v9, :cond_2

    move-object v0, v9

    .line 403
    goto :goto_1

    .line 409
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 370
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4           #adnIndex:I
    .end local v6           #count:I
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    .end local v8           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_4
    move-object v0, v10

    .line 416
    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2430
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 2607
    :goto_0
    :pswitch_0
    return-void

    .line 2432
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2433
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_0

    .line 2434
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 2436
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2437
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 2438
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2441
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v6, "Loading USIM ADN records done"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2442
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2445
    .restart local v0       #ar:Landroid/os/AsyncResult;
    const/4 v4, 0x0

    .line 2446
    .local v4, size:I
    if-eqz v0, :cond_1

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 2447
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2450
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_USIM_ADN_LOAD_DONE size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2452
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_2

    .line 2453
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2455
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2456
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 2457
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6

    .line 2460
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v4           #size:I
    :pswitch_3
    const-string v6, "Loading USIM IAP records done"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2461
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2462
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_4

    .line 2463
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-nez v6, :cond_3

    .line 2464
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 2466
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2468
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2469
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 2470
    monitor-exit v7

    goto/16 :goto_0

    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v6

    .line 2474
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    const-string v6, "Loading USIM ANR records done"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2475
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2476
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_6

    .line 2477
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    if-nez v6, :cond_5

    .line 2478
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    .line 2484
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2486
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAnrFileRecord.size() is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2489
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2490
    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 2491
    monitor-exit v7

    goto/16 :goto_0

    :catchall_3
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v6

    .line 2495
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    const-string v6, "Loading USIM Email records done"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2496
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2497
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_7

    .line 2499
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 2501
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2502
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading USIM Email records done size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2505
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2506
    :try_start_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 2507
    monitor-exit v7

    goto/16 :goto_0

    :catchall_4
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v6

    .line 2510
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    const-string v6, "UsimPhoneBookManager"

    const-string v7, "Loading EVENT_ADN_RECORD_COUNT"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2512
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2513
    :try_start_5
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_8

    .line 2514
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    check-cast v6, [I

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    .line 2518
    const-string v6, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_ADN_RECORD_COUNT Size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " total "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " #record "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 2523
    monitor-exit v7

    goto/16 :goto_0

    :catchall_5
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v6

    .line 2527
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2528
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_a

    .line 2529
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/ArrayList;

    if-nez v6, :cond_9

    .line 2530
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/ArrayList;

    .line 2533
    :cond_9
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/ArrayList;

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2534
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading USIM Grp records done size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2537
    :cond_a
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2538
    :try_start_6
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 2539
    monitor-exit v7

    goto/16 :goto_0

    :catchall_6
    move-exception v6

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v6

    .line 2543
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading USIM Gas records done, mGasFileRecord:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2544
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2545
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_b

    .line 2547
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasFileRecord:Ljava/util/ArrayList;

    .line 2549
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasFileRecord:Ljava/util/ArrayList;

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2550
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading USIM Gas records done size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mGasFileRecord:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2553
    :cond_b
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2554
    :try_start_7
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 2555
    monitor-exit v7

    goto/16 :goto_0

    :catchall_7
    move-exception v6

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v6

    .line 2558
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    const-string v6, "UsimPhoneBookManager"

    const-string v7, "Loading EVENT_LOAD_EF_PBC_RECORD_DONE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    move-object v0, v6

    check-cast v0, Landroid/os/AsyncResult;

    .line 2560
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_c

    .line 2562
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbcFileRecord:Ljava/util/ArrayList;

    .line 2564
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbcFileRecord:Ljava/util/ArrayList;

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2565
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading USIM PBC records done size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbcFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2570
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2571
    :try_start_8
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 2572
    monitor-exit v7

    goto/16 :goto_0

    :catchall_8
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v6

    .line 2567
    :cond_c
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbcFileRecord:Ljava/util/ArrayList;

    .line 2568
    const-string v6, "Loading USIM PBC records failed"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2575
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    move-object v0, v6

    check-cast v0, Landroid/os/AsyncResult;

    .line 2576
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v3, v6

    check-cast v3, [B

    .line 2577
    .local v3, data:[B
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2578
    .local v5, temp:I
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_d

    .line 2579
    const-string v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_EF_CC_LOAD_DONE has exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "load failed"

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v6, v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2582
    :cond_d
    const-string v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_EF_CC_LOAD_DONE data "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    new-array v2, v11, [B

    .line 2586
    .local v2, counter:[B
    aget-byte v6, v3, v9

    shl-int/lit8 v6, v6, 0x8

    const v7, 0xff00

    and-int/2addr v6, v7

    aget-byte v7, v3, v10

    and-int/lit16 v7, v7, 0xff

    or-int v1, v6, v7

    .line 2587
    .local v1, cc:I
    add-int/2addr v1, v5

    .line 2588
    const v6, 0xffff

    if-le v1, v6, :cond_e

    .line 2589
    aput-byte v9, v2, v9

    .line 2590
    aput-byte v10, v2, v10

    .line 2595
    :goto_2
    const-string v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_EF_CC_LOAD_DONE counter "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v7, 0x4f23

    const/16 v8, 0xd

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v2, v8}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 2592
    :cond_e
    and-int/lit16 v6, v1, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v10

    .line 2593
    shr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v9

    goto :goto_2

    .line 2599
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #cc:I
    .end local v2           #counter:[B
    .end local v3           #data:[B
    .end local v5           #temp:I
    :pswitch_b
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    move-object v0, v6

    check-cast v0, Landroid/os/AsyncResult;

    .line 2600
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_f

    .line 2601
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "update EF records failed"

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v6, v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2604
    :cond_f
    const-string v6, "UsimPhoneBookManager"

    const-string/jumbo v7, "update_record_success"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2430
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_9
    .end packed-switch
.end method

.method public isSubjectRecordInIap(III)Z
    .locals 4
    .parameter "type"
    .parameter "num"
    .parameter "indexOfEfids"

    .prologue
    const/4 v1, 0x0

    .line 2034
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v0

    .line 2036
    .local v0, index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    if-nez v0, :cond_1

    .line 2046
    :cond_0
    :goto_0
    return v1

    .line 2040
    :cond_1
    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v2, v2, p3

    const/16 v3, 0xa9

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2041
    const/4 v1, 0x1

    goto :goto_0

    .line 2042
    :cond_2
    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v2, v2, p3

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_0

    goto :goto_0
.end method

.method public declared-synchronized loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 215
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 216
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 217
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :goto_0
    monitor-exit p0

    return-object v4

    .line 218
    :cond_0
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    .line 219
    monitor-exit v5

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 215
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 223
    :cond_1
    :try_start_4
    const-string v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadEfFilesFromUsim, mPbrFile:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v6, :cond_2

    .line 225
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 228
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v6, :cond_3

    .line 229
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->isPbrFileExisting:Z

    .line 230
    const-string v6, "UsimPhoneBookManager"

    const-string v7, "isPbrFileExisting = false"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    monitor-exit v5

    goto :goto_0

    .line 234
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 237
    .local v2, numRecs:I
    new-array v4, v2, [Ljava/lang/Object;

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    .line 238
    new-array v4, v2, [I

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    .line 239
    new-array v4, v2, [I

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSizeArray:[I

    .line 240
    new-array v4, v2, [I

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapRecordSizeArray:[I

    .line 241
    new-array v4, v2, [I

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSizeArray:[I

    .line 242
    new-array v4, v2, [I

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasRecordSizeArray:[I

    .line 243
    new-array v4, v2, [I

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSizeArray:[I

    .line 244
    new-array v4, v2, [I

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpRecordSizeArray:[I

    .line 245
    new-array v4, v2, [I

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasRecordSizeArray:[I

    .line 250
    const/4 v1, 0x1

    .line 251
    .local v1, isGotAdnSize:Z
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    .line 252
    const-string v4, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadEfFilesFromUsim, numRecs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v4, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadEfFilesFromUsim, mTotalSize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    if-nez v4, :cond_4

    .line 257
    const/4 v4, 0x3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    .line 258
    const/4 v1, 0x0

    .line 262
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_6

    .line 263
    const-string v4, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadEfFilesFromUsim, the current record num is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)[I

    .line 266
    if-nez v1, :cond_5

    .line 267
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileSizeAndWait(I)[I

    move-result-object v3

    .line 269
    .local v3, size:[I
    if-eqz v3, :cond_5

    .line 270
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v3, v7

    aput v7, v4, v6

    .line 271
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    const/4 v6, 0x1

    aget v7, v4, v6

    const/4 v8, 0x1

    aget v8, v3, v8

    add-int/2addr v7, v8

    aput v7, v4, v6

    .line 272
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    const/4 v6, 0x2

    aget v7, v4, v6

    const/4 v8, 0x2

    aget v8, v3, v8

    add-int/2addr v7, v8

    aput v7, v4, v6

    .line 276
    .end local v3           #size:[I
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFile(I)V

    .line 277
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 280
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrFileAndWait(I)V

    .line 281
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readGrpFileAndWait(I)V

    .line 283
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAdnRecord(I)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 287
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->CheckRepeatType2Ef()V

    .line 290
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAdnRecordNum()V

    .line 293
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePbcAndCc()V

    .line 295
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 297
    :try_start_5
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0
.end method

.method public loadGasFromUsim()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1939
    const-string v3, "loadGasFromUsim"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1941
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1942
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    .line 1963
    :goto_0
    return-object v3

    .line 1944
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 1946
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readGasFileAndWait(I)V

    .line 1949
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 1950
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "Error: mGasFileRecord file is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    const/4 v3, 0x0

    goto :goto_0

    .line 1954
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1955
    .local v1, gasSize:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGas size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1957
    const/4 v0, 0x0

    .line 1958
    .local v0, gasRec:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 1959
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #gasRec:[B
    check-cast v0, [B

    .line 1960
    .restart local v0       #gasRec:[B
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    array-length v4, v0

    invoke-static {v0, v5, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1958
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1962
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadGasFromUsim mGasList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1963
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method parseType1EmailFile(I)V
    .locals 9
    .parameter "numRecs"

    .prologue
    .line 2282
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 2283
    const/4 v3, 0x0

    .line 2284
    .local v3, emailRec:[B
    const-string v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseType1EmailFile  numRecs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 2287
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #emailRec:[B
    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2294
    .restart local v3       #emailRec:[B
    add-int/lit8 v0, v4, 0x1

    .line 2296
    .local v0, adnRecNum:I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    .line 2285
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2288
    .end local v0           #adnRecNum:I
    .end local v3           #emailRec:[B
    :catch_0
    move-exception v1

    .line 2289
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "UsimPhoneBookManager"

    const-string v7, "Error: Improper ICC card: No email record for ADN, continuing"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    return-void

    .line 2300
    .restart local v0       #adnRecNum:I
    .restart local v3       #emailRec:[B
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v2

    .line 2302
    .local v2, email:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2307
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2308
    .local v5, val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_3

    .line 2309
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2311
    .restart local v5       #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2313
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public removeSubjectNumFromSet(IIIII)V
    .locals 6
    .parameter "type"
    .parameter "num"
    .parameter "efid"
    .parameter "index"
    .parameter "anrNum"

    .prologue
    .line 907
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p5}, Ljava/lang/Integer;-><init>(I)V

    .line 908
    .local v0, delNum:Ljava/lang/Integer;
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v2

    .line 910
    .local v2, subject:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    if-nez v2, :cond_0

    .line 919
    :goto_0
    return-void

    .line 913
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aget-object v1, v3, p4

    check-cast v1, Ljava/util/Set;

    .line 914
    .local v1, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 915
    const-string v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeSubjectNumFromSet  delnum(1) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aput-object v1, v3, p4

    .line 918
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 190
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 191
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 192
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbcFileRecord:Ljava/util/ArrayList;

    .line 193
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 194
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 196
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    .line 197
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasFileRecord:Ljava/util/ArrayList;

    .line 198
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileRecord:Ljava/util/ArrayList;

    .line 199
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/ArrayList;

    .line 200
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasFileRecord:Ljava/util/ArrayList;

    .line 201
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveEmail:Z

    .line 202
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveAnr:Z

    .line 203
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveAas:Z

    .line 204
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveSne:Z

    .line 205
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveGrp:Z

    .line 206
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveGas:Z

    .line 207
    iput v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->anrFileCount:I

    .line 208
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    .line 209
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    .line 210
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    .line 212
    return-void
.end method

.method public setIapFileRecord(IIBI)V
    .locals 4
    .parameter "recNum"
    .parameter "index"
    .parameter "value"
    .parameter "numInIap"

    .prologue
    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIapFileRecord >>  recNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " numInIap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 561
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    aget-object v1, v2, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 562
    .local v1, tmpIapFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 563
    .local v0, record:[B
    aput-byte p3, v0, p4

    .line 564
    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 565
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    aput-object v1, v2, p1

    .line 567
    return-void
.end method

.method public setPhoneBookRecords(ILcom/android/internal/telephony/AdnRecord;)V
    .locals 1
    .parameter "index"
    .parameter "adn"

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 931
    return-void
.end method

.method public updateGasList(Ljava/lang/String;I)V
    .locals 2
    .parameter "groupName"
    .parameter "groupId"

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1970
    :goto_0
    return-void

    .line 1969
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
