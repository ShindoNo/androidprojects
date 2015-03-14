.class Lcom/flurry/sdk/z$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/z;->p()Landroid/view/View;
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
    .line 344
    iput-object p1, p0, Lcom/flurry/sdk/z$4;->a:Lcom/flurry/sdk/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/flurry/sdk/z$4;->a:Lcom/flurry/sdk/z;

    invoke-static {v0}, Lcom/flurry/sdk/z;->e(Lcom/flurry/sdk/z;)V

    .line 348
    iget-object v0, p0, Lcom/flurry/sdk/z$4;->a:Lcom/flurry/sdk/z;

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->h()V

    .line 349
    return-void
.end method
