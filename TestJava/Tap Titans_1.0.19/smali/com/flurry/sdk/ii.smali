.class public final Lcom/flurry/sdk/ii;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/flurry/sdk/sm;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/sf;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 26
    new-instance v0, Lcom/flurry/sdk/sm;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/sm;-><init>(Lcom/flurry/sdk/sf;)V

    iput-object v0, p0, Lcom/flurry/sdk/ii;->a:Lcom/flurry/sdk/sm;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/flurry/sdk/ii;->a:Lcom/flurry/sdk/sm;

    invoke-virtual {v0}, Lcom/flurry/sdk/sm;->f()Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/flurry/sdk/ii;->a:Lcom/flurry/sdk/sm;

    invoke-virtual {v1}, Lcom/flurry/sdk/sm;->a()V

    .line 102
    return-object v0
.end method

.method public append(C)Ljava/io/Writer;
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ii;->write(I)V

    .line 39
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/flurry/sdk/ii;->a:Lcom/flurry/sdk/sm;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/flurry/sdk/sm;->a(Ljava/lang/String;II)V

    .line 47
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 4

    .prologue
    .line 53
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/flurry/sdk/ii;->a:Lcom/flurry/sdk/sm;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/flurry/sdk/sm;->a(Ljava/lang/String;II)V

    .line 55
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ii;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ii;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/ii;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/flurry/sdk/ii;->a:Lcom/flurry/sdk/sm;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/sm;->a(C)V

    .line 75
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flurry/sdk/ii;->a:Lcom/flurry/sdk/sm;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/flurry/sdk/sm;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/sdk/ii;->a:Lcom/flurry/sdk/sm;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/flurry/sdk/sm;->a(Ljava/lang/String;II)V

    .line 83
    return-void
.end method

.method public write([C)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/flurry/sdk/ii;->a:Lcom/flurry/sdk/sm;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/flurry/sdk/sm;->c([CII)V

    .line 65
    return-void
.end method

.method public write([CII)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flurry/sdk/ii;->a:Lcom/flurry/sdk/sm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/sdk/sm;->c([CII)V

    .line 70
    return-void
.end method
