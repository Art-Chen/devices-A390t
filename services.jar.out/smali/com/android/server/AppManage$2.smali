.class Lcom/android/server/AppManage$2;
.super Ljava/lang/Object;
.source "AppManage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppManage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppManage;


# direct methods
.method constructor <init>(Lcom/android/server/AppManage;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/server/AppManage$2;->this$0:Lcom/android/server/AppManage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/AppManage$2;->this$0:Lcom/android/server/AppManage;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/AppManage;->showDialog(I)V

    .line 148
    new-instance v0, Lcom/android/server/AppManage$FreeMemory;

    iget-object v1, p0, Lcom/android/server/AppManage$2;->this$0:Lcom/android/server/AppManage;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppManage$FreeMemory;-><init>(Lcom/android/server/AppManage;Lcom/android/server/AppManage$1;)V

    invoke-virtual {v0}, Lcom/android/server/AppManage$FreeMemory;->start()V

    .line 149
    return-void
.end method
