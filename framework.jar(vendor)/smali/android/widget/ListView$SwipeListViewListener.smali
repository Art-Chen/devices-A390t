.class Landroid/widget/ListView$SwipeListViewListener;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwipeListViewListener"
.end annotation


# instance fields
.field private mCallback:Landroid/widget/ListView$OnSwipeListener;

.field private mDownPosition:I

.field private mDownView:Landroid/view/View;

.field private mDownX:F

.field private mDownY:F

.field private mListView:Landroid/widget/ListView;

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mPaused:Z

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mSlop:I

.field private mSwipeView:Landroid/view/View;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewWidth:I

.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Landroid/widget/ListView$OnSwipeListener;)V
    .locals 2
    .parameter
    .parameter "callback"

    .prologue
    .line 3701
    iput-object p1, p0, Landroid/widget/ListView$SwipeListViewListener;->this$0:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3690
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/ListView$SwipeListViewListener;->mViewWidth:I

    .line 3702
    iput-object p1, p0, Landroid/widget/ListView$SwipeListViewListener;->mListView:Landroid/widget/ListView;

    .line 3703
    iget-object v1, p0, Landroid/widget/ListView$SwipeListViewListener;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 3704
    .local v0, vc:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView$SwipeListViewListener;->mSlop:I

    .line 3705
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView$SwipeListViewListener;->mMinFlingVelocity:I

    .line 3706
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView$SwipeListViewListener;->mMaxFlingVelocity:I

    .line 3708
    iput-object p2, p0, Landroid/widget/ListView$SwipeListViewListener;->mCallback:Landroid/widget/ListView$OnSwipeListener;

    .line 3709
    return-void
.end method


