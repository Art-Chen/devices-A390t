.class public abstract Landroid/widget/AbsLockScreen;
.super Landroid/widget/RelativeLayout;
.source "AbsLockScreen.java"

# interfaces
.implements Landroid/widget/ILockScreen;


# instance fields
.field protected mLockScreenListener:Landroid/widget/ILockScreenListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ILockScreenListener;)V
    .locals 0
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p2, p0, Landroid/widget/AbsLockScreen;->mLockScreenListener:Landroid/widget/ILockScreenListener;

    .line 18
    return-void
.end method
