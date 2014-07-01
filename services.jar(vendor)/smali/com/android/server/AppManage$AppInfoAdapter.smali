.class Lcom/android/server/AppManage$AppInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfoAdapter"
.end annotation


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lcom/android/server/AppManage$AppInfo;

.field private mSizeComparator:Lcom/android/server/AppManage$SizeComparator;

.field final synthetic this$0:Lcom/android/server/AppManage;


# direct methods
.method public constructor <init>(Lcom/android/server/AppManage;Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 470
    .local p3, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iput-object p1, p0, Lcom/android/server/AppManage$AppInfoAdapter;->this$0:Lcom/android/server/AppManage;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 468
    new-instance v0, Lcom/android/server/AppManage$SizeComparator;

    iget-object v1, p0, Lcom/android/server/AppManage$AppInfoAdapter;->this$0:Lcom/android/server/AppManage;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppManage$SizeComparator;-><init>(Lcom/android/server/AppManage;Lcom/android/server/AppManage$1;)V

    iput-object v0, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mSizeComparator:Lcom/android/server/AppManage$SizeComparator;

    .line 471
    iput-object p3, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mAppList:Ljava/util/List;

    .line 472
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/AppManage$AppInfoAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/AppManage$AppInfoAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mAppList:Ljava/util/List;

    return-object p1
.end method

.method private adjustIndex()V
    .locals 5

    .prologue
    .line 664
    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 665
    .local v1, imax:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 666
    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 667
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mCache:Lcom/android/server/AppManage$AppInfoMap;
    invoke-static {v3}, Lcom/android/server/AppManage;->access$500(Lcom/android/server/AppManage;)Lcom/android/server/AppManage$AppInfoMap;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/android/server/AppManage$AppInfoMap;->getEntry(Ljava/lang/String;)Lcom/android/server/AppManage$AppInfo;
    invoke-static {v3, v4}, Lcom/android/server/AppManage$AppInfoMap;->access$1600(Lcom/android/server/AppManage$AppInfoMap;Ljava/lang/String;)Lcom/android/server/AppManage$AppInfo;

    move-result-object v3

    iput v0, v3, Lcom/android/server/AppManage$AppInfo;->index:I

    .line 665
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 669
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteItem(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 475
    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 477
    .local v1, imax:I
    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mCache:Lcom/android/server/AppManage$AppInfoMap;
    invoke-static {v3}, Lcom/android/server/AppManage;->access$500(Lcom/android/server/AppManage;)Lcom/android/server/AppManage$AppInfoMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/AppManage$AppInfoMap;->removeEntry(Ljava/lang/String;)V

    .line 478
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 479
    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 480
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-ne p1, v3, :cond_1

    .line 481
    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 485
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-void

    .line 478
    .restart local v2       #info:Landroid/content/pm/ApplicationInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 6
    .parameter "position"

    .prologue
    const-wide/16 v3, -0x1

    .line 512
    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 513
    .local v1, imax:I
    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    .line 514
    :cond_0
    const-string v2, "AppManager"

    const-string v5, "Position out of bounds in List Adapter"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v3

    .line 522
    :goto_0
    return-wide v2

    .line 517
    :cond_1
    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mCache:Lcom/android/server/AppManage$AppInfoMap;
    invoke-static {v2}, Lcom/android/server/AppManage;->access$500(Lcom/android/server/AppManage;)Lcom/android/server/AppManage$AppInfoMap;

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/android/server/AppManage$AppInfoMap;->getEntry(Ljava/lang/String;)Lcom/android/server/AppManage$AppInfo;
    invoke-static {v5, v2}, Lcom/android/server/AppManage$AppInfoMap;->access$1600(Lcom/android/server/AppManage$AppInfoMap;Ljava/lang/String;)Lcom/android/server/AppManage$AppInfo;

    move-result-object v0

    .line 518
    .local v0, aInfo:Lcom/android/server/AppManage$AppInfo;
    if-nez v0, :cond_2

    .line 519
    const-string v2, "AppManager"

    const-string v5, "getItemId return -1"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v3

    .line 520
    goto :goto_0

    .line 522
    :cond_2
    iget v2, v0, Lcom/android/server/AppManage$AppInfo;->index:I

    int-to-long v2, v2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 527
    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 528
    const-string v3, "AppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid view position:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actual size is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :goto_0
    return-object v2

    .line 535
    :cond_0
    if-nez p2, :cond_7

    .line 537
    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/server/AppManage;->access$1700(Lcom/android/server/AppManage;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x1090028

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 539
    new-instance v1, Lcom/android/server/AppManage$AppViewHolder;

    invoke-direct {v1}, Lcom/android/server/AppManage$AppViewHolder;-><init>()V

    .line 540
    .local v1, holder:Lcom/android/server/AppManage$AppViewHolder;
    const v2, 0x102024c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/server/AppManage$AppViewHolder;->appName:Landroid/widget/TextView;

    .line 542
    const v2, 0x102024b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/server/AppManage$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 544
    const v2, 0x102024d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/server/AppManage$AppViewHolder;->appSize:Landroid/widget/TextView;

    .line 546
    const v2, 0x102024e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/android/server/AppManage$AppViewHolder;->appMv2SdFlag:Landroid/widget/CheckBox;

    .line 548
    const v2, 0x102024f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/android/server/AppManage$AppViewHolder;->appCleanDataFlag:Landroid/widget/CheckBox;

    .line 550
    const v2, 0x1020250

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/android/server/AppManage$AppViewHolder;->appUninstallFlag:Landroid/widget/CheckBox;

    .line 553
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 559
    :goto_1
    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 560
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mCache:Lcom/android/server/AppManage$AppInfoMap;
    invoke-static {v2}, Lcom/android/server/AppManage;->access$500(Lcom/android/server/AppManage;)Lcom/android/server/AppManage$AppInfoMap;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/android/server/AppManage$AppInfoMap;->getEntry(Ljava/lang/String;)Lcom/android/server/AppManage$AppInfo;
    invoke-static {v2, v3}, Lcom/android/server/AppManage$AppInfoMap;->access$1600(Lcom/android/server/AppManage$AppInfoMap;Ljava/lang/String;)Lcom/android/server/AppManage$AppInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mInfo:Lcom/android/server/AppManage$AppInfo;

    .line 561
    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mInfo:Lcom/android/server/AppManage$AppInfo;

    if-eqz v2, :cond_8

    .line 562
    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mInfo:Lcom/android/server/AppManage$AppInfo;

    iget-object v2, v2, Lcom/android/server/AppManage$AppInfo;->appName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 563
    iget-object v2, v1, Lcom/android/server/AppManage$AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mInfo:Lcom/android/server/AppManage$AppInfo;

    iget-object v3, v3, Lcom/android/server/AppManage$AppInfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    :cond_1
    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mInfo:Lcom/android/server/AppManage$AppInfo;

    iget-object v2, v2, Lcom/android/server/AppManage$AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 566
    iget-object v2, v1, Lcom/android/server/AppManage$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mInfo:Lcom/android/server/AppManage$AppInfo;

    iget-object v3, v3, Lcom/android/server/AppManage$AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 568
    :cond_2
    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mInfo:Lcom/android/server/AppManage$AppInfo;

    iget-object v2, v2, Lcom/android/server/AppManage$AppInfo;->appSize:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 569
    iget-object v2, v1, Lcom/android/server/AppManage$AppViewHolder;->appSize:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mInfo:Lcom/android/server/AppManage$AppInfo;

    iget-object v3, v3, Lcom/android/server/AppManage$AppInfo;->appSize:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    :cond_3
    iget-object v2, v1, Lcom/android/server/AppManage$AppViewHolder;->appMv2SdFlag:Landroid/widget/CheckBox;

    invoke-virtual {v2, p1}, Landroid/widget/CheckBox;->setId(I)V

    .line 573
    iget-object v2, v1, Lcom/android/server/AppManage$AppViewHolder;->appCleanDataFlag:Landroid/widget/CheckBox;

    invoke-virtual {v2, p1}, Landroid/widget/CheckBox;->setId(I)V

    .line 574
    iget-object v2, v1, Lcom/android/server/AppManage$AppViewHolder;->appUninstallFlag:Landroid/widget/CheckBox;

    invoke-virtual {v2, p1}, Landroid/widget/CheckBox;->setId(I)V

    .line 576
    iget-object v2, v1, Lcom/android/server/AppManage$AppViewHolder;->appMv2SdFlag:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mInfo:Lcom/android/server/AppManage$AppInfo;

    iget-boolean v3, v3, Lcom/android/server/AppManage$AppInfo;->move2SdFlag:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 577
    iget-object v2, v1, Lcom/android/server/AppManage$AppViewHolder;->appCleanDataFlag:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mInfo:Lcom/android/server/AppManage$AppInfo;

    iget-boolean v3, v3, Lcom/android/server/AppManage$AppInfo;->clearDataFlag:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 578
    iget-object v2, v1, Lcom/android/server/AppManage$AppViewHolder;->appUninstallFlag:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mInfo:Lcom/android/server/AppManage$AppInfo;

    iget-boolean v3, v3, Lcom/android/server/AppManage$AppInfo;->uninstallFlag:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 580
    iget-object v2, v1, Lcom/android/server/AppManage$AppViewHolder;->appMv2SdFlag:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mMove2SdCheckList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/AppManage;->access$1800(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 581
    iget-object v2, v1, Lcom/android/server/AppManage$AppViewHolder;->appCleanDataFlag:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mClearDataCheckList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/AppManage;->access$1900(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 582
    iget-object v2, v1, Lcom/android/server/AppManage$AppViewHolder;->appUninstallFlag:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/server/AppManage$AppInfoAdapter;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mUninstallCheckList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/AppManage;->access$2000(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 584
    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mInfo:Lcom/android/server/AppManage$AppInfo;

    iget-boolean v2, v2, Lcom/android/server/AppManage$AppInfo;->move2SdFlag:Z

    if-ne v2, v5, :cond_4

    .line 585
    iget-object v2, v1, Lcom/android/server/AppManage$AppViewHolder;->appMv2SdFlag:Landroid/widget/CheckBox;

    new-instance v3, Lcom/android/server/AppManage$AppInfoAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/android/server/AppManage$AppInfoAdapter$1;-><init>(Lcom/android/server/AppManage$AppInfoAdapter;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    :cond_4
    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mInfo:Lcom/android/server/AppManage$AppInfo;

    iget-boolean v2, v2, Lcom/android/server/AppManage$AppInfo;->clearDataFlag:Z

    if-ne v2, v5, :cond_5

    .line 611
    iget-object v2, v1, Lcom/android/server/AppManage$AppViewHolder;->appCleanDataFlag:Landroid/widget/CheckBox;

    new-instance v3, Lcom/android/server/AppManage$AppInfoAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/android/server/AppManage$AppInfoAdapter$2;-><init>(Lcom/android/server/AppManage$AppInfoAdapter;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    :cond_5
    iget-object v2, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mInfo:Lcom/android/server/AppManage$AppInfo;

    iget-boolean v2, v2, Lcom/android/server/AppManage$AppInfo;->uninstallFlag:Z

    if-ne v2, v5, :cond_6

    .line 631
    iget-object v2, v1, Lcom/android/server/AppManage$AppViewHolder;->appUninstallFlag:Landroid/widget/CheckBox;

    new-instance v3, Lcom/android/server/AppManage$AppInfoAdapter$3;

    invoke-direct {v3, p0, v0}, Lcom/android/server/AppManage$AppInfoAdapter$3;-><init>(Lcom/android/server/AppManage$AppInfoAdapter;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_2
    move-object v2, p2

    .line 660
    goto/16 :goto_0

    .line 555
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #holder:Lcom/android/server/AppManage$AppViewHolder;
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppManage$AppViewHolder;

    .restart local v1       #holder:Lcom/android/server/AppManage$AppViewHolder;
    goto/16 :goto_1

    .line 658
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_8
    const-string v2, "AppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No info for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in property map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public resetAppList()Z
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/android/server/AppManage$AppInfoAdapter;->sortList()V

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/AppManage$AppInfoAdapter;->notifyDataSetChanged()V

    .line 497
    const/4 v0, 0x1

    return v0
.end method

.method public sortList()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mAppList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/AppManage$AppInfoAdapter;->mSizeComparator:Lcom/android/server/AppManage$SizeComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 673
    invoke-direct {p0}, Lcom/android/server/AppManage$AppInfoAdapter;->adjustIndex()V

    .line 674
    return-void
.end method
