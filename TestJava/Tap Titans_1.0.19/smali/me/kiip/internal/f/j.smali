.class public final Lme/kiip/internal/f/j;
.super Ljava/lang/Object;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kiip/internal/f/j$1;,
        Lme/kiip/internal/f/j$b;,
        Lme/kiip/internal/f/j$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:I

.field private final c:Lme/kiip/internal/f/i;

.field private final d:I

.field private final e:I

.field private f:J

.field private g:I

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lme/kiip/internal/f/j$a;

.field private final k:Lme/kiip/internal/f/j$b;

.field private l:Lme/kiip/internal/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lme/kiip/internal/f/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lme/kiip/internal/f/j;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILme/kiip/internal/f/i;ZZIILjava/util/List;Lme/kiip/internal/f/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lme/kiip/internal/f/i;",
            "ZZII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lme/kiip/internal/f/g;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lme/kiip/internal/f/j;->f:J

    .line 57
    new-instance v0, Lme/kiip/internal/f/j$a;

    invoke-direct {v0, p0, v2}, Lme/kiip/internal/f/j$a;-><init>(Lme/kiip/internal/f/j;Lme/kiip/internal/f/j$1;)V

    iput-object v0, p0, Lme/kiip/internal/f/j;->j:Lme/kiip/internal/f/j$a;

    .line 58
    new-instance v0, Lme/kiip/internal/f/j$b;

    invoke-direct {v0, p0, v2}, Lme/kiip/internal/f/j$b;-><init>(Lme/kiip/internal/f/j;Lme/kiip/internal/f/j$1;)V

    iput-object v0, p0, Lme/kiip/internal/f/j;->k:Lme/kiip/internal/f/j$b;

    .line 65
    iput-object v2, p0, Lme/kiip/internal/f/j;->l:Lme/kiip/internal/f/a;

    .line 69
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    if-nez p7, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    iput p1, p0, Lme/kiip/internal/f/j;->b:I

    .line 72
    iput-object p2, p0, Lme/kiip/internal/f/j;->c:Lme/kiip/internal/f/i;

    .line 73
    iget-object v0, p0, Lme/kiip/internal/f/j;->j:Lme/kiip/internal/f/j$a;

    invoke-static {v0, p4}, Lme/kiip/internal/f/j$a;->a(Lme/kiip/internal/f/j$a;Z)Z

    .line 74
    iget-object v0, p0, Lme/kiip/internal/f/j;->k:Lme/kiip/internal/f/j$b;

    invoke-static {v0, p3}, Lme/kiip/internal/f/j$b;->a(Lme/kiip/internal/f/j$b;Z)Z

    .line 75
    iput p5, p0, Lme/kiip/internal/f/j;->d:I

    .line 76
    iput p6, p0, Lme/kiip/internal/f/j;->e:I

    .line 77
    iput-object p7, p0, Lme/kiip/internal/f/j;->h:Ljava/util/List;

    .line 79
    invoke-direct {p0, p8}, Lme/kiip/internal/f/j;->b(Lme/kiip/internal/f/g;)V

    .line 80
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/f/j;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lme/kiip/internal/f/j;->b:I

    return v0
.end method

.method static synthetic b(Lme/kiip/internal/f/j;)Lme/kiip/internal/f/i;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lme/kiip/internal/f/j;->c:Lme/kiip/internal/f/i;

    return-object v0
.end method

.method private b(Lme/kiip/internal/f/g;)V
    .locals 2

    .prologue
    const/high16 v0, 0x10000

    .line 309
    sget-boolean v1, Lme/kiip/internal/f/j;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lme/kiip/internal/f/j;->c:Lme/kiip/internal/f/i;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 310
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lme/kiip/internal/f/g;->d(I)I

    move-result v0

    :cond_1
    iput v0, p0, Lme/kiip/internal/f/j;->g:I

    .line 313
    return-void
.end method