# virtual methods
.method public makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 3716
    new-instance v0, Landroid/widget/ListView$SwipeListViewListener$1;

    invoke-direct {v0, p0}, Landroid/widget/ListView$SwipeListViewListener$1;-><init>(Landroid/widget/ListView$SwipeListViewListener;)V

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 26
    .parameter "view"
    .parameter "motionEvent"

    .prologue
    .line 3730
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mViewWidth:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 3731
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ListView;->getWidth()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView$SwipeListViewListener;->mViewWidth:I

    .line 3734
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 3871
    :cond_1
    :goto_0
    const/16 v20, 0x0

    :goto_1
    return v20

    .line 3736
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mPaused:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 3739
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 3741
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 3742
    .local v14, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 3743
    .local v7, childCount:I
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v13, v0, [I

    .line 3744
    .local v13, listViewCoords:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 3745
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    aget v21, v13, v21

    sub-int v18, v20, v21

    .line 3746
    .local v18, x:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    aget v21, v13, v21

    sub-int v19, v20, v21

    .line 3748
    .local v19, y:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v7, :cond_2

    .line 3749
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3750
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6, v14}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3751
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 3752
    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownView:Landroid/view/View;

    .line 3756
    .end local v6           #child:Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 3757
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView$SwipeListViewListener;->mDownX:F

    .line 3758
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView$SwipeListViewListener;->mDownY:F

    .line 3759
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView$SwipeListViewListener;->mDownPosition:I

    .line 3760
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mCallback:Landroid/widget/ListView$OnSwipeListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-interface/range {v20 .. v23}, Landroid/widget/ListView$OnSwipeListener;->onSwipeStart(Landroid/widget/ListView;ILandroid/view/View;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 3761
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView$SwipeListViewListener;->mDownView:Landroid/view/View;

    goto/16 :goto_0

    .line 3748
    .restart local v6       #child:Landroid/view/View;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 3765
    .end local v6           #child:Landroid/view/View;
    :cond_4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView$SwipeListViewListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3766
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3768
    :cond_5
    invoke-virtual/range {p1 .. p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3769
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 3773
    .end local v7           #childCount:I
    .end local v12           #i:I
    .end local v13           #listViewCoords:[I
    .end local v14           #rect:Landroid/graphics/Rect;
    .end local v18           #x:I
    .end local v19           #y:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mPaused:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mSwipeView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 3781
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownX:F

    move/from16 v21, v0

    sub-float v8, v20, v21

    .line 3782
    .local v8, deltaX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3783
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    const/16 v21, 0x1f4

    invoke-virtual/range {v20 .. v21}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 3784
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 3785
    .local v16, velocityX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v17

    .line 3786
    .local v17, velocityY:F
    const/4 v15, 0x0

    .line 3787
    .local v15, swipe:Z
    const/4 v10, -0x1

    .line 3789
    .local v10, direction:I
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mViewWidth:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_9

    .line 3790
    const/4 v15, 0x1

    .line 3791
    const/16 v20, 0x0

    cmpl-float v20, v8, v20

    if-lez v20, :cond_8

    const/4 v10, 0x1

    .line 3798
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3799
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownView:Landroid/view/View;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f80

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 3800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setTranslationX(F)V

    .line 3802
    if-eqz v15, :cond_7

    .line 3803
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mCallback:Landroid/widget/ListView$OnSwipeListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3, v10}, Landroid/widget/ListView$OnSwipeListener;->onSwipeEnd(Landroid/widget/ListView;ILandroid/view/View;I)V

    .line 3806
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3807
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView$SwipeListViewListener;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3809
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView$SwipeListViewListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3810
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView$SwipeListViewListener;->mDownX:F

    .line 3811
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView$SwipeListViewListener;->mDownView:Landroid/view/View;

    .line 3812
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView$SwipeListViewListener;->mSwipeView:Landroid/view/View;

    .line 3813
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView$SwipeListViewListener;->mDownPosition:I

    .line 3814
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView$SwipeListViewListener;->mPopupWindow:Landroid/widget/PopupWindow;

    goto/16 :goto_0

    .line 3791
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 3792
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mMinFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v20, v20, v16

    if-gtz v20, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mMaxFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v20, v16, v20

    if-gtz v20, :cond_6

    cmpg-float v20, v17, v16

    if-gez v20, :cond_6

    .line 3794
    const/4 v15, 0x1

    .line 3795
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_a

    const/4 v10, 0x1

    :goto_4
    goto/16 :goto_3

    :cond_a
    const/4 v10, 0x0

    goto :goto_4

    .line 3819
    .end local v8           #deltaX:F
    .end local v10           #direction:I
    .end local v15           #swipe:Z
    .end local v16           #velocityX:F
    .end local v17           #velocityY:F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mPaused:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 3823
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownX:F

    move/from16 v21, v0

    sub-float v8, v20, v21

    .line 3824
    .restart local v8       #deltaX:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownY:F

    move/from16 v21, v0

    sub-float v9, v20, v21

    .line 3825
    .local v9, deltaY:F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mSlop:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v20, v20, v21

    if-ltz v20, :cond_1

    .line 3829
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mSwipeView:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_b

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/high16 v21, 0x42c8

    cmpl-float v20, v20, v21

    if-gtz v20, :cond_1

    .line 3833
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3834
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 3837
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 3838
    .local v5, cancelEvent:Landroid/view/MotionEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v20

    shl-int/lit8 v20, v20, 0x8

    or-int/lit8 v20, v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3841
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3843
    const/16 v20, 0x0

    const/high16 v21, 0x3f80

    const/high16 v22, 0x3f80

    const/high16 v23, 0x4000

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v24

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mViewWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    sub-float v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 3844
    .local v4, alpha:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 3845
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 3847
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mSwipeView:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_c

    .line 3848
    const/16 v20, 0x0

    cmpl-float v20, v8, v20

    if-lez v20, :cond_f

    const/4 v10, 0x1

    .line 3849
    .restart local v10       #direction:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mCallback:Landroid/widget/ListView$OnSwipeListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3, v10}, Landroid/widget/ListView$OnSwipeListener;->getSwipeView(Landroid/widget/ListView;ILandroid/view/View;I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView$SwipeListViewListener;->mSwipeView:Landroid/view/View;

    .line 3852
    .end local v10           #direction:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v20, v0

    if-nez v20, :cond_d

    .line 3853
    new-instance v20, Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v22

    invoke-direct/range {v20 .. v22}, Landroid/widget/PopupWindow;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView$SwipeListViewListener;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3854
    new-instance v11, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->this$0:Landroid/widget/ListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3855
    .local v11, holder:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mSwipeView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3856
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3859
    .end local v11           #holder:Landroid/widget/FrameLayout;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mSwipeView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    if-eqz v20, :cond_e

    .line 3860
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mSwipeView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v22, 0x437f

    mul-float v22, v22, v4

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff8

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    rsub-int v0, v0, 0xff

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3863
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v20

    if-eqz v20, :cond_10

    .line 3868
    :goto_6
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 3848
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 3866
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownView:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView$SwipeListViewListener;->mDownView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getHeight()I

    move-result v23

    rsub-int/lit8 v23, v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_6

    .line 3734
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 3712
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/ListView$SwipeListViewListener;->mPaused:Z

    .line 3713
    return-void

    .line 3712
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
