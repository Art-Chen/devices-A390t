.class public interface abstract Landroid/content/IContentProviderEx;
.super Ljava/lang/Object;
.source "IContentProviderEx.java"

# interfaces
.implements Landroid/content/IContentProvider;


# virtual methods
.method public abstract bulkDelete([Landroid/net/Uri;[Ljava/lang/String;[[Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract bulkUpdate([Landroid/net/Uri;[Landroid/content/ContentValues;[Ljava/lang/String;[[Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract resetSequence()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
