.class public Lcom/flurry/sdk/kx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/flurry/sdk/mt;

.field final b:Z

.field protected c:Lcom/flurry/sdk/ml;

.field protected d:Lcom/flurry/sdk/mr;

.field protected e:Lcom/flurry/sdk/mr;

.field protected f:Lcom/flurry/sdk/mr;

.field protected g:Lcom/flurry/sdk/mr;

.field protected h:Lcom/flurry/sdk/mr;

.field protected i:Lcom/flurry/sdk/mr;

.field protected j:Lcom/flurry/sdk/mr;

.field protected k:[Lcom/flurry/sdk/ky;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/mt;Z)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/kx;->k:[Lcom/flurry/sdk/ky;

    .line 43
    iput-object p1, p0, Lcom/flurry/sdk/kx;->a:Lcom/flurry/sdk/mt;

    .line 44
    iput-boolean p2, p0, Lcom/flurry/sdk/kx;->b:Z

    .line 45
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/iv;)Lcom/flurry/sdk/ku;
    .locals 6

    .prologue
    .line 52
    new-instance v0, Lcom/flurry/sdk/ma;

    iget-object v1, p0, Lcom/flurry/sdk/kx;->a:Lcom/flurry/sdk/mt;

    invoke-virtual {v1}, Lcom/flurry/sdk/mt;->a()Lcom/flurry/sdk/se;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/flurry/sdk/ma;-><init>(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;)V

    .line 56
    iget-object v1, p0, Lcom/flurry/sdk/kx;->i:Lcom/flurry/sdk/mr;

    if-nez v1, :cond_0

    .line 57
    const/4 v3, 0x0

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/flurry/sdk/kx;->c:Lcom/flurry/sdk/ml;

    iget-object v2, p0, Lcom/flurry/sdk/kx;->i:Lcom/flurry/sdk/mr;

    iget-object v4, p0, Lcom/flurry/sdk/kx;->j:Lcom/flurry/sdk/mr;

    iget-object v5, p0, Lcom/flurry/sdk/kx;->k:[Lcom/flurry/sdk/ky;

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/ma;->a(Lcom/flurry/sdk/mr;Lcom/flurry/sdk/mr;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mr;[Lcom/flurry/sdk/ky;)V

    .line 66
    iget-object v1, p0, Lcom/flurry/sdk/kx;->d:Lcom/flurry/sdk/mr;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ma;->a(Lcom/flurry/sdk/mr;)V

    .line 67
    iget-object v1, p0, Lcom/flurry/sdk/kx;->e:Lcom/flurry/sdk/mr;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ma;->b(Lcom/flurry/sdk/mr;)V

    .line 68
    iget-object v1, p0, Lcom/flurry/sdk/kx;->f:Lcom/flurry/sdk/mr;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ma;->c(Lcom/flurry/sdk/mr;)V

    .line 69
    iget-object v1, p0, Lcom/flurry/sdk/kx;->g:Lcom/flurry/sdk/mr;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ma;->d(Lcom/flurry/sdk/mr;)V

    .line 70
    iget-object v1, p0, Lcom/flurry/sdk/kx;->h:Lcom/flurry/sdk/mr;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ma;->e(Lcom/flurry/sdk/mr;)V

    .line 71
    return-object v0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/kx;->a:Lcom/flurry/sdk/mt;

    invoke-virtual {v1}, Lcom/flurry/sdk/mt;->j()Lcom/flurry/sdk/qo;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/flurry/sdk/kx;->i:Lcom/flurry/sdk/mr;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/mr;->b(I)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/qo;->a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/se;

    move-result-object v3

    goto :goto_0
.end method

.method protected a(Lcom/flurry/sdk/mr;Lcom/flurry/sdk/mr;Ljava/lang/String;)Lcom/flurry/sdk/mr;
    .locals 3

    .prologue
    .line 130
    if-eqz p2, :cond_0

    .line 132
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conflicting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " creators: already had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", encountered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/kx;->b:Z

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p1}, Lcom/flurry/sdk/mr;->a()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-static {v0}, Lcom/flurry/sdk/qv;->a(Ljava/lang/reflect/Member;)V

    .line 139
    :cond_1
    return-object p1
.end method

.method public a(Lcom/flurry/sdk/ml;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/flurry/sdk/kx;->c:Lcom/flurry/sdk/ml;

    .line 82
    return-void
.end method

.method public a(Lcom/flurry/sdk/mr;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/flurry/sdk/kx;->d:Lcom/flurry/sdk/mr;

    const-string v1, "String"

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/sdk/kx;->a(Lcom/flurry/sdk/mr;Lcom/flurry/sdk/mr;Ljava/lang/String;)Lcom/flurry/sdk/mr;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/kx;->d:Lcom/flurry/sdk/mr;

    .line 86
    return-void
.end method

.method public a(Lcom/flurry/sdk/mr;[Lcom/flurry/sdk/ky;)V
    .locals 6

    .prologue
    .line 106
    iget-object v0, p0, Lcom/flurry/sdk/kx;->j:Lcom/flurry/sdk/mr;

    const-string v1, "property-based"

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/sdk/kx;->a(Lcom/flurry/sdk/mr;Lcom/flurry/sdk/mr;Ljava/lang/String;)Lcom/flurry/sdk/mr;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/kx;->j:Lcom/flurry/sdk/mr;

    .line 108
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 109
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 110
    const/4 v0, 0x0

    array-length v3, p2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 111
    aget-object v0, p2, v1

    invoke-virtual {v0}, Lcom/flurry/sdk/ky;->c()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 113
    if-eqz v0, :cond_0

    .line 114
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate creator property \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" (index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " vs "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 118
    :cond_1
    iput-object p2, p0, Lcom/flurry/sdk/kx;->k:[Lcom/flurry/sdk/ky;

    .line 119
    return-void
.end method

.method public b(Lcom/flurry/sdk/mr;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/flurry/sdk/kx;->e:Lcom/flurry/sdk/mr;

    const-string v1, "int"

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/sdk/kx;->a(Lcom/flurry/sdk/mr;Lcom/flurry/sdk/mr;Ljava/lang/String;)Lcom/flurry/sdk/mr;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/kx;->e:Lcom/flurry/sdk/mr;

    .line 89
    return-void
.end method

.method public c(Lcom/flurry/sdk/mr;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flurry/sdk/kx;->f:Lcom/flurry/sdk/mr;

    const-string v1, "long"

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/sdk/kx;->a(Lcom/flurry/sdk/mr;Lcom/flurry/sdk/mr;Ljava/lang/String;)Lcom/flurry/sdk/mr;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/kx;->f:Lcom/flurry/sdk/mr;

    .line 92
    return-void
.end method

.method public d(Lcom/flurry/sdk/mr;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/flurry/sdk/kx;->g:Lcom/flurry/sdk/mr;

    const-string v1, "double"

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/sdk/kx;->a(Lcom/flurry/sdk/mr;Lcom/flurry/sdk/mr;Ljava/lang/String;)Lcom/flurry/sdk/mr;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/kx;->g:Lcom/flurry/sdk/mr;

    .line 95
    return-void
.end method

.method public e(Lcom/flurry/sdk/mr;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/flurry/sdk/kx;->h:Lcom/flurry/sdk/mr;

    const-string v1, "boolean"

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/sdk/kx;->a(Lcom/flurry/sdk/mr;Lcom/flurry/sdk/mr;Ljava/lang/String;)Lcom/flurry/sdk/mr;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/kx;->h:Lcom/flurry/sdk/mr;

    .line 98
    return-void
.end method

.method public f(Lcom/flurry/sdk/mr;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/flurry/sdk/kx;->i:Lcom/flurry/sdk/mr;

    const-string v1, "delegate"

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/sdk/kx;->a(Lcom/flurry/sdk/mr;Lcom/flurry/sdk/mr;Ljava/lang/String;)Lcom/flurry/sdk/mr;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/kx;->i:Lcom/flurry/sdk/mr;

    .line 102
    return-void
.end method