.class public final Lme/kiip/internal/i/c;
.super Ljava/lang/Object;
.source "KiipSDK"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lme/kiip/sdk/Poptart;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/app/Activity;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lme/kiip/sdk/Poptart;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/DialogInterface$OnShowListener;

.field private e:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lme/kiip/internal/i/c;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lme/kiip/internal/i/c;->a:Ljava/util/List;

    :goto_0
    iput-object v0, p0, Lme/kiip/internal/i/c;->c:Ljava/util/List;

    .line 37
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    goto :goto_0
.end method

.method public static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lme/kiip/sdk/Poptart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    sget-object v0, Lme/kiip/internal/i/c;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lme/kiip/internal/i/c;)Ljava/util/List;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lme/kiip/internal/i/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public static a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lme/kiip/sdk/Poptart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    sput-object p0, Lme/kiip/internal/i/c;->a:Ljava/util/List;

    .line 24
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/i/c;Z)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lme/kiip/internal/i/c;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lme/kiip/internal/i/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lme/kiip/internal/i/c;->g()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/i/c;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/kiip/sdk/Poptart;

    .line 80
    iget-object v1, p0, Lme/kiip/internal/i/c;->d:Landroid/content/DialogInterface$OnShowListener;

    if-eqz v1, :cond_2

    .line 81
    iget-object v1, p0, Lme/kiip/internal/i/c;->d:Landroid/content/DialogInterface$OnShowListener;

    invoke-interface {v1, v0}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    .line 84
    :cond_2
    invoke-direct {p0}, Lme/kiip/internal/i/c;->g()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/kiip/sdk/Poptart;->setTag(Ljava/lang/Object;)V

    .line 85
    new-instance v1, Lme/kiip/internal/i/c$1;

    invoke-direct {v1, p0}, Lme/kiip/internal/i/c$1;-><init>(Lme/kiip/internal/i/c;)V

    invoke-virtual {v0, v1}, Lme/kiip/sdk/Poptart;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 102
    invoke-direct {p0}, Lme/kiip/internal/i/c;->g()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lme/kiip/sdk/Poptart;->show(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method static synthetic b(Lme/kiip/internal/i/c;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lme/kiip/internal/i/c;->e:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method private c(Lme/kiip/sdk/Poptart;)V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lme/kiip/sdk/Poptart;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 120
    invoke-virtual {p1}, Lme/kiip/sdk/Poptart;->cancel()V

    .line 121
    return-void
.end method

.method private g()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lme/kiip/internal/i/c;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lme/kiip/internal/i/c;->b:Landroid/app/Activity;

    .line 127
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lme/kiip/internal/i/c;->e:Landroid/content/DialogInterface$OnDismissListener;

    .line 55
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lme/kiip/internal/i/c;->d:Landroid/content/DialogInterface$OnShowListener;

    .line 51
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public a(Lme/kiip/sdk/Poptart;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 60
    if-nez p1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lme/kiip/internal/i/c;->c:Ljava/util/List;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/i/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lme/kiip/internal/i/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lme/kiip/internal/i/c;->a(Z)V

    .line 70
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 136
    iget-object v0, p0, Lme/kiip/internal/i/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 137
    iget-object v0, p0, Lme/kiip/internal/i/c;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/kiip/sdk/Poptart;

    .line 138
    invoke-virtual {v0}, Lme/kiip/sdk/Poptart;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 140
    invoke-virtual {v0}, Lme/kiip/sdk/Poptart;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lme/kiip/internal/i/c;->g()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    invoke-direct {p0, v0}, Lme/kiip/internal/i/c;->c(Lme/kiip/sdk/Poptart;)V

    .line 146
    :cond_0
    invoke-direct {p0, v3}, Lme/kiip/internal/i/c;->a(Z)V

    .line 147
    return-void
.end method

.method public b(Lme/kiip/sdk/Poptart;)V
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lme/kiip/internal/i/c;->c:Ljava/util/List;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/i/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 109
    if-lez v0, :cond_1

    .line 110
    iget-object v2, p0, Lme/kiip/internal/i/c;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 115
    :cond_0
    :goto_0
    monitor-exit v1

    .line 116
    return-void

    .line 112
    :cond_1
    if-nez v0, :cond_0

    .line 113
    iget-object v2, p0, Lme/kiip/internal/i/c;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/kiip/sdk/Poptart;

    invoke-virtual {v0}, Lme/kiip/sdk/Poptart;->dismiss()V

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lme/kiip/internal/i/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 158
    iget-object v0, p0, Lme/kiip/internal/i/c;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/kiip/sdk/Poptart;

    .line 159
    invoke-virtual {v0}, Lme/kiip/sdk/Poptart;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_0

    invoke-direct {p0}, Lme/kiip/internal/i/c;->g()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-direct {p0, v0}, Lme/kiip/internal/i/c;->c(Lme/kiip/sdk/Poptart;)V

    .line 165
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lme/kiip/internal/i/c;->c:Ljava/util/List;

    sget-object v1, Lme/kiip/internal/i/c;->a:Ljava/util/List;

    if-eq v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lme/kiip/internal/i/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 171
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lme/kiip/internal/i/c;->b:Landroid/app/Activity;

    .line 175
    return-void
.end method
