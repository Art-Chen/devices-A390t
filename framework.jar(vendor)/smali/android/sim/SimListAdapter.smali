.class public Landroid/sim/SimListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sim/SimListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mData:[Landroid/sim/Sim;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutId:I

.field private mListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/sim/Sim;Landroid/view/View$OnClickListener;I)V
    .locals 1
    .parameter "context"
    .parameter "data"
    .parameter "listener"
    .parameter "layoutId"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/sim/SimListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    iput-object p2, p0, Landroid/sim/SimListAdapter;->mData:[Landroid/sim/Sim;

    .line 36
    iput-object p3, p0, Landroid/sim/SimListAdapter;->mListener:Landroid/view/View$OnClickListener;

    .line 37
    iput p4, p0, Landroid/sim/SimListAdapter;->mLayoutId:I

    .line 38
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Landroid/sim/SimListAdapter;->mData:[Landroid/sim/Sim;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/sim/SimListAdapter;->mData:[Landroid/sim/Sim;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, holder:Landroid/sim/SimListAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 59
    new-instance v0, Landroid/sim/SimListAdapter$ViewHolder;

    .end local v0           #holder:Landroid/sim/SimListAdapter$ViewHolder;
    invoke-direct {v0, p0}, Landroid/sim/SimListAdapter$ViewHolder;-><init>(Landroid/sim/SimListAdapter;)V

    .line 61
    .restart local v0       #holder:Landroid/sim/SimListAdapter$ViewHolder;
    iget-object v2, p0, Landroid/sim/SimListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Landroid/sim/SimListAdapter;->mLayoutId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    const v2, 0x1020310

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Landroid/sim/SimListAdapter$ViewHolder;->color:Landroid/view/ViewGroup;

    .line 63
    const v2, 0x1020311

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Landroid/sim/SimListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 64
    const v2, 0x1020312

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Landroid/sim/SimListAdapter$ViewHolder;->viewBtn:Landroid/widget/Button;

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :goto_0
    invoke-virtual {p0, p1}, Landroid/sim/SimListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sim/Sim;

    .line 72
    .local v1, sim:Landroid/sim/Sim;
    if-nez v1, :cond_2

    .line 85
    :cond_0
    :goto_1
    return-object p2

    .line 69
    .end local v1           #sim:Landroid/sim/Sim;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Landroid/sim/SimListAdapter$ViewHolder;
    check-cast v0, Landroid/sim/SimListAdapter$ViewHolder;

    .restart local v0       #holder:Landroid/sim/SimListAdapter$ViewHolder;
    goto :goto_0

    .line 75
    .restart local v1       #sim:Landroid/sim/Sim;
    :cond_2
    invoke-virtual {v1}, Landroid/sim/Sim;->getPhoneId()I

    move-result v2

    if-gez v2, :cond_3

    .line 76
    iget-object v2, v0, Landroid/sim/SimListAdapter$ViewHolder;->color:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 81
    :goto_2
    iget-object v2, v0, Landroid/sim/SimListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/sim/SimListAdapter;->mData:[Landroid/sim/Sim;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, v0, Landroid/sim/SimListAdapter$ViewHolder;->viewBtn:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/sim/SimListAdapter;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, v0, Landroid/sim/SimListAdapter$ViewHolder;->viewBtn:Landroid/widget/Button;

    iget-object v3, p0, Landroid/sim/SimListAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 78
    :cond_3
    iget-object v2, v0, Landroid/sim/SimListAdapter$ViewHolder;->color:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 79
    iget-object v2, v0, Landroid/sim/SimListAdapter$ViewHolder;->color:Landroid/view/ViewGroup;

    sget-object v3, Landroid/sim/SimManager;->COLORS_IMAGES:[I

    invoke-virtual {v1}, Landroid/sim/Sim;->getColorIndex()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_2
.end method
