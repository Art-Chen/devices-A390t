.class Lcom/android/server/AppManage$AppInfoMap;
.super Ljava/lang/Object;
.source "AppManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfoMap"
.end annotation


# instance fields
.field private mAppPropMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AppManage$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AppManage;


# direct methods
.method public constructor <init>(Lcom/android/server/AppManage;)V
    .locals 35
    .parameter

    .prologue
    .line 768
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AppManage$AppInfoMap;->this$0:Lcom/android/server/AppManage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 709
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/AppManage$AppInfoMap;->mAppPropMap:Ljava/util/Map;

    .line 769
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppManage$AppInfoMap;->mAppPropMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 770
    const/16 v19, 0x0

    .line 773
    .local v19, err:Z
    new-instance v24, Lcom/android/server/AppManage$SizeObserver;

    const/4 v4, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/AppManage$SizeObserver;-><init>(Lcom/android/server/AppManage;Lcom/android/server/AppManage$1;)V

    .line 779
    .local v24, mSizeObserver:Lcom/android/server/AppManage$SizeObserver;
    const/4 v6, -0x1

    .line 781
    .local v6, myIdx:I
    const/4 v12, 0x0

    .line 782
    .local v12, myMove2SdFlag:Z
    const/4 v13, 0x0

    .line 783
    .local v13, myClearDataFlag:Z
    const/4 v14, 0x0

    .line 784
    .local v14, myUninstallFlag:Z
    const/4 v15, 0x0

    .line 787
    .local v15, mySystemAppFlag:Z
    #getter for: Lcom/android/server/AppManage;->mPackageList:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Lcom/android/server/AppManage;->access$2300(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v16

    .line 789
    .local v16, count:I
    const/16 v29, 0x0

    .local v29, p:I
    :goto_0
    move/from16 v0, v29

    move/from16 v1, v16

    if-ge v0, v1, :cond_12

    .line 790
    #getter for: Lcom/android/server/AppManage;->mPackageList:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Lcom/android/server/AppManage;->access$2300(Lcom/android/server/AppManage;)Ljava/util/List;

    move-result-object v4

    move/from16 v0, v29

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/PackageInfo;

    .line 791
    .local v20, info:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 793
    .local v5, myPkgName:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v31, 0x4

    and-int v4, v4, v31

    if-eqz v4, :cond_0

    .line 789
    :goto_1
    add-int/lit8 v29, v29, 0x1

    const-wide/16 v9, 0x0

    .local v9, mySize:J
    goto :goto_0

    .line 796
    .end local v9           #mySize:J
    :cond_0
    new-instance v17, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 797
    .local v17, count1:Ljava/util/concurrent/CountDownLatch;
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lcom/android/server/AppManage$SizeObserver;->invokeGetSize(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    .line 800
    const-wide/16 v31, 0x1f4

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v17

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    :goto_2
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppManage$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    move-object/from16 v28, v0

    .line 807
    .local v28, myPackageStats:Landroid/content/pm/PackageStats;
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/AppManage$SizeObserver;->succeeded:Z

    move/from16 v30, v0

    .line 809
    .local v30, succeeded:Z
    if-nez v28, :cond_1

    .line 810
    if-eqz v30, :cond_3

    .line 811
    const-string v4, "AppManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Failed getting size for pkg : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_1
    :goto_3
    if-eqz v30, :cond_2

    if-nez v28, :cond_2

    .line 818
    const/16 v19, 0x1

    .line 821
    :cond_2
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    .line 822
    const/4 v15, 0x1

    .line 823
    if-eqz v28, :cond_4

    move-object/from16 v0, v28

    iget-wide v9, v0, Landroid/content/pm/PackageStats;->dataSize:J

    .line 824
    .restart local v9       #mySize:J
    :goto_4
    const/4 v12, 0x0

    .line 825
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 826
    const/4 v13, 0x0

    .line 834
    :goto_5
    const/4 v14, 0x0

    .line 890
    :goto_6
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #getter for: Lcom/android/server/AppManage;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/android/server/AppManage;->access$400(Lcom/android/server/AppManage;)Landroid/content/pm/PackageManager;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 891
    .local v7, myAppName:Ljava/lang/CharSequence;
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #getter for: Lcom/android/server/AppManage;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/android/server/AppManage;->access$400(Lcom/android/server/AppManage;)Landroid/content/pm/PackageManager;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 892
    .local v8, myAppIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p1

    #calls: Lcom/android/server/AppManage;->getSizeStr(J)Ljava/lang/CharSequence;
    invoke-static {v0, v9, v10}, Lcom/android/server/AppManage;->access$2200(Lcom/android/server/AppManage;J)Ljava/lang/CharSequence;

    move-result-object v11

    .line 894
    .local v11, myAppSize:Ljava/lang/CharSequence;
    new-instance v3, Lcom/android/server/AppManage$AppInfo;

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v15}, Lcom/android/server/AppManage$AppInfo;-><init>(Lcom/android/server/AppManage;Ljava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;JLjava/lang/CharSequence;ZZZZ)V

    .line 896
    .local v3, aInfo:Lcom/android/server/AppManage$AppInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppManage$AppInfoMap;->mAppPropMap:Ljava/util/Map;

    iget-object v0, v3, Lcom/android/server/AppManage$AppInfo;->pkgName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 801
    .end local v3           #aInfo:Lcom/android/server/AppManage$AppInfo;
    .end local v7           #myAppName:Ljava/lang/CharSequence;
    .end local v8           #myAppIcon:Landroid/graphics/drawable/Drawable;
    .end local v9           #mySize:J
    .end local v11           #myAppSize:Ljava/lang/CharSequence;
    .end local v28           #myPackageStats:Landroid/content/pm/PackageStats;
    .end local v30           #succeeded:Z
    :catch_0
    move-exception v18

    .line 802
    .local v18, e:Ljava/lang/InterruptedException;
    const-string v4, "AppManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Failed computing size for pkg : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 813
    .end local v18           #e:Ljava/lang/InterruptedException;
    .restart local v28       #myPackageStats:Landroid/content/pm/PackageStats;
    .restart local v30       #succeeded:Z
    :cond_3
    const-string v4, "AppManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Time out getting size for pkg : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 823
    :cond_4
    const-wide/16 v9, 0x0

    goto/16 :goto_4

    .line 828
    .restart local v9       #mySize:J
    :cond_5
    const-wide/16 v31, 0x0

    cmp-long v4, v9, v31

    if-lez v4, :cond_6

    .line 829
    const/4 v13, 0x1

    goto/16 :goto_5

    .line 831
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 836
    .end local v9           #mySize:J
    :cond_7
    const/4 v15, 0x0

    .line 837
    if-eqz v28, :cond_a

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->dataSize:J

    move-wide/from16 v31, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->codeSize:J

    move-wide/from16 v33, v0

    add-long v9, v31, v33

    .line 838
    .restart local v9       #mySize:J
    :goto_7
    if-eqz v28, :cond_b

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->dataSize:J

    move-wide/from16 v26, v0

    .line 839
    .local v26, myDataSize:J
    :goto_8
    new-instance v21, Landroid/content/pm/ApplicationInfo;

    invoke-direct/range {v21 .. v21}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 841
    .local v21, info1:Landroid/content/pm/ApplicationInfo;
    :try_start_1
    #getter for: Lcom/android/server/AppManage;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/android/server/AppManage;->access$400(Lcom/android/server/AppManage;)Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v21

    .line 846
    :goto_9
    if-eqz v21, :cond_9

    .line 847
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v31, 0x2000

    and-int v4, v4, v31

    if-nez v4, :cond_9

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_9

    if-eqz v20, :cond_9

    .line 850
    move-object/from16 v0, v20

    iget v4, v0, Landroid/content/pm/PackageInfo;->installLocation:I

    const/16 v31, 0x2

    move/from16 v0, v31

    if-eq v4, v0, :cond_8

    move-object/from16 v0, v20

    iget v4, v0, Landroid/content/pm/PackageInfo;->installLocation:I

    if-nez v4, :cond_c

    .line 852
    :cond_8
    const/4 v12, 0x1

    .line 873
    :cond_9
    :goto_a
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 874
    const/4 v13, 0x0

    .line 882
    :goto_b
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_10

    const/16 v25, 0x1

    .line 883
    .local v25, mUpdatedSysApp:Z
    :goto_c
    if-eqz v25, :cond_11

    .line 884
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 837
    .end local v9           #mySize:J
    .end local v21           #info1:Landroid/content/pm/ApplicationInfo;
    .end local v25           #mUpdatedSysApp:Z
    .end local v26           #myDataSize:J
    :cond_a
    const-wide/16 v9, 0x0

    goto :goto_7

    .line 838
    .restart local v9       #mySize:J
    :cond_b
    const-wide/16 v26, 0x0

    goto :goto_8

    .line 853
    .restart local v21       #info1:Landroid/content/pm/ApplicationInfo;
    .restart local v26       #myDataSize:J
    :cond_c
    move-object/from16 v0, v20

    iget v4, v0, Landroid/content/pm/PackageInfo;->installLocation:I

    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v4, v0, :cond_9

    .line 854
    const-string v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v22

    .line 858
    .local v22, ipm:Landroid/content/pm/IPackageManager;
    :try_start_2
    invoke-interface/range {v22 .. v22}, Landroid/content/pm/IPackageManager;->getInstallLocation()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v23

    .line 863
    .local v23, loc:I
    const/4 v4, 0x2

    move/from16 v0, v23

    if-ne v0, v4, :cond_9

    .line 867
    const/4 v12, 0x1

    goto :goto_a

    .line 859
    .end local v23           #loc:I
    :catch_1
    move-exception v18

    .line 860
    .local v18, e:Landroid/os/RemoteException;
    const-string v4, "AppManager"

    const-string v31, "Is Pakage Manager running?"

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    .end local v5           #myPkgName:Ljava/lang/String;
    .end local v9           #mySize:J
    .end local v17           #count1:Ljava/util/concurrent/CountDownLatch;
    .end local v18           #e:Landroid/os/RemoteException;
    .end local v20           #info:Landroid/content/pm/PackageInfo;
    .end local v21           #info1:Landroid/content/pm/ApplicationInfo;
    .end local v22           #ipm:Landroid/content/pm/IPackageManager;
    .end local v26           #myDataSize:J
    .end local v28           #myPackageStats:Landroid/content/pm/PackageStats;
    .end local v30           #succeeded:Z
    :cond_d
    :goto_d
    return-void

    .line 876
    .restart local v5       #myPkgName:Ljava/lang/String;
    .restart local v9       #mySize:J
    .restart local v17       #count1:Ljava/util/concurrent/CountDownLatch;
    .restart local v20       #info:Landroid/content/pm/PackageInfo;
    .restart local v21       #info1:Landroid/content/pm/ApplicationInfo;
    .restart local v26       #myDataSize:J
    .restart local v28       #myPackageStats:Landroid/content/pm/PackageStats;
    .restart local v30       #succeeded:Z
    :cond_e
    const-wide/16 v31, 0x0

    cmp-long v4, v26, v31

    if-lez v4, :cond_f

    .line 877
    const/4 v13, 0x1

    goto :goto_b

    .line 879
    :cond_f
    const/4 v13, 0x0

    goto :goto_b

    .line 882
    :cond_10
    const/16 v25, 0x0

    goto :goto_c

    .line 886
    .restart local v25       #mUpdatedSysApp:Z
    :cond_11
    const/4 v14, 0x1

    goto/16 :goto_6

    .line 900
    .end local v5           #myPkgName:Ljava/lang/String;
    .end local v9           #mySize:J
    .end local v17           #count1:Ljava/util/concurrent/CountDownLatch;
    .end local v20           #info:Landroid/content/pm/PackageInfo;
    .end local v21           #info1:Landroid/content/pm/ApplicationInfo;
    .end local v25           #mUpdatedSysApp:Z
    .end local v26           #myDataSize:J
    .end local v28           #myPackageStats:Landroid/content/pm/PackageStats;
    .end local v30           #succeeded:Z
    :cond_12
    if-eqz v19, :cond_d

    .line 901
    const-string v4, "AppManager"

    const-string v31, "Failed to load cache. Not using cache for now."

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppManage$AppInfoMap;->mAppPropMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    goto :goto_d

    .line 842
    .restart local v5       #myPkgName:Ljava/lang/String;
    .restart local v9       #mySize:J
    .restart local v17       #count1:Ljava/util/concurrent/CountDownLatch;
    .restart local v20       #info:Landroid/content/pm/PackageInfo;
    .restart local v21       #info1:Landroid/content/pm/ApplicationInfo;
    .restart local v26       #myDataSize:J
    .restart local v28       #myPackageStats:Landroid/content/pm/PackageStats;
    .restart local v30       #succeeded:Z
    :catch_2
    move-exception v4

    goto/16 :goto_9
