.class Lcom/flurry/sdk/r$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ei$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/a;Ljava/lang/String;ILcom/flurry/sdk/r$b;I)V
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

.field final synthetic b:Lcom/flurry/sdk/a;

.field final synthetic c:Lcom/flurry/sdk/r$b;

.field final synthetic d:I

.field final synthetic e:Lcom/flurry/sdk/r;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/r;Ljava/lang/String;Lcom/flurry/sdk/a;Lcom/flurry/sdk/r$b;I)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/flurry/sdk/r$7;->e:Lcom/flurry/sdk/r;

    iput-object p2, p0, Lcom/flurry/sdk/r$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/r$7;->b:Lcom/flurry/sdk/a;

    iput-object p4, p0, Lcom/flurry/sdk/r$7;->c:Lcom/flurry/sdk/r$b;

    iput p5, p0, Lcom/flurry/sdk/r$7;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/ei;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 804
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/r$7;->a(Lcom/flurry/sdk/ei;Ljava/lang/Void;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/ei;Ljava/lang/Void;)V
    .locals 6
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
    const/4 v3, 0x3

    .line 807
    invoke-virtual {p1}, Lcom/flurry/sdk/ei;->e()I

    move-result v5

    .line 810
    invoke-static {}, Lcom/flurry/sdk/el;->c()I

    move-result v0

    if-gt v0, v3, :cond_0

    invoke-static {}, Lcom/flurry/sdk/el;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/r$7$1;

    invoke-direct {v1, p0, v5}, Lcom/flurry/sdk/r$7$1;-><init>(Lcom/flurry/sdk/r$7;I)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->a(Ljava/lang/Runnable;)V

    .line 819
    :cond_0
    const/16 v0, 0xc8

    if-ne v5, v0, :cond_2

    .line 820
    invoke-static {}, Lcom/flurry/sdk/r;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL hit succeeded for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/r$7;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lcom/flurry/sdk/r$7;->e:Lcom/flurry/sdk/r;

    iget-object v1, p0, Lcom/flurry/sdk/r$7;->b:Lcom/flurry/sdk/a;

    iget-object v2, p0, Lcom/flurry/sdk/r$7;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/a;Ljava/lang/String;I)V

    .line 823
    iget-object v0, p0, Lcom/flurry/sdk/r$7;->c:Lcom/flurry/sdk/r$b;

    if-eqz v0, :cond_1

    .line 824
    iget-object v0, p0, Lcom/flurry/sdk/r$7;->c:Lcom/flurry/sdk/r$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/flurry/sdk/r$b;->a(Z)V

    .line 831
    :cond_1
    :goto_0
    return-void

    .line 829
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/r$7;->e:Lcom/flurry/sdk/r;

    iget-object v1, p0, Lcom/flurry/sdk/r$7;->b:Lcom/flurry/sdk/a;

    iget-object v2, p0, Lcom/flurry/sdk/r$7;->a:Ljava/lang/String;

    iget v3, p0, Lcom/flurry/sdk/r$7;->d:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/flurry/sdk/r$7;->c:Lcom/flurry/sdk/r$b;

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/a;Ljava/lang/String;ILcom/flurry/sdk/r$b;I)V

    goto :goto_0
.end method
