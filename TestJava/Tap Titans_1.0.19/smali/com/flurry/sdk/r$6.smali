.class Lcom/flurry/sdk/r$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ei$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;ILcom/flurry/sdk/r$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ei$a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/sdk/r$a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/flurry/sdk/r;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/r;Ljava/lang/String;Lcom/flurry/sdk/r$a;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lcom/flurry/sdk/r$6;->e:Lcom/flurry/sdk/r;

    iput-object p2, p0, Lcom/flurry/sdk/r$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/r$6;->b:Lcom/flurry/sdk/r$a;

    iput-object p4, p0, Lcom/flurry/sdk/r$6;->c:Ljava/lang/String;

    iput p5, p0, Lcom/flurry/sdk/r$6;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/ei;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 715
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/r$6;->a(Lcom/flurry/sdk/ei;Ljava/lang/Void;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/ei;Ljava/lang/Void;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ei",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 718
    invoke-virtual {p1}, Lcom/flurry/sdk/ei;->e()I

    move-result v0

    .line 721
    invoke-static {}, Lcom/flurry/sdk/el;->c()I

    move-result v1

    if-gt v1, v4, :cond_0

    invoke-static {}, Lcom/flurry/sdk/el;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/r$6$1;

    invoke-direct {v2, p0, v0}, Lcom/flurry/sdk/r$6$1;-><init>(Lcom/flurry/sdk/r$6;I)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/do;->a(Ljava/lang/Runnable;)V

    .line 731
    :cond_0
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 732
    invoke-static {}, Lcom/flurry/sdk/r;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect URL found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/r$6;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/flurry/sdk/r$6;->b:Lcom/flurry/sdk/r$a;

    iget-object v1, p0, Lcom/flurry/sdk/r$6;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/flurry/sdk/r$a;->a(Ljava/lang/String;)V

    .line 749
    :goto_0
    return-void

    .line 735
    :cond_1
    const/16 v1, 0x12c

    if-lt v0, v1, :cond_3

    const/16 v1, 0x190

    if-ge v0, v1, :cond_3

    .line 736
    invoke-static {}, Lcom/flurry/sdk/r;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Num redirects: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/flurry/sdk/r$6;->d:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v0, "Location"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ei;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 738
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 739
    iget-object v1, p0, Lcom/flurry/sdk/r$6;->e:Lcom/flurry/sdk/r;

    iget-object v2, p0, Lcom/flurry/sdk/r$6;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v3, p0, Lcom/flurry/sdk/r$6;->d:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/flurry/sdk/r$6;->b:Lcom/flurry/sdk/r$a;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/r;Ljava/lang/String;Ljava/lang/String;ILcom/flurry/sdk/r$a;)V

    goto :goto_0

    .line 742
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/r;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No location for redirect url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/r$6;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 748
    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/r$6;->b:Lcom/flurry/sdk/r$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/flurry/sdk/r$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :cond_3
    invoke-static {}, Lcom/flurry/sdk/r;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad Response status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
