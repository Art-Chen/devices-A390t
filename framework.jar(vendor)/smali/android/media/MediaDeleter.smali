.class public Landroid/media/MediaDeleter;
.super Ljava/lang/Object;
.source "MediaDeleter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaDeleter$DeleteData;
    }
.end annotation


# instance fields
.field private mBufferSizePerUri:I

.field mDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaDeleter$DeleteData;",
            ">;"
        }
    .end annotation
.end field

.field private mProvider:Landroid/content/IContentProviderEx;


# direct methods
.method public constructor <init>(Landroid/content/IContentProvider;I)V
    .locals 2
    .parameter "provider"
    .parameter "bufferSizePerUri"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaDeleter;->mDeleteList:Ljava/util/ArrayList;

    .line 55
    instance-of v0, p1, Landroid/content/IContentProviderEx;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MediaDeleter only accept a provider which implements IContentProviderEx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    check-cast p1, Landroid/content/IContentProviderEx;

    .end local p1
    iput-object p1, p0, Landroid/media/MediaDeleter;->mProvider:Landroid/content/IContentProviderEx;

    .line 58
    iput p2, p0, Landroid/media/MediaDeleter;->mBufferSizePerUri:I

    .line 59
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Landroid/media/MediaDeleter;->mDeleteList:Ljava/util/ArrayList;

    .line 63
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/media/MediaDeleter$DeleteData;>;"
    new-instance v1, Landroid/media/MediaDeleter$DeleteData;

    invoke-direct {v1, p1, p2, p3}, Landroid/media/MediaDeleter$DeleteData;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Landroid/media/MediaDeleter;->mBufferSizePerUri:I

    if-lt v1, v2, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/media/MediaDeleter;->flushAll()V

    .line 67
    :cond_0
    return-void
.end method

.method public flushAll()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    const-string v6, "MediaDeleter"

    const-string v7, "flashing"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, p0, Landroid/media/MediaDeleter;->mDeleteList:Ljava/util/ArrayList;

    .line 72
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/media/MediaDeleter$DeleteData;>;"
    const/4 v1, 0x0

    .line 73
    .local v1, length:I
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 74
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 75
    new-array v3, v1, [Landroid/net/Uri;

    .line 76
    .local v3, urisArray:[Landroid/net/Uri;
    new-array v4, v1, [Ljava/lang/String;

    .line 77
    .local v4, userWhereArray:[Ljava/lang/String;
    new-array v5, v1, [[Ljava/lang/String;

    .line 78
    .local v5, whereArgsArray:[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 79
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaDeleter$DeleteData;

    iget-object v6, v6, Landroid/media/MediaDeleter$DeleteData;->mUri:Landroid/net/Uri;

    aput-object v6, v3, v0

    .line 80
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaDeleter$DeleteData;

    iget-object v6, v6, Landroid/media/MediaDeleter$DeleteData;->mUserWhere:Ljava/lang/String;

    aput-object v6, v4, v0

    .line 81
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaDeleter$DeleteData;

    iget-object v6, v6, Landroid/media/MediaDeleter$DeleteData;->mWhereArgs:[Ljava/lang/String;

    aput-object v6, v5, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iget-object v6, p0, Landroid/media/MediaDeleter;->mProvider:Landroid/content/IContentProviderEx;

    invoke-interface {v6, v3, v4, v5}, Landroid/content/IContentProviderEx;->bulkDelete([Landroid/net/Uri;[Ljava/lang/String;[[Ljava/lang/String;)I

    .line 84
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 86
    .end local v0           #i:I
    .end local v3           #urisArray:[Landroid/net/Uri;
    .end local v4           #userWhereArray:[Ljava/lang/String;
    .end local v5           #whereArgsArray:[[Ljava/lang/String;
    :cond_1
    const-string v6, "MediaDeleter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " operations flushed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method