.method static synthetic c(Lme/kiip/internal/f/j;)J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lme/kiip/internal/f/j;->f:J

    return-wide v0
.end method

.method static synthetic d(Lme/kiip/internal/f/j;)Lme/kiip/internal/f/a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lme/kiip/internal/f/j;->l:Lme/kiip/internal/f/a;

    return-object v0
.end method

.method private d(Lme/kiip/internal/f/a;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 228
    sget-boolean v1, Lme/kiip/internal/f/j;->a:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 229
    :cond_0
    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v1, p0, Lme/kiip/internal/f/j;->l:Lme/kiip/internal/f/a;

    if-eqz v1, :cond_1

    .line 231
    monitor-exit p0

    .line 240
    :goto_0
    return v0

    .line 233
    :cond_1
    iget-object v1, p0, Lme/kiip/internal/f/j;->j:Lme/kiip/internal/f/j$a;

    invoke-static {v1}, Lme/kiip/internal/f/j$a;->a(Lme/kiip/internal/f/j$a;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lme/kiip/internal/f/j;->k:Lme/kiip/internal/f/j$b;

    invoke-static {v1}, Lme/kiip/internal/f/j$b;->a(Lme/kiip/internal/f/j$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    monitor-exit p0

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 236
    :cond_2
    :try_start_1
    iput-object p1, p0, Lme/kiip/internal/f/j;->l:Lme/kiip/internal/f/a;

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 238
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    iget-object v0, p0, Lme/kiip/internal/f/j;->c:Lme/kiip/internal/f/i;

    iget v1, p0, Lme/kiip/internal/f/j;->b:I

    invoke-virtual {v0, v1}, Lme/kiip/internal/f/i;->a(I)Lme/kiip/internal/f/j;

    .line 240
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lme/kiip/internal/f/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lme/kiip/internal/f/j;->g()V

    return-void
.end method

.method static synthetic f(Lme/kiip/internal/f/j;)Lme/kiip/internal/f/j$b;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lme/kiip/internal/f/j;->k:Lme/kiip/internal/f/j$b;

    return-object v0
.end method

.method static synthetic g(Lme/kiip/internal/f/j;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lme/kiip/internal/f/j;->g:I

    return v0
.end method

.method private g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 547
    sget-boolean v0, Lme/kiip/internal/f/j;->a:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 550
    :cond_0
    monitor-enter p0

    .line 551
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/f/j;->j:Lme/kiip/internal/f/j$a;

    invoke-static {v0}, Lme/kiip/internal/f/j$a;->a(Lme/kiip/internal/f/j$a;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lme/kiip/internal/f/j;->j:Lme/kiip/internal/f/j$a;

    invoke-static {v0}, Lme/kiip/internal/f/j$a;->b(Lme/kiip/internal/f/j$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lme/kiip/internal/f/j;->k:Lme/kiip/internal/f/j$b;

    invoke-static {v0}, Lme/kiip/internal/f/j$b;->a(Lme/kiip/internal/f/j$b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lme/kiip/internal/f/j;->k:Lme/kiip/internal/f/j$b;

    invoke-static {v0}, Lme/kiip/internal/f/j$b;->b(Lme/kiip/internal/f/j$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 552
    :goto_0
    invoke-virtual {p0}, Lme/kiip/internal/f/j;->a()Z

    move-result v1

    .line 553
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    if-eqz v0, :cond_4

    .line 559
    sget-object v0, Lme/kiip/internal/f/a;->l:Lme/kiip/internal/f/a;

    invoke-virtual {p0, v0}, Lme/kiip/internal/f/j;->a(Lme/kiip/internal/f/a;)V

    .line 563
    :cond_2
    :goto_1
    return-void

    .line 551
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 553
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 560
    :cond_4
    if-nez v1, :cond_2

    .line 561
    iget-object v0, p0, Lme/kiip/internal/f/j;->c:Lme/kiip/internal/f/i;

    iget v1, p0, Lme/kiip/internal/f/j;->b:I

    invoke-virtual {v0, v1}, Lme/kiip/internal/f/i;->a(I)Lme/kiip/internal/f/j;

    goto :goto_1
.end method


# virtual methods
.method declared-synchronized a(I)V
    .locals 1

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/f/j;->k:Lme/kiip/internal/f/j$b;

    invoke-static {v0, p1}, Lme/kiip/internal/f/j$b;->a(Lme/kiip/internal/f/j$b;I)I

    .line 323
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(J)V
    .locals 0

    .prologue
    .line 177
    iput-wide p1, p0, Lme/kiip/internal/f/j;->f:J

    .line 178
    return-void
.end method

.method a(Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    sget-boolean v0, Lme/kiip/internal/f/j;->a:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 283
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/f/j;->j:Lme/kiip/internal/f/j$a;

    invoke-virtual {v0, p1, p2}, Lme/kiip/internal/f/j$a;->a(Ljava/io/InputStream;I)V

    .line 284
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 244
    sget-boolean v1, Lme/kiip/internal/f/j;->a:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 245
    :cond_0
    const/4 v1, 0x0

    .line 247
    monitor-enter p0

    .line 248
    :try_start_0
    invoke-virtual {p0}, Lme/kiip/internal/f/j;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lme/kiip/internal/f/j;->i:Ljava/util/List;

    if-nez v2, :cond_2

    .line 249
    iput-object p1, p0, Lme/kiip/internal/f/j;->i:Ljava/util/List;

    .line 250
    invoke-virtual {p0}, Lme/kiip/internal/f/j;->a()Z

    move-result v0

    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 255
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    if-eqz v1, :cond_3

    .line 257
    sget-object v0, Lme/kiip/internal/f/a;->e:Lme/kiip/internal/f/a;

    invoke-virtual {p0, v0}, Lme/kiip/internal/f/j;->b(Lme/kiip/internal/f/a;)V

    .line 261
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v0

    .line 253
    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 258
    :cond_3
    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lme/kiip/internal/f/j;->c:Lme/kiip/internal/f/i;

    iget v1, p0, Lme/kiip/internal/f/j;->b:I

    invoke-virtual {v0, v1}, Lme/kiip/internal/f/i;->a(I)Lme/kiip/internal/f/j;

    goto :goto_1
.end method

.method public a(Lme/kiip/internal/f/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lme/kiip/internal/f/j;->d(Lme/kiip/internal/f/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/f/j;->c:Lme/kiip/internal/f/i;

    iget v1, p0, Lme/kiip/internal/f/j;->b:I

    invoke-virtual {v0, v1, p1}, Lme/kiip/internal/f/i;->b(ILme/kiip/internal/f/a;)V

    goto :goto_0
.end method

.method a(Lme/kiip/internal/f/g;)V
    .locals 1

    .prologue
    .line 316
    sget-boolean v0, Lme/kiip/internal/f/j;->a:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 317
    :cond_0
    invoke-direct {p0, p1}, Lme/kiip/internal/f/j;->b(Lme/kiip/internal/f/g;)V

    .line 318
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 319
    return-void
.end method

.method public declared-synchronized a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lme/kiip/internal/f/j;->l:Lme/kiip/internal/f/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 96
    :cond_1
    :try_start_1
    iget-object v1, p0, Lme/kiip/internal/f/j;->j:Lme/kiip/internal/f/j$a;

    invoke-static {v1}, Lme/kiip/internal/f/j$a;->a(Lme/kiip/internal/f/j$a;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lme/kiip/internal/f/j;->j:Lme/kiip/internal/f/j$a;

    invoke-static {v1}, Lme/kiip/internal/f/j$a;->b(Lme/kiip/internal/f/j$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lme/kiip/internal/f/j;->k:Lme/kiip/internal/f/j$b;

    invoke-static {v1}, Lme/kiip/internal/f/j$b;->a(Lme/kiip/internal/f/j$b;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lme/kiip/internal/f/j;->k:Lme/kiip/internal/f/j$b;

    invoke-static {v1}, Lme/kiip/internal/f/j$b;->b(Lme/kiip/internal/f/j$b;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lme/kiip/internal/f/j;->i:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 99
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    sget-boolean v0, Lme/kiip/internal/f/j;->a:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 265
    :cond_0
    const/4 v0, 0x0

    .line 266
    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v1, p0, Lme/kiip/internal/f/j;->i:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    iget-object v2, p0, Lme/kiip/internal/f/j;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    iput-object v1, p0, Lme/kiip/internal/f/j;->i:Ljava/util/List;

    .line 275
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    if-eqz v0, :cond_1

    .line 277
    sget-object v0, Lme/kiip/internal/f/a;->b:Lme/kiip/internal/f/a;

    invoke-virtual {p0, v0}, Lme/kiip/internal/f/j;->b(Lme/kiip/internal/f/a;)V

    .line 279
    :cond_1
    return-void

    .line 273
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Lme/kiip/internal/f/a;)V
    .locals 2

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lme/kiip/internal/f/j;->d(Lme/kiip/internal/f/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/f/j;->c:Lme/kiip/internal/f/i;

    iget v1, p0, Lme/kiip/internal/f/j;->b:I

    invoke-virtual {v0, v1, p1}, Lme/kiip/internal/f/i;->a(ILme/kiip/internal/f/a;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 104
    iget v0, p0, Lme/kiip/internal/f/j;->b:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 105
    :goto_0
    iget-object v3, p0, Lme/kiip/internal/f/j;->c:Lme/kiip/internal/f/i;

    iget-boolean v3, v3, Lme/kiip/internal/f/i;->b:Z

    if-ne v3, v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 104
    goto :goto_0

    :cond_1
    move v1, v2

    .line 105
    goto :goto_1
.end method

.method public declared-synchronized c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/f/j;->i:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/f/j;->l:Lme/kiip/internal/f/a;

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    :try_start_1
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 131
    invoke-virtual {v1, v0}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 132
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 125
    :cond_0
    :try_start_2
    iget-object v0, p0, Lme/kiip/internal/f/j;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lme/kiip/internal/f/j;->i:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 128
    :cond_1
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lme/kiip/internal/f/j;->l:Lme/kiip/internal/f/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method declared-synchronized c(Lme/kiip/internal/f/a;)V
    .locals 1

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/f/j;->l:Lme/kiip/internal/f/a;

    if-nez v0, :cond_0

    .line 301
    iput-object p1, p0, Lme/kiip/internal/f/j;->l:Lme/kiip/internal/f/a;

    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :cond_0
    monitor-exit p0

    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lme/kiip/internal/f/j;->j:Lme/kiip/internal/f/j$a;

    return-object v0
.end method

.method public e()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/f/j;->i:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lme/kiip/internal/f/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the output stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    iget-object v0, p0, Lme/kiip/internal/f/j;->k:Lme/kiip/internal/f/j$b;

    return-object v0
.end method

.method f()V
    .locals 2

    .prologue
    .line 287
    sget-boolean v0, Lme/kiip/internal/f/j;->a:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 289
    :cond_0
    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/f/j;->j:Lme/kiip/internal/f/j$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lme/kiip/internal/f/j$a;->a(Lme/kiip/internal/f/j$a;Z)Z

    .line 291
    invoke-virtual {p0}, Lme/kiip/internal/f/j;->a()Z

    move-result v0

    .line 292
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 293
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    if-nez v0, :cond_1

    .line 295
    iget-object v0, p0, Lme/kiip/internal/f/j;->c:Lme/kiip/internal/f/i;

    iget v1, p0, Lme/kiip/internal/f/j;->b:I

    invoke-virtual {v0, v1}, Lme/kiip/internal/f/i;->a(I)Lme/kiip/internal/f/j;

    .line 297
    :cond_1
    return-void

    .line 293
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
