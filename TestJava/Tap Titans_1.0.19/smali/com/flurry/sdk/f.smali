.class public Lcom/flurry/sdk/f;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Lcom/flurry/sdk/af;


# static fields
.field private static final A:Ljava/lang/String;


# instance fields
.field private B:Landroid/media/MediaPlayer$OnCompletionListener;

.field private C:Landroid/media/MediaPlayer$OnErrorListener;

.field private D:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field b:Landroid/media/MediaPlayer$OnPreparedListener;

.field c:Landroid/view/SurfaceHolder$Callback;

.field private d:Landroid/net/Uri;

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/view/SurfaceHolder;

.field private i:Landroid/media/MediaPlayer;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/flurry/sdk/z;

.field private o:Landroid/media/MediaPlayer$OnCompletionListener;

.field private p:Landroid/media/MediaPlayer$OnPreparedListener;

.field private q:I

.field private r:Landroid/media/MediaPlayer$OnErrorListener;

.field private s:I

.field private t:Z

.field private u:I

.field private v:Landroid/view/ViewGroup;

.field private w:Lcom/flurry/sdk/g;

.field private x:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

.field private y:Landroid/app/ProgressDialog;

.field private z:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/flurry/sdk/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/g;Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/sdk/z;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 57
    iput v1, p0, Lcom/flurry/sdk/f;->f:I

    .line 58
    iput v1, p0, Lcom/flurry/sdk/f;->g:I

    .line 61
    iput-object v0, p0, Lcom/flurry/sdk/f;->h:Landroid/view/SurfaceHolder;

    .line 62
    iput-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/flurry/sdk/f;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 336
    new-instance v0, Lcom/flurry/sdk/f$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/f$1;-><init>(Lcom/flurry/sdk/f;)V

    iput-object v0, p0, Lcom/flurry/sdk/f;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 346
    new-instance v0, Lcom/flurry/sdk/f$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/f$2;-><init>(Lcom/flurry/sdk/f;)V

    iput-object v0, p0, Lcom/flurry/sdk/f;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 409
    new-instance v0, Lcom/flurry/sdk/f$3;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/f$3;-><init>(Lcom/flurry/sdk/f;)V

    iput-object v0, p0, Lcom/flurry/sdk/f;->B:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 430
    new-instance v0, Lcom/flurry/sdk/f$4;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/f$4;-><init>(Lcom/flurry/sdk/f;)V

    iput-object v0, p0, Lcom/flurry/sdk/f;->C:Landroid/media/MediaPlayer$OnErrorListener;

    .line 488
    new-instance v0, Lcom/flurry/sdk/f$5;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/f$5;-><init>(Lcom/flurry/sdk/f;)V

    iput-object v0, p0, Lcom/flurry/sdk/f;->D:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 524
    new-instance v0, Lcom/flurry/sdk/f$6;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/f$6;-><init>(Lcom/flurry/sdk/f;)V

    iput-object v0, p0, Lcom/flurry/sdk/f;->c:Landroid/view/SurfaceHolder$Callback;

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/f;->a(Landroid/content/Context;Lcom/flurry/sdk/g;Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/sdk/z;)V

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/f;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/flurry/sdk/f;->j:I

    return v0
.end method

