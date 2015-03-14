.class public Lcom/flurry/sdk/pe;
.super Lcom/flurry/sdk/pc;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/jq;


# annotations
.annotation runtime Lcom/flurry/sdk/jy;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/pc",
        "<",
        "Ljava/util/EnumMap",
        "<+",
        "Ljava/lang/Enum",
        "<*>;*>;>;",
        "Lcom/flurry/sdk/jq;"
    }
.end annotation


# instance fields
.field protected final a:Z

.field protected final b:Lcom/flurry/sdk/qy;

.field protected final c:Lcom/flurry/sdk/se;

.field protected final d:Lcom/flurry/sdk/ip;

.field protected e:Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final f:Lcom/flurry/sdk/jw;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/se;ZLcom/flurry/sdk/qy;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/se;",
            "Z",
            "Lcom/flurry/sdk/qy;",
            "Lcom/flurry/sdk/jw;",
            "Lcom/flurry/sdk/ip;",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 70
    const-class v1, Ljava/util/EnumMap;

    invoke-direct {p0, v1, v0}, Lcom/flurry/sdk/pc;-><init>(Ljava/lang/Class;Z)V

    .line 71
    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/flurry/sdk/se;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/flurry/sdk/pe;->a:Z

    .line 72
    iput-object p1, p0, Lcom/flurry/sdk/pe;->c:Lcom/flurry/sdk/se;

    .line 73
    iput-object p3, p0, Lcom/flurry/sdk/pe;->b:Lcom/flurry/sdk/qy;

    .line 74
    iput-object p4, p0, Lcom/flurry/sdk/pe;->f:Lcom/flurry/sdk/jw;

    .line 75
    iput-object p5, p0, Lcom/flurry/sdk/pe;->d:Lcom/flurry/sdk/ip;

    .line 76
    iput-object p6, p0, Lcom/flurry/sdk/pe;->e:Lcom/flurry/sdk/jh;

    .line 77
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/pc;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jw;",
            ")",
            "Lcom/flurry/sdk/pc",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/flurry/sdk/pe;

    iget-object v1, p0, Lcom/flurry/sdk/pe;->c:Lcom/flurry/sdk/se;

    iget-boolean v2, p0, Lcom/flurry/sdk/pe;->a:Z

    iget-object v3, p0, Lcom/flurry/sdk/pe;->b:Lcom/flurry/sdk/qy;

    iget-object v5, p0, Lcom/flurry/sdk/pe;->d:Lcom/flurry/sdk/ip;

    iget-object v6, p0, Lcom/flurry/sdk/pe;->e:Lcom/flurry/sdk/jh;

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/pe;-><init>(Lcom/flurry/sdk/se;ZLcom/flurry/sdk/qy;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jh;)V

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/jt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/flurry/sdk/pe;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/pe;->e:Lcom/flurry/sdk/jh;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/flurry/sdk/pe;->c:Lcom/flurry/sdk/se;

    iget-object v1, p0, Lcom/flurry/sdk/pe;->d:Lcom/flurry/sdk/ip;

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/pe;->e:Lcom/flurry/sdk/jh;

    .line 191
    :cond_0
    return-void
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
    .line 23
    check-cast p1, Ljava/util/EnumMap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pe;->a(Ljava/util/EnumMap;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 23
    check-cast p1, Ljava/util/EnumMap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/pe;->a(Ljava/util/EnumMap;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V

    return-void
.end method

.method public a(Ljava/util/EnumMap;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;",
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
    .line 89
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->d()V

    .line 90
    invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pe;->b(Ljava/util/EnumMap;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 93
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->e()V

    .line 94
    return-void
.end method

.method protected a(Ljava/util/EnumMap;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jh;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;",
            "Lcom/flurry/sdk/hc;",
            "Lcom/flurry/sdk/jt;",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/flurry/sdk/pe;->b:Lcom/flurry/sdk/qy;

    .line 162
    invoke-virtual {p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 163
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 164
    if-nez v2, :cond_0

    .line 166
    invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v4, p0, Lcom/flurry/sdk/pe;->d:Lcom/flurry/sdk/ip;

    invoke-virtual {p3, v2, v4}, Lcom/flurry/sdk/jt;->a(Ljava/lang/Class;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/pt;

    .line 168
    check-cast v2, Lcom/flurry/sdk/pf;

    invoke-virtual {v2}, Lcom/flurry/sdk/pf;->d()Lcom/flurry/sdk/qy;

    move-result-object v2

    .line 170
    :cond_0
    invoke-virtual {v2, v1}, Lcom/flurry/sdk/qy;->a(Ljava/lang/Enum;)Lcom/flurry/sdk/ij;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/flurry/sdk/hc;->a(Lcom/flurry/sdk/ij;)V

    .line 171
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 172
    if-nez v1, :cond_1

    .line 173
    invoke-virtual {p3, p2}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/hc;)V

    goto :goto_0

    .line 176
    :cond_1
    :try_start_0
    invoke-virtual {p4, v1, p2, p3}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v1, p1, v0}, Lcom/flurry/sdk/pe;->a(Lcom/flurry/sdk/jt;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_2
    return-void
.end method

.method public a(Ljava/util/EnumMap;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;",
            "Lcom/flurry/sdk/hc;",
            "Lcom/flurry/sdk/jt;",
            "Lcom/flurry/sdk/jw;",
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
    .line 101
    invoke-virtual {p4, p1, p2}, Lcom/flurry/sdk/jw;->b(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V

    .line 102
    invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pe;->b(Ljava/util/EnumMap;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 105
    :cond_0
    invoke-virtual {p4, p1, p2}, Lcom/flurry/sdk/jw;->e(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V

    .line 106
    return-void
.end method

.method protected b(Ljava/util/EnumMap;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;",
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
    const/4 v3, 0x0

    .line 111
    iget-object v0, p0, Lcom/flurry/sdk/pe;->e:Lcom/flurry/sdk/jh;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/flurry/sdk/pe;->e:Lcom/flurry/sdk/jh;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/sdk/pe;->a(Ljava/util/EnumMap;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jh;)V

    .line 155
    :cond_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/pe;->b:Lcom/flurry/sdk/qy;

    .line 119
    invoke-virtual {p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v0

    move-object v4, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 122
    if-nez v2, :cond_4

    .line 128
    invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v5, p0, Lcom/flurry/sdk/pe;->d:Lcom/flurry/sdk/ip;

    invoke-virtual {p3, v2, v5}, Lcom/flurry/sdk/jt;->a(Ljava/lang/Class;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/pt;

    .line 130
    check-cast v2, Lcom/flurry/sdk/pf;

    invoke-virtual {v2}, Lcom/flurry/sdk/pf;->d()Lcom/flurry/sdk/qy;

    move-result-object v5

    .line 132
    :goto_1
    invoke-virtual {v5, v1}, Lcom/flurry/sdk/qy;->a(Ljava/lang/Enum;)Lcom/flurry/sdk/ij;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/flurry/sdk/hc;->a(Lcom/flurry/sdk/ij;)V

    .line 134
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 135
    if-nez v7, :cond_2

    .line 136
    invoke-virtual {p3, p2}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/hc;)V

    move-object v0, v3

    move-object v1, v4

    :goto_2
    move-object v2, v5

    move-object v3, v0

    move-object v4, v1

    .line 154
    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 140
    if-ne v1, v3, :cond_3

    move-object v1, v3

    move-object v2, v4

    .line 148
    :goto_3
    :try_start_0
    invoke-virtual {v4, v7, p2, p3}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    move-object v1, v2

    .line 152
    goto :goto_2

    .line 143
    :cond_3
    iget-object v2, p0, Lcom/flurry/sdk/pe;->d:Lcom/flurry/sdk/ip;

    invoke-virtual {p3, v1, v2}, Lcom/flurry/sdk/jt;->a(Ljava/lang/Class;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v4

    move-object v2, v4

    .line 145
    goto :goto_3

    .line 149
    :catch_0
    move-exception v3

    .line 151
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v3, p1, v0}, Lcom/flurry/sdk/pe;->a(Lcom/flurry/sdk/jt;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :cond_4
    move-object v5, v2

    goto :goto_1
.end method
