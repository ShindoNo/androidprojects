.class public Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget;
.super Ljava/lang/Object;
.source "ActionViewTarget.java"

# interfaces
.implements Lcom/github/amlcurran/showcaseview/targets/Target;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$1;,
        Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;
    }
.end annotation


# instance fields
.field mActionBarWrapper:Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;

.field private final mActivity:Landroid/app/Activity;

.field mReflector:Lcom/github/amlcurran/showcaseview/targets/Reflector;

.field private final mType:Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget;->mActivity:Landroid/app/Activity;

    .line 17
    iput-object p2, p0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget;->mType:Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

    .line 18
    return-void
.end method


# virtual methods
.method public getPoint()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "internal":Lcom/github/amlcurran/showcaseview/targets/Target;
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget;->setUp()V

    .line 30
    sget-object v1, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$1;->$SwitchMap$com$github$amlcurran$showcaseview$targets$ActionViewTarget$Type:[I

    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget;->mType:Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

    invoke-virtual {v2}, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 49
    :goto_0
    invoke-interface {v0}, Lcom/github/amlcurran/showcaseview/targets/Target;->getPoint()Landroid/graphics/Point;

    move-result-object v1

    return-object v1

    .line 33
    :pswitch_0
    new-instance v0, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;

    .end local v0    # "internal":Lcom/github/amlcurran/showcaseview/targets/Target;
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget;->mActionBarWrapper:Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;

    invoke-virtual {v1}, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->getSpinnerView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;-><init>(Landroid/view/View;)V

    .line 34
    .restart local v0    # "internal":Lcom/github/amlcurran/showcaseview/targets/Target;
    goto :goto_0

    .line 37
    :pswitch_1
    new-instance v0, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;

    .end local v0    # "internal":Lcom/github/amlcurran/showcaseview/targets/Target;
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget;->mReflector:Lcom/github/amlcurran/showcaseview/targets/Reflector;

    invoke-interface {v1}, Lcom/github/amlcurran/showcaseview/targets/Reflector;->getHomeButton()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;-><init>(Landroid/view/View;)V

    .line 38
    .restart local v0    # "internal":Lcom/github/amlcurran/showcaseview/targets/Target;
    goto :goto_0

    .line 41
    :pswitch_2
    new-instance v0, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;

    .end local v0    # "internal":Lcom/github/amlcurran/showcaseview/targets/Target;
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget;->mActionBarWrapper:Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;

    invoke-virtual {v1}, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->getOverflowView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;-><init>(Landroid/view/View;)V

    .line 42
    .restart local v0    # "internal":Lcom/github/amlcurran/showcaseview/targets/Target;
    goto :goto_0

    .line 45
    :pswitch_3
    new-instance v0, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;

    .end local v0    # "internal":Lcom/github/amlcurran/showcaseview/targets/Target;
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget;->mActionBarWrapper:Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;

    invoke-virtual {v1}, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->getTitleView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;-><init>(Landroid/view/View;)V

    .restart local v0    # "internal":Lcom/github/amlcurran/showcaseview/targets/Target;
    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected setUp()V
    .locals 2

    .prologue
    .line 21
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/github/amlcurran/showcaseview/targets/ReflectorFactory;->getReflectorForActivity(Landroid/app/Activity;)Lcom/github/amlcurran/showcaseview/targets/Reflector;

    move-result-object v1

    iput-object v1, p0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget;->mReflector:Lcom/github/amlcurran/showcaseview/targets/Reflector;

    .line 22
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget;->mReflector:Lcom/github/amlcurran/showcaseview/targets/Reflector;

    invoke-interface {v1}, Lcom/github/amlcurran/showcaseview/targets/Reflector;->getActionBarView()Landroid/view/ViewParent;

    move-result-object v0

    .line 23
    .local v0, "p":Landroid/view/ViewParent;
    new-instance v1, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;

    invoke-direct {v1, v0}, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;-><init>(Landroid/view/ViewParent;)V

    iput-object v1, p0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget;->mActionBarWrapper:Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;

    .line 24
    return-void
.end method
