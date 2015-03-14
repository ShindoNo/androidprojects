.class public Lcom/flurry/sdk/fj$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/fj;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/flurry/sdk/fk;

.field private final e:Lcom/flurry/sdk/fk$r;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/fj;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/fk;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/flurry/sdk/fk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Lcom/flurry/sdk/fj$a;->a:Lcom/flurry/sdk/fj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/flurry/sdk/fk$r;

    invoke-static {}, Lcom/flurry/sdk/fj;->a()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fk$r;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/flurry/sdk/fj$a;->e:Lcom/flurry/sdk/fk$r;

    .line 82
    iput-object p2, p0, Lcom/flurry/sdk/fj$a;->b:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/flurry/sdk/fj$a;->c:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lcom/flurry/sdk/fj$a;->d:Lcom/flurry/sdk/fk;

    .line 86
    if-eqz p4, :cond_0

    .line 87
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/fj$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/fj;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/fk;Lcom/flurry/sdk/fj$1;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct/range {p0 .. p5}, Lcom/flurry/sdk/fj$a;-><init>(Lcom/flurry/sdk/fj;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/fk;)V

    return-void
.end method


# virtual methods
.method a(Lcom/flurry/sdk/hc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p1}, Lcom/flurry/sdk/hc;->d()V

    .line 129
    iget-object v0, p0, Lcom/flurry/sdk/fj$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "doc"

    iget-object v1, p0, Lcom/flurry/sdk/fj$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/hc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/fj$a;->e:Lcom/flurry/sdk/fk$r;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/fk$r;->a(Lcom/flurry/sdk/hc;)V

    .line 131
    const-string v0, "request"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hc;->a(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/flurry/sdk/fj$a;->d:Lcom/flurry/sdk/fk;

    iget-object v1, p0, Lcom/flurry/sdk/fj$a;->a:Lcom/flurry/sdk/fj;

    invoke-static {v1}, Lcom/flurry/sdk/fj;->a(Lcom/flurry/sdk/fj;)Lcom/flurry/sdk/fk$o;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/fk;->b(Lcom/flurry/sdk/fk$o;Lcom/flurry/sdk/hc;)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/fj$a;->b(Lcom/flurry/sdk/hc;)V

    .line 135
    invoke-virtual {p1}, Lcom/flurry/sdk/hc;->e()V

    .line 136
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/fj$a;->e:Lcom/flurry/sdk/fk$r;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/fk$r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Lcom/flurry/sdk/hc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const-string v0, "response"

    const-string v1, "null"

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/hc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "one-way"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/hc;->a(Ljava/lang/String;Z)V

    .line 141
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 144
    if-ne p1, p0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    instance-of v2, p1, Lcom/flurry/sdk/fj$a;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 146
    :cond_2
    check-cast p1, Lcom/flurry/sdk/fj$a;

    .line 147
    iget-object v2, p0, Lcom/flurry/sdk/fj$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/flurry/sdk/fj$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flurry/sdk/fj$a;->d:Lcom/flurry/sdk/fk;

    iget-object v3, p1, Lcom/flurry/sdk/fj$a;->d:Lcom/flurry/sdk/fk;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/fk;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flurry/sdk/fj$a;->e:Lcom/flurry/sdk/fk$r;

    iget-object v3, p1, Lcom/flurry/sdk/fj$a;->e:Lcom/flurry/sdk/fk$r;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/fk$r;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/flurry/sdk/fj$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/sdk/fj$a;->d:Lcom/flurry/sdk/fk;

    invoke-virtual {v1}, Lcom/flurry/sdk/fk;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/sdk/fj$a;->e:Lcom/flurry/sdk/fk$r;

    invoke-virtual {v1}, Lcom/flurry/sdk/fk$r;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 119
    sget-object v1, Lcom/flurry/sdk/fk;->a:Lcom/flurry/sdk/ha;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ha;->a(Ljava/io/Writer;)Lcom/flurry/sdk/hc;

    move-result-object v1

    .line 120
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/fj$a;->a(Lcom/flurry/sdk/hc;)V

    .line 121
    invoke-virtual {v1}, Lcom/flurry/sdk/hc;->g()V

    .line 122
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    new-instance v1, Lcom/flurry/sdk/fh;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/fh;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
