.class public Lcom/flurry/sdk/cv$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/cv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/flurry/sdk/cv;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/flurry/sdk/cv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/cv;-><init>(Lcom/flurry/sdk/cv$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/cv$a;->a:Lcom/flurry/sdk/cv;

    .line 96
    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/cv$a;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/flurry/sdk/cv$a;->a:Lcom/flurry/sdk/cv;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cv;->a(Lcom/flurry/sdk/cv;I)I

    .line 111
    return-object p0
.end method

.method public a(Lcom/flurry/sdk/cn;)Lcom/flurry/sdk/cv$a;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/flurry/sdk/cv$a;->a:Lcom/flurry/sdk/cv;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cv;->a(Lcom/flurry/sdk/cv;Lcom/flurry/sdk/cn;)Lcom/flurry/sdk/cn;

    .line 115
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/flurry/sdk/cv$a;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/flurry/sdk/cv$a;->a:Lcom/flurry/sdk/cv;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cv;->a(Lcom/flurry/sdk/cv;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public a(Z)Lcom/flurry/sdk/cv$a;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/flurry/sdk/cv$a;->a:Lcom/flurry/sdk/cv;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cv;->a(Lcom/flurry/sdk/cv;Z)Z

    .line 127
    return-object p0
.end method

.method public a()Lcom/flurry/sdk/cv;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/flurry/sdk/cv$a;->a:Lcom/flurry/sdk/cv;

    return-object v0
.end method

.method public b(I)Lcom/flurry/sdk/cv$a;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/flurry/sdk/cv$a;->a:Lcom/flurry/sdk/cv;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cv;->b(Lcom/flurry/sdk/cv;I)I

    .line 119
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/flurry/sdk/cv$a;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/flurry/sdk/cv$a;->a:Lcom/flurry/sdk/cv;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cv;->b(Lcom/flurry/sdk/cv;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public b(Z)Lcom/flurry/sdk/cv$a;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/flurry/sdk/cv$a;->a:Lcom/flurry/sdk/cv;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cv;->b(Lcom/flurry/sdk/cv;Z)Z

    .line 131
    return-object p0
.end method

.method public c(I)Lcom/flurry/sdk/cv$a;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/flurry/sdk/cv$a;->a:Lcom/flurry/sdk/cv;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cv;->c(Lcom/flurry/sdk/cv;I)I

    .line 123
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/flurry/sdk/cv$a;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/flurry/sdk/cv$a;->a:Lcom/flurry/sdk/cv;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cv;->c(Lcom/flurry/sdk/cv;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/flurry/sdk/cv$a;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/flurry/sdk/cv$a;->a:Lcom/flurry/sdk/cv;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cv;->d(Lcom/flurry/sdk/cv;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    return-object p0
.end method
