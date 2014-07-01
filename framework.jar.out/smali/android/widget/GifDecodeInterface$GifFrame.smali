.class public Landroid/widget/GifDecodeInterface$GifFrame;
.super Ljava/lang/Object;
.source "GifDecodeInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GifDecodeInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GifFrame"
.end annotation


# instance fields
.field public delay:I

.field public image:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "im"
    .parameter "del"

    .prologue
    .line 732
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 733
    iput-object p1, p0, Landroid/widget/GifDecodeInterface$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 734
    iput p2, p0, Landroid/widget/GifDecodeInterface$GifFrame;->delay:I

    .line 735
    return-void
.end method
