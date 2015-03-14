.class Lcom/flurry/sdk/u$a$10;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/u$a;->b(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/flurry/sdk/u$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/u$a;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/flurry/sdk/u$a$10;->c:Lcom/flurry/sdk/u$a;

    iput-object p2, p0, Lcom/flurry/sdk/u$a$10;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/flurry/sdk/u$a$10;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/flurry/sdk/u$a$10;->c:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u$a$10;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/sdk/u$a$10;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/u$a;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Z

    .line 1149
    return-void
.end method
