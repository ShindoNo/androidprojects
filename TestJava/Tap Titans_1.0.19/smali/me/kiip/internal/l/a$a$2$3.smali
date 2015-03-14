.class Lme/kiip/internal/l/a$a$2$3;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/l/a$a$2;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ProgressBar;

.field final synthetic b:Landroid/widget/RelativeLayout;

.field final synthetic c:Lme/kiip/internal/l/a$a$2;


# direct methods
.method constructor <init>(Lme/kiip/internal/l/a$a$2;Landroid/widget/ProgressBar;Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 1033
    iput-object p1, p0, Lme/kiip/internal/l/a$a$2$3;->c:Lme/kiip/internal/l/a$a$2;

    iput-object p2, p0, Lme/kiip/internal/l/a$a$2$3;->a:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lme/kiip/internal/l/a$a$2$3;->b:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1036
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2$3;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1039
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2$3;->c:Lme/kiip/internal/l/a$a$2;

    iget-object v0, v0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v0}, Lme/kiip/internal/l/a$a;->k(Lme/kiip/internal/l/a$a;)Lme/kiip/sdk/Modal$VideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2$3;->c:Lme/kiip/internal/l/a$a$2;

    iget-object v0, v0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v0}, Lme/kiip/internal/l/a$a;->k(Lme/kiip/internal/l/a$a;)Lme/kiip/sdk/Modal$VideoListener;

    move-result-object v0

    invoke-interface {v0}, Lme/kiip/sdk/Modal$VideoListener;->onVideoWillPlay()V

    .line 1042
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2$3;->b:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1043
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2$3;->c:Lme/kiip/internal/l/a$a$2;

    iget-object v0, v0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v0}, Lme/kiip/internal/l/a$a;->j(Lme/kiip/internal/l/a$a;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1044
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2$3;->c:Lme/kiip/internal/l/a$a$2;

    iget-object v0, v0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v0}, Lme/kiip/internal/l/a$a;->i(Lme/kiip/internal/l/a$a;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 1045
    return-void
.end method
