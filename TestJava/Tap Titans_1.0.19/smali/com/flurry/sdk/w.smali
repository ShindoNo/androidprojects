.class public Lcom/flurry/sdk/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/w$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/flurry/sdk/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/w;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/flurry/sdk/w;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a([B)I
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/flurry/sdk/ed;

    invoke-direct {v0}, Lcom/flurry/sdk/ed;-><init>()V

    .line 78
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ed;->update([B)V

    .line 79
    invoke-virtual {v0}, Lcom/flurry/sdk/ed;->b()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;Lcom/flurry/sdk/gt;Ljava/lang/Class;Ljava/lang/Class;Lcom/flurry/sdk/w$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/flurry/sdk/gt;",
            "B:",
            "Lcom/flurry/sdk/gt;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TA;",
            "Ljava/lang/Class",
            "<TA;>;",
            "Ljava/lang/Class",
            "<TB;>;",
            "Lcom/flurry/sdk/w$a",
            "<TB;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p3, p4}, Lcom/flurry/sdk/v;->a(Lcom/flurry/sdk/gt;Ljava/lang/Class;)[B

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/w;->a(Ljava/lang/Object;Ljava/lang/String;[BLjava/lang/Class;Lcom/flurry/sdk/w$a;)V

    .line 30
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;[BLjava/lang/Class;Lcom/flurry/sdk/w$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lcom/flurry/sdk/gt;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/Class",
            "<TB;>;",
            "Lcom/flurry/sdk/w$a",
            "<TB;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/flurry/sdk/ei;

    invoke-direct {v0}, Lcom/flurry/sdk/ei;-><init>()V

    .line 34
    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)V

    .line 35
    sget-object v1, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ek$a;)V

    .line 36
    const-string v1, "Content-Type"

    const-string v2, "avro/binary"

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "Accept"

    const-string v2, "avro/binary"

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, "FM-Checksum"

    invoke-virtual {p0, p3}, Lcom/flurry/sdk/w;->a([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v1, Lcom/flurry/sdk/et;

    invoke-direct {v1}, Lcom/flurry/sdk/et;-><init>()V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/eu;)V

    .line 40
    new-instance v1, Lcom/flurry/sdk/et;

    invoke-direct {v1}, Lcom/flurry/sdk/et;-><init>()V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ei;->b(Lcom/flurry/sdk/eu;)V

    .line 41
    invoke-virtual {v0, p3}, Lcom/flurry/sdk/ei;->a(Ljava/lang/Object;)V

    .line 42
    new-instance v1, Lcom/flurry/sdk/w$1;

    invoke-direct {v1, p0, p4, p5, p2}, Lcom/flurry/sdk/w$1;-><init>(Lcom/flurry/sdk/w;Ljava/lang/Class;Lcom/flurry/sdk/w$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ei$a;)V

    .line 73
    invoke-static {}, Lcom/flurry/sdk/ej;->a()Lcom/flurry/sdk/ej;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/flurry/sdk/ej;->a(Ljava/lang/Object;Lcom/flurry/sdk/fd;)V

    .line 74
    return-void
.end method
