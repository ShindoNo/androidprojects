.class public Lcom/flurry/sdk/gk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/gk$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/flurry/sdk/gk$a;

.field protected b:[Lcom/flurry/sdk/gn;

.field protected c:I


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/gn;Lcom/flurry/sdk/gk$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gk$a;

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/flurry/sdk/gn;

    iput-object v0, p0, Lcom/flurry/sdk/gk;->b:[Lcom/flurry/sdk/gn;

    .line 58
    iget-object v0, p0, Lcom/flurry/sdk/gk;->b:[Lcom/flurry/sdk/gn;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/gk;->c:I

    .line 60
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 67
    iget-object v0, p0, Lcom/flurry/sdk/gk;->b:[Lcom/flurry/sdk/gn;

    array-length v0, v0

    iget-object v1, p0, Lcom/flurry/sdk/gk;->b:[Lcom/flurry/sdk/gn;

    array-length v1, v1

    const/16 v2, 0x400

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/flurry/sdk/gn;

    .line 68
    iget-object v1, p0, Lcom/flurry/sdk/gk;->b:[Lcom/flurry/sdk/gn;

    iget-object v2, p0, Lcom/flurry/sdk/gk;->b:[Lcom/flurry/sdk/gn;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iput-object v0, p0, Lcom/flurry/sdk/gk;->b:[Lcom/flurry/sdk/gn;

    .line 70
    return-void
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/gk;->b:[Lcom/flurry/sdk/gn;

    iget v1, p0, Lcom/flurry/sdk/gk;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/flurry/sdk/gk;->c:I

    aget-object v1, v0, v1

    .line 85
    if-ne v1, p1, :cond_1

    .line 101
    :goto_1
    return-object v1

    .line 89
    :cond_1
    iget-object v0, v1, Lcom/flurry/sdk/gn;->a:Lcom/flurry/sdk/gn$i;

    .line 90
    sget-object v2, Lcom/flurry/sdk/gn$i;->f:Lcom/flurry/sdk/gn$i;

    if-ne v0, v2, :cond_2

    .line 91
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gk$a;

    invoke-interface {v0, p1, v1}, Lcom/flurry/sdk/gk$a;->a(Lcom/flurry/sdk/gn;Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_0

    goto :goto_1

    .line 95
    :cond_2
    sget-object v2, Lcom/flurry/sdk/gn$i;->a:Lcom/flurry/sdk/gn$i;

    if-ne v0, v2, :cond_3

    .line 96
    new-instance v0, Lcom/flurry/sdk/fi;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to process a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was expected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_3
    sget-object v2, Lcom/flurry/sdk/gn$i;->d:Lcom/flurry/sdk/gn$i;

    if-ne v0, v2, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/flurry/sdk/gn$j;

    iget-object v0, v0, Lcom/flurry/sdk/gn$j;->z:Lcom/flurry/sdk/gn;

    if-ne p1, v0, :cond_4

    move-object v1, p1

    .line 101
    goto :goto_1

    .line 103
    :cond_4
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/gk;->b(Lcom/flurry/sdk/gn;)V

    goto :goto_0
.end method

.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    :goto_0
    iget v0, p0, Lcom/flurry/sdk/gk;->c:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/flurry/sdk/gk;->b:[Lcom/flurry/sdk/gn;

    iget v1, p0, Lcom/flurry/sdk/gk;->c:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 117
    iget-object v1, v0, Lcom/flurry/sdk/gn;->a:Lcom/flurry/sdk/gn$i;

    sget-object v2, Lcom/flurry/sdk/gn$i;->f:Lcom/flurry/sdk/gn$i;

    if-ne v1, v2, :cond_0

    .line 118
    iget v1, p0, Lcom/flurry/sdk/gk;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/flurry/sdk/gk;->c:I

    .line 119
    iget-object v1, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gk$a;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/flurry/sdk/gk$a;->a(Lcom/flurry/sdk/gn;Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    goto :goto_0

    .line 120
    :cond_0
    iget-object v1, v0, Lcom/flurry/sdk/gn;->a:Lcom/flurry/sdk/gn$i;

    sget-object v2, Lcom/flurry/sdk/gn$i;->a:Lcom/flurry/sdk/gn$i;

    if-eq v1, v2, :cond_1

    .line 121
    iget v1, p0, Lcom/flurry/sdk/gk;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/flurry/sdk/gk;->c:I

    .line 122
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gk;->b(Lcom/flurry/sdk/gn;)V

    goto :goto_0

    .line 127
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    :goto_0
    iget v0, p0, Lcom/flurry/sdk/gk;->c:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/flurry/sdk/gk;->b:[Lcom/flurry/sdk/gn;

    iget v1, p0, Lcom/flurry/sdk/gk;->c:I

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    .line 135
    iget-object v0, v1, Lcom/flurry/sdk/gn;->a:Lcom/flurry/sdk/gn$i;

    sget-object v2, Lcom/flurry/sdk/gn$i;->f:Lcom/flurry/sdk/gn$i;

    if-ne v0, v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/flurry/sdk/gn$g;

    iget-boolean v0, v0, Lcom/flurry/sdk/gn$g;->A:Z

    if-eqz v0, :cond_0

    .line 137
    iget v0, p0, Lcom/flurry/sdk/gk;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/gk;->c:I

    .line 138
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gk$a;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/flurry/sdk/gk$a;->a(Lcom/flurry/sdk/gn;Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method public final b(Lcom/flurry/sdk/gn;)V
    .locals 5

    .prologue
    .line 152
    iget-object v0, p1, Lcom/flurry/sdk/gn;->b:[Lcom/flurry/sdk/gn;

    .line 153
    :goto_0
    iget v1, p0, Lcom/flurry/sdk/gk;->c:I

    array-length v2, v0

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/flurry/sdk/gk;->b:[Lcom/flurry/sdk/gn;

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->f()V

    goto :goto_0

    .line 156
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/flurry/sdk/gk;->b:[Lcom/flurry/sdk/gn;

    iget v3, p0, Lcom/flurry/sdk/gk;->c:I

    array-length v4, v0

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget v1, p0, Lcom/flurry/sdk/gk;->c:I

    array-length v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/sdk/gk;->c:I

    .line 158
    return-void
.end method

.method public c()Lcom/flurry/sdk/gn;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/flurry/sdk/gk;->b:[Lcom/flurry/sdk/gn;

    iget v1, p0, Lcom/flurry/sdk/gk;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/flurry/sdk/gk;->c:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public c(Lcom/flurry/sdk/gn;)V
    .locals 3

    .prologue
    .line 178
    iget v0, p0, Lcom/flurry/sdk/gk;->c:I

    iget-object v1, p0, Lcom/flurry/sdk/gk;->b:[Lcom/flurry/sdk/gn;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->f()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gk;->b:[Lcom/flurry/sdk/gn;

    iget v1, p0, Lcom/flurry/sdk/gk;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/gk;->c:I

    aput-object p1, v0, v1

    .line 182
    return-void
.end method

.method public d()Lcom/flurry/sdk/gn;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/flurry/sdk/gk;->b:[Lcom/flurry/sdk/gn;

    iget v1, p0, Lcom/flurry/sdk/gk;->c:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/gk;->c:I

    .line 193
    return-void
.end method
