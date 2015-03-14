.class Lcom/flurry/sdk/as$2$1;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/as$2;->a(Lcom/flurry/sdk/ek;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/as$2;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/as$2;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/flurry/sdk/as$2$1;->a:Lcom/flurry/sdk/as$2;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/flurry/sdk/as$2$1;->a:Lcom/flurry/sdk/as$2;

    iget-object v0, v0, Lcom/flurry/sdk/as$2;->a:Lcom/flurry/sdk/as;

    invoke-static {v0}, Lcom/flurry/sdk/as;->g(Lcom/flurry/sdk/as;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/flurry/sdk/as$2$1;->a:Lcom/flurry/sdk/as$2;

    iget-object v0, v0, Lcom/flurry/sdk/as$2;->a:Lcom/flurry/sdk/as;

    invoke-virtual {v0}, Lcom/flurry/sdk/as;->h()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/as$2$1;->a:Lcom/flurry/sdk/as$2;

    iget-object v0, v0, Lcom/flurry/sdk/as$2;->a:Lcom/flurry/sdk/as;

    invoke-static {v0}, Lcom/flurry/sdk/as;->h(Lcom/flurry/sdk/as;)V

    .line 171
    return-void
.end method
