.class Lcom/flurry/sdk/gl$a;
.super Lcom/flurry/sdk/go$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/flurry/sdk/fk;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/fk;Lcom/flurry/sdk/fk;)V
    .locals 0

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/flurry/sdk/go$a;-><init>(Lcom/flurry/sdk/fk;)V

    .line 468
    iput-object p2, p0, Lcom/flurry/sdk/gl$a;->a:Lcom/flurry/sdk/fk;

    .line 469
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 471
    instance-of v1, p1, Lcom/flurry/sdk/gl$a;

    if-nez v1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v0

    .line 472
    :cond_1
    check-cast p1, Lcom/flurry/sdk/gl$a;

    .line 473
    iget-object v1, p0, Lcom/flurry/sdk/gl$a;->b:Lcom/flurry/sdk/fk;

    iget-object v2, p1, Lcom/flurry/sdk/gl$a;->b:Lcom/flurry/sdk/fk;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gl$a;->a:Lcom/flurry/sdk/fk;

    iget-object v2, p1, Lcom/flurry/sdk/gl$a;->a:Lcom/flurry/sdk/fk;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 476
    invoke-super {p0}, Lcom/flurry/sdk/go$a;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/sdk/gl$a;->a:Lcom/flurry/sdk/fk;

    invoke-virtual {v1}, Lcom/flurry/sdk/fk;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
