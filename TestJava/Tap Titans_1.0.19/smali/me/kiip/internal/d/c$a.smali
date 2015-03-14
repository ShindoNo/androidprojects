.class public final Lme/kiip/internal/d/c$a;
.super Ljava/lang/Object;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kiip/internal/d/c$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/d/c;

.field private final b:Lme/kiip/internal/d/c$b;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lme/kiip/internal/d/c;Lme/kiip/internal/d/c$b;)V
    .locals 1

    .prologue
    .line 723
    iput-object p1, p0, Lme/kiip/internal/d/c$a;->a:Lme/kiip/internal/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 724
    iput-object p2, p0, Lme/kiip/internal/d/c$a;->b:Lme/kiip/internal/d/c$b;

    .line 725
    invoke-static {p2}, Lme/kiip/internal/d/c$b;->d(Lme/kiip/internal/d/c$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lme/kiip/internal/d/c$a;->c:[Z

    .line 726
    return-void

    .line 725
    :cond_0
    invoke-static {p1}, Lme/kiip/internal/d/c;->e(Lme/kiip/internal/d/c;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lme/kiip/internal/d/c;Lme/kiip/internal/d/c$b;Lme/kiip/internal/d/c$1;)V
    .locals 0

    .prologue
    .line 717
    invoke-direct {p0, p1, p2}, Lme/kiip/internal/d/c$a;-><init>(Lme/kiip/internal/d/c;Lme/kiip/internal/d/c$b;)V

    return-void
.end method

.method static synthetic a(Lme/kiip/internal/d/c$a;)Lme/kiip/internal/d/c$b;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lme/kiip/internal/d/c$a;->b:Lme/kiip/internal/d/c$b;

    return-object v0
.end method

.method static synthetic a(Lme/kiip/internal/d/c$a;Z)Z
    .locals 0

    .prologue
    .line 717
    iput-boolean p1, p0, Lme/kiip/internal/d/c$a;->d:Z

    return p1
.end method

.method static synthetic b(Lme/kiip/internal/d/c$a;)[Z
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lme/kiip/internal/d/c$a;->c:[Z

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 765
    iget-object v2, p0, Lme/kiip/internal/d/c$a;->a:Lme/kiip/internal/d/c;

    monitor-enter v2

    .line 766
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/d/c$a;->b:Lme/kiip/internal/d/c$b;

    invoke-static {v0}, Lme/kiip/internal/d/c$b;->a(Lme/kiip/internal/d/c$b;)Lme/kiip/internal/d/c$a;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 767
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 787
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 769
    :cond_0
    :try_start_1
    iget-object v0, p0, Lme/kiip/internal/d/c$a;->b:Lme/kiip/internal/d/c$b;

    invoke-static {v0}, Lme/kiip/internal/d/c$b;->d(Lme/kiip/internal/d/c$b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 770
    iget-object v0, p0, Lme/kiip/internal/d/c$a;->c:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 772
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/d/c$a;->b:Lme/kiip/internal/d/c$b;

    invoke-virtual {v0, p1}, Lme/kiip/internal/d/c$b;->b(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 775
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 786
    :goto_0
    :try_start_3
    new-instance v0, Lme/kiip/internal/d/c$a$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lme/kiip/internal/d/c$a$a;-><init>(Lme/kiip/internal/d/c$a;Ljava/io/OutputStream;Lme/kiip/internal/d/c$1;)V

    monitor-exit v2

    :goto_1
    return-object v0

    .line 776
    :catch_0
    move-exception v0

    .line 778
    iget-object v0, p0, Lme/kiip/internal/d/c$a;->a:Lme/kiip/internal/d/c;

    invoke-static {v0}, Lme/kiip/internal/d/c;->f(Lme/kiip/internal/d/c;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 780
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v0

    .line 784
    goto :goto_0

    .line 781
    :catch_1
    move-exception v0

    .line 783
    :try_start_5
    invoke-static {}, Lme/kiip/internal/d/c;->b()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 806
    iget-boolean v0, p0, Lme/kiip/internal/d/c$a;->d:Z

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lme/kiip/internal/d/c$a;->a:Lme/kiip/internal/d/c;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lme/kiip/internal/d/c;->a(Lme/kiip/internal/d/c;Lme/kiip/internal/d/c$a;Z)V

    .line 808
    iget-object v0, p0, Lme/kiip/internal/d/c$a;->a:Lme/kiip/internal/d/c;

    iget-object v1, p0, Lme/kiip/internal/d/c$a;->b:Lme/kiip/internal/d/c$b;

    invoke-static {v1}, Lme/kiip/internal/d/c$b;->c(Lme/kiip/internal/d/c$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/kiip/internal/d/c;->c(Ljava/lang/String;)Z

    .line 812
    :goto_0
    iput-boolean v2, p0, Lme/kiip/internal/d/c$a;->e:Z

    .line 813
    return-void

    .line 810
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/d/c$a;->a:Lme/kiip/internal/d/c;

    invoke-static {v0, p0, v2}, Lme/kiip/internal/d/c;->a(Lme/kiip/internal/d/c;Lme/kiip/internal/d/c$a;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 820
    iget-object v0, p0, Lme/kiip/internal/d/c$a;->a:Lme/kiip/internal/d/c;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lme/kiip/internal/d/c;->a(Lme/kiip/internal/d/c;Lme/kiip/internal/d/c$a;Z)V

    .line 821
    return-void
.end method
