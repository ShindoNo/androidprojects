.class public Lcom/flurry/sdk/lv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/lv$e;,
        Lcom/flurry/sdk/lv$f;,
        Lcom/flurry/sdk/lv$h;,
        Lcom/flurry/sdk/lv$g;,
        Lcom/flurry/sdk/lv$i;,
        Lcom/flurry/sdk/lv$c;,
        Lcom/flurry/sdk/lv$b;,
        Lcom/flurry/sdk/lv$d;,
        Lcom/flurry/sdk/lv$j;,
        Lcom/flurry/sdk/lv$a;
    }
.end annotation


# static fields
.field static final b:Lcom/flurry/sdk/lv;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/flurry/sdk/lv;

    invoke-direct {v0}, Lcom/flurry/sdk/lv;-><init>()V

    sput-object v0, Lcom/flurry/sdk/lv;->b:Lcom/flurry/sdk/lv;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/lv;->a:Ljava/util/HashMap;

    .line 30
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/flurry/sdk/lv$b;

    invoke-direct {v1}, Lcom/flurry/sdk/lv$b;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/lv;->a(Ljava/lang/Class;Lcom/flurry/sdk/jd;)V

    .line 36
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/flurry/sdk/lv$c;

    invoke-direct {v1}, Lcom/flurry/sdk/lv$c;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/lv;->a(Ljava/lang/Class;Lcom/flurry/sdk/jd;)V

    .line 37
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/flurry/sdk/lv$i;

    invoke-direct {v1}, Lcom/flurry/sdk/lv$i;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/lv;->a(Ljava/lang/Class;Lcom/flurry/sdk/jd;)V

    .line 38
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/flurry/sdk/lv$g;

    invoke-direct {v1}, Lcom/flurry/sdk/lv$g;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/lv;->a(Ljava/lang/Class;Lcom/flurry/sdk/jd;)V

    .line 39
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/flurry/sdk/lv$h;

    invoke-direct {v1}, Lcom/flurry/sdk/lv$h;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/lv;->a(Ljava/lang/Class;Lcom/flurry/sdk/jd;)V

    .line 41
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/flurry/sdk/lv$f;

    invoke-direct {v1}, Lcom/flurry/sdk/lv$f;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/lv;->a(Ljava/lang/Class;Lcom/flurry/sdk/jd;)V

    .line 42
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/flurry/sdk/lv$e;

    invoke-direct {v1}, Lcom/flurry/sdk/lv$e;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/lv;->a(Ljava/lang/Class;Lcom/flurry/sdk/jd;)V

    .line 44
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/flurry/sdk/lv$j;

    invoke-direct {v1}, Lcom/flurry/sdk/lv$j;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/lv;->a(Ljava/lang/Class;Lcom/flurry/sdk/jd;)V

    .line 48
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/flurry/sdk/lv$d;

    invoke-direct {v1}, Lcom/flurry/sdk/lv$d;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/lv;->a(Ljava/lang/Class;Lcom/flurry/sdk/jd;)V

    .line 49
    return-void
.end method

.method public static a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/flurry/sdk/lv;->b:Lcom/flurry/sdk/lv;

    iget-object v0, v0, Lcom/flurry/sdk/lv;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Ljava/lang/Class;Lcom/flurry/sdk/jd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/jd",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flurry/sdk/lv;->a:Ljava/util/HashMap;

    invoke-static {}, Lcom/flurry/sdk/qp;->a()Lcom/flurry/sdk/qp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/qp;->a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/se;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method
