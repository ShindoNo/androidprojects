.class Lcom/flurry/sdk/ao$2;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ao;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ao;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ao;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/flurry/sdk/ao$2;->a:Lcom/flurry/sdk/ao;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/flurry/sdk/ao$2;->a:Lcom/flurry/sdk/ao;

    invoke-static {v0}, Lcom/flurry/sdk/ao;->a(Lcom/flurry/sdk/ao;)V

    .line 165
    return-void
.end method
