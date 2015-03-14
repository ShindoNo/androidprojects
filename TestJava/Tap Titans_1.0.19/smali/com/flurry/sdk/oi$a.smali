.class public Lcom/flurry/sdk/oi$a;
.super Lcom/flurry/sdk/js$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/oi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field protected static final a:[Lcom/flurry/sdk/ju;

.field protected static final b:[Lcom/flurry/sdk/oj;


# instance fields
.field protected final c:[Lcom/flurry/sdk/ju;

.field protected final d:[Lcom/flurry/sdk/ju;

.field protected final e:[Lcom/flurry/sdk/oj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    new-array v0, v1, [Lcom/flurry/sdk/ju;

    sput-object v0, Lcom/flurry/sdk/oi$a;->a:[Lcom/flurry/sdk/ju;

    .line 85
    new-array v0, v1, [Lcom/flurry/sdk/oj;

    sput-object v0, Lcom/flurry/sdk/oi$a;->b:[Lcom/flurry/sdk/oj;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, v0, v0, v0}, Lcom/flurry/sdk/oi$a;-><init>([Lcom/flurry/sdk/ju;[Lcom/flurry/sdk/ju;[Lcom/flurry/sdk/oj;)V

    .line 108
    return-void
.end method

.method protected constructor <init>([Lcom/flurry/sdk/ju;[Lcom/flurry/sdk/ju;[Lcom/flurry/sdk/oj;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/flurry/sdk/js$a;-><init>()V

    .line 114
    if-nez p1, :cond_0

    sget-object p1, Lcom/flurry/sdk/oi$a;->a:[Lcom/flurry/sdk/ju;

    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/oi$a;->c:[Lcom/flurry/sdk/ju;

    .line 116
    if-nez p2, :cond_1

    sget-object p2, Lcom/flurry/sdk/oi$a;->a:[Lcom/flurry/sdk/ju;

    :cond_1
    iput-object p2, p0, Lcom/flurry/sdk/oi$a;->d:[Lcom/flurry/sdk/ju;

    .line 118
    if-nez p3, :cond_2

    sget-object p3, Lcom/flurry/sdk/oi$a;->b:[Lcom/flurry/sdk/oj;

    :cond_2
    iput-object p3, p0, Lcom/flurry/sdk/oi$a;->e:[Lcom/flurry/sdk/oj;

    .line 119
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/ju;)Lcom/flurry/sdk/js$a;
    .locals 4

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null Serializers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/oi$a;->c:[Lcom/flurry/sdk/ju;

    invoke-static {v0, p1}, Lcom/flurry/sdk/qt;->a([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/ju;

    .line 128
    new-instance v1, Lcom/flurry/sdk/oi$a;

    iget-object v2, p0, Lcom/flurry/sdk/oi$a;->d:[Lcom/flurry/sdk/ju;

    iget-object v3, p0, Lcom/flurry/sdk/oi$a;->e:[Lcom/flurry/sdk/oj;

    invoke-direct {v1, v0, v2, v3}, Lcom/flurry/sdk/oi$a;-><init>([Lcom/flurry/sdk/ju;[Lcom/flurry/sdk/ju;[Lcom/flurry/sdk/oj;)V

    return-object v1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/flurry/sdk/oi$a;->d:[Lcom/flurry/sdk/ju;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/flurry/sdk/ju;)Lcom/flurry/sdk/js$a;
    .locals 4

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null Serializers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/oi$a;->d:[Lcom/flurry/sdk/ju;

    invoke-static {v0, p1}, Lcom/flurry/sdk/qt;->a([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/ju;

    .line 138
    new-instance v1, Lcom/flurry/sdk/oi$a;

    iget-object v2, p0, Lcom/flurry/sdk/oi$a;->c:[Lcom/flurry/sdk/ju;

    iget-object v3, p0, Lcom/flurry/sdk/oi$a;->e:[Lcom/flurry/sdk/oj;

    invoke-direct {v1, v2, v0, v3}, Lcom/flurry/sdk/oi$a;-><init>([Lcom/flurry/sdk/ju;[Lcom/flurry/sdk/ju;[Lcom/flurry/sdk/oj;)V

    return-object v1
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/flurry/sdk/oi$a;->e:[Lcom/flurry/sdk/oj;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/sdk/ju;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/flurry/sdk/oi$a;->c:[Lcom/flurry/sdk/ju;

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
            "Lcom/flurry/sdk/ju;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/flurry/sdk/oi$a;->d:[Lcom/flurry/sdk/ju;

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
            "Lcom/flurry/sdk/oj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/flurry/sdk/oi$a;->e:[Lcom/flurry/sdk/oj;

    invoke-static {v0}, Lcom/flurry/sdk/qt;->b([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
