.class Landroid/media/MediaUpdater$UpdateData;
.super Ljava/lang/Object;
.source "MediaUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateData"
.end annotation


# instance fields
.field mInitialValues:Landroid/content/ContentValues;

.field mUri:Landroid/net/Uri;

.field mUserWhere:Ljava/lang/String;

.field mWhereArgs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "uri"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/media/MediaUpdater$UpdateData;->mUri:Landroid/net/Uri;

    .line 47
    iput-object p2, p0, Landroid/media/MediaUpdater$UpdateData;->mInitialValues:Landroid/content/ContentValues;

    .line 48
    iput-object p3, p0, Landroid/media/MediaUpdater$UpdateData;->mUserWhere:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Landroid/media/MediaUpdater$UpdateData;->mWhereArgs:[Ljava/lang/String;

    .line 50
    return-void
.end method
