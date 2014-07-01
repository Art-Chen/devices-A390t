.class Lcom/android/server/ShowStorage$2;
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
    .line 180
    iput-object p1, p0, Lcom/android/server/ShowStorage$2;->this$0:Lcom/android/server/ShowStorage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/ShowStorage$2;->this$0:Lcom/android/server/ShowStorage;

    #calls: Lcom/android/server/ShowStorage;->sendMailManageIntent()V
    invoke-static {v0}, Lcom/android/server/ShowStorage;->access$100(Lcom/android/server/ShowStorage;)V

    .line 183
    return-void
.end method