.method static synthetic a(Lcom/flurry/sdk/f;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/flurry/sdk/f;->j:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/f;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/flurry/sdk/f;->h:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/flurry/sdk/g;Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/sdk/z;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 168
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 170
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 174
    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iput-object v0, p0, Lcom/flurry/sdk/f;->v:Landroid/view/ViewGroup;

    .line 178
    iput v4, p0, Lcom/flurry/sdk/f;->j:I

    .line 179
    iput v4, p0, Lcom/flurry/sdk/f;->k:I

    .line 180
    invoke-virtual {p0}, Lcom/flurry/sdk/f;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/f;->c:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 181
    invoke-virtual {p0}, Lcom/flurry/sdk/f;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 182
    invoke-virtual {p0, v5}, Lcom/flurry/sdk/f;->setFocusable(Z)V

    .line 183
    invoke-virtual {p0, v5}, Lcom/flurry/sdk/f;->setFocusableInTouchMode(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/flurry/sdk/f;->requestFocus()Z

    .line 185
    iput v4, p0, Lcom/flurry/sdk/f;->f:I

    .line 186
    iput v4, p0, Lcom/flurry/sdk/f;->g:I

    .line 187
    iput-object p2, p0, Lcom/flurry/sdk/f;->w:Lcom/flurry/sdk/g;

    .line 188
    iput-object p3, p0, Lcom/flurry/sdk/f;->x:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    .line 189
    iput-object p4, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    .line 190
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/z;->setAdUnityView(Lcom/flurry/sdk/g;)V

    .line 191
    return-void
.end method

.method private a(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 247
    iget-object v0, p0, Lcom/flurry/sdk/f;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/f;->h:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0}, Lcom/flurry/sdk/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 260
    invoke-direct {p0, v5}, Lcom/flurry/sdk/f;->b(Z)V

    .line 262
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/f;->a()V

    .line 263
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    .line 264
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/flurry/sdk/f;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 265
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/flurry/sdk/f;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 266
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/f;->e:I

    .line 267
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/flurry/sdk/f;->B:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 268
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/flurry/sdk/f;->C:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 269
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/flurry/sdk/f;->D:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 270
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/f;->q:I

    .line 275
    invoke-direct {p0}, Lcom/flurry/sdk/f;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/flurry/sdk/f;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/f;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 283
    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/flurry/sdk/f;->h:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 287
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 288
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 291
    const/4 v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/f;->f:I

    .line 292
    invoke-direct {p0}, Lcom/flurry/sdk/f;->i()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    sget-object v1, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/f;->d:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    iput v4, p0, Lcom/flurry/sdk/f;->f:I

    .line 297
    iput v4, p0, Lcom/flurry/sdk/f;->g:I

    .line 298
    iget-object v0, p0, Lcom/flurry/sdk/f;->C:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 278
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/flurry/sdk/f;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 280
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 300
    :catch_1
    move-exception v0

    .line 301
    sget-object v1, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/f;->d:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    iput v4, p0, Lcom/flurry/sdk/f;->f:I

    .line 303
    iput v4, p0, Lcom/flurry/sdk/f;->g:I

    .line 304
    iget-object v0, p0, Lcom/flurry/sdk/f;->C:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/f;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/flurry/sdk/f;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/f;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/flurry/sdk/f;->k:I

    return v0
.end method

.method static synthetic b(Lcom/flurry/sdk/f;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/flurry/sdk/f;->k:I

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/f;Z)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/flurry/sdk/f;->a(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 596
    iget-object v0, p0, Lcom/flurry/sdk/f;->w:Lcom/flurry/sdk/g;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/flurry/sdk/f;->w:Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/f;->w:Lcom/flurry/sdk/g;

    invoke-virtual {v1}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->c(Ljava/lang/String;)Lcom/flurry/sdk/am;

    move-result-object v0

    .line 600
    invoke-virtual {p0}, Lcom/flurry/sdk/f;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/am;->a(I)V

    .line 602
    :cond_0
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    const-string v2, "media player has been released"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/z;->setIsMediaPlayerReleased(Z)V

    .line 605
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    invoke-virtual {v0, v4}, Lcom/flurry/sdk/z;->setMediaPlayer(Lcom/flurry/sdk/f;)V

    .line 606
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 607
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 608
    iput-object v4, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    .line 609
    iput v3, p0, Lcom/flurry/sdk/f;->f:I

    .line 610
    if-eqz p1, :cond_1

    .line 611
    iput v3, p0, Lcom/flurry/sdk/f;->g:I

    .line 614
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/f;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/flurry/sdk/f;->f:I

    return p1
.end method

.method static synthetic c(Lcom/flurry/sdk/f;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/sdk/f;->p:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/f;Z)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/flurry/sdk/f;->b(Z)V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/f;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/flurry/sdk/f;->g:I

    return p1
.end method

.method static synthetic d(Lcom/flurry/sdk/f;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic e(Lcom/flurry/sdk/f;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/flurry/sdk/f;->q:I

    return p1
.end method

.method static synthetic e(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/z;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    return-object v0
.end method

.method static synthetic f(Lcom/flurry/sdk/f;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/flurry/sdk/f;->s:I

    return v0
.end method

.method static synthetic f(Lcom/flurry/sdk/f;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/flurry/sdk/f;->l:I

    return p1
.end method

.method static synthetic g(Lcom/flurry/sdk/f;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/flurry/sdk/f;->m:I

    return p1
.end method

.method static synthetic g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/sdk/f;->w:Lcom/flurry/sdk/g;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/flurry/sdk/f;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/flurry/sdk/f;->j()V

    return-void
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/flurry/sdk/f;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 317
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/flurry/sdk/f;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/sdk/f;->o:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/z;->setMediaPlayer(Lcom/flurry/sdk/f;)V

    .line 331
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    invoke-direct {p0}, Lcom/flurry/sdk/f;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/z;->setEnabled(Z)V

    .line 332
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/z;->setIsMediaPlayerReleased(Z)V

    .line 334
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/flurry/sdk/f;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/sdk/f;->r:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->getAutoPlay()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/f;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    invoke-virtual {v1}, Lcom/flurry/sdk/z;->getOffsetStartTime()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/f;->start()V

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/z;->a(I)V

    .line 407
    return-void
.end method

.method static synthetic k(Lcom/flurry/sdk/f;)Lcom/flurry/android/FlurryFullscreenTakeoverActivity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/sdk/f;->x:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    return-object v0
.end method

.method private k()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 582
    invoke-virtual {p0}, Lcom/flurry/sdk/f;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 583
    if-eqz v0, :cond_1

    .line 584
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    .line 585
    iget-object v2, p0, Lcom/flurry/sdk/f;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 586
    const/4 v3, 0x4

    sget-object v4, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsFinishing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IsAdClosed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 587
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 589
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 587
    goto :goto_0

    :cond_1
    move v0, v1

    .line 589
    goto :goto_0
.end method

.method static synthetic l(Lcom/flurry/sdk/f;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/flurry/sdk/f;->g:I

    return v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->h()V

    .line 677
    :goto_0
    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->e()V

    goto :goto_0
.end method

.method static synthetic m(Lcom/flurry/sdk/f;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/flurry/sdk/f;->f:I

    return v0
.end method

.method private m()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 810
    iget-object v1, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/flurry/sdk/f;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/flurry/sdk/f;->f:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/flurry/sdk/f;->f:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic n(Lcom/flurry/sdk/f;)Z
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/flurry/sdk/f;->k()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lcom/flurry/sdk/f;->y:Landroid/app/ProgressDialog;

    if-nez v0, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/flurry/sdk/f;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_1

    .line 197
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/flurry/sdk/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/f;->y:Landroid/app/ProgressDialog;

    .line 198
    iget-object v0, p0, Lcom/flurry/sdk/f;->y:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 199
    iget-object v0, p0, Lcom/flurry/sdk/f;->y:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 200
    iget-object v0, p0, Lcom/flurry/sdk/f;->y:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 201
    iget-object v0, p0, Lcom/flurry/sdk/f;->y:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 202
    iget-object v0, p0, Lcom/flurry/sdk/f;->y:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    const-string v2, "Context is null, cannot create progress dialog."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/f;->y:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/flurry/sdk/f;->y:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;I)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/flurry/sdk/f;->d:Landroid/net/Uri;

    .line 221
    iput p2, p0, Lcom/flurry/sdk/f;->s:I

    .line 223
    invoke-virtual {p0}, Lcom/flurry/sdk/f;->requestLayout()V

    .line 224
    invoke-virtual {p0}, Lcom/flurry/sdk/f;->invalidate()V

    .line 225
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/flurry/sdk/f;->y:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/f;->y:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/flurry/sdk/f;->y:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/f;->y:Landroid/app/ProgressDialog;

    .line 216
    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 228
    iget-object v0, p0, Lcom/flurry/sdk/f;->w:Lcom/flurry/sdk/g;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/flurry/sdk/f;->w:Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/f;->w:Lcom/flurry/sdk/g;

    invoke-virtual {v1}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->c(Ljava/lang/String;)Lcom/flurry/sdk/am;

    move-result-object v0

    .line 232
    invoke-virtual {p0}, Lcom/flurry/sdk/f;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/am;->a(I)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 236
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 237
    iput-object v3, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    .line 238
    iput v2, p0, Lcom/flurry/sdk/f;->f:I

    .line 239
    iput v2, p0, Lcom/flurry/sdk/f;->g:I

    .line 240
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->d()V

    .line 241
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/z;->setIsMediaPlayerReleased(Z)V

    .line 242
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    invoke-virtual {v0, v3}, Lcom/flurry/sdk/z;->setMediaPlayer(Lcom/flurry/sdk/f;)V

    .line 244
    :cond_1
    return-void
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/flurry/sdk/f;->t:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 835
    const/4 v0, 0x0

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 842
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x4

    .line 719
    sget-object v0, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    const-string v1, "HERE IN SUSPEND BEGIN"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 721
    sget-object v0, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video position suspend is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 723
    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/f;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    invoke-virtual {p0}, Lcom/flurry/sdk/f;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/f;->s:I

    .line 725
    iget v0, p0, Lcom/flurry/sdk/f;->f:I

    iput v0, p0, Lcom/flurry/sdk/f;->u:I

    .line 726
    iput v4, p0, Lcom/flurry/sdk/f;->f:I

    .line 727
    iput v4, p0, Lcom/flurry/sdk/f;->g:I

    .line 728
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    const-string v2, "able to suspend video."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 733
    :cond_1
    return-void
.end method

.method public e()V
    .locals 5

    .prologue
    const/4 v3, 0x6

    const/4 v4, 0x3

    .line 737
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    const-string v2, "HERE IN resume BEGIN"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 740
    sget-object v0, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video position resume is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSeekWhenPrepared "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/flurry/sdk/f;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/f;->h:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/flurry/sdk/f;->f:I

    if-ne v0, v3, :cond_2

    .line 743
    const/4 v0, 0x7

    iput v0, p0, Lcom/flurry/sdk/f;->g:I

    .line 762
    :cond_1
    :goto_0
    return-void

    .line 746
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/flurry/sdk/f;->f:I

    if-ne v0, v3, :cond_3

    .line 748
    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/f;->j()V

    .line 749
    iget v0, p0, Lcom/flurry/sdk/f;->u:I

    iput v0, p0, Lcom/flurry/sdk/f;->f:I

    .line 750
    iget v0, p0, Lcom/flurry/sdk/f;->u:I

    iput v0, p0, Lcom/flurry/sdk/f;->g:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :cond_3
    :goto_1
    iget v0, p0, Lcom/flurry/sdk/f;->f:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/flurry/sdk/f;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 756
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/flurry/sdk/f;->a(Z)V

    goto :goto_0

    .line 751
    :catch_0
    move-exception v0

    .line 752
    sget-object v1, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 759
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->getMoreInfoClicked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->i()V

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/flurry/sdk/f;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 858
    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 849
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 804
    iget v0, p0, Lcom/flurry/sdk/f;->q:I

    .line 806
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 778
    invoke-direct {p0}, Lcom/flurry/sdk/f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 781
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 766
    invoke-direct {p0}, Lcom/flurry/sdk/f;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    iget v0, p0, Lcom/flurry/sdk/f;->e:I

    if-lez v0, :cond_0

    .line 768
    iget v0, p0, Lcom/flurry/sdk/f;->e:I

    .line 774
    :goto_0
    return v0

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/f;->e:I

    .line 771
    iget v0, p0, Lcom/flurry/sdk/f;->e:I

    goto :goto_0

    .line 773
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/f;->e:I

    .line 774
    iget v0, p0, Lcom/flurry/sdk/f;->e:I

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 799
    invoke-direct {p0}, Lcom/flurry/sdk/f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 819
    const/4 v1, 0x3

    const-string v2, "listeners"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onkey,keycode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 820
    iget-object v1, p0, Lcom/flurry/sdk/f;->y:Landroid/app/ProgressDialog;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 822
    iget-object v1, p0, Lcom/flurry/sdk/f;->w:Lcom/flurry/sdk/g;

    if-eqz v1, :cond_0

    .line 823
    iget-object v1, p0, Lcom/flurry/sdk/f;->w:Lcom/flurry/sdk/g;

    invoke-virtual {v1}, Lcom/flurry/sdk/g;->a()V

    .line 825
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 828
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 657
    if-eq p1, v2, :cond_2

    const/16 v0, 0x52

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    .line 660
    :goto_0
    invoke-direct {p0}, Lcom/flurry/sdk/f;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    if-eqz v0, :cond_1

    .line 661
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_3

    .line 662
    :cond_0
    sget-object v0, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    const-string v1, "Volume controls hit"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 668
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 657
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 664
    :cond_3
    invoke-direct {p0}, Lcom/flurry/sdk/f;->l()V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 111
    sget-object v0, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    const-string v1, "onMeasure"

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    iget v0, p0, Lcom/flurry/sdk/f;->j:I

    invoke-static {v0, p1}, Lcom/flurry/sdk/f;->getDefaultSize(II)I

    move-result v1

    .line 113
    iget v0, p0, Lcom/flurry/sdk/f;->k:I

    invoke-static {v0, p2}, Lcom/flurry/sdk/f;->getDefaultSize(II)I

    move-result v0

    .line 114
    iget v2, p0, Lcom/flurry/sdk/f;->j:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/flurry/sdk/f;->k:I

    if-lez v2, :cond_0

    .line 115
    iget v2, p0, Lcom/flurry/sdk/f;->j:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/flurry/sdk/f;->k:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 116
    sget-object v0, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    const-string v2, "image too tall, correcting"

    invoke-static {v5, v0, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    iget v0, p0, Lcom/flurry/sdk/f;->k:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/flurry/sdk/f;->j:I

    div-int/2addr v0, v2

    .line 126
    :cond_0
    :goto_0
    sget-object v2, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/f;->setMeasuredDimension(II)V

    .line 130
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->b()V

    .line 131
    return-void

    .line 118
    :cond_1
    iget v2, p0, Lcom/flurry/sdk/f;->j:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/flurry/sdk/f;->k:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_2

    .line 119
    sget-object v1, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    const-string v2, "image too wide, correcting"

    invoke-static {v5, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    iget v1, p0, Lcom/flurry/sdk/f;->j:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/flurry/sdk/f;->k:I

    div-int/2addr v1, v2

    goto :goto_0

    .line 122
    :cond_2
    sget-object v2, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aspect ratio is correct: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/flurry/sdk/f;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/flurry/sdk/f;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/flurry/sdk/f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    if-eqz v0, :cond_0

    .line 619
    invoke-direct {p0}, Lcom/flurry/sdk/f;->l()V

    .line 621
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/flurry/sdk/f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    if-eqz v0, :cond_0

    .line 627
    invoke-direct {p0}, Lcom/flurry/sdk/f;->l()V

    .line 629
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 703
    sget-object v0, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    const-string v1, "HERE IN PAUSE BEGIN"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 705
    sget-object v0, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video position pause is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 707
    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/f;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 710
    iput v3, p0, Lcom/flurry/sdk/f;->f:I

    .line 713
    :cond_1
    iput v3, p0, Lcom/flurry/sdk/f;->g:I

    .line 715
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/flurry/sdk/f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 787
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/f;->s:I

    .line 791
    :goto_0
    return-void

    .line 789
    :cond_0
    iput p1, p0, Lcom/flurry/sdk/f;->s:I

    goto :goto_0
.end method

.method public setCloseConfirmDialogClicked(Z)V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/z;->setmCloseConfirmDialogClicked(Z)V

    .line 700
    return-void
.end method

.method public setMediaController(Lcom/flurry/sdk/z;)V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->h()V

    .line 324
    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    .line 325
    invoke-direct {p0}, Lcom/flurry/sdk/f;->i()V

    .line 326
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/flurry/sdk/f;->o:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 511
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/flurry/sdk/f;->r:Landroid/media/MediaPlayer$OnErrorListener;

    .line 522
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/flurry/sdk/f;->p:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 501
    return-void
.end method

.method public setVideoState(Lcom/flurry/sdk/am;)V
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/z;->setVideoState(Lcom/flurry/sdk/am;)V

    .line 864
    :cond_0
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 680
    sget-object v0, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    const-string v1, "HERE IN START BEGIN"

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 682
    sget-object v0, Lcom/flurry/sdk/f;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video position start is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/f;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/flurry/sdk/f;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 686
    iput v3, p0, Lcom/flurry/sdk/f;->f:I

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 692
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->a()V

    .line 693
    iget-object v0, p0, Lcom/flurry/sdk/f;->n:Lcom/flurry/sdk/z;

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->e()V

    .line 695
    :cond_2
    iput v3, p0, Lcom/flurry/sdk/f;->g:I

    .line 696
    return-void
.end method
