.class public Lcom/android/server/AppManage;
.super Landroid/app/Activity;
.source "AppManage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppManage$SizeComparator;,
        Lcom/android/server/AppManage$AppInfo;,
        Lcom/android/server/AppManage$AppInfoMap;,
        Lcom/android/server/AppManage$SizeObserver;,
        Lcom/android/server/AppManage$AppInfoAdapter;,
        Lcom/android/server/AppManage$AppViewHolder;,
        Lcom/android/server/AppManage$FreeMemory;,
        Lcom/android/server/AppManage$GetResource;,
        Lcom/android/server/AppManage$PackageUninstallObserver;,
        Lcom/android/server/AppManage$PackageMoveObserver;,
        Lcom/android/server/AppManage$ClearUserDataObserver;
    }
.end annotation


# static fields
.field private static final DLG_BASE:I = 0x0

.field private static final DLG_LOADING:I = 0x1

.field private static final DLG_PROCESSING:I = 0x2

.field private static final FREE_SPACE:I = 0x1

.field private static final GET_RESOURCE:I = 0x2

.field private static final MAILPACKAGE:Ljava/lang/String; = "com.android.email"

.field private static final MMSPACKAGE:Ljava/lang/String; = "com.android.mms"

.field private static final SIZE_INVALID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AppManager"


# instance fields
.field private mAppStartBtn:Landroid/widget/Button;

.field private mCache:Lcom/android/server/AppManage$AppInfoMap;

.field private mClearDataCheckList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClearDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClearDataObserver:Lcom/android/server/AppManage$ClearUserDataObserver;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mMove2SdCheckList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMove2SdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageMoveObserver:Lcom/android/server/AppManage$PackageMoveObserver;

.field private mPackageUninstallobserver:Lcom/android/server/AppManage$PackageUninstallObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mUninstallCheckList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUninstallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private myAppInfoAdapter:Lcom/android/server/AppManage$AppInfoAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppManage;->mClearDataList:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppManage;->mMove2SdList:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppManage;->mUninstallList:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppManage;->mMove2SdCheckList:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppManage;->mClearDataCheckList:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppManage;->mUninstallCheckList:Ljava/util/List;

    .line 108
    new-instance v0, Lcom/android/server/AppManage$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppManage$1;-><init>(Lcom/android/server/AppManage;)V

    iput-object v0, p0, Lcom/android/server/AppManage;->mHandler:Landroid/os/Handler;

    .line 970
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AppManage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/AppManage;->initListView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/AppManage;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/AppManage;->mUninstallList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/AppManage;)Lcom/android/server/AppManage$PackageMoveObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/AppManage;->mPackageMoveObserver:Lcom/android/server/AppManage$PackageMoveObserver;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/AppManage;Lcom/android/server/AppManage$PackageMoveObserver;)Lcom/android/server/AppManage$PackageMoveObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/AppManage;->mPackageMoveObserver:Lcom/android/server/AppManage$PackageMoveObserver;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/AppManage;)Lcom/android/server/AppManage$AppInfoAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/AppManage;->myAppInfoAdapter:Lcom/android/server/AppManage$AppInfoAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/AppManage;)Lcom/android/server/AppManage$PackageUninstallObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/AppManage;->mPackageUninstallobserver:Lcom/android/server/AppManage$PackageUninstallObserver;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/AppManage;Lcom/android/server/AppManage$PackageUninstallObserver;)Lcom/android/server/AppManage$PackageUninstallObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/AppManage;->mPackageUninstallobserver:Lcom/android/server/AppManage$PackageUninstallObserver;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/AppManage;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/AppManage;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/AppManage;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/AppManage;->mMove2SdCheckList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/AppManage;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/AppManage;->mClearDataCheckList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/AppManage;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/AppManage;->mUninstallCheckList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/AppManage;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppManage;->getSizeStr(J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/AppManage;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/AppManage;->mPackageList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/AppManage;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/AppManage;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/AppManage;)Lcom/android/server/AppManage$AppInfoMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/AppManage;->mCache:Lcom/android/server/AppManage$AppInfoMap;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/AppManage;Lcom/android/server/AppManage$AppInfoMap;)Lcom/android/server/AppManage$AppInfoMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/AppManage;->mCache:Lcom/android/server/AppManage$AppInfoMap;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/AppManage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/AppManage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/AppManage;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/AppManage;->mClearDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/AppManage;)Lcom/android/server/AppManage$ClearUserDataObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/AppManage;->mClearDataObserver:Lcom/android/server/AppManage$ClearUserDataObserver;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/AppManage;Lcom/android/server/AppManage$ClearUserDataObserver;)Lcom/android/server/AppManage$ClearUserDataObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/AppManage;->mClearDataObserver:Lcom/android/server/AppManage$ClearUserDataObserver;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/AppManage;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/AppManage;->mMove2SdList:Ljava/util/List;

    return-object v0
