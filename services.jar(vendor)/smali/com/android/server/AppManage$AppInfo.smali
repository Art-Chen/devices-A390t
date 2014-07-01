.class public Lcom/android/server/AppManage$AppInfo;
.super Ljava/lang/Object;
.source "AppManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppInfo"
.end annotation


# instance fields
.field appIcon:Landroid/graphics/drawable/Drawable;

.field appName:Ljava/lang/CharSequence;

.field appSize:Ljava/lang/CharSequence;

.field clearDataFlag:Z

.field index:I

.field move2SdFlag:Z

.field pkgName:Ljava/lang/String;

.field size:J

.field systemAppFlag:Z

.field final synthetic this$0:Lcom/android/server/AppManage;

.field uninstallFlag:Z


# direct methods
.method public constructor <init>(Lcom/android/server/AppManage;Ljava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;JLjava/lang/CharSequence;ZZZZ)V
    .locals 0
    .parameter
    .parameter "pName"
    .parameter "pIndex"
    .parameter "aName"
    .parameter "aIcon"
    .parameter "pSize"
    .parameter "pSizeStr"
    .parameter "pMove2SdFlag"
    .parameter "pClearDataFlag"
    .parameter "pUnistallFlag"
    .parameter "pSystemAppFlag"

    .prologue
    .line 951
    iput-object p1, p0, Lcom/android/server/AppManage$AppInfo;->this$0:Lcom/android/server/AppManage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 952
    iput p3, p0, Lcom/android/server/AppManage$AppInfo;->index:I

    .line 953
    iput-object p2, p0, Lcom/android/server/AppManage$AppInfo;->pkgName:Ljava/lang/String;

    .line 954
    iput-object p4, p0, Lcom/android/server/AppManage$AppInfo;->appName:Ljava/lang/CharSequence;

    .line 955
    iput-object p5, p0, Lcom/android/server/AppManage$AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 956
    iput-wide p6, p0, Lcom/android/server/AppManage$AppInfo;->size:J

    .line 957
    iput-object p8, p0, Lcom/android/server/AppManage$AppInfo;->appSize:Ljava/lang/CharSequence;

    .line 958
    iput-boolean p9, p0, Lcom/android/server/AppManage$AppInfo;->move2SdFlag:Z

    .line 959
    iput-boolean p10, p0, Lcom/android/server/AppManage$AppInfo;->clearDataFlag:Z

    .line 960
    iput-boolean p11, p0, Lcom/android/server/AppManage$AppInfo;->uninstallFlag:Z

    .line 961
    iput-boolean p12, p0, Lcom/android/server/AppManage$AppInfo;->systemAppFlag:Z

    .line 962
    return-void
.end method
