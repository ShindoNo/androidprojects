.class Lcom/flurry/sdk/as$3$2;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/as$3;->a(Lcom/flurry/sdk/ei;Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/as$3;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/as$3;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/flurry/sdk/as$3$2;->a:Lcom/flurry/sdk/as$3;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/flurry/sdk/as$3$2;->a:Lcom/flurry/sdk/as$3;

    iget-object v0, v0, Lcom/flurry/sdk/as$3;->a:Lcom/flurry/sdk/as;

    invoke-static {v0}, Lcom/flurry/sdk/as;->j(Lcom/flurry/sdk/as;)V

    .line 228
    return-void
.end method