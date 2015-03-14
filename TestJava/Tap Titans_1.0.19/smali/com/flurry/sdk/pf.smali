.class public Lcom/flurry/sdk/pf;
.super Lcom/flurry/sdk/pq;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/sdk/jy;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/pq",
        "<",
        "Ljava/lang/Enum",
        "<*>;>;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/flurry/sdk/qy;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/qy;)V
    .locals 2

    .prologue
    .line 36
    const-class v0, Ljava/lang/Enum;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/pq;-><init>(Ljava/lang/Class;Z)V

    .line 37
    iput-object p1, p0, Lcom/flurry/sdk/pf;->a:Lcom/flurry/sdk/qy;

    .line 38
    return-void
.end method

.method public static a(Ljava/lang/Class;Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;)Lcom/flurry/sdk/pf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Lcom/flurry/sdk/jr;",
            "Lcom/flurry/sdk/mt;",
            ")",
            "Lcom/flurry/sdk/pf;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/in;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/flurry/sdk/jr$a;->t:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lcom/flurry/sdk/qy;->c(Ljava/lang/Class;Lcom/flurry/sdk/in;)Lcom/flurry/sdk/qy;

    move-result-object v0

    .line 47
    :goto_0
    new-instance v1, Lcom/flurry/sdk/pf;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/pf;-><init>(Lcom/flurry/sdk/qy;)V

    return-object v1

    .line 45
    :cond_0
    invoke-static {p0, v0}, Lcom/flurry/sdk/qy;->b(Ljava/lang/Class;Lcom/flurry/sdk/in;)Lcom/flurry/sdk/qy;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Enum;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;",
            "Lcom/flurry/sdk/hc;",
            "Lcom/flurry/sdk/jt;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lcom/flurry/sdk/jr$a;->u:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/hc;->b(I)V

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/pf;->a:Lcom/flurry/sdk/qy;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/qy;->a(Ljava/lang/Enum;)Lcom/flurry/sdk/ij;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/hc;->b(Lcom/flurry/sdk/hm;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pf;->a(Ljava/lang/Enum;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    return-void
.end method

.method public d()Lcom/flurry/sdk/qy;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/sdk/pf;->a:Lcom/flurry/sdk/qy;

    return-object v0
.end method
