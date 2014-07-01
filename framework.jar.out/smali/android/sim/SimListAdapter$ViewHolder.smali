.class public final Landroid/sim/SimListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SimListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sim/SimListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field public color:Landroid/view/ViewGroup;

.field public name:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/sim/SimListAdapter;

.field public viewBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/sim/SimListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Landroid/sim/SimListAdapter$ViewHolder;->this$0:Landroid/sim/SimListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
