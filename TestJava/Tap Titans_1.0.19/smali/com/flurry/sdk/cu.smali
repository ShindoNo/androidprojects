.class public Lcom/flurry/sdk/cu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/cu$1;,
        Lcom/flurry/sdk/cu$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/flurry/sdk/ds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ds",
            "<",
            "Lcom/flurry/sdk/co;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/cp;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/flurry/sdk/cv;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/cu$1;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/flurry/sdk/cu;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/cu;I)I
    .locals 0

    .prologue
    .line 11
    iput p1, p0, Lcom/flurry/sdk/cu;->a:I

    return p1
.end method

.method public static a(Lcom/flurry/sdk/cu;Lcom/flurry/sdk/cu;)Lcom/flurry/sdk/cu;
    .locals 4

    .prologue
    .line 22
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    .line 27
    :cond_1
    new-instance v0, Lcom/flurry/sdk/ds;

    invoke-direct {v0}, Lcom/flurry/sdk/ds;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/flurry/sdk/cu;->c()Lcom/flurry/sdk/ds;

    move-result-object v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ds;->a(Lcom/flurry/sdk/ds;)V

    .line 34
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/cu;->c()Lcom/flurry/sdk/ds;

    move-result-object v1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ds;->a(Lcom/flurry/sdk/ds;)V

    .line 40
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/flurry/sdk/cu;->d()Ljava/util/Map;

    move-result-object v2

    .line 43
    if-eqz v2, :cond_4

    .line 44
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 47
    :cond_4
    invoke-virtual {p1}, Lcom/flurry/sdk/cu;->d()Ljava/util/Map;

    move-result-object v2

    .line 48
    if-eqz v2, :cond_5

    .line 49
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 53
    :cond_5
    new-instance v2, Lcom/flurry/sdk/cu$a;

    invoke-direct {v2}, Lcom/flurry/sdk/cu$a;-><init>()V

    .line 54
    invoke-virtual {p1}, Lcom/flurry/sdk/cu;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/cu$a;->a(I)Lcom/flurry/sdk/cu$a;

    .line 55
    invoke-virtual {p1}, Lcom/flurry/sdk/cu;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/cu$a;->b(I)Lcom/flurry/sdk/cu$a;

    .line 56
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/cu$a;->a(Lcom/flurry/sdk/ds;)Lcom/flurry/sdk/cu$a;

    .line 57
    invoke-virtual {v2, v1}, Lcom/flurry/sdk/cu$a;->a(Ljava/util/Map;)Lcom/flurry/sdk/cu$a;

    .line 58
    invoke-virtual {p1}, Lcom/flurry/sdk/cu;->e()Lcom/flurry/sdk/cv;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/cu$a;->a(Lcom/flurry/sdk/cv;)Lcom/flurry/sdk/cu$a;

    .line 60
    invoke-virtual {v2}, Lcom/flurry/sdk/cu$a;->a()Lcom/flurry/sdk/cu;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/cu;Lcom/flurry/sdk/cv;)Lcom/flurry/sdk/cv;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/flurry/sdk/cu;->e:Lcom/flurry/sdk/cv;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/cu;Lcom/flurry/sdk/ds;)Lcom/flurry/sdk/ds;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/flurry/sdk/cu;->c:Lcom/flurry/sdk/ds;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/cu;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/flurry/sdk/cu;->d:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/cu;I)I
    .locals 0

    .prologue
    .line 11
    iput p1, p0, Lcom/flurry/sdk/cu;->b:I

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/flurry/sdk/cu;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/flurry/sdk/cu;->b:I

    return v0
.end method

.method public c()Lcom/flurry/sdk/ds;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/ds",
            "<",
            "Lcom/flurry/sdk/co;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/flurry/sdk/cu;->c:Lcom/flurry/sdk/ds;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/cp;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/flurry/sdk/cu;->d:Ljava/util/Map;

    return-object v0
.end method

.method public e()Lcom/flurry/sdk/cv;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flurry/sdk/cu;->e:Lcom/flurry/sdk/cv;

    return-object v0
.end method
