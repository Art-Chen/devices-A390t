.class Landroid/widget/SpreadDigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "SpreadDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpreadDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SpreadDigitalClock;


# direct methods
.method public constructor <init>(Landroid/widget/SpreadDigitalClock;)V
    .locals 1
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Landroid/widget/SpreadDigitalClock$FormatChangeObserver;->this$0:Landroid/widget/SpreadDigitalClock;

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 149
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 153
    iget-object v0, p0, Landroid/widget/SpreadDigitalClock$FormatChangeObserver;->this$0:Landroid/widget/SpreadDigitalClock;

    #calls: Landroid/widget/SpreadDigitalClock;->setFormat()V
    invoke-static {v0}, Landroid/widget/SpreadDigitalClock;->access$400(Landroid/widget/SpreadDigitalClock;)V

    .line 154
    return-void
.end method
