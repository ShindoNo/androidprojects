.class Lcom/flurry/sdk/as$3$3;
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
    .line 233
    iput-object p1, p0, Lcom/flurry/sdk/as$3$3;->a:Lcom/flurry/sdk/as$3;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/flurry/sdk/as$3$3;->a:Lcom/flurry/sdk/as$3;

    iget-object v0, v0, Lcom/flurry/sdk/as$3;->a:Lcom/flurry/sdk/as;

    invoke-static {v0}, Lcom/flurry/sdk/as;->h(Lcom/flurry/sdk/as;)V

    .line 237
    return-void
.end method
