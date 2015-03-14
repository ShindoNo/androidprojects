.class Lme/kiip/internal/l/a$a$2;
.super Lme/kiip/internal/o/a;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/l/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/l/a$a;


# direct methods
.method constructor <init>(Lme/kiip/internal/l/a$a;)V
    .locals 0

    .prologue
    .line 872
    iput-object p1, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-direct {p0}, Lme/kiip/internal/o/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 882
    invoke-super {p0, p1, p2}, Lme/kiip/internal/o/a;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v0}, Lme/kiip/internal/l/a$a;->b(Lme/kiip/internal/l/a$a;)Lme/kiip/internal/i/e;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v0}, Lme/kiip/internal/l/a$a;->c(Lme/kiip/internal/l/a$a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 885
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lme/kiip/internal/l/a$a;->a(Lme/kiip/internal/l/a$a;Z)Z

    .line 887
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v0}, Lme/kiip/internal/l/a$a;->d(Lme/kiip/internal/l/a$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    iget-object v1, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v1}, Lme/kiip/internal/l/a$a;->e(Lme/kiip/internal/l/a$a;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lme/kiip/internal/l/a$a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 891
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/kiip/internal/l/a$a;->b(Lme/kiip/internal/l/a$a;Z)Z

    .line 893
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 876
    invoke-super {p0, p1, p2, p3}, Lme/kiip/internal/o/a;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 878
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 897
    invoke-super {p0, p1, p2, p3, p4}, Lme/kiip/internal/o/a;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 899
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    new-instance v1, Lme/kiip/internal/i/e;

    invoke-direct {v1, p2, p3, p4}, Lme/kiip/internal/i/e;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lme/kiip/internal/l/a$a;->a(Lme/kiip/internal/l/a$a;Lme/kiip/internal/i/e;)Lme/kiip/internal/i/e;

    .line 900
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v0}, Lme/kiip/internal/l/a$a;->f(Lme/kiip/internal/l/a$a;)Lme/kiip/internal/l/a$a$c;

    move-result-object v0

    iget-object v1, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v1}, Lme/kiip/internal/l/a$a;->b(Lme/kiip/internal/l/a$a;)Lme/kiip/internal/i/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lme/kiip/internal/l/a$a$c;->a(Lme/kiip/internal/i/e;)V

    .line 901
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 906
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 907
    const-string v0, "kiip"

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 911
    const-string v0, "ready"

    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lme/kiip/internal/l/a$a;->b(Lme/kiip/internal/l/a$a;Z)Z

    .line 913
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    iget-object v2, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v2}, Lme/kiip/internal/l/a$a;->e(Lme/kiip/internal/l/a$a;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lme/kiip/internal/l/a$a;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 914
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v0}, Lme/kiip/internal/l/a$a;->a(Lme/kiip/internal/l/a$a;)Lme/kiip/internal/l/a$a$a;

    move-result-object v0

    invoke-interface {v0}, Lme/kiip/internal/l/a$a$a;->a()V

    .line 918
    :cond_0
    const-string v0, "share"

    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    if-eqz v0, :cond_2

    .line 922
    :try_start_1
    const-string v0, "subject"

    invoke-virtual {v9, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 923
    :try_start_2
    const-string v2, "text"

    invoke-virtual {v9, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v1

    .line 928
    :goto_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 929
    :cond_1
    :try_start_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 930
    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 931
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 932
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 933
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 934
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-virtual {v0}, Lme/kiip/internal/l/a$a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Share via"

    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 940
    :cond_2
    const-string v0, "content"

    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 943
    const-string v0, "content"

    invoke-virtual {v9, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    .line 945
    :try_start_4
    const-string v0, "quantity"

    invoke-virtual {v9, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v3

    .line 949
    :goto_1
    :try_start_5
    const-string v0, "transaction_id"

    invoke-virtual {v9, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 950
    const-string v0, "signature"

    invoke-virtual {v9, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 951
    if-eqz v2, :cond_3

    if-lez v3, :cond_3

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    iget-object v0, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v0}, Lme/kiip/internal/l/a$a;->g(Lme/kiip/internal/l/a$a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 952
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v0}, Lme/kiip/internal/l/a$a;->h(Lme/kiip/internal/l/a$a;)Lme/kiip/sdk/Kiip$OnContentListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface/range {v0 .. v5}, Lme/kiip/sdk/Kiip$OnContentListener;->onContent(Lme/kiip/sdk/Kiip;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 953
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v0}, Lme/kiip/internal/l/a$a;->g(Lme/kiip/internal/l/a$a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    :cond_3
    const-string v0, "video"

    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 962
    const-string v0, "url"

    invoke-virtual {v9, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 963
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 964
    iget-object v1, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v1}, Lme/kiip/internal/l/a$a;->i(Lme/kiip/internal/l/a$a;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 967
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 970
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-virtual {v2}, Lme/kiip/internal/l/a$a;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x101007a

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 971
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 972
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 973
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 974
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 977
    iget-object v2, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v2}, Lme/kiip/internal/l/a$a;->j(Lme/kiip/internal/l/a$a;)Landroid/widget/ImageButton;

    move-result-object v2

    new-instance v3, Lme/kiip/internal/l/a$a$2$1;

    invoke-direct {v3, p0, p1, v0}, Lme/kiip/internal/l/a$a$2$1;-><init>(Lme/kiip/internal/l/a$a$2;Landroid/webkit/WebView;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1004
    iget-object v2, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v2}, Lme/kiip/internal/l/a$a;->i(Lme/kiip/internal/l/a$a;)Landroid/widget/VideoView;

    move-result-object v2

    new-instance v3, Lme/kiip/internal/l/a$a$2$2;

    invoke-direct {v3, p0, p1, v0}, Lme/kiip/internal/l/a$a$2$2;-><init>(Lme/kiip/internal/l/a$a$2;Landroid/webkit/WebView;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1028
    iget-object v2, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v2}, Lme/kiip/internal/l/a$a;->i(Lme/kiip/internal/l/a$a;)Landroid/widget/VideoView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 1029
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1030
    iget-object v2, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v2}, Lme/kiip/internal/l/a$a;->i(Lme/kiip/internal/l/a$a;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->requestFocus()Z

    .line 1031
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1033
    iget-object v2, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v2}, Lme/kiip/internal/l/a$a;->i(Lme/kiip/internal/l/a$a;)Landroid/widget/VideoView;

    move-result-object v2

    new-instance v3, Lme/kiip/internal/l/a$a$2$3;

    invoke-direct {v3, p0, v1, v0}, Lme/kiip/internal/l/a$a$2$3;-><init>(Lme/kiip/internal/l/a$a$2;Landroid/widget/ProgressBar;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1050
    :cond_4
    const-string v0, "did_dismiss"

    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1051
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v0}, Lme/kiip/internal/l/a$a;->a(Lme/kiip/internal/l/a$a;)Lme/kiip/internal/l/a$a$a;

    move-result-object v0

    invoke-interface {v0}, Lme/kiip/internal/l/a$a$a;->c()V

    .line 1058
    const-string v0, "content"

    invoke-virtual {v9, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v2

    .line 1060
    :try_start_6
    const-string v0, "quantity"

    invoke-virtual {v9, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3

    move-result v3

    .line 1064
    :goto_2
    :try_start_7
    const-string v0, "transaction_id"

    invoke-virtual {v9, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1065
    const-string v0, "signature"

    invoke-virtual {v9, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1066
    if-eqz v2, :cond_5

    if-lez v3, :cond_5

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    .line 1067
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v0}, Lme/kiip/internal/l/a$a;->h(Lme/kiip/internal/l/a$a;)Lme/kiip/sdk/Kiip$OnContentListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface/range {v0 .. v5}, Lme/kiip/sdk/Kiip$OnContentListener;->onContent(Lme/kiip/sdk/Kiip;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1072
    :cond_5
    const-string v0, "url"

    invoke-virtual {v9, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1073
    if-nez v0, :cond_6

    const-string v0, "native_url"

    invoke-virtual {v9, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v0

    .line 1074
    :cond_6
    if-eqz v0, :cond_7

    .line 1076
    :try_start_8
    iget-object v1, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v1}, Lme/kiip/internal/l/a$a;->l(Lme/kiip/internal/l/a$a;)Lme/kiip/internal/l/a$a$b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lme/kiip/internal/l/a$a$b;->a(Z)V

    .line 1077
    iget-object v1, p0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-virtual {v1}, Lme/kiip/internal/l/a$a;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_7
    move v0, v7

    .line 1092
    :goto_3
    return v0

    .line 946
    :catch_0
    move-exception v0

    move v3, v8

    .line 947
    goto/16 :goto_1

    .line 1061
    :catch_1
    move-exception v0

    move v3, v8

    .line 1062
    goto :goto_2

    .line 1078
    :catch_2
    move-exception v0

    move v0, v6

    .line 1079
    goto :goto_3

    .line 1088
    :catch_3
    move-exception v0

    :cond_8
    move v0, v6

    .line 1092
    goto :goto_3

    .line 924
    :catch_4
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :catch_5
    move-exception v2

    goto/16 :goto_0
.end method
