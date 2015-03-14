.class Lcom/flurry/sdk/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/a;Lcom/flurry/sdk/ae;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/q;

.field final synthetic b:I

.field final synthetic c:Lcom/flurry/sdk/g;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/g;Lcom/flurry/sdk/q;I)V
    .locals 0

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/flurry/sdk/g$2;->c:Lcom/flurry/sdk/g;

    iput-object p2, p0, Lcom/flurry/sdk/g$2;->a:Lcom/flurry/sdk/q;

    iput p3, p0, Lcom/flurry/sdk/g$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    .line 1199
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1200
    const-string v0, "sourceEvent"

    iget-object v1, p0, Lcom/flurry/sdk/g$2;->a:Lcom/flurry/sdk/q;

    iget-object v1, v1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    iget-object v0, p0, Lcom/flurry/sdk/g$2;->c:Lcom/flurry/sdk/g;

    const-string v1, "userCanceled"

    iget-object v3, p0, Lcom/flurry/sdk/g$2;->c:Lcom/flurry/sdk/g;

    invoke-virtual {v3}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/g$2;->c:Lcom/flurry/sdk/g;

    invoke-virtual {v4}, Lcom/flurry/sdk/g;->getAdLog()Lcom/flurry/sdk/e;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/g$2;->c:Lcom/flurry/sdk/g;

    invoke-virtual {v5}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v5

    iget v6, p0, Lcom/flurry/sdk/g$2;->b:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    .line 1203
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1204
    iget-object v0, p0, Lcom/flurry/sdk/g$2;->c:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->A(Lcom/flurry/sdk/g;)Lcom/flurry/sdk/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/flurry/sdk/g$2;->c:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->A(Lcom/flurry/sdk/g;)Lcom/flurry/sdk/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/f;->setCloseConfirmDialogClicked(Z)V

    .line 1206
    iget-object v0, p0, Lcom/flurry/sdk/g$2;->c:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->A(Lcom/flurry/sdk/g;)Lcom/flurry/sdk/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->start()V

    .line 1208
    :cond_0
    return-void
.end method
