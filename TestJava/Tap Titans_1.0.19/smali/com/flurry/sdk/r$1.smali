.class Lcom/flurry/sdk/r$1;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/l;

.field final synthetic d:Z

.field final synthetic e:Lcom/flurry/sdk/r;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/r;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/l;Z)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/flurry/sdk/r$1;->e:Lcom/flurry/sdk/r;

    iput-object p2, p0, Lcom/flurry/sdk/r$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/flurry/sdk/r$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/flurry/sdk/r$1;->c:Lcom/flurry/sdk/l;

    iput-boolean p5, p0, Lcom/flurry/sdk/r$1;->d:Z

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 337
    iget-object v0, p0, Lcom/flurry/sdk/r$1;->e:Lcom/flurry/sdk/r;

    iget-object v0, v0, Lcom/flurry/sdk/r;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->d()Lcom/flurry/sdk/u;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/r$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/sdk/r$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/sdk/r$1;->c:Lcom/flurry/sdk/l;

    invoke-virtual {v3}, Lcom/flurry/sdk/l;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v3

    iget-boolean v4, p0, Lcom/flurry/sdk/r$1;->d:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/flurry/android/FlurryAdSize;->BANNER_BOTTOM:Lcom/flurry/android/FlurryAdSize;

    :goto_0
    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/u;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;Z)V

    .line 339
    return-void

    .line 337
    :cond_0
    sget-object v4, Lcom/flurry/android/FlurryAdSize;->FULLSCREEN:Lcom/flurry/android/FlurryAdSize;

    goto :goto_0
.end method
