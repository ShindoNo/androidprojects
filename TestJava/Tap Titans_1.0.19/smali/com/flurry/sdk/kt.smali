.class Lcom/flurry/sdk/kt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/sdk/qg;",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/kt;->a:Ljava/util/HashMap;

    .line 34
    new-instance v0, Lcom/flurry/sdk/mg;

    invoke-direct {v0}, Lcom/flurry/sdk/mg;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 37
    new-instance v0, Lcom/flurry/sdk/mc;

    invoke-direct {v0}, Lcom/flurry/sdk/mc;-><init>()V

    .line 38
    const-class v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;Ljava/lang/Class;)V

    .line 39
    const-class v1, Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;Ljava/lang/Class;)V

    .line 40
    new-instance v0, Lcom/flurry/sdk/lj;

    invoke-direct {v0}, Lcom/flurry/sdk/lj;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 43
    new-instance v0, Lcom/flurry/sdk/lw$c;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/lw$c;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 44
    new-instance v0, Lcom/flurry/sdk/lw$d;

    const-class v1, Ljava/lang/Byte;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/lw$d;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 45
    new-instance v0, Lcom/flurry/sdk/lw$l;

    const-class v1, Ljava/lang/Short;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/lw$l;-><init>(Ljava/lang/Class;Ljava/lang/Short;)V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 46
    new-instance v0, Lcom/flurry/sdk/lw$e;

    const-class v1, Ljava/lang/Character;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/lw$e;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 47
    new-instance v0, Lcom/flurry/sdk/lw$h;

    const-class v1, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/lw$h;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 48
    new-instance v0, Lcom/flurry/sdk/lw$i;

    const-class v1, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/lw$i;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 49
    new-instance v0, Lcom/flurry/sdk/lw$g;

    const-class v1, Ljava/lang/Float;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/lw$g;-><init>(Ljava/lang/Class;Ljava/lang/Float;)V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 50
    new-instance v0, Lcom/flurry/sdk/lw$f;

    const-class v1, Ljava/lang/Double;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/lw$f;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 55
    new-instance v0, Lcom/flurry/sdk/lw$c;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/lw$c;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 56
    new-instance v0, Lcom/flurry/sdk/lw$d;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/lw$d;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 57
    new-instance v0, Lcom/flurry/sdk/lw$l;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/lw$l;-><init>(Ljava/lang/Class;Ljava/lang/Short;)V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 58
    new-instance v0, Lcom/flurry/sdk/lw$e;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/lw$e;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 59
    new-instance v0, Lcom/flurry/sdk/lw$h;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/lw$h;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 60
    new-instance v0, Lcom/flurry/sdk/lw$i;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/lw$i;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 61
    new-instance v0, Lcom/flurry/sdk/lw$g;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/lw$g;-><init>(Ljava/lang/Class;Ljava/lang/Float;)V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 62
    new-instance v0, Lcom/flurry/sdk/lw$f;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/lw$f;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 65
    new-instance v0, Lcom/flurry/sdk/lw$j;

    invoke-direct {v0}, Lcom/flurry/sdk/lw$j;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 66
    new-instance v0, Lcom/flurry/sdk/lw$a;

    invoke-direct {v0}, Lcom/flurry/sdk/lw$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 67
    new-instance v0, Lcom/flurry/sdk/lw$b;

    invoke-direct {v0}, Lcom/flurry/sdk/lw$b;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 69
    new-instance v0, Lcom/flurry/sdk/li;

    invoke-direct {v0}, Lcom/flurry/sdk/li;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 70
    new-instance v0, Lcom/flurry/sdk/lm;

    invoke-direct {v0}, Lcom/flurry/sdk/lm;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 74
    new-instance v0, Lcom/flurry/sdk/li;

    const-class v1, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1}, Lcom/flurry/sdk/li;-><init>(Ljava/lang/Class;)V

    const-class v1, Ljava/util/GregorianCalendar;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;Ljava/lang/Class;)V

    .line 76
    new-instance v0, Lcom/flurry/sdk/lw$m;

    invoke-direct {v0}, Lcom/flurry/sdk/lw$m;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 77
    new-instance v0, Lcom/flurry/sdk/me;

    invoke-direct {v0}, Lcom/flurry/sdk/me;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 80
    invoke-static {}, Lcom/flurry/sdk/lq;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/lq;

    .line 81
    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Lcom/flurry/sdk/lw$n;

    invoke-direct {v0}, Lcom/flurry/sdk/lw$n;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 91
    new-instance v0, Lcom/flurry/sdk/lf;

    invoke-direct {v0}, Lcom/flurry/sdk/lf;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 94
    new-instance v0, Lcom/flurry/sdk/mf;

    invoke-direct {v0}, Lcom/flurry/sdk/mf;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 95
    new-instance v0, Lcom/flurry/sdk/lr;

    invoke-direct {v0}, Lcom/flurry/sdk/lr;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;)V

    .line 96
    return-void
.end method

.method public static a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/sdk/qg;",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/flurry/sdk/kt;

    invoke-direct {v0}, Lcom/flurry/sdk/kt;-><init>()V

    iget-object v0, v0, Lcom/flurry/sdk/kt;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Lcom/flurry/sdk/lw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/lw",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/flurry/sdk/lw;->f()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/lw;Ljava/lang/Class;)V

    .line 109
    return-void
.end method

.method private a(Lcom/flurry/sdk/lw;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/lw",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 115
    .line 117
    iget-object v0, p0, Lcom/flurry/sdk/kt;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qg;

    invoke-direct {v1, p2}, Lcom/flurry/sdk/qg;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method
