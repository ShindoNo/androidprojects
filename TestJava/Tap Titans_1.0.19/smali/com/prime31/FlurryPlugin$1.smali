.class Lcom/prime31/FlurryPlugin$1;
.super Ljava/lang/Object;
.source "FlurryPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/FlurryPlugin;->onStartSession(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/FlurryPlugin;

.field private final synthetic val$apiKey:Ljava/lang/String;

.field private final synthetic val$enableTestAdsAndLogging:Z

.field private final synthetic val$initializeAds:Z


# direct methods
.method constructor <init>(Lcom/prime31/FlurryPlugin;Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/prime31/FlurryPlugin$1;->this$0:Lcom/prime31/FlurryPlugin;

    iput-object p2, p0, Lcom/prime31/FlurryPlugin$1;->val$apiKey:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/prime31/FlurryPlugin$1;->val$initializeAds:Z

    iput-boolean p4, p0, Lcom/prime31/FlurryPlugin$1;->val$enableTestAdsAndLogging:Z

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 54
    const-string v0, "Prime31Android"

    const-string v1, "v4.0.0"

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->addOrigin(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->setCaptureUncaughtExceptions(Z)V

    .line 56
    iget-object v0, p0, Lcom/prime31/FlurryPlugin$1;->this$0:Lcom/prime31/FlurryPlugin;

    invoke-virtual {v0}, Lcom/prime31/FlurryPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/prime31/FlurryPlugin$1;->val$apiKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    invoke-static {v2}, Lcom/prime31/FlurryPlugin;->access$0(Z)V

    .line 58
    iget-object v0, p0, Lcom/prime31/FlurryPlugin$1;->val$apiKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/prime31/FlurryPlugin;->access$1(Ljava/lang/String;)V

    .line 60
    iget-boolean v0, p0, Lcom/prime31/FlurryPlugin$1;->val$initializeAds:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/prime31/FlurryPlugin$1;->this$0:Lcom/prime31/FlurryPlugin;

    iget-boolean v1, p0, Lcom/prime31/FlurryPlugin$1;->val$enableTestAdsAndLogging:Z

    # invokes: Lcom/prime31/FlurryPlugin;->initializeAds(Z)V
    invoke-static {v0, v1}, Lcom/prime31/FlurryPlugin;->access$2(Lcom/prime31/FlurryPlugin;Z)V

    .line 65
    :cond_0
    iget-boolean v0, p0, Lcom/prime31/FlurryPlugin$1;->val$enableTestAdsAndLogging:Z

    if-eqz v0, :cond_1

    .line 67
    const-string v0, "Prime31"

    const-string v1, "enabling Flurry verbose log"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->setLogEnabled(Z)V

    .line 69
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->setLogLevel(I)V

    .line 72
    :cond_1
    const-string v0, "Prime31"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Using Flurry SDK version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getReleaseVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method
