.class public Lcom/flurry/sdk/ln;
.super Lcom/flurry/sdk/lz;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/sdk/jz;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ln$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/lz",
        "<",
        "Ljava/lang/Enum",
        "<*>;>;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/flurry/sdk/qx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/qx",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/qx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/qx",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 31
    const-class v0, Ljava/lang/Enum;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/lz;-><init>(Ljava/lang/Class;)V

    .line 32
    iput-object p1, p0, Lcom/flurry/sdk/ln;->a:Lcom/flurry/sdk/qx;

    .line 33
    return-void
.end method

.method public static a(Lcom/flurry/sdk/iv;Ljava/lang/Class;Lcom/flurry/sdk/mo;)Lcom/flurry/sdk/jd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iv;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/mo;",
            ")",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/mo;->b(I)Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter #0 type for factory method ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not suitable, must be java.lang.String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    sget-object v0, Lcom/flurry/sdk/iv$a;->f:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p2}, Lcom/flurry/sdk/mo;->i()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/qv;->a(Ljava/lang/reflect/Member;)V

    .line 54
    :cond_1
    new-instance v0, Lcom/flurry/sdk/ln$a;

    invoke-direct {v0, p1, p2}, Lcom/flurry/sdk/ln$a;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/mo;)V

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ln;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Enum;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hg;",
            "Lcom/flurry/sdk/iw;",
            ")",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/flurry/sdk/hj;->h:Lcom/flurry/sdk/hj;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/flurry/sdk/hj;->f:Lcom/flurry/sdk/hj;

    if-ne v0, v1, :cond_1

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->k()Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/flurry/sdk/ln;->a:Lcom/flurry/sdk/qx;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/qx;->a(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 73
    if-nez v0, :cond_4

    .line 74
    iget-object v0, p0, Lcom/flurry/sdk/ln;->a:Lcom/flurry/sdk/qx;

    invoke-virtual {v0}, Lcom/flurry/sdk/qx;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "value not one of declared Enum instance names"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/sdk/iw;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 79
    :cond_1
    sget-object v1, Lcom/flurry/sdk/hj;->i:Lcom/flurry/sdk/hj;

    if-ne v0, v1, :cond_3

    .line 83
    sget-object v0, Lcom/flurry/sdk/iv$a;->m:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iw;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    const-string v0, "Not allowed to deserialize Enum value out of JSON number (disable DeserializationConfig.Feature.FAIL_ON_NUMBERS_FOR_ENUMS to allow)"

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iw;->b(Ljava/lang/String;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 87
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->t()I

    move-result v0

    .line 88
    iget-object v1, p0, Lcom/flurry/sdk/ln;->a:Lcom/flurry/sdk/qx;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/qx;->a(I)Ljava/lang/Enum;

    move-result-object v0

    .line 89
    if-nez v0, :cond_4

    .line 90
    iget-object v0, p0, Lcom/flurry/sdk/ln;->a:Lcom/flurry/sdk/qx;

    invoke-virtual {v0}, Lcom/flurry/sdk/qx;->a()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index value outside legal index range [0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ln;->a:Lcom/flurry/sdk/qx;

    invoke-virtual {v2}, Lcom/flurry/sdk/qx;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/flurry/sdk/iw;->c(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/ln;->a:Lcom/flurry/sdk/qx;

    invoke-virtual {v0}, Lcom/flurry/sdk/qx;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iw;->b(Ljava/lang/Class;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 92
    :cond_4
    return-object v0
.end method
