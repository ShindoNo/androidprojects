.class public Lcom/flurry/sdk/gn$n;
.super Lcom/flurry/sdk/gn$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# instance fields
.field public final z:Lcom/flurry/sdk/gn;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/gn;)V
    .locals 2

    .prologue
    .line 443
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/gn$g;-><init>(ZLcom/flurry/sdk/gn$1;)V

    .line 444
    iput-object p1, p0, Lcom/flurry/sdk/gn$n;->z:Lcom/flurry/sdk/gn;

    .line 445
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gn;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/gn$n;->b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gn$n;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gn$n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/gn$m;",
            "Lcom/flurry/sdk/gn$m;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/gn$m;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/gn$f;",
            ">;>;)",
            "Lcom/flurry/sdk/gn$n;"
        }
    .end annotation

    .prologue
    .line 450
    new-instance v0, Lcom/flurry/sdk/gn$n;

    iget-object v1, p0, Lcom/flurry/sdk/gn$n;->z:Lcom/flurry/sdk/gn;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/sdk/gn;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gn;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gn$n;-><init>(Lcom/flurry/sdk/gn;)V

    return-object v0
.end method
