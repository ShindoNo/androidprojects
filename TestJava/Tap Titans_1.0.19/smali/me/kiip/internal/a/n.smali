.class public Lme/kiip/internal/a/n;
.super Ljava/lang/Object;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kiip/internal/a/n$a;,
        Lme/kiip/internal/a/n$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lme/kiip/internal/a/b$a;

.field public final c:Lme/kiip/internal/a/s;

.field public d:Z


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lme/kiip/internal/a/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lme/kiip/internal/a/b$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/kiip/internal/a/n;->d:Z

    .line 75
    iput-object p1, p0, Lme/kiip/internal/a/n;->a:Ljava/lang/Object;

    .line 76
    iput-object p2, p0, Lme/kiip/internal/a/n;->b:Lme/kiip/internal/a/b$a;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lme/kiip/internal/a/n;->c:Lme/kiip/internal/a/s;

    .line 78
    return-void
.end method

.method private constructor <init>(Lme/kiip/internal/a/s;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/kiip/internal/a/n;->d:Z

    .line 81
    iput-object v1, p0, Lme/kiip/internal/a/n;->a:Ljava/lang/Object;

    .line 82
    iput-object v1, p0, Lme/kiip/internal/a/n;->b:Lme/kiip/internal/a/b$a;

    .line 83
    iput-object p1, p0, Lme/kiip/internal/a/n;->c:Lme/kiip/internal/a/s;

    .line 84
    return-void
.end method

.method public static a(Ljava/lang/Object;Lme/kiip/internal/a/b$a;)Lme/kiip/internal/a/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lme/kiip/internal/a/b$a;",
            ")",
            "Lme/kiip/internal/a/n",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lme/kiip/internal/a/n;

    invoke-direct {v0, p0, p1}, Lme/kiip/internal/a/n;-><init>(Ljava/lang/Object;Lme/kiip/internal/a/b$a;)V

    return-object v0
.end method

.method public static a(Lme/kiip/internal/a/s;)Lme/kiip/internal/a/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lme/kiip/internal/a/s;",
            ")",
            "Lme/kiip/internal/a/n",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lme/kiip/internal/a/n;

    invoke-direct {v0, p0}, Lme/kiip/internal/a/n;-><init>(Lme/kiip/internal/a/s;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lme/kiip/internal/a/n;->c:Lme/kiip/internal/a/s;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
