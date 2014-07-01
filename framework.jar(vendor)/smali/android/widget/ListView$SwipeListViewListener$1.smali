.class Landroid/widget/ListView$SwipeListViewListener$1;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ListView$SwipeListViewListener;->makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/ListView$SwipeListViewListener;


# direct methods
.method constructor <init>(Landroid/widget/ListView$SwipeListViewListener;)V
    .locals 0
    .parameter

    .prologue
    .line 3716
    iput-object p1, p0, Landroid/widget/ListView$SwipeListViewListener$1;->this$1:Landroid/widget/ListView$SwipeListViewListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "absListView"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 3724
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "absListView"
    .parameter "scrollState"

    .prologue
    const/4 v0, 0x1

    .line 3719
    iget-object v1, p0, Landroid/widget/ListView$SwipeListViewListener$1;->this$1:Landroid/widget/ListView$SwipeListViewListener;

    if-eq p2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ListView$SwipeListViewListener;->setEnabled(Z)V

    .line 3720
    return-void

    .line 3719
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
