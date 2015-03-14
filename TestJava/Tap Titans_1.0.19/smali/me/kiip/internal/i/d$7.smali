.class Lme/kiip/internal/i/d$7;
.super Lme/kiip/internal/a/l;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/i/d;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/kiip/internal/a/l",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/i/d;


# direct methods
.method constructor <init>(Lme/kiip/internal/i/d;ILjava/lang/String;Lme/kiip/internal/a/n$a;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lme/kiip/internal/i/d$7;->a:Lme/kiip/internal/i/d;

    invoke-direct {p0, p2, p3, p4}, Lme/kiip/internal/a/l;-><init>(ILjava/lang/String;Lme/kiip/internal/a/n$a;)V

    return-void
.end method


# virtual methods
.method protected a(Lme/kiip/internal/a/i;)Lme/kiip/internal/a/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/kiip/internal/a/i;",
            ")",
            "Lme/kiip/internal/a/n",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 441
    iget-object v0, p1, Lme/kiip/internal/a/i;->b:[B

    invoke-static {p1}, Lme/kiip/internal/b/e;->a(Lme/kiip/internal/a/i;)Lme/kiip/internal/a/b$a;

    move-result-object v1

    invoke-static {v0, v1}, Lme/kiip/internal/a/n;->a(Ljava/lang/Object;Lme/kiip/internal/a/b$a;)Lme/kiip/internal/a/n;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 437
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lme/kiip/internal/i/d$7;->a([B)V

    return-void
.end method

.method protected a([B)V
    .locals 0

    .prologue
    .line 452
    return-void
.end method