.end method

.method static synthetic access$1600(Lcom/android/server/AppManage$AppInfoMap;Ljava/lang/String;)Lcom/android/server/AppManage$AppInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 707
    invoke-direct {p0, p1}, Lcom/android/server/AppManage$AppInfoMap;->getEntry(Ljava/lang/String;)Lcom/android/server/AppManage$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEntry(Ljava/lang/String;)Lcom/android/server/AppManage$AppInfo;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/server/AppManage$AppInfoMap;->mAppPropMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppManage$AppInfo;

    return-object v0
.end method


# virtual methods
.method public addEntry(Lcom/android/server/AppManage$AppInfo;)V
    .locals 2
    .parameter "aInfo"

    .prologue
    .line 716
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/AppManage$AppInfo;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/server/AppManage$AppInfoMap;->mAppPropMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/AppManage$AppInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    :cond_0
    return-void
.end method

.method public removeEntry(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 722
    if-eqz p1, :cond_0

    .line 723
    iget-object v0, p0, Lcom/android/server/AppManage$AppInfoMap;->mAppPropMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :cond_0
    return-void
.end method

.method public updateAppInfoSize(Ljava/lang/String;)V
    .locals 11
    .parameter "pkgName"

    .prologue
    const-wide/16 v6, 0x0

    .line 728
    if-nez p1, :cond_1

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    new-instance v2, Lcom/android/server/AppManage$SizeObserver;

    iget-object v8, p0, Lcom/android/server/AppManage$AppInfoMap;->this$0:Lcom/android/server/AppManage;

    const/4 v9, 0x0

    invoke-direct {v2, v8, v9}, Lcom/android/server/AppManage$SizeObserver;-><init>(Lcom/android/server/AppManage;Lcom/android/server/AppManage$1;)V

    .line 734
    .local v2, mSizeObserver:Lcom/android/server/AppManage$SizeObserver;
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 735
    .local v0, count1:Ljava/util/concurrent/CountDownLatch;
    invoke-virtual {v2, p1, v0}, Lcom/android/server/AppManage$SizeObserver;->invokeGetSize(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    .line 738
    const-wide/16 v8, 0x1f4

    :try_start_0
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v8, v9, v10}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :goto_1
    iget-object v4, v2, Lcom/android/server/AppManage$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    .line 744
    .local v4, myPackageStats:Landroid/content/pm/PackageStats;
    iget-boolean v5, v2, Lcom/android/server/AppManage$SizeObserver;->succeeded:Z

    .line 746
    .local v5, succeeded:Z
    if-nez v4, :cond_2

    .line 747
    if-eqz v5, :cond_4

    .line 748
    const-string v8, "AppManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed getting size for pkg : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/android/server/AppManage$AppInfoMap;->mAppPropMap:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppManage$AppInfo;

    .line 756
    .local v3, myApp:Lcom/android/server/AppManage$AppInfo;
    if-eqz v3, :cond_0

    .line 757
    iget-boolean v8, v3, Lcom/android/server/AppManage$AppInfo;->systemAppFlag:Z

    if-eqz v8, :cond_5

    .line 758
    if-eqz v4, :cond_3

    iget-wide v6, v4, Landroid/content/pm/PackageStats;->dataSize:J

    :cond_3
    iput-wide v6, v3, Lcom/android/server/AppManage$AppInfo;->size:J

    .line 763
    :goto_3
    iget-object v6, p0, Lcom/android/server/AppManage$AppInfoMap;->this$0:Lcom/android/server/AppManage;

    iget-wide v7, v3, Lcom/android/server/AppManage$AppInfo;->size:J

    #calls: Lcom/android/server/AppManage;->getSizeStr(J)Ljava/lang/CharSequence;
    invoke-static {v6, v7, v8}, Lcom/android/server/AppManage;->access$2200(Lcom/android/server/AppManage;J)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/AppManage$AppInfo;->appSize:Ljava/lang/CharSequence;

    goto :goto_0

    .line 739
    .end local v3           #myApp:Lcom/android/server/AppManage$AppInfo;
    .end local v4           #myPackageStats:Landroid/content/pm/PackageStats;
    .end local v5           #succeeded:Z
    :catch_0
    move-exception v1

    .line 740
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v8, "AppManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed computing size for pkg : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 750
    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v4       #myPackageStats:Landroid/content/pm/PackageStats;
    .restart local v5       #succeeded:Z
    :cond_4
    const-string v8, "AppManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Time out getting size for pkg : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 760
    .restart local v3       #myApp:Lcom/android/server/AppManage$AppInfo;
    :cond_5
    if-eqz v4, :cond_6

    iget-wide v6, v4, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v8, v4, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v6, v8

    :cond_6
    iput-wide v6, v3, Lcom/android/server/AppManage$AppInfo;->size:J

    goto :goto_3
.end method
