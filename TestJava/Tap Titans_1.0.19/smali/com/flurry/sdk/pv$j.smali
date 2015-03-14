.class public final Lcom/flurry/sdk/pv$j;
.super Lcom/flurry/sdk/pv$a;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/jq;


# annotations
.annotation runtime Lcom/flurry/sdk/jy;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/pv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/pv$a",
        "<[",
        "Ljava/lang/String;",
        ">;",
        "Lcom/flurry/sdk/jq;"
    }
.end annotation


# instance fields
.field protected a:Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/ip;)V
    .locals 2

    .prologue
    .line 97
    const-class v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/flurry/sdk/pv$a;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/ip;)V

    .line 98
    return-void
.end method

.method private a([Ljava/lang/String;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jh;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
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
    .line 144
    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 145
    aget-object v2, p1, v0

    .line 146
    if-nez v2, :cond_0

    .line 147
    invoke-virtual {p3, p2}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/hc;)V

    .line 144
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {p4, v2, p2, p3}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    goto :goto_1

    .line 152
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/pc;
    .locals 0
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
    .line 106
    return-object p0
.end method

.method public a(Lcom/flurry/sdk/jt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 162
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/sdk/pv$j;->f:Lcom/flurry/sdk/ip;

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/jt;->a(Ljava/lang/Class;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/flurry/sdk/jy;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-nez v1, :cond_0

    .line 165
    iput-object v0, p0, Lcom/flurry/sdk/pv$j;->a:Lcom/flurry/sdk/jh;

    .line 167
    :cond_0
    return-void
.end method

.method public a([Ljava/lang/String;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 113
    array-length v1, p1

    .line 114
    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/pv$j;->a:Lcom/flurry/sdk/jh;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/flurry/sdk/pv$j;->a:Lcom/flurry/sdk/jh;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flurry/sdk/pv$j;->a([Ljava/lang/String;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jh;)V

    goto :goto_0

    .line 129
    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    .line 130
    aget-object v2, p1, v0

    .line 131
    if-nez v2, :cond_3

    .line 132
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->f()V

    .line 129
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_3
    aget-object v2, p1, v0

    invoke-virtual {p2, v2}, Lcom/flurry/sdk/hc;->b(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public synthetic b(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 83
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pv$j;->a([Ljava/lang/String;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    return-void
.end method
