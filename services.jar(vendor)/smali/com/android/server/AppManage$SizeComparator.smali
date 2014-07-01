.class Lcom/android/server/AppManage$SizeComparator;
.super Ljava/lang/Object;
.source "AppManage.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SizeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppManage;


# direct methods
.method private constructor <init>(Lcom/android/server/AppManage;)V
    .locals 0
    .parameter

    .prologue
    .line 970
    iput-object p1, p0, Lcom/android/server/AppManage$SizeComparator;->this$0:Lcom/android/server/AppManage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppManage;Lcom/android/server/AppManage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 970
    invoke-direct {p0, p1}, Lcom/android/server/AppManage$SizeComparator;-><init>(Lcom/android/server/AppManage;)V

    return-void
.end method


# virtual methods
.method public final compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I
    .locals 12
    .parameter "a"
    .parameter "b"

    .prologue
    const-wide/16 v10, 0x0

    .line 972
    iget-object v8, p0, Lcom/android/server/AppManage$SizeComparator;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mCache:Lcom/android/server/AppManage$AppInfoMap;
    invoke-static {v8}, Lcom/android/server/AppManage;->access$500(Lcom/android/server/AppManage;)Lcom/android/server/AppManage$AppInfoMap;

    move-result-object v8

    iget-object v9, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/android/server/AppManage$AppInfoMap;->getEntry(Ljava/lang/String;)Lcom/android/server/AppManage$AppInfo;
    invoke-static {v8, v9}, Lcom/android/server/AppManage$AppInfoMap;->access$1600(Lcom/android/server/AppManage$AppInfoMap;Ljava/lang/String;)Lcom/android/server/AppManage$AppInfo;

    move-result-object v0

    .line 973
    .local v0, ainfo:Lcom/android/server/AppManage$AppInfo;
    iget-object v8, p0, Lcom/android/server/AppManage$SizeComparator;->this$0:Lcom/android/server/AppManage;

    #getter for: Lcom/android/server/AppManage;->mCache:Lcom/android/server/AppManage$AppInfoMap;
    invoke-static {v8}, Lcom/android/server/AppManage;->access$500(Lcom/android/server/AppManage;)Lcom/android/server/AppManage$AppInfoMap;

    move-result-object v8

    iget-object v9, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/android/server/AppManage$AppInfoMap;->getEntry(Ljava/lang/String;)Lcom/android/server/AppManage$AppInfo;
    invoke-static {v8, v9}, Lcom/android/server/AppManage$AppInfoMap;->access$1600(Lcom/android/server/AppManage$AppInfoMap;Ljava/lang/String;)Lcom/android/server/AppManage$AppInfo;

    move-result-object v3

    .line 975
    .local v3, binfo:Lcom/android/server/AppManage$AppInfo;
    iget-wide v1, v0, Lcom/android/server/AppManage$AppInfo;->size:J

    .line 976
    .local v1, atotal:J
    iget-wide v4, v3, Lcom/android/server/AppManage$AppInfo;->size:J

    .line 977
    .local v4, btotal:J
    sub-long v6, v1, v4

    .line 979
    .local v6, ret:J
    cmp-long v8, v6, v10

    if-gez v8, :cond_0

    .line 980
    const/4 v8, 0x1

    .line 985
    :goto_0
    return v8

    .line 982
    :cond_0
    cmp-long v8, v6, v10

    if-nez v8, :cond_1

    .line 983
    const/4 v8, 0x0

    goto :goto_0

    .line 985
    :cond_1
    const/4 v8, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 970
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppManage$SizeComparator;->compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    return v0
.end method
