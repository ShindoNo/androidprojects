.class public Lcom/flurry/sdk/cs$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/flurry/sdk/cs;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/flurry/sdk/cs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/cs;-><init>(Lcom/flurry/sdk/cs$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/cs$a;->a:Lcom/flurry/sdk/cs;

    .line 79
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/cl;)Lcom/flurry/sdk/cs$a;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/sdk/cs$a;->a:Lcom/flurry/sdk/cs;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cs;->a(Lcom/flurry/sdk/cs;Lcom/flurry/sdk/cl;)Lcom/flurry/sdk/cl;

    .line 83
    return-object p0
.end method

.method public a(Lcom/flurry/sdk/cr;)Lcom/flurry/sdk/cs$a;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/flurry/sdk/cs$a;->a:Lcom/flurry/sdk/cs;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cs;->a(Lcom/flurry/sdk/cs;Lcom/flurry/sdk/cr;)Lcom/flurry/sdk/cr;

    .line 93
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/flurry/sdk/cs$a;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/flurry/sdk/cs$a;->a:Lcom/flurry/sdk/cs;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cs;->a(Lcom/flurry/sdk/cs;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/flurry/sdk/cs$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/cs$a;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/flurry/sdk/cs$a;->a:Lcom/flurry/sdk/cs;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cs;->a(Lcom/flurry/sdk/cs;Ljava/util/List;)Ljava/util/List;

    .line 98
    return-object p0
.end method

.method public a()Lcom/flurry/sdk/cs;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/flurry/sdk/cs$a;->a:Lcom/flurry/sdk/cs;

    return-object v0
.end method

.method public b(Ljava/util/List;)Lcom/flurry/sdk/cs$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/cs$a;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/flurry/sdk/cs$a;->a:Lcom/flurry/sdk/cs;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cs;->b(Lcom/flurry/sdk/cs;Ljava/util/List;)Ljava/util/List;

    .line 103
    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/flurry/sdk/cs$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/cs$a;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/flurry/sdk/cs$a;->a:Lcom/flurry/sdk/cs;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cs;->c(Lcom/flurry/sdk/cs;Ljava/util/List;)Ljava/util/List;

    .line 108
    return-object p0
.end method

.method public d(Ljava/util/List;)Lcom/flurry/sdk/cs$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ct;",
            ">;)",
            "Lcom/flurry/sdk/cs$a;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flurry/sdk/cs$a;->a:Lcom/flurry/sdk/cs;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cs;->d(Lcom/flurry/sdk/cs;Ljava/util/List;)Ljava/util/List;

    .line 113
    return-object p0
.end method
