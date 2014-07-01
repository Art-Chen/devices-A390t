.class public Landroid/widget/GifDecodeInterface$GifHandler;
.super Ljava/lang/Object;
.source "GifDecodeInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GifDecodeInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GifHandler"
.end annotation


# static fields
.field private static gifHander:Landroid/widget/GifDecodeInterface$GifHandler;


# instance fields
.field private decode:Landroid/widget/GifDecodeInterface$GIFDecode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDelay()I
    .locals 2

    .prologue
    .line 57
    const/4 v0, -0x1

    .line 58
    .local v0, delay:I
    iget-object v1, p0, Landroid/widget/GifDecodeInterface$GifHandler;->decode:Landroid/widget/GifDecodeInterface$GIFDecode;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Landroid/widget/GifDecodeInterface$GifHandler;->decode:Landroid/widget/GifDecodeInterface$GIFDecode;

    #getter for: Landroid/widget/GifDecodeInterface$GIFDecode;->delay:I
    invoke-static {v1}, Landroid/widget/GifDecodeInterface$GIFDecode;->access$000(Landroid/widget/GifDecodeInterface$GIFDecode;)I

    move-result v0

    .line 62
    :cond_0
    if-gtz v0, :cond_1

    .line 65
    const/16 v0, 0x64

    .line 67
    :cond_1
    return v0
.end method

.method public initGifData(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, first:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 36
    new-instance v1, Landroid/widget/GifDecodeInterface$GIFDecode;

    invoke-direct {v1}, Landroid/widget/GifDecodeInterface$GIFDecode;-><init>()V

    iput-object v1, p0, Landroid/widget/GifDecodeInterface$GifHandler;->decode:Landroid/widget/GifDecodeInterface$GIFDecode;

    .line 37
    iget-object v1, p0, Landroid/widget/GifDecodeInterface$GifHandler;->decode:Landroid/widget/GifDecodeInterface$GIFDecode;

    invoke-virtual {v1, p1}, Landroid/widget/GifDecodeInterface$GIFDecode;->read(Ljava/io/InputStream;)I

    .line 38
    iget-object v1, p0, Landroid/widget/GifDecodeInterface$GifHandler;->decode:Landroid/widget/GifDecodeInterface$GIFDecode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GifDecodeInterface$GIFDecode;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 43
    :cond_0
    return-object v0
.end method

.method public nextFrameBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, nextFrame:Landroid/graphics/Bitmap;
    iget-object v1, p0, Landroid/widget/GifDecodeInterface$GifHandler;->decode:Landroid/widget/GifDecodeInterface$GIFDecode;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Landroid/widget/GifDecodeInterface$GifHandler;->decode:Landroid/widget/GifDecodeInterface$GIFDecode;

    invoke-virtual {v1}, Landroid/widget/GifDecodeInterface$GIFDecode;->next()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    :cond_0
    return-object v0
.end method

.method public recycleDecode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Landroid/widget/GifDecodeInterface$GifHandler;->decode:Landroid/widget/GifDecodeInterface$GIFDecode;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Landroid/widget/GifDecodeInterface$GifHandler;->decode:Landroid/widget/GifDecodeInterface$GIFDecode;

    invoke-virtual {v0}, Landroid/widget/GifDecodeInterface$GIFDecode;->recycleFrames()V

    .line 75
    iget-object v0, p0, Landroid/widget/GifDecodeInterface$GifHandler;->decode:Landroid/widget/GifDecodeInterface$GIFDecode;

    #setter for: Landroid/widget/GifDecodeInterface$GIFDecode;->lastPixels:[I
    invoke-static {v0, v1}, Landroid/widget/GifDecodeInterface$GIFDecode;->access$102(Landroid/widget/GifDecodeInterface$GIFDecode;[I)[I

    .line 76
    iget-object v0, p0, Landroid/widget/GifDecodeInterface$GifHandler;->decode:Landroid/widget/GifDecodeInterface$GIFDecode;

    #getter for: Landroid/widget/GifDecodeInterface$GIFDecode;->lastImage:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/widget/GifDecodeInterface$GIFDecode;->access$200(Landroid/widget/GifDecodeInterface$GIFDecode;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Landroid/widget/GifDecodeInterface$GifHandler;->decode:Landroid/widget/GifDecodeInterface$GIFDecode;

    #setter for: Landroid/widget/GifDecodeInterface$GIFDecode;->lastImage:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Landroid/widget/GifDecodeInterface$GIFDecode;->access$202(Landroid/widget/GifDecodeInterface$GIFDecode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 80
    :cond_0
    iget-object v0, p0, Landroid/widget/GifDecodeInterface$GifHandler;->decode:Landroid/widget/GifDecodeInterface$GIFDecode;

    #getter for: Landroid/widget/GifDecodeInterface$GIFDecode;->image:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/widget/GifDecodeInterface$GIFDecode;->access$300(Landroid/widget/GifDecodeInterface$GIFDecode;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Landroid/widget/GifDecodeInterface$GifHandler;->decode:Landroid/widget/GifDecodeInterface$GIFDecode;

    #setter for: Landroid/widget/GifDecodeInterface$GIFDecode;->image:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Landroid/widget/GifDecodeInterface$GIFDecode;->access$302(Landroid/widget/GifDecodeInterface$GIFDecode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 84
    :cond_1
    iput-object v1, p0, Landroid/widget/GifDecodeInterface$GifHandler;->decode:Landroid/widget/GifDecodeInterface$GIFDecode;

    .line 86
    :cond_2
    return-void
.end method
