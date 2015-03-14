.class Lcom/flurry/sdk/z$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/z;->r()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/z;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/z;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/flurry/sdk/z$6;->a:Lcom/flurry/sdk/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 408
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/z$6;->a:Lcom/flurry/sdk/z;

    invoke-static {v1}, Lcom/flurry/sdk/z;->b(Lcom/flurry/sdk/z;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Show video more info button."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/flurry/sdk/z$6;->a:Lcom/flurry/sdk/z;

    invoke-static {v0}, Lcom/flurry/sdk/z;->f(Lcom/flurry/sdk/z;)Lcom/flurry/sdk/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/flurry/sdk/z$6;->a:Lcom/flurry/sdk/z;

    invoke-static {v0}, Lcom/flurry/sdk/z;->f(Lcom/flurry/sdk/z;)Lcom/flurry/sdk/g;

    move-result-object v0

    const-string v1, "clicked"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/z$6;->a:Lcom/flurry/sdk/z;

    invoke-static {v3}, Lcom/flurry/sdk/z;->f(Lcom/flurry/sdk/z;)Lcom/flurry/sdk/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/z$6;->a:Lcom/flurry/sdk/z;

    invoke-static {v4}, Lcom/flurry/sdk/z;->f(Lcom/flurry/sdk/z;)Lcom/flurry/sdk/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/g;->getAdLog()Lcom/flurry/sdk/e;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/z$6;->a:Lcom/flurry/sdk/z;

    invoke-static {v5}, Lcom/flurry/sdk/z;->f(Lcom/flurry/sdk/z;)Lcom/flurry/sdk/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    .line 413
    iget-object v0, p0, Lcom/flurry/sdk/z$6;->a:Lcom/flurry/sdk/z;

    invoke-static {v0}, Lcom/flurry/sdk/z;->g(Lcom/flurry/sdk/z;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 415
    :cond_0
    return-void
.end method
