.class final Lcom/flurry/sdk/lx$g;
.super Lcom/flurry/sdk/lx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation


# instance fields
.field protected final b:Lcom/flurry/sdk/qx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/qx",
            "<*>;"
        }
    .end annotation
.end field

.field protected final c:Lcom/flurry/sdk/mo;


# direct methods
.method protected constructor <init>(Lcom/flurry/sdk/qx;Lcom/flurry/sdk/mo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/qx",
            "<*>;",
            "Lcom/flurry/sdk/mo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p1}, Lcom/flurry/sdk/qx;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/lx;-><init>(Ljava/lang/Class;)V

    .line 232
    iput-object p1, p0, Lcom/flurry/sdk/lx$g;->b:Lcom/flurry/sdk/qx;

    .line 233
    iput-object p2, p0, Lcom/flurry/sdk/lx$g;->c:Lcom/flurry/sdk/mo;

    .line 234
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/flurry/sdk/iw;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/flurry/sdk/lx$g;->c:Lcom/flurry/sdk/mo;

    if-eqz v0, :cond_1

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/lx$g;->c:Lcom/flurry/sdk/mo;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/mo;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 250
    :cond_0
    return-object v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    invoke-static {v0}, Lcom/flurry/sdk/qv;->c(Ljava/lang/Throwable;)V

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/lx$g;->b:Lcom/flurry/sdk/qx;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/qx;->a(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 247
    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/flurry/sdk/lx$g;->a:Ljava/lang/Class;

    const-string v1, "not one of values for Enum class"

    invoke-virtual {p2, v0, p1, v1}, Lcom/flurry/sdk/iw;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0
.end method
