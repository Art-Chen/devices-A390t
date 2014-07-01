.class Lcom/android/internal/app/SdcardRingtonePickerActivity$1;
.super Ljava/lang/Object;
.source "SdcardRingtonePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/SdcardRingtonePickerActivity;
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
    .line 103
    iput-object p1, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity$1;->this$0:Lcom/android/internal/app/SdcardRingtonePickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity$1;->this$0:Lcom/android/internal/app/SdcardRingtonePickerActivity;

    #setter for: Lcom/android/internal/app/SdcardRingtonePickerActivity;->mClickedPos:I
    invoke-static {v0, p2}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->access$002(Lcom/android/internal/app/SdcardRingtonePickerActivity;I)I

    .line 113
    iget-object v0, p0, Lcom/android/internal/app/SdcardRingtonePickerActivity$1;->this$0:Lcom/android/internal/app/SdcardRingtonePickerActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/app/SdcardRingtonePickerActivity;->playRingtone(II)V
    invoke-static {v0, p2, v1}, Lcom/android/internal/app/SdcardRingtonePickerActivity;->access$100(Lcom/android/internal/app/SdcardRingtonePickerActivity;II)V

    .line 114
    return-void
.end method
