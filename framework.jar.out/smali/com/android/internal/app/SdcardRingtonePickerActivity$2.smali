.class Lcom/android/internal/app/SdcardRingtonePickerActivity$2;
.super Ljava/lang/Object;
.source "SdcardRingtonePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/SdcardRingtonePickerActivity;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/SdcardRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/SdcardRingtonePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/SdcardRingtonePickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/SdcardRingtonePickerActivity;

    #getter for: Lcom/android/internal/app/SdcardRingtonePickerActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->access$200(Lcom/android/internal/app/SdcardRingtonePickerActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 285
    return-void
.end method
