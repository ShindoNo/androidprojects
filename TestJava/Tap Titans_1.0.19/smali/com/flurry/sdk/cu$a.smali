.class public Lcom/flurry/sdk/cu$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/cu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/flurry/sdk/cu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/flurry/sdk/cu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/cu;-><init>(Lcom/flurry/sdk/cu$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/cu$a;->a:Lcom/flurry/sdk/cu;

    .line 102
    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/cu$a;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flurry/sdk/cu$a;->a:Lcom/flurry/sdk/cu;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cu;->a(Lcom/flurry/sdk/cu;I)I

    .line 105
    return-object p0
.end method

.method public a(Lcom/flurry/sdk/cv;)Lcom/flurry/sdk/cu$a;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/flurry/sdk/cu$a;->a:Lcom/flurry/sdk/cu;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cu;->a(Lcom/flurry/sdk/cu;Lcom/flurry/sdk/cv;)Lcom/flurry/sdk/cv;

    .line 121
    return-object p0
.end method

.method public a(Lcom/flurry/sdk/ds;)Lcom/flurry/sdk/cu$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ds",
            "<",
            "Lcom/flurry/sdk/co;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/cu$a;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flurry/sdk/cu$a;->a:Lcom/flurry/sdk/cu;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cu;->a(Lcom/flurry/sdk/cu;Lcom/flurry/sdk/ds;)Lcom/flurry/sdk/ds;

    .line 113
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/flurry/sdk/cu$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/cp;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/cu$a;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/flurry/sdk/cu$a;->a:Lcom/flurry/sdk/cu;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cu;->a(Lcom/flurry/sdk/cu;Ljava/util/Map;)Ljava/util/Map;

    .line 117
    return-object p0
.end method

.method public a()Lcom/flurry/sdk/cu;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/flurry/sdk/cu$a;->a:Lcom/flurry/sdk/cu;

    return-object v0
.end method

.method public b(I)Lcom/flurry/sdk/cu$a;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/flurry/sdk/cu$a;->a:Lcom/flurry/sdk/cu;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cu;->b(Lcom/flurry/sdk/cu;I)I

    .line 109
    return-object p0
.end method
