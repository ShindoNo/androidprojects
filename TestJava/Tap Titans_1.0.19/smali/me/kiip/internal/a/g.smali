.class public Lme/kiip/internal/a/g;
.super Ljava/lang/Thread;
.source "KiipSDK"


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lme/kiip/internal/a/l",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:Lme/kiip/internal/a/f;

.field private final c:Lme/kiip/internal/a/b;

.field private final d:Lme/kiip/internal/a/o;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lme/kiip/internal/a/f;Lme/kiip/internal/a/b;Lme/kiip/internal/a/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lme/kiip/internal/a/l",
            "<*>;>;",
            "Lme/kiip/internal/a/f;",
            "Lme/kiip/internal/a/b;",
            "Lme/kiip/internal/a/o;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/kiip/internal/a/g;->e:Z

    .line 58
    iput-object p1, p0, Lme/kiip/internal/a/g;->a:Ljava/util/concurrent/BlockingQueue;

    .line 59
    iput-object p2, p0, Lme/kiip/internal/a/g;->b:Lme/kiip/internal/a/f;

    .line 60
    iput-object p3, p0, Lme/kiip/internal/a/g;->c:Lme/kiip/internal/a/b;

    .line 61
    iput-object p4, p0, Lme/kiip/internal/a/g;->d:Lme/kiip/internal/a/o;

    .line 62
    return-void
.end method

.method private a(Lme/kiip/internal/a/l;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/kiip/internal/a/l",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 77
    invoke-virtual {p1}, Lme/kiip/internal/a/l;->b()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 79
    :cond_0
    return-void
.end method

.method private a(Lme/kiip/internal/a/l;Lme/kiip/internal/a/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/kiip/internal/a/l",
            "<*>;",
            "Lme/kiip/internal/a/s;",
            ")V"
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p1, p2}, Lme/kiip/internal/a/l;->a(Lme/kiip/internal/a/s;)Lme/kiip/internal/a/s;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lme/kiip/internal/a/g;->d:Lme/kiip/internal/a/o;

    invoke-interface {v1, p1, v0}, Lme/kiip/internal/a/o;->a(Lme/kiip/internal/a/l;Lme/kiip/internal/a/s;)V

    .line 146
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/a/g;->e:Z

    .line 70
    invoke-virtual {p0}, Lme/kiip/internal/a/g;->interrupt()V

    .line 71
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 83
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 88
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/a/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/kiip/internal/a/l;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :try_start_1
    const-string v1, "network-queue-take"

    invoke-virtual {v0, v1}, Lme/kiip/internal/a/l;->a(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lme/kiip/internal/a/l;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    const-string v1, "network-discard-cancelled"

    invoke-virtual {v0, v1}, Lme/kiip/internal/a/l;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lme/kiip/internal/a/s; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    invoke-direct {p0, v0, v1}, Lme/kiip/internal/a/g;->a(Lme/kiip/internal/a/l;Lme/kiip/internal/a/s;)V

    goto :goto_0

    .line 89
    :catch_1
    move-exception v0

    .line 91
    iget-boolean v0, p0, Lme/kiip/internal/a/g;->e:Z

    if-eqz v0, :cond_0

    .line 92
    return-void

    .line 107
    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lme/kiip/internal/a/g;->a(Lme/kiip/internal/a/l;)V

    .line 110
    iget-object v1, p0, Lme/kiip/internal/a/g;->b:Lme/kiip/internal/a/f;

    invoke-interface {v1, v0}, Lme/kiip/internal/a/f;->a(Lme/kiip/internal/a/l;)Lme/kiip/internal/a/i;

    move-result-object v1

    .line 111
    const-string v2, "network-http-complete"

    invoke-virtual {v0, v2}, Lme/kiip/internal/a/l;->a(Ljava/lang/String;)V

    .line 115
    iget-boolean v2, v1, Lme/kiip/internal/a/i;->d:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lme/kiip/internal/a/l;->u()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    const-string v1, "not-modified"

    invoke-virtual {v0, v1}, Lme/kiip/internal/a/l;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Lme/kiip/internal/a/s; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 136
    :catch_2
    move-exception v1

    .line 137
    const-string v2, "Unhandled exception %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lme/kiip/internal/a/t;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v2, p0, Lme/kiip/internal/a/g;->d:Lme/kiip/internal/a/o;

    new-instance v3, Lme/kiip/internal/a/s;

    invoke-direct {v3, v1}, Lme/kiip/internal/a/s;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v0, v3}, Lme/kiip/internal/a/o;->a(Lme/kiip/internal/a/l;Lme/kiip/internal/a/s;)V

    goto :goto_0

    .line 121
    :cond_2
    :try_start_3
    invoke-virtual {v0, v1}, Lme/kiip/internal/a/l;->a(Lme/kiip/internal/a/i;)Lme/kiip/internal/a/n;

    move-result-object v1

    .line 122
    const-string v2, "network-parse-complete"

    invoke-virtual {v0, v2}, Lme/kiip/internal/a/l;->a(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Lme/kiip/internal/a/l;->p()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lme/kiip/internal/a/n;->b:Lme/kiip/internal/a/b$a;

    if-eqz v2, :cond_3

    .line 127
    iget-object v2, p0, Lme/kiip/internal/a/g;->c:Lme/kiip/internal/a/b;

    invoke-virtual {v0}, Lme/kiip/internal/a/l;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lme/kiip/internal/a/n;->b:Lme/kiip/internal/a/b$a;

    invoke-interface {v2, v3, v4}, Lme/kiip/internal/a/b;->a(Ljava/lang/String;Lme/kiip/internal/a/b$a;)V

    .line 128
    const-string v2, "network-cache-written"

    invoke-virtual {v0, v2}, Lme/kiip/internal/a/l;->a(Ljava/lang/String;)V

    .line 132
    :cond_3
    invoke-virtual {v0}, Lme/kiip/internal/a/l;->t()V

    .line 133
    iget-object v2, p0, Lme/kiip/internal/a/g;->d:Lme/kiip/internal/a/o;

    invoke-interface {v2, v0, v1}, Lme/kiip/internal/a/o;->a(Lme/kiip/internal/a/l;Lme/kiip/internal/a/n;)V
    :try_end_3
    .catch Lme/kiip/internal/a/s; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method
