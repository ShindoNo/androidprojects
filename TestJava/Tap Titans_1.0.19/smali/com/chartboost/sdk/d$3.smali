.class Lcom/chartboost/sdk/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/ba$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/Model/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Model/a;

.field final synthetic b:Lcom/chartboost/sdk/d;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/chartboost/sdk/d$3;->b:Lcom/chartboost/sdk/d;

    iput-object p2, p0, Lcom/chartboost/sdk/d$3;->a:Lcom/chartboost/sdk/Model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/ba;)V
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/chartboost/sdk/d$3;->a:Lcom/chartboost/sdk/Model/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/chartboost/sdk/Model/a;->q:Z

    .line 339
    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "assets"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/d$3;->b:Lcom/chartboost/sdk/d;

    iget-object v1, p0, Lcom/chartboost/sdk/d$3;->a:Lcom/chartboost/sdk/Model/a;

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 344
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/d$3;->b:Lcom/chartboost/sdk/d;

    iget-object v1, p0, Lcom/chartboost/sdk/d$3;->a:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0, v1, p1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Libraries/e$a;)V

    goto :goto_0
.end method

.method public a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/Model/CBError;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 348
    iget-object v0, p0, Lcom/chartboost/sdk/d$3;->a:Lcom/chartboost/sdk/Model/a;

    iput-boolean v4, v0, Lcom/chartboost/sdk/Model/a;->q:Z

    .line 349
    const-string v1, "network failure"

    const-string v2, "request %s failed with error %s: %s"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/ba;->g()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p3}, Lcom/chartboost/sdk/Model/CBError;->a()Lcom/chartboost/sdk/Model/CBError$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chartboost/sdk/Model/CBError$a;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    invoke-virtual {p3}, Lcom/chartboost/sdk/Model/CBError;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/chartboost/sdk/Model/CBError;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/chartboost/sdk/d$3;->b:Lcom/chartboost/sdk/d;

    iget-object v1, p0, Lcom/chartboost/sdk/d$3;->a:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {p3}, Lcom/chartboost/sdk/Model/CBError;->c()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 352
    return-void

    .line 349
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
