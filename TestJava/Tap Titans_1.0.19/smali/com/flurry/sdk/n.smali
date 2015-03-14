.class public final Lcom/flurry/sdk/n;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/n$1;,
        Lcom/flurry/sdk/n$g;,
        Lcom/flurry/sdk/n$a;,
        Lcom/flurry/sdk/n$b;,
        Lcom/flurry/sdk/n$d;,
        Lcom/flurry/sdk/n$e;,
        Lcom/flurry/sdk/n$c;,
        Lcom/flurry/sdk/n$f;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/webkit/WebView;

.field private c:Landroid/webkit/WebViewClient;

.field private d:Landroid/webkit/WebChromeClient;

.field private e:Z

.field private f:Z

.field private g:Landroid/app/ProgressDialog;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private final k:I

.field private final l:I

.field private final m:I

.field private n:Lcom/flurry/sdk/n$f;

.field private o:Lcom/flurry/sdk/n$c;

.field private p:Lcom/flurry/sdk/n$d;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v4, -0x2

    const/4 v3, 0x1

    .line 186
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/n;->a:Ljava/lang/String;

    .line 56
    iput-boolean v3, p0, Lcom/flurry/sdk/n;->f:Z

    .line 63
    iput v2, p0, Lcom/flurry/sdk/n;->k:I

    .line 64
    iput v3, p0, Lcom/flurry/sdk/n;->l:I

    .line 65
    iput v6, p0, Lcom/flurry/sdk/n;->m:I

    .line 188
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    .line 189
    new-instance v0, Lcom/flurry/sdk/n$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/n$b;-><init>(Lcom/flurry/sdk/n;Lcom/flurry/sdk/n$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/n;->c:Landroid/webkit/WebViewClient;

    .line 190
    new-instance v0, Lcom/flurry/sdk/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/n$a;-><init>(Lcom/flurry/sdk/n;Lcom/flurry/sdk/n$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/n;->d:Landroid/webkit/WebChromeClient;

    .line 191
    iput-boolean p3, p0, Lcom/flurry/sdk/n;->f:Z

    .line 193
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 195
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 196
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/sdk/n;->c:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 202
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/sdk/n;->d:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 203
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 205
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/n;->h:Landroid/widget/ImageView;

    .line 206
    iget-object v0, p0, Lcom/flurry/sdk/n;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 207
    iget-object v0, p0, Lcom/flurry/sdk/n;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/flurry/sdk/n;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object v0, p0, Lcom/flurry/sdk/n;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/n;->i:Landroid/widget/ImageView;

    .line 211
    iget-object v0, p0, Lcom/flurry/sdk/n;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 212
    iget-object v0, p0, Lcom/flurry/sdk/n;->i:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/flurry/sdk/n;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v0, p0, Lcom/flurry/sdk/n;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/n;->j:Landroid/widget/ImageView;

    .line 216
    iget-object v0, p0, Lcom/flurry/sdk/n;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 217
    iget-object v0, p0, Lcom/flurry/sdk/n;->j:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/flurry/sdk/n;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    iget-object v0, p0, Lcom/flurry/sdk/n;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 221
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/n;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/n;->addView(Landroid/view/View;)V

    .line 224
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 225
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 226
    iget-object v1, p0, Lcom/flurry/sdk/n;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/n;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 229
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 230
    iget-object v1, p0, Lcom/flurry/sdk/n;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/n;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 233
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 234
    iget-object v1, p0, Lcom/flurry/sdk/n;->j:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/n;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/n;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/flurry/sdk/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/n;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/flurry/sdk/n;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/n;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/n;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/flurry/sdk/n;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/flurry/sdk/n;)Lcom/flurry/sdk/n$f;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/flurry/sdk/n;->n:Lcom/flurry/sdk/n$f;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/n;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/flurry/sdk/n;->q:Z

    return v0
.end method

.method static synthetic e(Lcom/flurry/sdk/n;)Lcom/flurry/sdk/n$d;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/flurry/sdk/n;->p:Lcom/flurry/sdk/n$d;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 314
    iget-object v0, p0, Lcom/flurry/sdk/n;->g:Landroid/app/ProgressDialog;

    if-nez v0, :cond_2

    .line 315
    if-eqz p1, :cond_1

    .line 316
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/n;->g:Landroid/app/ProgressDialog;

    .line 317
    iget-object v0, p0, Lcom/flurry/sdk/n;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 318
    iget-object v0, p0, Lcom/flurry/sdk/n;->g:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/flurry/sdk/n;->g:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 320
    iget-object v0, p0, Lcom/flurry/sdk/n;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 321
    iget-object v0, p0, Lcom/flurry/sdk/n;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/n;->a:Ljava/lang/String;

    const-string v2, "Context is null, cannot create progress dialog."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/n;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/flurry/sdk/n;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/flurry/sdk/n;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/flurry/sdk/n;->f:Z

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/flurry/sdk/n;->e:Z

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/flurry/sdk/n;->d:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0
.end method

.method public d()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/flurry/sdk/n;->e()V

    .line 303
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/n;->removeView(Landroid/view/View;)V

    .line 304
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 305
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    .line 311
    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/flurry/sdk/n;->g:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/n;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/flurry/sdk/n;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/n;->g:Landroid/app/ProgressDialog;

    .line 335
    :cond_0
    return-void
.end method

.method public getBasicWebViewClosingHandler()Lcom/flurry/sdk/n$c;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/flurry/sdk/n;->o:Lcom/flurry/sdk/n$c;

    return-object v0
.end method

.method public getBasicWebViewFullScreenTransitionHandler()Lcom/flurry/sdk/n$d;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/flurry/sdk/n;->p:Lcom/flurry/sdk/n$d;

    return-object v0
.end method

.method public getBasicWebViewUrlLoadingHandler()Lcom/flurry/sdk/n$f;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/flurry/sdk/n;->n:Lcom/flurry/sdk/n$f;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    iget-object v1, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 242
    :cond_0
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 269
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/sdk/n;->o:Lcom/flurry/sdk/n$c;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/flurry/sdk/n;->o:Lcom/flurry/sdk/n$c;

    sget-object v1, Lcom/flurry/sdk/n$e;->c:Lcom/flurry/sdk/n$e;

    invoke-interface {v0, p0, v1}, Lcom/flurry/sdk/n$c;->a(Lcom/flurry/sdk/n;Lcom/flurry/sdk/n$e;)V

    goto :goto_0

    .line 274
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 280
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/flurry/sdk/n;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/n;->o:Lcom/flurry/sdk/n$c;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/flurry/sdk/n;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/flurry/sdk/n;->o:Lcom/flurry/sdk/n$c;

    sget-object v1, Lcom/flurry/sdk/n$e;->c:Lcom/flurry/sdk/n$e;

    invoke-interface {v0, p0, v1}, Lcom/flurry/sdk/n$c;->a(Lcom/flurry/sdk/n;Lcom/flurry/sdk/n$e;)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/n;->o:Lcom/flurry/sdk/n$c;

    sget-object v1, Lcom/flurry/sdk/n$e;->b:Lcom/flurry/sdk/n$e;

    invoke-interface {v0, p0, v1}, Lcom/flurry/sdk/n$c;->a(Lcom/flurry/sdk/n;Lcom/flurry/sdk/n$e;)V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBasicWebViewClosingHandler(Lcom/flurry/sdk/n$c;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/flurry/sdk/n;->o:Lcom/flurry/sdk/n$c;

    .line 82
    return-void
.end method

.method public setBasicWebViewFullScreenTransitionHandler(Lcom/flurry/sdk/n$d;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/flurry/sdk/n;->p:Lcom/flurry/sdk/n$d;

    .line 90
    return-void
.end method

.method public setBasicWebViewUrlLoadingHandler(Lcom/flurry/sdk/n$f;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/flurry/sdk/n;->n:Lcom/flurry/sdk/n$f;

    .line 74
    return-void
.end method
