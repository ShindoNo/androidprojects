.class public Lme/kiip/internal/f/i$a;
.super Ljava/lang/Object;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/InputStream;

.field private c:Ljava/io/OutputStream;

.field private d:Lme/kiip/internal/f/e;

.field private e:Lme/kiip/internal/f/k;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    sget-object v0, Lme/kiip/internal/f/e;->a:Lme/kiip/internal/f/e;

    iput-object v0, p0, Lme/kiip/internal/f/i$a;->d:Lme/kiip/internal/f/e;

    .line 367
    sget-object v0, Lme/kiip/internal/f/k;->b:Lme/kiip/internal/f/k;

    iput-object v0, p0, Lme/kiip/internal/f/i$a;->e:Lme/kiip/internal/f/k;

    .line 391
    iput-object p1, p0, Lme/kiip/internal/f/i$a;->a:Ljava/lang/String;

    .line 392
    iput-boolean p2, p0, Lme/kiip/internal/f/i$a;->f:Z

    .line 393
    iput-object p3, p0, Lme/kiip/internal/f/i$a;->b:Ljava/io/InputStream;

    .line 394
    iput-object p4, p0, Lme/kiip/internal/f/i$a;->c:Ljava/io/OutputStream;

    .line 395
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/f/i$a;)Lme/kiip/internal/f/k;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lme/kiip/internal/f/i$a;->e:Lme/kiip/internal/f/k;

    return-object v0
.end method

.method static synthetic b(Lme/kiip/internal/f/i$a;)Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lme/kiip/internal/f/i$a;->f:Z

    return v0
.end method

.method static synthetic c(Lme/kiip/internal/f/i$a;)Lme/kiip/internal/f/e;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lme/kiip/internal/f/i$a;->d:Lme/kiip/internal/f/e;

    return-object v0
.end method

.method static synthetic d(Lme/kiip/internal/f/i$a;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lme/kiip/internal/f/i$a;->b:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic e(Lme/kiip/internal/f/i$a;)Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lme/kiip/internal/f/i$a;->c:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic f(Lme/kiip/internal/f/i$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lme/kiip/internal/f/i$a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lme/kiip/internal/f/i;
    .locals 2

    .prologue
    .line 413
    new-instance v0, Lme/kiip/internal/f/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/kiip/internal/f/i;-><init>(Lme/kiip/internal/f/i$a;Lme/kiip/internal/f/i$1;)V

    return-object v0
.end method
