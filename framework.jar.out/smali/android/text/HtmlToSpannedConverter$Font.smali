.class Landroid/text/HtmlToSpannedConverter$Font;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Font"
.end annotation


# instance fields
.field public mColor:Ljava/lang/String;

.field public mFace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "color"
    .parameter "face"

    .prologue
    .line 802
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 803
    iput-object p1, p0, Landroid/text/HtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    .line 804
    iput-object p2, p0, Landroid/text/HtmlToSpannedConverter$Font;->mFace:Ljava/lang/String;

    .line 805
    return-void
.end method
