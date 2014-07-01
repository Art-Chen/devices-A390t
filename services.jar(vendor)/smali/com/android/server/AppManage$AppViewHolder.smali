.class Lcom/android/server/AppManage$AppViewHolder;
.super Ljava/lang/Object;
.source "AppManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppViewHolder"
.end annotation


# instance fields
.field appCleanDataFlag:Landroid/widget/CheckBox;

.field appIcon:Landroid/widget/ImageView;

.field appMv2SdFlag:Landroid/widget/CheckBox;

.field appName:Landroid/widget/TextView;

.field appSize:Landroid/widget/TextView;

.field appUninstallFlag:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 443
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
