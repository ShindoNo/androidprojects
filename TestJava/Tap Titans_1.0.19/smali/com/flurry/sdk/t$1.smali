.class Lcom/flurry/sdk/t$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/as$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/t;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Landroid/content/SharedPreferences;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/flurry/sdk/t;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/t;Ljava/io/File;Ljava/io/File;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/flurry/sdk/t$1;->e:Lcom/flurry/sdk/t;

    iput-object p2, p0, Lcom/flurry/sdk/t$1;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/flurry/sdk/t$1;->b:Ljava/io/File;

    iput-object p4, p0, Lcom/flurry/sdk/t$1;->c:Landroid/content/SharedPreferences;

    iput-object p5, p0, Lcom/flurry/sdk/t$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/as;)V
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 470
    invoke-virtual {p1}, Lcom/flurry/sdk/as;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/t$1;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/flurry/sdk/t$1;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 473
    iget-object v0, p0, Lcom/flurry/sdk/t$1;->a:Ljava/io/File;

    iget-object v1, p0, Lcom/flurry/sdk/t$1;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-static {}, Lcom/flurry/sdk/t;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Media player assets: download successful"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/flurry/sdk/t$1;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 478
    const-string v1, "flurry_last_media_asset_url"

    iget-object v2, p0, Lcom/flurry/sdk/t$1;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 479
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 481
    iget-object v0, p0, Lcom/flurry/sdk/t$1;->e:Lcom/flurry/sdk/t;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;Z)Z

    .line 499
    :goto_0
    return-void

    .line 483
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/t;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Media player assets: couldn\'t rename tmp file (giving up)"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/t;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Media player assets: download failed"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/es;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/flurry/sdk/t$1;->e:Lcom/flurry/sdk/t;

    invoke-static {v0}, Lcom/flurry/sdk/t;->e(Lcom/flurry/sdk/t;)I

    .line 492
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/t$1$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/t$1$1;-><init>(Lcom/flurry/sdk/t$1;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/do;->a(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
