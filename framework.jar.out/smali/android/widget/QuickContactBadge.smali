.class public Landroid/widget/QuickContactBadge;
.super Landroid/widget/ImageView;
.source "QuickContactBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/QuickContactBadge$QueryHandler;
    }
.end annotation


# static fields
.field private static final ACTION_STRANGE_QUICK_CONTACT:Ljava/lang/String; = "com.baidu.contacts.action.STRANGE_QUICK_CONTACT"

.field static final EMAIL_ID_COLUMN_INDEX:I = 0x0

.field static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static final EMAIL_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field static final MINIMUM_PADDING:I = 0x2

.field static final PHONE_ID_COLUMN_INDEX:I = 0x0

.field static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static final PHONE_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x0

.field private static final TOKEN_EMAIL_LOOKUP_AND_TRIGGER:I = 0x2

.field private static final TOKEN_PHONE_LOOKUP:I = 0x1

.field private static final TOKEN_PHONE_LOOKUP_AND_TRIGGER:I = 0x3

.field private static final res_id:[I


# instance fields
.field private mContactEmail:Ljava/lang/String;

.field private mContactPhone:Ljava/lang/String;

.field private mContactUri:Landroid/net/Uri;

.field private mDefaultAvatar:Landroid/graphics/drawable/Drawable;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Landroid/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Landroid/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/QuickContactBadge;->res_id:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        #drawable@baidu_p001_small#a
        #drawable@baidu_p002_small#a
        #drawable@baidu_p003_small#a
        #drawable@baidu_p004_small#a
        #drawable@baidu_p005_small#a
        #drawable@baidu_p006_small#a
        #drawable@baidu_p007_small#a
        #drawable@baidu_p008_small#a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, styledAttributes:Landroid/content/res/TypedArray;
    const/16 v1, 0xe4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Landroid/widget/QuickContactBadge$QueryHandler;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/widget/QuickContactBadge$QueryHandler;-><init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    invoke-virtual {p0, p0}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/QuickContactBadge;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$iput-mContactUri-2a3991(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$invoke-onContactUriChanged-a00fe8(Landroid/widget/QuickContactBadge;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    return-void
.end method

.method static synthetic access$invoke-showStrangeQuickContact-6377c4(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/QuickContactBadge;->showStrangeQuickContact(Landroid/net/Uri;)V

    return-void
.end method

.method private getMax(I)I
    .locals 1
    .parameter "v"

    .prologue
    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private isAssigned()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onContactUriChanged()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->isAssigned()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/QuickContactBadge;->setEnabled(Z)V

    return-void
.end method

.method private showStrangeQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "target"
    .parameter "createUri"
    .parameter "mode"
    .parameter "excludeMimes"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    iget v0, v5, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .local v0, appScale:F
    const/4 v5, 0x2

    new-array v3, v5, [I

    .local v3, pos:[I
    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .local v4, rect:Landroid/graphics/Rect;
    aget v5, v3, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    aget v5, v3, v8

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    aget v5, v3, v6

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    aget v5, v3, v8

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.baidu.contacts.action.STRANGE_QUICK_CONTACT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1420

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    const-string v5, "mode"

    invoke-virtual {v2, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "exclude_mimes"

    invoke-virtual {v2, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, e:Landroid/content/ActivityNotFoundException;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v5, v6, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showStrangeQuickContact(Landroid/net/Uri;)V
    .locals 6
    .parameter "createUri"

    .prologue
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x3

    iget-object v5, p0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/QuickContactBadge;->showStrangeQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public assignContactFromEmail(Ljava/lang/String;Z)V
    .locals 8
    .parameter "emailAddress"
    .parameter "lazyLookup"

    .prologue
    const/4 v2, 0x0

    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    goto :goto_0
.end method

.method public assignContactFromPhone(Ljava/lang/String;Z)V
    .locals 8
    .parameter "phoneNumber"
    .parameter "lazyLookup"

    .prologue
    const/4 v2, 0x0

    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x1

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    goto :goto_0
.end method

.method public assignContactUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactUri"

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->invalidate()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    iget-object v3, p0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v0, p0, v2, v1, v3}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    iget-object v2, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setExcludeMimes([Ljava/lang/String;)V
    .locals 0
    .parameter "excludeMimes"

    .prologue
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    return-void
.end method

.method public setImageToDefault()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #drawable@ic_contact_picture#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageToDefault(J)V
    .locals 3
    .parameter "cid"

    .prologue
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->setImageToDefault()V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Landroid/widget/QuickContactBadge;->res_id:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p1, v1

    long-to-int v0, v1

    .local v0, index:I
    sget-object v1, Landroid/widget/QuickContactBadge;->res_id:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 0
    .parameter "size"

    .prologue
    return-void
.end method

.method public setPadding(IIII)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/QuickContactBadge;->getMax(I)I

    move-result v0

    invoke-direct {p0, p2}, Landroid/widget/QuickContactBadge;->getMax(I)I

    move-result v1

    invoke-direct {p0, p3}, Landroid/widget/QuickContactBadge;->getMax(I)I

    move-result v2

    invoke-direct {p0, p4}, Landroid/widget/QuickContactBadge;->getMax(I)I

    move-result v3

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method
