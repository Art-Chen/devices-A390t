.class final Landroid/theme/ThemeInfo$1;
.super Ljava/lang/Object;
.source "ThemeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/theme/ThemeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/theme/ThemeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/theme/ThemeInfo;
    .locals 3
    .parameter "in"

    .prologue
    .line 77
    new-instance v0, Landroid/theme/ThemeInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/theme/ThemeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v0, result:Landroid/theme/ThemeInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/theme/ThemeInfo;->setThemePreview(I)V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/theme/ThemeInfo;->setThemeName(I)V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/theme/ThemeInfo;->setResDir(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/theme/ThemeInfo;->setTargetResDir(Ljava/lang/String;)V

    .line 82
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Landroid/theme/ThemeInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/theme/ThemeInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/theme/ThemeInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 86
    new-array v0, p1, [Landroid/theme/ThemeInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Landroid/theme/ThemeInfo$1;->newArray(I)[Landroid/theme/ThemeInfo;

    move-result-object v0

    return-object v0
.end method
