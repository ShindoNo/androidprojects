.class final Lcom/flurry/sdk/os$a;
.super Lcom/flurry/sdk/os;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/os;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/flurry/sdk/jh;Ljava/lang/Class;Lcom/flurry/sdk/jh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/flurry/sdk/os;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/flurry/sdk/os$a;->a:Ljava/lang/Class;

    .line 159
    iput-object p2, p0, Lcom/flurry/sdk/os$a;->c:Lcom/flurry/sdk/jh;

    .line 160
    iput-object p3, p0, Lcom/flurry/sdk/os$a;->b:Ljava/lang/Class;

    .line 161
    iput-object p4, p0, Lcom/flurry/sdk/os$a;->d:Lcom/flurry/sdk/jh;

    .line 162
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/flurry/sdk/jh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/flurry/sdk/os$a;->a:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/flurry/sdk/os$a;->c:Lcom/flurry/sdk/jh;

    .line 173
    :goto_0
    return-object v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/os$a;->b:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/flurry/sdk/os$a;->d:Lcom/flurry/sdk/jh;

    goto :goto_0

    .line 173
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;Lcom/flurry/sdk/jh;)Lcom/flurry/sdk/os;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/sdk/os;"
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/flurry/sdk/os$f;

    .line 180
    const/4 v1, 0x0

    new-instance v2, Lcom/flurry/sdk/os$f;

    iget-object v3, p0, Lcom/flurry/sdk/os$a;->a:Ljava/lang/Class;

    iget-object v4, p0, Lcom/flurry/sdk/os$a;->c:Lcom/flurry/sdk/jh;

    invoke-direct {v2, v3, v4}, Lcom/flurry/sdk/os$f;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/jh;)V

    aput-object v2, v0, v1

    .line 181
    const/4 v1, 0x1

    new-instance v2, Lcom/flurry/sdk/os$f;

    iget-object v3, p0, Lcom/flurry/sdk/os$a;->b:Ljava/lang/Class;

    iget-object v4, p0, Lcom/flurry/sdk/os$a;->d:Lcom/flurry/sdk/jh;

    invoke-direct {v2, v3, v4}, Lcom/flurry/sdk/os$f;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/jh;)V

    aput-object v2, v0, v1

    .line 182
    new-instance v1, Lcom/flurry/sdk/os$c;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/os$c;-><init>([Lcom/flurry/sdk/os$f;)V

    return-object v1
.end method
