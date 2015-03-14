.class final Lcom/flurry/sdk/os$e;
.super Lcom/flurry/sdk/os;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/os;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
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

.field private final b:Lcom/flurry/sdk/jh;
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
.method public constructor <init>(Ljava/lang/Class;Lcom/flurry/sdk/jh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/flurry/sdk/os;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/flurry/sdk/os$e;->a:Ljava/lang/Class;

    .line 132
    iput-object p2, p0, Lcom/flurry/sdk/os$e;->b:Lcom/flurry/sdk/jh;

    .line 133
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
    .line 138
    iget-object v0, p0, Lcom/flurry/sdk/os$e;->a:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/flurry/sdk/os$e;->b:Lcom/flurry/sdk/jh;

    .line 141
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;Lcom/flurry/sdk/jh;)Lcom/flurry/sdk/os;
    .locals 3
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
    .line 146
    new-instance v0, Lcom/flurry/sdk/os$a;

    iget-object v1, p0, Lcom/flurry/sdk/os$e;->a:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/sdk/os$e;->b:Lcom/flurry/sdk/jh;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/flurry/sdk/os$a;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/jh;Ljava/lang/Class;Lcom/flurry/sdk/jh;)V

    return-object v0
.end method
