.class public Lcom/flurry/sdk/kn$a;
.super Lcom/flurry/sdk/iy$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/kn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field protected static final a:[Lcom/flurry/sdk/jj;

.field protected static final b:[Lcom/flurry/sdk/ko;

.field protected static final c:[Lcom/flurry/sdk/im;

.field protected static final d:[Lcom/flurry/sdk/kv;


# instance fields
.field protected final e:[Lcom/flurry/sdk/ja;

.field protected final f:[Lcom/flurry/sdk/jj;

.field protected final g:[Lcom/flurry/sdk/ko;

.field protected final h:[Lcom/flurry/sdk/im;

.field protected final i:[Lcom/flurry/sdk/kv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    new-array v0, v1, [Lcom/flurry/sdk/jj;

    sput-object v0, Lcom/flurry/sdk/kn$a;->a:[Lcom/flurry/sdk/jj;

    .line 48
    new-array v0, v1, [Lcom/flurry/sdk/ko;

    sput-object v0, Lcom/flurry/sdk/kn$a;->b:[Lcom/flurry/sdk/ko;

    .line 49
    new-array v0, v1, [Lcom/flurry/sdk/im;

    sput-object v0, Lcom/flurry/sdk/kn$a;->c:[Lcom/flurry/sdk/im;

    .line 50
    new-array v0, v1, [Lcom/flurry/sdk/kv;

    sput-object v0, Lcom/flurry/sdk/kn$a;->d:[Lcom/flurry/sdk/kv;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 99
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/kn$a;-><init>([Lcom/flurry/sdk/ja;[Lcom/flurry/sdk/jj;[Lcom/flurry/sdk/ko;[Lcom/flurry/sdk/im;[Lcom/flurry/sdk/kv;)V

    .line 100
    return-void
.end method

.method protected constructor <init>([Lcom/flurry/sdk/ja;[Lcom/flurry/sdk/jj;[Lcom/flurry/sdk/ko;[Lcom/flurry/sdk/im;[Lcom/flurry/sdk/kv;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/flurry/sdk/iy$a;-><init>()V

    .line 112
    if-nez p1, :cond_0

    invoke-static {}, Lcom/flurry/sdk/kn;->b()[Lcom/flurry/sdk/ja;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/kn$a;->e:[Lcom/flurry/sdk/ja;

    .line 114
    if-nez p2, :cond_1

    sget-object p2, Lcom/flurry/sdk/kn$a;->a:[Lcom/flurry/sdk/jj;

    :cond_1
    iput-object p2, p0, Lcom/flurry/sdk/kn$a;->f:[Lcom/flurry/sdk/jj;

    .line 116
    if-nez p3, :cond_2

    sget-object p3, Lcom/flurry/sdk/kn$a;->b:[Lcom/flurry/sdk/ko;

    :cond_2
    iput-object p3, p0, Lcom/flurry/sdk/kn$a;->g:[Lcom/flurry/sdk/ko;

    .line 117
    if-nez p4, :cond_3

    sget-object p4, Lcom/flurry/sdk/kn$a;->c:[Lcom/flurry/sdk/im;

    :cond_3
    iput-object p4, p0, Lcom/flurry/sdk/kn$a;->h:[Lcom/flurry/sdk/im;

    .line 118
    if-nez p5, :cond_4

    sget-object p5, Lcom/flurry/sdk/kn$a;->d:[Lcom/flurry/sdk/kv;

    :cond_4
    iput-object p5, p0, Lcom/flurry/sdk/kn$a;->i:[Lcom/flurry/sdk/kv;

    .line 119
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/im;)Lcom/flurry/sdk/iy$a;
    .locals 6

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null resolver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/kn$a;->h:[Lcom/flurry/sdk/im;

    invoke-static {v0, p1}, Lcom/flurry/sdk/qt;->a([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/flurry/sdk/im;

    .line 161
    new-instance v0, Lcom/flurry/sdk/kn$a;

    iget-object v1, p0, Lcom/flurry/sdk/kn$a;->e:[Lcom/flurry/sdk/ja;

    iget-object v2, p0, Lcom/flurry/sdk/kn$a;->f:[Lcom/flurry/sdk/jj;

    iget-object v3, p0, Lcom/flurry/sdk/kn$a;->g:[Lcom/flurry/sdk/ko;

    iget-object v5, p0, Lcom/flurry/sdk/kn$a;->i:[Lcom/flurry/sdk/kv;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/kn$a;-><init>([Lcom/flurry/sdk/ja;[Lcom/flurry/sdk/jj;[Lcom/flurry/sdk/ko;[Lcom/flurry/sdk/im;[Lcom/flurry/sdk/kv;)V

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/ja;)Lcom/flurry/sdk/iy$a;
    .locals 6

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null Deserializers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/kn$a;->e:[Lcom/flurry/sdk/ja;

    invoke-static {v0, p1}, Lcom/flurry/sdk/qt;->a([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/flurry/sdk/ja;

    .line 128
    new-instance v0, Lcom/flurry/sdk/kn$a;

    iget-object v2, p0, Lcom/flurry/sdk/kn$a;->f:[Lcom/flurry/sdk/jj;

    iget-object v3, p0, Lcom/flurry/sdk/kn$a;->g:[Lcom/flurry/sdk/ko;

    iget-object v4, p0, Lcom/flurry/sdk/kn$a;->h:[Lcom/flurry/sdk/im;

    iget-object v5, p0, Lcom/flurry/sdk/kn$a;->i:[Lcom/flurry/sdk/kv;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/kn$a;-><init>([Lcom/flurry/sdk/ja;[Lcom/flurry/sdk/jj;[Lcom/flurry/sdk/ko;[Lcom/flurry/sdk/im;[Lcom/flurry/sdk/kv;)V

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/jj;)Lcom/flurry/sdk/iy$a;
    .locals 6

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null KeyDeserializers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/kn$a;->f:[Lcom/flurry/sdk/jj;

    invoke-static {v0, p1}, Lcom/flurry/sdk/qt;->a([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/flurry/sdk/jj;

    .line 139
    new-instance v0, Lcom/flurry/sdk/kn$a;

    iget-object v1, p0, Lcom/flurry/sdk/kn$a;->e:[Lcom/flurry/sdk/ja;

    iget-object v3, p0, Lcom/flurry/sdk/kn$a;->g:[Lcom/flurry/sdk/ko;

    iget-object v4, p0, Lcom/flurry/sdk/kn$a;->h:[Lcom/flurry/sdk/im;

    iget-object v5, p0, Lcom/flurry/sdk/kn$a;->i:[Lcom/flurry/sdk/kv;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/kn$a;-><init>([Lcom/flurry/sdk/ja;[Lcom/flurry/sdk/jj;[Lcom/flurry/sdk/ko;[Lcom/flurry/sdk/im;[Lcom/flurry/sdk/kv;)V

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/kv;)Lcom/flurry/sdk/iy$a;
    .locals 6

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null resolver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/kn$a;->i:[Lcom/flurry/sdk/kv;

    invoke-static {v0, p1}, Lcom/flurry/sdk/qt;->a([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/flurry/sdk/kv;

    .line 172
    new-instance v0, Lcom/flurry/sdk/kn$a;

    iget-object v1, p0, Lcom/flurry/sdk/kn$a;->e:[Lcom/flurry/sdk/ja;

    iget-object v2, p0, Lcom/flurry/sdk/kn$a;->f:[Lcom/flurry/sdk/jj;

    iget-object v3, p0, Lcom/flurry/sdk/kn$a;->g:[Lcom/flurry/sdk/ko;

    iget-object v4, p0, Lcom/flurry/sdk/kn$a;->h:[Lcom/flurry/sdk/im;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/kn$a;-><init>([Lcom/flurry/sdk/ja;[Lcom/flurry/sdk/jj;[Lcom/flurry/sdk/ko;[Lcom/flurry/sdk/im;[Lcom/flurry/sdk/kv;)V

    return-object v0
.end method

.method public a()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/sdk/ja;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/flurry/sdk/kn$a;->e:[Lcom/flurry/sdk/ja;

    invoke-static {v0}, Lcom/flurry/sdk/qt;->b([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/sdk/jj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/flurry/sdk/kn$a;->f:[Lcom/flurry/sdk/jj;

    invoke-static {v0}, Lcom/flurry/sdk/qt;->b([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/sdk/ko;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/flurry/sdk/kn$a;->g:[Lcom/flurry/sdk/ko;

    invoke-static {v0}, Lcom/flurry/sdk/qt;->b([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/sdk/im;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/flurry/sdk/kn$a;->h:[Lcom/flurry/sdk/im;

    invoke-static {v0}, Lcom/flurry/sdk/qt;->b([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/sdk/kv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/flurry/sdk/kn$a;->i:[Lcom/flurry/sdk/kv;

    invoke-static {v0}, Lcom/flurry/sdk/qt;->b([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/flurry/sdk/kn$a;->f:[Lcom/flurry/sdk/jj;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/flurry/sdk/kn$a;->g:[Lcom/flurry/sdk/ko;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/flurry/sdk/kn$a;->h:[Lcom/flurry/sdk/im;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/flurry/sdk/kn$a;->i:[Lcom/flurry/sdk/kv;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
