.class public Lcom/flurry/sdk/gm;
.super Lcom/flurry/sdk/gk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/gm$a;
    }
.end annotation


# static fields
.field static final synthetic d:Z


# instance fields
.field private final e:Lcom/flurry/sdk/gm$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/flurry/sdk/gm;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/flurry/sdk/gn;Lcom/flurry/sdk/gk$a;Lcom/flurry/sdk/gm$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/gk;-><init>(Lcom/flurry/sdk/gn;Lcom/flurry/sdk/gk$a;)V

    .line 49
    iput-object p3, p0, Lcom/flurry/sdk/gm;->e:Lcom/flurry/sdk/gm$a;

    .line 50
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    :goto_0
    iget v0, p0, Lcom/flurry/sdk/gm;->c:I

    if-ge p1, v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/flurry/sdk/gm;->b:[Lcom/flurry/sdk/gn;

    iget v1, p0, Lcom/flurry/sdk/gm;->c:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 61
    iget-object v1, v0, Lcom/flurry/sdk/gn;->a:Lcom/flurry/sdk/gn$i;

    sget-object v2, Lcom/flurry/sdk/gn$i;->a:Lcom/flurry/sdk/gn$i;

    if-eq v1, v2, :cond_2

    .line 62
    iget-object v1, v0, Lcom/flurry/sdk/gn;->a:Lcom/flurry/sdk/gn$i;

    sget-object v2, Lcom/flurry/sdk/gn$i;->f:Lcom/flurry/sdk/gn$i;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/flurry/sdk/gn;->a:Lcom/flurry/sdk/gn$i;

    sget-object v2, Lcom/flurry/sdk/gn$i;->g:Lcom/flurry/sdk/gn$i;

    if-ne v1, v2, :cond_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gm;->e:Lcom/flurry/sdk/gm$a;

    invoke-interface {v0}, Lcom/flurry/sdk/gm$a;->l()V

    goto :goto_0

    .line 66
    :cond_1
    iget v1, p0, Lcom/flurry/sdk/gm;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/flurry/sdk/gm;->c:I

    .line 67
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gm;->b(Lcom/flurry/sdk/gn;)V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gm;->e:Lcom/flurry/sdk/gm$a;

    invoke-interface {v0}, Lcom/flurry/sdk/gm$a;->t()V

    goto :goto_0

    .line 73
    :cond_3
    return-void
.end method

.method public final d(Lcom/flurry/sdk/gn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget v0, p0, Lcom/flurry/sdk/gm;->c:I

    .line 92
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gm;->c(Lcom/flurry/sdk/gn;)V

    .line 93
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gm;->a(I)V

    .line 94
    return-void
.end method

.method public final f()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget v0, p0, Lcom/flurry/sdk/gm;->c:I

    .line 80
    iget-object v1, p0, Lcom/flurry/sdk/gm;->b:[Lcom/flurry/sdk/gn;

    iget v2, p0, Lcom/flurry/sdk/gm;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/flurry/sdk/gm;->c:I

    aget-object v1, v1, v2

    .line 81
    sget-boolean v2, Lcom/flurry/sdk/gm;->d:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/flurry/sdk/gn;->a:Lcom/flurry/sdk/gn$i;

    sget-object v3, Lcom/flurry/sdk/gn$i;->d:Lcom/flurry/sdk/gn$i;

    if-eq v2, v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 82
    :cond_0
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/gm;->b(Lcom/flurry/sdk/gn;)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gm;->a(I)V

    .line 84
    return-void
.end method
