.class final Lcom/flurry/android/FlurryFullscreenTakeoverActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/n$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/FlurryFullscreenTakeoverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;


# direct methods
.method private constructor <init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$a;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;)V
    .locals 0

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$a;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/n;Lcom/flurry/sdk/n$e;)V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$a;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0, p2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/sdk/n$e;)Lcom/flurry/sdk/n$e;

    .line 579
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$a;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Lcom/flurry/sdk/n$e;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/n$e;->c:Lcom/flurry/sdk/n$e;

    if-ne v0, v1, :cond_0

    .line 581
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fBasicWebViewClosingHandlerFired:Z

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$a;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    .line 584
    return-void
.end method
