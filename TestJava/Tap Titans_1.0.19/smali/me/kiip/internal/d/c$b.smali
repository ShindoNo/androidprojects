.class final Lme/kiip/internal/d/c$b;
.super Ljava/lang/Object;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/d/c;

.field private final b:Ljava/lang/String;

.field private final c:[J

.field private d:Z

.field private e:Lme/kiip/internal/d/c$a;

.field private f:J


# direct methods
.method private constructor <init>(Lme/kiip/internal/d/c;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 886
    iput-object p1, p0, Lme/kiip/internal/d/c$b;->a:Lme/kiip/internal/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    iput-object p2, p0, Lme/kiip/internal/d/c$b;->b:Ljava/lang/String;

    .line 888
    invoke-static {p1}, Lme/kiip/internal/d/c;->e(Lme/kiip/internal/d/c;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lme/kiip/internal/d/c$b;->c:[J

    .line 889
    return-void
.end method

.method synthetic constructor <init>(Lme/kiip/internal/d/c;Ljava/lang/String;Lme/kiip/internal/d/c$1;)V
    .locals 0

    .prologue
    .line 871
    invoke-direct {p0, p1, p2}, Lme/kiip/internal/d/c$b;-><init>(Lme/kiip/internal/d/c;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lme/kiip/internal/d/c$b;J)J
    .locals 0

    .prologue
    .line 871
    iput-wide p1, p0, Lme/kiip/internal/d/c$b;->f:J

    return-wide p1
.end method

.method static synthetic a(Lme/kiip/internal/d/c$b;)Lme/kiip/internal/d/c$a;
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lme/kiip/internal/d/c$b;->e:Lme/kiip/internal/d/c$a;

    return-object v0
.end method

.method static synthetic a(Lme/kiip/internal/d/c$b;Lme/kiip/internal/d/c$a;)Lme/kiip/internal/d/c$a;
    .locals 0

    .prologue
    .line 871
    iput-object p1, p0, Lme/kiip/internal/d/c$b;->e:Lme/kiip/internal/d/c$a;

    return-object p1
.end method

.method static synthetic a(Lme/kiip/internal/d/c$b;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 871
    invoke-direct {p0, p1}, Lme/kiip/internal/d/c$b;->a([Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 901
    array-length v0, p1

    iget-object v1, p0, Lme/kiip/internal/d/c$b;->a:Lme/kiip/internal/d/c;

    invoke-static {v1}, Lme/kiip/internal/d/c;->e(Lme/kiip/internal/d/c;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 902
    invoke-direct {p0, p1}, Lme/kiip/internal/d/c$b;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 906
    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 907
    iget-object v1, p0, Lme/kiip/internal/d/c$b;->c:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 909
    :catch_0
    move-exception v0

    .line 910
    invoke-direct {p0, p1}, Lme/kiip/internal/d/c$b;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 912
    :cond_1
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/d/c$b;Z)Z
    .locals 0

    .prologue
    .line 871
    iput-boolean p1, p0, Lme/kiip/internal/d/c$b;->d:Z

    return p1
.end method

.method private b([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 915
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lme/kiip/internal/d/c$b;)[J
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lme/kiip/internal/d/c$b;->c:[J

    return-object v0
.end method

.method static synthetic c(Lme/kiip/internal/d/c$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lme/kiip/internal/d/c$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lme/kiip/internal/d/c$b;)Z
    .locals 1

    .prologue
    .line 871
    iget-boolean v0, p0, Lme/kiip/internal/d/c$b;->d:Z

    return v0
.end method

.method static synthetic e(Lme/kiip/internal/d/c$b;)J
    .locals 2

    .prologue
    .line 871
    iget-wide v0, p0, Lme/kiip/internal/d/c$b;->f:J

    return-wide v0
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 4

    .prologue
    .line 919
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lme/kiip/internal/d/c$b;->a:Lme/kiip/internal/d/c;

    invoke-static {v1}, Lme/kiip/internal/d/c;->f(Lme/kiip/internal/d/c;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lme/kiip/internal/d/c$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 893
    iget-object v2, p0, Lme/kiip/internal/d/c$b;->c:[J

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-wide v4, v2, v0

    .line 894
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 893
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 896
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/io/File;
    .locals 4

    .prologue
    .line 923
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lme/kiip/internal/d/c$b;->a:Lme/kiip/internal/d/c;

    invoke-static {v1}, Lme/kiip/internal/d/c;->f(Lme/kiip/internal/d/c;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lme/kiip/internal/d/c$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
