.class public Lcom/android/internal/widget/RecycleFilletListView;
.super Lcom/android/internal/app/AlertController$RecycleListView;
.source "RecycleFilletListView.java"


# static fields
.field public static final BOTTOM_ROUND_CORNER:I = 0x2

.field public static final NO_ROUND_CORNER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RecycleFilletListView"

.field public static final TOP_BOTTOM_ROUND_CORNER:I = 0x3

.field public static final TOP_ROUND_CORNER:I = 0x1


# instance fields
.field mBottomSelector:Landroid/graphics/drawable/Drawable;

.field mCornerType:I

.field mNormalSelector:Landroid/graphics/drawable/Drawable;

.field mSingleSelector:Landroid/graphics/drawable/Drawable;

.field mTopSelector:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/RecycleFilletListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecycleFilletListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecycleFilletListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, resource:Landroid/content/res/Resources;
    const v1, #drawable@cld_list_selector_baidu_light#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    const v1, #drawable@cld_list_top_selector_baidu_light#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/RecycleFilletListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    const v1, #drawable@cld_list_bottom_selector_baidu_light#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/RecycleFilletListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    const v1, #drawable@cld_list_single_selector_baidu_light#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/RecycleFilletListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    return-void
.end method


# virtual methods
.method public getBottomSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCornerType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    return v0
.end method

.method public getSingleSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTopSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertController$RecycleListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .local v3, y:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/RecycleFilletListView;->pointToPosition(II)I

    move-result v1

    .local v1, itemnum:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    iget v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/widget/RecycleFilletListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_3
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecycleFilletListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/RecycleFilletListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCornerSelector(III)V
    .locals 4
    .parameter "topResID"
    .parameter "bottomResID"
    .parameter "singleResID"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/RecycleFilletListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/RecycleFilletListView;->setCornerSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCornerSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "topSel"
    .parameter "bottomSel"
    .parameter "singleSel"

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/RecycleFilletListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/internal/widget/RecycleFilletListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/internal/widget/RecycleFilletListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setCornerType(I)V
    .locals 1
    .parameter "cornerType"

    .prologue
    iput p1, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    iget v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
