.class Landroid/media/MediaDeleter$DeleteData;
.super Ljava/lang/Object;
.source "MediaDeleter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDeleter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteData"
.end annotation


# instance fields
.field mUri:Landroid/net/Uri;

.field mUserWhere:Ljava/lang/String;

.field mWhereArgs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/media/MediaDeleter$DeleteData;->mUri:Landroid/net/Uri;

    .line 44
    iput-object p2, p0, Landroid/media/MediaDeleter$DeleteData;->mUserWhere:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Landroid/media/MediaDeleter$DeleteData;->mWhereArgs:[Ljava/lang/String;

    .line 46
    return-void
.end method