.end method

.method private getAppsOnMemory()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v4, p0, Lcom/android/server/AppManage;->mPm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 404
    .local v2, installedPackageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-nez v2, :cond_1

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 423
    :cond_0
    return-object v0

    .line 408
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 411
    .local v3, packageinfo:Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    if-nez v4, :cond_2

    .line 412
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.android.email"

    if-eq v4, v5, :cond_2

    .line 415
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.android.mms"

    if-eq v4, v5, :cond_2

    .line 418
    iget-object v4, p0, Lcom/android/server/AppManage;->mPackageList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getSizeStr(J)Ljava/lang/CharSequence;
    .locals 3
    .parameter "size"

    .prologue
    .line 428
    const/4 v0, 0x0

    .line 430
    .local v0, appSize:Ljava/lang/CharSequence;
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 431
    const-string v1, "AppManager"

    const-string v2, "getSizeStr SizeInvalid"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v1, 0x0

    .line 435
    :goto_0
    return-object v1

    .line 434
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 435
    goto :goto_0
.end method

.method private initListView()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/AppManage;->myAppInfoAdapter:Lcom/android/server/AppManage$AppInfoAdapter;

    invoke-virtual {v0}, Lcom/android/server/AppManage$AppInfoAdapter;->sortList()V

    .line 181
    iget-object v0, p0, Lcom/android/server/AppManage;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/server/AppManage;->myAppInfoAdapter:Lcom/android/server/AppManage$AppInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/AppManage;->dismissDialog(I)V

    .line 183
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v2, 0x1090029

    invoke-virtual {p0, v2}, Lcom/android/server/AppManage;->setContentView(I)V

    .line 130
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/server/AppManage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/server/AppManage;->mInflater:Landroid/view/LayoutInflater;

    .line 131
    invoke-virtual {p0}, Lcom/android/server/AppManage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AppManage;->mPm:Landroid/content/pm/PackageManager;

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AppManage;->mPackageList:Ljava/util/List;

    .line 134
    invoke-direct {p0}, Lcom/android/server/AppManage;->getAppsOnMemory()Ljava/util/List;

    move-result-object v0

    .line 135
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v2, Lcom/android/server/AppManage$AppInfoAdapter;

    invoke-direct {v2, p0, p0, v0}, Lcom/android/server/AppManage$AppInfoAdapter;-><init>(Lcom/android/server/AppManage;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/server/AppManage;->myAppInfoAdapter:Lcom/android/server/AppManage$AppInfoAdapter;

    .line 137
    const v2, 0x1020254

    invoke-virtual {p0, v2}, Lcom/android/server/AppManage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 138
    .local v1, lv:Landroid/widget/ListView;
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 139
    iput-object v1, p0, Lcom/android/server/AppManage;->mListView:Landroid/widget/ListView;

    .line 141
    new-instance v2, Lcom/android/server/AppManage$GetResource;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/AppManage$GetResource;-><init>(Lcom/android/server/AppManage;Lcom/android/server/AppManage$1;)V

    invoke-virtual {v2}, Lcom/android/server/AppManage$GetResource;->start()V

    .line 142
    invoke-virtual {p0, v4}, Lcom/android/server/AppManage;->showDialog(I)V

    .line 144
    const v2, 0x1020253

    invoke-virtual {p0, v2}, Lcom/android/server/AppManage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/server/AppManage;->mAppStartBtn:Landroid/widget/Button;

    .line 145
    iget-object v2, p0, Lcom/android/server/AppManage;->mAppStartBtn:Landroid/widget/Button;

    new-instance v3, Lcom/android/server/AppManage$2;

    invoke-direct {v3, p0}, Lcom/android/server/AppManage$2;-><init>(Lcom/android/server/AppManage;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    if-ne p1, v3, :cond_0

    .line 157
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 158
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 159
    const v1, 0x1040499

    invoke-virtual {p0, v1}, Lcom/android/server/AppManage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 161
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 172
    .end local v0           #dlg:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    .line 164
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 165
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 166
    .restart local v0       #dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 167
    const v1, 0x104049a

    invoke-virtual {p0, v1}, Lcom/android/server/AppManage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 169
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 172
    .end local v0           #dlg:Landroid/app/ProgressDialog;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected refreshUI()V
    .locals 5

    .prologue
    .line 187
    iget-object v2, p0, Lcom/android/server/AppManage;->mClearDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/AppManage;->myAppInfoAdapter:Lcom/android/server/AppManage$AppInfoAdapter;

    #getter for: Lcom/android/server/AppManage$AppInfoAdapter;->mAppList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/AppManage$AppInfoAdapter;->access$300(Lcom/android/server/AppManage$AppInfoAdapter;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/android/server/AppManage;->myAppInfoAdapter:Lcom/android/server/AppManage$AppInfoAdapter;

    invoke-virtual {v2}, Lcom/android/server/AppManage$AppInfoAdapter;->resetAppList()Z

    move-result v1

    .line 189
    .local v1, refreshUI:Z
    if-nez v1, :cond_0

    .line 190
    const-string v2, "AppManager"

    const-string v3, "rebuild GUI failed."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v1           #refreshUI:Z
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/AppManage;->mClearDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 205
    iget-object v2, p0, Lcom/android/server/AppManage;->mMove2SdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 206
    iget-object v2, p0, Lcom/android/server/AppManage;->mUninstallList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 208
    iget-object v2, p0, Lcom/android/server/AppManage;->mUninstallCheckList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 209
    iget-object v2, p0, Lcom/android/server/AppManage;->mMove2SdCheckList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 210
    iget-object v2, p0, Lcom/android/server/AppManage;->mClearDataCheckList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 213
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/AppManage;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_1
    return-void

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/android/server/AppManage;->myAppInfoAdapter:Lcom/android/server/AppManage$AppInfoAdapter;

    #getter for: Lcom/android/server/AppManage$AppInfoAdapter;->mAppList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/AppManage$AppInfoAdapter;->access$300(Lcom/android/server/AppManage$AppInfoAdapter;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    .line 193
    iget-object v2, p0, Lcom/android/server/AppManage;->myAppInfoAdapter:Lcom/android/server/AppManage$AppInfoAdapter;

    invoke-direct {p0}, Lcom/android/server/AppManage;->getAppsOnMemory()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/android/server/AppManage$AppInfoAdapter;->mAppList:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/server/AppManage$AppInfoAdapter;->access$302(Lcom/android/server/AppManage$AppInfoAdapter;Ljava/util/List;)Ljava/util/List;

    .line 195
    new-instance v2, Lcom/android/server/AppManage$AppInfoMap;

    invoke-direct {v2, p0}, Lcom/android/server/AppManage$AppInfoMap;-><init>(Lcom/android/server/AppManage;)V

    iput-object v2, p0, Lcom/android/server/AppManage;->mCache:Lcom/android/server/AppManage$AppInfoMap;

    .line 196
    iget-object v2, p0, Lcom/android/server/AppManage;->myAppInfoAdapter:Lcom/android/server/AppManage$AppInfoAdapter;

    invoke-virtual {v2}, Lcom/android/server/AppManage$AppInfoAdapter;->resetAppList()Z

    move-result v1

    .line 197
    .restart local v1       #refreshUI:Z
    if-nez v1, :cond_0

    .line 198
    const-string v2, "AppManager"

    const-string v3, "rebuild GUI failed."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    .end local v1           #refreshUI:Z
    :cond_2
    iget-object v2, p0, Lcom/android/server/AppManage;->myAppInfoAdapter:Lcom/android/server/AppManage$AppInfoAdapter;

    invoke-virtual {v2}, Lcom/android/server/AppManage$AppInfoAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t dismissDialog after onDistory :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
