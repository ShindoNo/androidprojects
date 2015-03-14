.class Lme/kiip/internal/l/a$a;
.super Landroid/webkit/WebView;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kiip/internal/l/a$a$b;,
        Lme/kiip/internal/l/a$a$c;,
        Lme/kiip/internal/l/a$a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:Lme/kiip/internal/i/e;

.field private c:Z

.field private d:Z

.field private e:Lme/kiip/internal/l/a$a$a;

.field private f:Lme/kiip/internal/l/a$a$c;

.field private g:Lme/kiip/internal/l/a$a$b;

.field private h:Lme/kiip/sdk/Kiip$OnContentListener;

.field private i:Lme/kiip/sdk/Modal$VideoListener;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/widget/VideoView;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/VideoView;Landroid/widget/ImageButton;)V
    .locals 1

    .prologue
    .line 1097
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 846
    new-instance v0, Lme/kiip/internal/l/a$a$1;

    invoke-direct {v0, p0}, Lme/kiip/internal/l/a$a$1;-><init>(Lme/kiip/internal/l/a$a;)V

    iput-object v0, p0, Lme/kiip/internal/l/a$a;->a:Ljava/lang/Runnable;

    .line 872
    new-instance v0, Lme/kiip/internal/l/a$a$2;

    invoke-direct {v0, p0}, Lme/kiip/internal/l/a$a$2;-><init>(Lme/kiip/internal/l/a$a;)V

    iput-object v0, p0, Lme/kiip/internal/l/a$a;->m:Landroid/webkit/WebViewClient;

    .line 1098
    invoke-direct {p0, p2, p3}, Lme/kiip/internal/l/a$a;->a(Landroid/widget/VideoView;Landroid/widget/ImageButton;)V

    .line 1099
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/l/a$a;Lme/kiip/internal/i/e;)Lme/kiip/internal/i/e;
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Lme/kiip/internal/l/a$a;->b:Lme/kiip/internal/i/e;

    return-object p1
.end method

.method static synthetic a(Lme/kiip/internal/l/a$a;)Lme/kiip/internal/l/a$a$a;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lme/kiip/internal/l/a$a;->e:Lme/kiip/internal/l/a$a$a;

    return-object v0
.end method

.method private a(Landroid/widget/VideoView;Landroid/widget/ImageButton;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1103
    invoke-virtual {p0}, Lme/kiip/internal/l/a$a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1104
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1105
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1106
    invoke-static {v0, v2}, Lme/kiip/internal/p/b;->c(Landroid/webkit/WebSettings;Z)V

    .line 1108
    invoke-static {v0, v2}, Lme/kiip/internal/p/b;->a(Landroid/webkit/WebSettings;Z)V

    .line 1109
    invoke-static {v0, v2}, Lme/kiip/internal/p/b;->d(Landroid/webkit/WebSettings;Z)V

    .line 1110
    invoke-static {v0, v2}, Lme/kiip/internal/p/b;->b(Landroid/webkit/WebSettings;Z)V

    .line 1113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    .line 1114
    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Lme/kiip/internal/p/c;->a(Landroid/webkit/WebView;ILandroid/graphics/Paint;)V

    .line 1116
    :cond_0
    invoke-virtual {p0, v3}, Lme/kiip/internal/l/a$a;->setBackgroundColor(I)V

    .line 1117
    invoke-virtual {p0, v3}, Lme/kiip/internal/l/a$a;->setScrollBarStyle(I)V

    .line 1120
    new-instance v0, Lme/kiip/internal/o/b;

    invoke-direct {v0}, Lme/kiip/internal/o/b;-><init>()V

    .line 1121
    const-string v1, ""

    invoke-virtual {v0, v1}, Lme/kiip/internal/o/b;->a(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p0, v0}, Lme/kiip/internal/l/a$a;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1125
    iget-object v0, p0, Lme/kiip/internal/l/a$a;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lme/kiip/internal/l/a$a;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1127
    iput-object p1, p0, Lme/kiip/internal/l/a$a;->k:Landroid/widget/VideoView;

    .line 1128
    iput-object p2, p0, Lme/kiip/internal/l/a$a;->l:Landroid/widget/ImageButton;

    .line 1131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/kiip/internal/l/a$a;->j:Ljava/util/ArrayList;

    .line 1132
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/l/a$a;Z)Z
    .locals 0

    .prologue
    .line 842
    iput-boolean p1, p0, Lme/kiip/internal/l/a$a;->d:Z

    return p1
.end method

