.class final Lcom/flurry/sdk/lx$j;
.super Lcom/flurry/sdk/lx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "j"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 184
    const-class v0, Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/lx;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public synthetic b(Ljava/lang/String;Lcom/flurry/sdk/iw;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lx$j;->c(Ljava/lang/String;Lcom/flurry/sdk/iw;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Lcom/flurry/sdk/iw;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/lx$j;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method