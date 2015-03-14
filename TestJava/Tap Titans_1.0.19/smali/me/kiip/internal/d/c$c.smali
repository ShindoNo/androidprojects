.class public final Lme/kiip/internal/d/c$c;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/d/c;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;

.field private final e:[J


# direct methods
.method private constructor <init>(Lme/kiip/internal/d/c;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 0

    .prologue
    .line 671
    iput-object p1, p0, Lme/kiip/internal/d/c$c;->a:Lme/kiip/internal/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    iput-object p2, p0, Lme/kiip/internal/d/c$c;->b:Ljava/lang/String;

    .line 673
    iput-wide p3, p0, Lme/kiip/internal/d/c$c;->c:J

    .line 674
    iput-object p5, p0, Lme/kiip/internal/d/c$c;->d:[Ljava/io/InputStream;

    .line 675
    iput-object p6, p0, Lme/kiip/internal/d/c$c;->e:[J

    .line 676
    return-void
.end method

.method synthetic constructor <init>(Lme/kiip/internal/d/c;Ljava/lang/String;J[Ljava/io/InputStream;[JLme/kiip/internal/d/c$1;)V
    .locals 0

    .prologue
    .line 665
    invoke-direct/range {p0 .. p6}, Lme/kiip/internal/d/c$c;-><init>(Lme/kiip/internal/d/c;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lme/kiip/internal/d/c$c;->d:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a()Lme/kiip/internal/d/c$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 684
    iget-object v0, p0, Lme/kiip/internal/d/c$c;->a:Lme/kiip/internal/d/c;

    iget-object v1, p0, Lme/kiip/internal/d/c$c;->b:Ljava/lang/String;

    iget-wide v2, p0, Lme/kiip/internal/d/c$c;->c:J

    invoke-static {v0, v1, v2, v3}, Lme/kiip/internal/d/c;->a(Lme/kiip/internal/d/c;Ljava/lang/String;J)Lme/kiip/internal/d/c$a;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 703
    iget-object v1, p0, Lme/kiip/internal/d/c$c;->d:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 704
    invoke-static {v3}, Lme/kiip/internal/d/h;->a(Ljava/io/Closeable;)V

    .line 703
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 706
    :cond_0
    return-void
.end method