.method static synthetic b(Lme/kiip/internal/l/a$a;)Lme/kiip/internal/i/e;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lme/kiip/internal/l/a$a;->b:Lme/kiip/internal/i/e;

    return-object v0
.end method

.method static synthetic b(Lme/kiip/internal/l/a$a;Z)Z
    .locals 0

    .prologue
    .line 842
    iput-boolean p1, p0, Lme/kiip/internal/l/a$a;->c:Z

    return p1
.end method

.method static synthetic c(Lme/kiip/internal/l/a$a;)Z
    .locals 1

    .prologue
    .line 842
    iget-boolean v0, p0, Lme/kiip/internal/l/a$a;->d:Z

    return v0
.end method

.method static synthetic d(Lme/kiip/internal/l/a$a;)Z
    .locals 1

    .prologue
    .line 842
    iget-boolean v0, p0, Lme/kiip/internal/l/a$a;->c:Z

    return v0
.end method

.method static synthetic e(Lme/kiip/internal/l/a$a;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lme/kiip/internal/l/a$a;->a:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lme/kiip/internal/l/a$a;)Lme/kiip/internal/l/a$a$c;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lme/kiip/internal/l/a$a;->f:Lme/kiip/internal/l/a$a$c;

    return-object v0
.end method

.method static synthetic g(Lme/kiip/internal/l/a$a;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lme/kiip/internal/l/a$a;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lme/kiip/internal/l/a$a;)Lme/kiip/sdk/Kiip$OnContentListener;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lme/kiip/internal/l/a$a;->h:Lme/kiip/sdk/Kiip$OnContentListener;

    return-object v0
.end method

.method static synthetic i(Lme/kiip/internal/l/a$a;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lme/kiip/internal/l/a$a;->k:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic j(Lme/kiip/internal/l/a$a;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lme/kiip/internal/l/a$a;->l:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic k(Lme/kiip/internal/l/a$a;)Lme/kiip/sdk/Modal$VideoListener;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lme/kiip/internal/l/a$a;->i:Lme/kiip/sdk/Modal$VideoListener;

    return-object v0
.end method

.method static synthetic l(Lme/kiip/internal/l/a$a;)Lme/kiip/internal/l/a$a$b;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lme/kiip/internal/l/a$a;->g:Lme/kiip/internal/l/a$a$b;

    return-object v0
.end method


# virtual methods
.method public a()Lme/kiip/sdk/Modal$VideoListener;
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lme/kiip/internal/l/a$a;->i:Lme/kiip/sdk/Modal$VideoListener;

    return-object v0
.end method

.method public a(Lme/kiip/internal/l/a$a$a;)V
    .locals 0

    .prologue
    .line 1139
    iput-object p1, p0, Lme/kiip/internal/l/a$a;->e:Lme/kiip/internal/l/a$a$a;

    .line 1140
    return-void
.end method

.method public a(Lme/kiip/internal/l/a$a$b;)V
    .locals 0

    .prologue
    .line 1135
    iput-object p1, p0, Lme/kiip/internal/l/a$a;->g:Lme/kiip/internal/l/a$a$b;

    .line 1136
    return-void
.end method

.method public a(Lme/kiip/internal/l/a$a$c;)V
    .locals 0

    .prologue
    .line 1143
    iput-object p1, p0, Lme/kiip/internal/l/a$a;->f:Lme/kiip/internal/l/a$a$c;

    .line 1144
    return-void
.end method

.method public a(Lme/kiip/sdk/Kiip$OnContentListener;)V
    .locals 0

    .prologue
    .line 1147
    iput-object p1, p0, Lme/kiip/internal/l/a$a;->h:Lme/kiip/sdk/Kiip$OnContentListener;

    .line 1148
    return-void
.end method

.method public a(Lme/kiip/sdk/Modal$VideoListener;)V
    .locals 0

    .prologue
    .line 1151
    iput-object p1, p0, Lme/kiip/internal/l/a$a;->i:Lme/kiip/sdk/Modal$VideoListener;

    .line 1152
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1160
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 1161
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1165
    const/4 v0, 0x0

    iput-object v0, p0, Lme/kiip/internal/l/a$a;->b:Lme/kiip/internal/i/e;

    .line 1166
    iput-boolean v1, p0, Lme/kiip/internal/l/a$a;->c:Z

    .line 1167
    iput-boolean v1, p0, Lme/kiip/internal/l/a$a;->d:Z

    .line 1168
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 1169
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lme/kiip/internal/l/a$a;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lme/kiip/internal/l/a$a;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1175
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V

    .line 1176
    return-void
.end method
