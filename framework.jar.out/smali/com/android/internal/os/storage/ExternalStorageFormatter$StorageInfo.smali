.class Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;
.super Ljava/lang/Object;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StorageInfo"
.end annotation


# instance fields
.field mPath:Ljava/lang/String;

.field mType:I

.field final synthetic this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;->mPath:Ljava/lang/String;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;->mType:I

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "type"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;->mPath:Ljava/lang/String;

    .line 88
    iput p3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;->mType:I

    .line 89
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StorageInfo [ path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
