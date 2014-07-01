.class public Landroid/widget/GifDecodeInterface$GIFDecode;
.super Ljava/lang/Object;
.source "GifDecodeInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GifDecodeInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GIFDecode"
.end annotation


# static fields
.field public static final FRAME_BOUNDS_LIMIT:I = 0x140

.field private static final MaxStackSize:I = 0x1000

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2


# instance fields
.field private act:[I

.field private bgColor:I

.field private bgIndex:I

.field private block:[B

.field private blockSize:I

.field private delay:I

.field private dispose:I

.field private frameCount:I

.field private frameindex:I

.field private frames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/widget/GifDecodeInterface$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field private gct:[I

.field private gctFlag:Z

.field private gctSize:I

.field private height:I

.field private ih:I

.field private image:Landroid/graphics/Bitmap;

.field private in:Ljava/io/InputStream;

.field private interlace:Z

.field private iw:I

.field private ix:I

.field private iy:I

.field private lastBgColor:I

.field private lastDispose:I

.field private lastImage:Landroid/graphics/Bitmap;

.field private lastPixels:[I

.field private lct:[I

.field private lctFlag:Z

.field private lctSize:I

.field private loopCount:I

.field private lrh:I

.field private lrw:I

.field private lrx:I

.field private lry:I

.field private pixelAspect:I

.field private pixelStack:[B

.field private pixels:[B

.field private prefix:[S

.field private status:I

.field private suffix:[B

.field private transIndex:I

.field private transparency:Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->lastPixels:[I

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->loopCount:I

    .line 124
    iput v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frameindex:I

    .line 137
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->block:[B

    .line 138
    iput v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->blockSize:I

    .line 141
    iput v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->dispose:I

    .line 143
    iput v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->lastDispose:I

    .line 144
    iput-boolean v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->transparency:Z

    .line 145
    iput v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->delay:I

    return-void
.end method

.method static synthetic access$000(Landroid/widget/GifDecodeInterface$GIFDecode;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->delay:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/GifDecodeInterface$GIFDecode;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->lastPixels:[I

    return-object p1
.end method

.method static synthetic access$200(Landroid/widget/GifDecodeInterface$GIFDecode;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->lastImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/GifDecodeInterface$GIFDecode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->lastImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Landroid/widget/GifDecodeInterface$GIFDecode;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Landroid/widget/GifDecodeInterface$GIFDecode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->image:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private decodeImageData()V
    .locals 25

    .prologue
    .line 335
    const/4 v2, -0x1

    .line 336
    .local v2, NullCode:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->iw:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->ih:I

    move/from16 v24, v0

    mul-int v17, v23, v24

    .line 339
    .local v17, npix:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->pixels:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->pixels:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 340
    :cond_0
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/GifDecodeInterface$GIFDecode;->pixels:[B

    .line 342
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->prefix:[S

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 343
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [S

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/GifDecodeInterface$GIFDecode;->prefix:[S

    .line 345
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->suffix:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 346
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/GifDecodeInterface$GIFDecode;->suffix:[B

    .line 348
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->pixelStack:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 349
    const/16 v23, 0x1001

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/GifDecodeInterface$GIFDecode;->pixelStack:[B

    .line 352
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->read()I

    move-result v11

    .line 353
    .local v11, data_size:I
    const/16 v23, 0x1

    shl-int v6, v23, v11

    .line 354
    .local v6, clear:I
    add-int/lit8 v13, v6, 0x1

    .line 355
    .local v13, end_of_information:I
    add-int/lit8 v3, v6, 0x2

    .line 356
    .local v3, available:I
    move/from16 v18, v2

    .line 357
    .local v18, old_code:I
    add-int/lit8 v9, v11, 0x1

    .line 358
    .local v9, code_size:I
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 359
    .local v8, code_mask:I
    const/4 v7, 0x0

    .local v7, code:I
    :goto_0
    if-ge v7, v6, :cond_5

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->prefix:[S

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-short v24, v23, v7

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v7

    move/from16 v24, v0

    aput-byte v24, v23, v7

    .line 359
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 365
    :cond_5
    const/4 v4, 0x0

    .local v4, bi:I
    move/from16 v19, v4

    .local v19, pi:I
    move/from16 v21, v4

    .local v21, top:I
    move v14, v4

    .local v14, first:I
    move v10, v4

    .local v10, count:I
    move v5, v4

    .local v5, bits:I
    move v12, v4

    .line 366
    .local v12, datum:I
    const/4 v15, 0x0

    .local v15, i:I
    move/from16 v20, v19

    .end local v19           #pi:I
    .local v20, pi:I
    move/from16 v22, v21

    .end local v21           #top:I
    .local v22, top:I
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_11

    .line 367
    if-nez v22, :cond_12

    .line 368
    if-ge v5, v9, :cond_8

    .line 370
    if-nez v10, :cond_7

    .line 372
    invoke-direct/range {p0 .. p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->readBlock()I

    move-result v10

    .line 373
    if-gtz v10, :cond_6

    move/from16 v21, v22

    .line 438
    .end local v22           #top:I
    .restart local v21       #top:I
    :goto_2
    move/from16 v15, v20

    :goto_3
    move/from16 v0, v17

    if-ge v15, v0, :cond_10

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->pixels:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-byte v24, v23, v15

    .line 438
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 376
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_6
    const/4 v4, 0x0

    .line 378
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->block:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v4

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int v23, v23, v5

    add-int v12, v12, v23

    .line 379
    add-int/lit8 v5, v5, 0x8

    .line 380
    add-int/lit8 v4, v4, 0x1

    .line 381
    add-int/lit8 v10, v10, -0x1

    .line 382
    goto :goto_1

    .line 385
    :cond_8
    and-int v7, v12, v8

    .line 386
    shr-int/2addr v12, v9

    .line 387
    sub-int/2addr v5, v9

    .line 390
    if-gt v7, v3, :cond_11

    if-ne v7, v13, :cond_9

    move/from16 v21, v22

    .line 391
    .end local v22           #top:I
    .restart local v21       #top:I
    goto :goto_2

    .line 393
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_9
    if-ne v7, v6, :cond_a

    .line 395
    add-int/lit8 v9, v11, 0x1

    .line 396
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 397
    add-int/lit8 v3, v6, 0x2

    .line 398
    move/from16 v18, v2

    .line 399
    goto :goto_1

    .line 401
    :cond_a
    move/from16 v0, v18

    if-ne v0, v2, :cond_b

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 403
    move/from16 v18, v7

    .line 404
    move v14, v7

    move/from16 v22, v21

    .line 405
    .end local v21           #top:I
    .restart local v22       #top:I
    goto :goto_1

    .line 407
    :cond_b
    move/from16 v16, v7

    .line 408
    .local v16, in_code:I
    if-ne v7, v3, :cond_c

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 410
    move/from16 v7, v18

    move/from16 v22, v21

    .line 412
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_c
    :goto_4
    if-le v7, v6, :cond_d

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->prefix:[S

    move-object/from16 v23, v0

    aget-short v7, v23, v7

    move/from16 v22, v21

    .end local v21           #top:I
    .restart local v22       #top:I
    goto :goto_4

    .line 416
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v7

    move/from16 v0, v23

    and-int/lit16 v14, v0, 0xff

    .line 418
    const/16 v23, 0x1000

    move/from16 v0, v23

    if-lt v3, v0, :cond_e

    move/from16 v21, v22

    .line 419
    .end local v22           #top:I
    .restart local v21       #top:I
    goto/16 :goto_2

    .line 421
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->prefix:[S

    move-object/from16 v23, v0

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v24, v0

    aput-short v24, v23, v3

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v3

    .line 424
    add-int/lit8 v3, v3, 0x1

    .line 425
    and-int v23, v3, v8

    if-nez v23, :cond_f

    const/16 v23, 0x1000

    move/from16 v0, v23

    if-ge v3, v0, :cond_f

    .line 427
    add-int/lit8 v9, v9, 0x1

    .line 428
    add-int/2addr v8, v3

    .line 430
    :cond_f
    move/from16 v18, v16

    .line 434
    .end local v16           #in_code:I
    :goto_5
    add-int/lit8 v21, v21, -0x1

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->pixels:[B

    move-object/from16 v23, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20           #pi:I
    .restart local v19       #pi:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->pixelStack:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v21

    aput-byte v24, v23, v20

    .line 436
    add-int/lit8 v15, v15, 0x1

    move/from16 v20, v19

    .end local v19           #pi:I
    .restart local v20       #pi:I
    move/from16 v22, v21

    .end local v21           #top:I
    .restart local v22       #top:I
    goto/16 :goto_1

    .line 441
    .end local v22           #top:I
    .restart local v21       #top:I
    :cond_10
    return-void

    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_11
    move/from16 v21, v22

    .end local v22           #top:I
    .restart local v21       #top:I
    goto/16 :goto_2

    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_12
    move/from16 v21, v22

    .end local v22           #top:I
    .restart local v21       #top:I
    goto :goto_5
.end method

.method private err()Z
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSrcPixels()[I
    .locals 25

    .prologue
    .line 190
    const/4 v3, 0x0

    .line 191
    .local v3, dest:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->lastPixels:[I

    if-nez v2, :cond_3

    .line 192
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->height:I

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    .line 197
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->lastDispose:I

    if-lez v2, :cond_6

    .line 198
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->lastDispose:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 200
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->frameCount:I

    add-int/lit8 v19, v2, -0x2

    .line 201
    .local v19, n:I
    if-lez v19, :cond_4

    .line 202
    add-int/lit8 v2, v19, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/GifDecodeInterface$GIFDecode;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->lastImage:Landroid/graphics/Bitmap;

    .line 207
    .end local v19           #n:I
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->lastImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->lastPixels:[I

    if-nez v2, :cond_1

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->lastImage:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->width:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->height:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 212
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->lastDispose:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    .line 214
    const/4 v10, 0x0

    .line 215
    .local v10, c:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->transparency:Z

    if-nez v2, :cond_2

    .line 216
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->lastBgColor:I

    .line 218
    :cond_2
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->lrh:I

    if-ge v13, v2, :cond_6

    .line 219
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->lry:I

    add-int/2addr v2, v13

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->width:I

    mul-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->lrx:I

    add-int v20, v2, v4

    .line 220
    .local v20, n1:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->lrw:I

    add-int v21, v20, v2

    .line 221
    .local v21, n2:I
    move/from16 v17, v20

    .local v17, k:I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 222
    aput v10, v3, v17

    .line 221
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 194
    .end local v10           #c:I
    .end local v13           #i:I
    .end local v17           #k:I
    .end local v20           #n1:I
    .end local v21           #n2:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->lastPixels:[I

    goto/16 :goto_0

    .line 204
    .restart local v19       #n:I
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->lastImage:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 218
    .end local v19           #n:I
    .restart local v10       #c:I
    .restart local v13       #i:I
    .restart local v17       #k:I
    .restart local v20       #n1:I
    .restart local v21       #n2:I
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 230
    .end local v10           #c:I
    .end local v13           #i:I
    .end local v17           #k:I
    .end local v20           #n1:I
    .end local v21           #n2:I
    :cond_6
    const/16 v22, 0x1

    .line 231
    .local v22, pass:I
    const/16 v15, 0x8

    .line 232
    .local v15, inc:I
    const/4 v14, 0x0

    .line 233
    .local v14, iline:I
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->ih:I

    if-ge v13, v2, :cond_c

    .line 234
    move/from16 v18, v13

    .line 235
    .local v18, line:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->interlace:Z

    if-eqz v2, :cond_8

    .line 236
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->ih:I

    if-lt v14, v2, :cond_7

    .line 237
    add-int/lit8 v22, v22, 0x1

    .line 238
    packed-switch v22, :pswitch_data_0

    .line 251
    :cond_7
    :goto_5
    move/from16 v18, v14

    .line 252
    add-int/2addr v14, v15

    .line 254
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->iy:I

    add-int v18, v18, v2

    .line 255
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->height:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_b

    .line 256
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->width:I

    mul-int v17, v18, v2

    .line 257
    .restart local v17       #k:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->ix:I

    add-int v12, v17, v2

    .line 258
    .local v12, dx:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->iw:I

    add-int v11, v12, v2

    .line 259
    .local v11, dlim:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->width:I

    add-int v2, v2, v17

    if-ge v2, v11, :cond_9

    .line 260
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->width:I

    add-int v11, v17, v2

    .line 262
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->iw:I

    mul-int v23, v13, v2

    .local v23, sx:I
    move/from16 v24, v23

    .line 263
    .end local v23           #sx:I
    .local v24, sx:I
    :goto_6
    if-ge v12, v11, :cond_b

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->pixels:[B

    add-int/lit8 v23, v24, 0x1

    .end local v24           #sx:I
    .restart local v23       #sx:I
    aget-byte v2, v2, v24

    and-int/lit16 v0, v2, 0xff

    move/from16 v16, v0

    .line 266
    .local v16, index:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->act:[I

    aget v10, v2, v16

    .line 267
    .restart local v10       #c:I
    if-eqz v10, :cond_a

    .line 268
    aput v10, v3, v12

    .line 270
    :cond_a
    add-int/lit8 v12, v12, 0x1

    move/from16 v24, v23

    .line 271
    .end local v23           #sx:I
    .restart local v24       #sx:I
    goto :goto_6

    .line 240
    .end local v10           #c:I
    .end local v11           #dlim:I
    .end local v12           #dx:I
    .end local v16           #index:I
    .end local v17           #k:I
    .end local v24           #sx:I
    :pswitch_0
    const/4 v14, 0x4

    .line 241
    goto :goto_5

    .line 243
    :pswitch_1
    const/4 v14, 0x2

    .line 244
    const/4 v15, 0x4

    .line 245
    goto :goto_5

    .line 247
    :pswitch_2
    const/4 v14, 0x1

    .line 248
    const/4 v15, 0x2

    goto :goto_5

    .line 233
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 274
    .end local v18           #line:I
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/GifDecodeInterface$GIFDecode;->lastPixels:[I

    .line 275
    return-object v3

    .line 238
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 448
    iput v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->status:I

    .line 449
    iput v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frameCount:I

    .line 450
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frames:Ljava/util/Vector;

    .line 451
    iput-object v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->gct:[I

    .line 452
    iput-object v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->lct:[I

    .line 453
    return-void
.end method

.method private read()I
    .locals 3

    .prologue
    .line 456
    const/4 v0, 0x0

    .line 458
    .local v0, curByte:I
    :try_start_0
    iget-object v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 462
    :goto_0
    return v0

    .line 459
    :catch_0
    move-exception v1

    .line 460
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->status:I

    goto :goto_0
.end method

.method private readBlock()I
    .locals 6

    .prologue
    .line 466
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->read()I

    move-result v3

    iput v3, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->blockSize:I

    .line 467
    const/4 v2, 0x0

    .line 468
    .local v2, n:I
    iget v3, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->blockSize:I

    if-lez v3, :cond_1

    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, count:I
    :goto_0
    :try_start_0
    iget v3, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->blockSize:I

    if-ge v2, v3, :cond_0

    .line 472
    iget-object v3, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->in:Ljava/io/InputStream;

    iget-object v4, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->block:[B

    iget v5, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->blockSize:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 473
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 481
    :cond_0
    :goto_1
    iget v3, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->blockSize:I

    if-ge v2, v3, :cond_1

    .line 482
    const/4 v3, 0x1

    iput v3, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->status:I

    .line 485
    .end local v0           #count:I
    :cond_1
    return v2

    .line 476
    .restart local v0       #count:I
    :cond_2
    add-int/2addr v2, v0

    goto :goto_0

    .line 478
    :catch_0
    move-exception v1

    .line 479
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private readColorTable(I)[I
    .locals 14
    .parameter "ncolors"

    .prologue
    .line 489
    mul-int/lit8 v9, p1, 0x3

    .line 490
    .local v9, nbytes:I
    const/4 v11, 0x0

    .line 491
    .local v11, tab:[I
    new-array v1, v9, [B

    .line 492
    .local v1, c:[B
    const/4 v8, 0x0

    .line 494
    .local v8, n:I
    :try_start_0
    iget-object v12, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->in:Ljava/io/InputStream;

    invoke-virtual {v12, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 498
    :goto_0
    if-ge v8, v9, :cond_1

    .line 499
    const/4 v12, 0x1

    iput v12, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->status:I

    .line 511
    :cond_0
    return-object v11

    .line 495
    :catch_0
    move-exception v2

    .line 496
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 501
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const/16 v12, 0x100

    new-array v11, v12, [I

    .line 502
    const/4 v4, 0x0

    .line 503
    .local v4, i:I
    const/4 v6, 0x0

    .local v6, j:I
    move v7, v6

    .end local v6           #j:I
    .local v7, j:I
    move v5, v4

    .line 504
    .end local v4           #i:I
    .local v5, i:I
    :goto_1
    if-ge v5, p1, :cond_0

    .line 505
    add-int/lit8 v6, v7, 0x1

    .end local v7           #j:I
    .restart local v6       #j:I
    aget-byte v12, v1, v7

    and-int/lit16 v10, v12, 0xff

    .line 506
    .local v10, r:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #j:I
    .restart local v7       #j:I
    aget-byte v12, v1, v6

    and-int/lit16 v3, v12, 0xff

    .line 507
    .local v3, g:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #j:I
    .restart local v6       #j:I
    aget-byte v12, v1, v7

    and-int/lit16 v0, v12, 0xff

    .line 508
    .local v0, b:I
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    const/high16 v12, -0x100

    shl-int/lit8 v13, v10, 0x10

    or-int/2addr v12, v13

    shl-int/lit8 v13, v3, 0x8

    or-int/2addr v12, v13

    or-int/2addr v12, v0

    aput v12, v11, v5

    move v7, v6

    .end local v6           #j:I
    .restart local v7       #j:I
    move v5, v4

    .line 509
    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_1
.end method

.method private readContents()V
    .locals 6

    .prologue
    .line 516
    const/4 v2, 0x0

    .line 517
    .local v2, done:Z
    :goto_0
    :sswitch_0
    if-nez v2, :cond_2

    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->err()Z

    move-result v4

    if-nez v4, :cond_2

    .line 518
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->read()I

    move-result v1

    .line 519
    .local v1, code:I
    sparse-switch v1, :sswitch_data_0

    .line 551
    const/4 v4, 0x1

    iput v4, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->status:I

    goto :goto_0

    .line 521
    :sswitch_1
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->readImage()V

    goto :goto_0

    .line 524
    :sswitch_2
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->read()I

    move-result v1

    .line 525
    sparse-switch v1, :sswitch_data_1

    .line 542
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->skip()V

    goto :goto_0

    .line 527
    :sswitch_3
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->readGraphicControlExt()V

    goto :goto_0

    .line 530
    :sswitch_4
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->readBlock()I

    .line 531
    const-string v0, ""

    .line 532
    .local v0, app:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 533
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->block:[B

    aget-byte v5, v5, v3

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 535
    :cond_0
    const-string v4, "NETSCAPE2.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 536
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->readNetscapeExt()V

    goto :goto_0

    .line 538
    :cond_1
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->skip()V

    goto :goto_0

    .line 546
    .end local v0           #app:Ljava/lang/String;
    .end local v3           #i:I
    :sswitch_5
    const/4 v2, 0x1

    .line 547
    goto :goto_0

    .line 554
    .end local v1           #code:I
    :cond_2
    return-void

    .line 519
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_5
    .end sparse-switch

    .line 525
    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method private readGraphicControlExt()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 557
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->read()I

    .line 558
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->read()I

    move-result v0

    .line 559
    .local v0, packed:I
    and-int/lit8 v2, v0, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->dispose:I

    .line 560
    iget v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->dispose:I

    if-nez v2, :cond_0

    .line 561
    iput v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->dispose:I

    .line 563
    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->transparency:Z

    .line 564
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->delay:I

    .line 565
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->read()I

    move-result v1

    iput v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->transIndex:I

    .line 566
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->read()I

    .line 567
    return-void

    .line 563
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readHeader()V
    .locals 4

    .prologue
    .line 570
    const-string v1, ""

    .line 571
    .local v1, id:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 571
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    :cond_0
    const-string v2, "GIF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 575
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->status:I

    .line 583
    :cond_1
    :goto_1
    return-void

    .line 578
    :cond_2
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->readLSD()V

    .line 579
    iget-boolean v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->gctFlag:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->err()Z

    move-result v2

    if-nez v2, :cond_1

    .line 580
    iget v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->gctSize:I

    invoke-direct {p0, v2}, Landroid/widget/GifDecodeInterface$GIFDecode;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->gct:[I

    .line 581
    iget-object v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->gct:[I

    iget v3, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->bgIndex:I

    aget v2, v2, v3

    iput v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->bgColor:I

    goto :goto_1
.end method

.method private readImage()V
    .locals 11

    .prologue
    const/16 v1, 0x140

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 586
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->readShort()I

    move-result v0

    iput v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->ix:I

    .line 587
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->readShort()I

    move-result v0

    iput v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->iy:I

    .line 588
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->readShort()I

    move-result v0

    iput v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->iw:I

    .line 589
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->readShort()I

    move-result v0

    iput v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->ih:I

    .line 590
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->read()I

    move-result v7

    .line 591
    .local v7, packed:I
    and-int/lit16 v0, v7, 0x80

    if-eqz v0, :cond_4

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->lctFlag:Z

    .line 592
    and-int/lit8 v0, v7, 0x40

    if-eqz v0, :cond_5

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->interlace:Z

    .line 595
    const/4 v0, 0x2

    and-int/lit8 v10, v7, 0x7

    shl-int/2addr v0, v10

    iput v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->lctSize:I

    .line 596
    iget-boolean v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->lctFlag:Z

    if-eqz v0, :cond_6

    .line 597
    iget v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->lctSize:I

    invoke-direct {p0, v0}, Landroid/widget/GifDecodeInterface$GIFDecode;->readColorTable(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->lct:[I

    .line 598
    iget-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->lct:[I

    iput-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->act:[I

    .line 605
    :cond_0
    :goto_2
    const/4 v8, 0x0

    .line 606
    .local v8, save:I
    iget-boolean v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->transparency:Z

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->act:[I

    iget v10, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->transIndex:I

    aget v8, v0, v10

    .line 608
    iget-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->act:[I

    iget v10, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->transIndex:I

    aput v4, v0, v10

    .line 610
    :cond_1
    iget-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->act:[I

    if-nez v0, :cond_2

    .line 611
    iput v3, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->status:I

    .line 613
    :cond_2
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->err()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 647
    :cond_3
    :goto_3
    return-void

    .end local v8           #save:I
    :cond_4
    move v0, v4

    .line 591
    goto :goto_0

    :cond_5
    move v0, v4

    .line 592
    goto :goto_1

    .line 600
    :cond_6
    iget-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->gct:[I

    iput-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->act:[I

    .line 601
    iget v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->bgIndex:I

    iget v10, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->transIndex:I

    if-ne v0, v10, :cond_0

    .line 602
    iput v4, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->bgColor:I

    goto :goto_2

    .line 616
    .restart local v8       #save:I
    :cond_7
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->decodeImageData()V

    .line 617
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->skip()V

    .line 618
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->err()Z

    move-result v0

    if-nez v0, :cond_3

    .line 621
    iget v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frameCount:I

    .line 626
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->getSrcPixels()[I

    move-result-object v5

    .line 629
    .local v5, src:[I
    iput-object v5, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->lastPixels:[I

    .line 630
    iget v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->width:I

    if-le v0, v1, :cond_9

    .line 632
    const/high16 v0, 0x43a0

    iget v3, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->width:I

    int-to-float v3, v3

    div-float v9, v0, v3

    .line 633
    .local v9, scale:F
    iget v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v2, v0

    .line 634
    .local v2, rY:I
    iget v3, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->width:I

    iget v4, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->height:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/GifDecodeInterface$GIFDecode;->resizePixels(IIII[I)[I

    move-result-object v6

    .line 635
    .local v6, dest:[I
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->image:Landroid/graphics/Bitmap;

    .line 641
    .end local v2           #rY:I
    .end local v9           #scale:F
    :goto_4
    iget-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frames:Ljava/util/Vector;

    new-instance v1, Landroid/widget/GifDecodeInterface$GifFrame;

    iget-object v3, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->image:Landroid/graphics/Bitmap;

    iget v4, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->delay:I

    invoke-direct {v1, v3, v4}, Landroid/widget/GifDecodeInterface$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 643
    iget-boolean v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->transparency:Z

    if-eqz v0, :cond_8

    .line 644
    iget-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->act:[I

    iget v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->transIndex:I

    aput v8, v0, v1

    .line 646
    :cond_8
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->resetFrame()V

    goto :goto_3

    .line 637
    .end local v6           #dest:[I
    :cond_9
    move-object v6, v5

    .line 638
    .restart local v6       #dest:[I
    iget v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->width:I

    iget v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->image:Landroid/graphics/Bitmap;

    goto :goto_4
.end method

.method private readLSD()V
    .locals 3

    .prologue
    .line 667
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->readShort()I

    move-result v1

    iput v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->width:I

    .line 668
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->readShort()I

    move-result v1

    iput v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->height:I

    .line 670
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->read()I

    move-result v0

    .line 671
    .local v0, packed:I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->gctFlag:Z

    .line 674
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x7

    shl-int/2addr v1, v2

    iput v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->gctSize:I

    .line 675
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->read()I

    move-result v1

    iput v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->bgIndex:I

    .line 676
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->read()I

    move-result v1

    iput v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->pixelAspect:I

    .line 677
    return-void

    .line 671
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readNetscapeExt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 681
    :cond_0
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->readBlock()I

    .line 682
    iget-object v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->block:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    .line 684
    iget-object v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->block:[B

    aget-byte v2, v2, v4

    and-int/lit16 v0, v2, 0xff

    .line 685
    .local v0, b1:I
    iget-object v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->block:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 686
    .local v1, b2:I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    iput v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->loopCount:I

    .line 688
    .end local v0           #b1:I
    .end local v1           #b2:I
    :cond_1
    iget v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->blockSize:I

    if-lez v2, :cond_2

    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->err()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 689
    :cond_2
    return-void
.end method

.method private readShort()I
    .locals 2

    .prologue
    .line 693
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->read()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private resetFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 697
    iget v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->dispose:I

    iput v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->lastDispose:I

    .line 698
    iget v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->ix:I

    iput v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->lrx:I

    .line 699
    iget v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->iy:I

    iput v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->lry:I

    .line 700
    iget v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->iw:I

    iput v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->lrw:I

    .line 701
    iget v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->ih:I

    iput v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->lrh:I

    .line 702
    iget-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->lastImage:Landroid/graphics/Bitmap;

    .line 703
    iget v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->bgColor:I

    iput v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->lastBgColor:I

    .line 704
    iput v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->dispose:I

    .line 705
    iput-boolean v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->transparency:Z

    .line 706
    iput v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->delay:I

    .line 707
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->lct:[I

    .line 708
    return-void
.end method

.method private resizePixels(IIII[I)[I
    .locals 7
    .parameter "destW"
    .parameter "destH"
    .parameter "srcW"
    .parameter "srcH"
    .parameter "srcPixels"

    .prologue
    .line 652
    mul-int v5, p1, p2

    new-array v0, v5, [I

    .line 653
    .local v0, destPixels:[I
    const/4 v2, 0x0

    .local v2, destY:I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 654
    const/4 v1, 0x0

    .local v1, destX:I
    :goto_1
    if-ge v1, p1, :cond_0

    .line 655
    mul-int v5, v1, p3

    div-int v3, v5, p1

    .line 656
    .local v3, offsetX:I
    mul-int v5, v2, p4

    div-int v4, v5, p2

    .line 657
    .local v4, offsetY:I
    mul-int v5, v2, p1

    add-int/2addr v5, v1

    mul-int v6, v4, p3

    add-int/2addr v6, v3

    aget v6, p5, v6

    aput v6, v0, v5

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 653
    .end local v3           #offsetX:I
    .end local v4           #offsetY:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 661
    .end local v1           #destX:I
    :cond_1
    return-object v0
.end method

.method private skip()V
    .locals 1

    .prologue
    .line 715
    :cond_0
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->readBlock()I

    .line 716
    iget v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->blockSize:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    :cond_1
    return-void
.end method


# virtual methods
.method public getDelay(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 170
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->delay:I

    .line 171
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frameCount:I

    if-ge p1, v0, :cond_0

    .line 172
    iget-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GifDecodeInterface$GifFrame;

    iget v0, v0, Landroid/widget/GifDecodeInterface$GifFrame;->delay:I

    iput v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->delay:I

    .line 174
    :cond_0
    iget v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->delay:I

    return v0
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "n"

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, im:Landroid/graphics/Bitmap;
    if-ltz p1, :cond_0

    iget v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 281
    iget-object v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/GifDecodeInterface$GifFrame;

    iget-object v0, v1, Landroid/widget/GifDecodeInterface$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 283
    :cond_0
    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frameCount:I

    return v0
.end method

.method public getFrameindex()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frameindex:I

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/GifDecodeInterface$GIFDecode;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->loopCount:I

    return v0
.end method

.method public next()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 295
    iget-object v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frames:Ljava/util/Vector;

    if-nez v2, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-object v1

    .line 298
    :cond_1
    iget v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frameindex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frameindex:I

    .line 299
    iget v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frameindex:I

    iget v3, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frameCount:I

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_2

    iget v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frameindex:I

    iget-object v3, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frames:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_3

    .line 300
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frameindex:I

    .line 303
    :cond_3
    iget-object v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frameindex:I

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frameindex:I

    iget v3, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frameCount:I

    if-ge v2, v3, :cond_0

    .line 304
    iget-object v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frames:Ljava/util/Vector;

    iget v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frameindex:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GifDecodeInterface$GifFrame;

    .line 305
    .local v0, currFrame:Landroid/widget/GifDecodeInterface$GifFrame;
    iget v1, v0, Landroid/widget/GifDecodeInterface$GifFrame;->delay:I

    iput v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->delay:I

    .line 306
    iget-object v1, v0, Landroid/widget/GifDecodeInterface$GifFrame;->image:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 2
    .parameter "is"

    .prologue
    .line 313
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->init()V

    .line 314
    if-eqz p1, :cond_1

    .line 315
    iput-object p1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->in:Ljava/io/InputStream;

    .line 316
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->readHeader()V

    .line 317
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->err()Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    invoke-direct {p0}, Landroid/widget/GifDecodeInterface$GIFDecode;->readContents()V

    .line 319
    iget v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frameCount:I

    if-gez v1, :cond_0

    .line 320
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->status:I

    .line 327
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_1
    iget v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->status:I

    return v1

    .line 324
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->status:I

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public recycleFrames()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 720
    iget-object v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frames:Ljava/util/Vector;

    if-eqz v2, :cond_1

    .line 721
    iget-object v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GifDecodeInterface$GifFrame;

    .line 723
    .local v0, frame:Landroid/widget/GifDecodeInterface$GifFrame;
    iput-object v3, v0, Landroid/widget/GifDecodeInterface$GifFrame;->image:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 725
    .end local v0           #frame:Landroid/widget/GifDecodeInterface$GifFrame;
    :cond_0
    iget-object v2, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 726
    iput-object v3, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frames:Ljava/util/Vector;

    .line 728
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setFrameindex(I)V
    .locals 1
    .parameter "frameindex"

    .prologue
    .line 131
    iput p1, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frameindex:I

    .line 132
    iget-object v0, p0, Landroid/widget/GifDecodeInterface$GIFDecode;->frames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 133
    const/4 p1, 0x0

    .line 135
    :cond_0
    return-void
.end method
