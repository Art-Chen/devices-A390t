.class public Landroid/media/MediaUpdater;
.super Ljava/lang/Object;
.source "MediaUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaUpdater$UpdateData;
    }
.end annotation


# instance fields
.field private mBufferSizePerUri:I

.field private mProvider:Landroid/content/IContentProviderEx;

.field mUpdateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaUpdater$UpdateData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/IContentProvider;I)V
    .locals 2
    .parameter "provider"
    .parameter "bufferSizePerUri"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaUpdater;->mUpdateList:Ljava/util/ArrayList;

    .line 59
    instance-of v0, p1, Landroid/content/IContentProviderEx;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MediaUpdater only accept a provider which implements IContentProviderEx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    check-cast p1, Landroid/content/IContentProviderEx;

    .end local p1
    iput-object p1, p0, Landroid/media/MediaUpdater;->mProvider:Landroid/content/IContentProviderEx;

    .line 62
    iput p2, p0, Landroid/media/MediaUpdater;->mBufferSizePerUri:I

    .line 63
    return-void
.end method


# virtual methods
.method public flushAll()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    const-string v7, "MediaUpdater"

    const-string v8, "flushing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v2, p0, Landroid/media/MediaUpdater;->mUpdateList:Ljava/util/ArrayList;

    .line 77
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/media/MediaUpdater$UpdateData;>;"
    const/4 v1, 0x0

    .line 78
    .local v1, length:I
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 79
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 80
    new-array v3, v1, [Landroid/net/Uri;

    .line 81
    .local v3, urisArray:[Landroid/net/Uri;
    new-array v5, v1, [Landroid/content/ContentValues;

    .line 82
    .local v5, valuesArray:[Landroid/content/ContentValues;
    new-array v4, v1, [Ljava/lang/String;

    .line 83
    .local v4, userWhereArray:[Ljava/lang/String;
    new-array v6, v1, [[Ljava/lang/String;

    .line 84
    .local v6, whereArgsArray:[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 85
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MediaUpdater$UpdateData;

    iget-object v7, v7, Landroid/media/MediaUpdater$UpdateData;->mUri:Landroid/net/Uri;

    aput-object v7, v3, v0

    .line 86
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MediaUpdater$UpdateData;

    iget-object v7, v7, Landroid/media/MediaUpdater$UpdateData;->mInitialValues:Landroid/content/ContentValues;

    aput-object v7, v5, v0

    .line 87
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MediaUpdater$UpdateData;

    iget-object v7, v7, Landroid/media/MediaUpdater$UpdateData;->mUserWhere:Ljava/lang/String;

    aput-object v7, v4, v0

    .line 88
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MediaUpdater$UpdateData;

    iget-object v7, v7, Landroid/media/MediaUpdater$UpdateData;->mWhereArgs:[Ljava/lang/String;

    aput-object v7, v6, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iget-object v7, p0, Landroid/media/MediaUpdater;->mProvider:Landroid/content/IContentProviderEx;

    invoke-interface {v7, v3, v5, v4, v6}, Landroid/content/IContentProviderEx;->bulkUpdate([Landroid/net/Uri;[Landroid/content/ContentValues;[Ljava/lang/String;[[Ljava/lang/String;)I

    move-result v1

    .line 91
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 93
    .end local v0           #i:I
    .end local v3           #urisArray:[Landroid/net/Uri;
    .end local v4           #userWhereArray:[Ljava/lang/String;
    .end local v5           #valuesArray:[Landroid/content/ContentValues;
    .end local v6           #whereArgsArray:[[Ljava/lang/String;
    :cond_1
    const-string v7, "MediaUpdater"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " operations flushed."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/MediaUpdater;->mUpdateList:Ljava/util/ArrayList;

    .line 68
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/media/MediaUpdater$UpdateData;>;"
    new-instance v1, Landroid/media/MediaUpdater$UpdateData;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/media/MediaUpdater$UpdateData;-><init>(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Landroid/media/MediaUpdater;->mBufferSizePerUri:I

    if-lt v1, v2, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/media/MediaUpdater;->flushAll()V

    .line 72
    :cond_0
    return-void
.end method
