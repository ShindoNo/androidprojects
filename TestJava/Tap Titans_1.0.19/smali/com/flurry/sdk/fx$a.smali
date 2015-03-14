.class Lcom/flurry/sdk/fx$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/flurry/sdk/fy$a;

.field private final b:Lcom/flurry/sdk/fy$a;

.field private final c:Lcom/flurry/sdk/fy;

.field private final d:Lcom/flurry/sdk/fy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/flurry/sdk/fy;

    new-array v1, v2, [B

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/sdk/fy;-><init>([BII)V

    iput-object v0, p0, Lcom/flurry/sdk/fx$a;->c:Lcom/flurry/sdk/fy;

    .line 38
    new-instance v0, Lcom/flurry/sdk/fy;

    new-array v1, v2, [B

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/sdk/fy;-><init>([BII)V

    iput-object v0, p0, Lcom/flurry/sdk/fx$a;->d:Lcom/flurry/sdk/fy;

    .line 39
    iget-object v0, p0, Lcom/flurry/sdk/fx$a;->c:Lcom/flurry/sdk/fy;

    invoke-virtual {v0}, Lcom/flurry/sdk/fy;->a()Lcom/flurry/sdk/fy$a;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/fx$a;->a:Lcom/flurry/sdk/fy$a;

    .line 40
    iget-object v0, p0, Lcom/flurry/sdk/fx$a;->d:Lcom/flurry/sdk/fy;

    invoke-virtual {v0}, Lcom/flurry/sdk/fy;->a()Lcom/flurry/sdk/fy$a;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/fx$a;->b:Lcom/flurry/sdk/fy$a;

    .line 41
    return-void
.end method
