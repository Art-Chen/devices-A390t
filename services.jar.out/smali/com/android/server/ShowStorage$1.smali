.class Lcom/android/server/ShowStorage$1;
.super Ljava/lang/Object;
.source "ShowStorage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ShowStorage;->initButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ShowStorage;


# direct methods
.method constructor <init>(Lcom/android/server/ShowStorage;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/server/ShowStorage$1;->this$0:Lcom/android/server/ShowStorage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/server/ShowStorage$1;->this$0:Lcom/android/server/ShowStorage;

    #calls: Lcom/android/server/ShowStorage;->sendAppManageIntent()V
    invoke-static {v0}, Lcom/android/server/ShowStorage;->access$000(Lcom/android/server/ShowStorage;)V

    .line 178
    return-void
.end method
