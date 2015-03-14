.class Lcom/flurry/sdk/u$1;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/u;->a(Landroid/app/Activity;Lcom/flurry/sdk/du$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/flurry/sdk/u;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/u;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/flurry/sdk/u$1;->b:Lcom/flurry/sdk/u;

    iput-object p2, p0, Lcom/flurry/sdk/u$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/flurry/sdk/u$1;->b:Lcom/flurry/sdk/u;

    iget-object v1, p0, Lcom/flurry/sdk/u$1;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u;->a(Landroid/content/Context;)Z

    .line 1313
    return-void
.end method
