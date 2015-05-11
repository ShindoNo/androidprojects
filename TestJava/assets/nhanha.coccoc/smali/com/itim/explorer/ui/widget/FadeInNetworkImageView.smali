.class public Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;
.super Lcom/android/volley/toolbox/NetworkImageView;
.source "FadeInNetworkImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/ui/widget/FadeInNetworkImageView$OnLoadListener;
    }
.end annotation


# static fields
.field private static final FADE_IN_TIME_MS:I = 0xfa


# instance fields
.field private onLoadListener:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView$OnLoadListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 38
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x106000d

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 41
    .local v0, "td":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 43
    iget-object v1, p0, Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;->onLoadListener:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView$OnLoadListener;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;->onLoadListener:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView$OnLoadListener;

    invoke-interface {v1}, Lcom/itim/explorer/ui/widget/FadeInNetworkImageView$OnLoadListener;->onLoadFinish()V

    .line 45
    :cond_0
    return-void
.end method

.method public setOnLoadListener(Lcom/itim/explorer/ui/widget/FadeInNetworkImageView$OnLoadListener;)V
    .locals 0
    .param p1, "onLoadListener"    # Lcom/itim/explorer/ui/widget/FadeInNetworkImageView$OnLoadListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;->onLoadListener:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView$OnLoadListener;

    .line 34
    return-void
.end method
