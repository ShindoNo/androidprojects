.class Lcom/prime31/FlurryPlugin$8;
.super Ljava/lang/Object;
.source "FlurryPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/FlurryPlugin;->initializeAds(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/FlurryPlugin;

.field private final synthetic val$enableTestAds:Z


# direct methods
.method constructor <init>(Lcom/prime31/FlurryPlugin;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/prime31/FlurryPlugin$8;->this$0:Lcom/prime31/FlurryPlugin;

    iput-boolean p2, p0, Lcom/prime31/FlurryPlugin$8;->val$enableTestAds:Z

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 168
    const-string v0, "Prime31"

    const-string v1, "enabled Flurry ads"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/prime31/FlurryPlugin$8;->this$0:Lcom/prime31/FlurryPlugin;

    invoke-virtual {v0}, Lcom/prime31/FlurryPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->initializeAds(Landroid/content/Context;)V

    .line 170
    iget-object v0, p0, Lcom/prime31/FlurryPlugin$8;->this$0:Lcom/prime31/FlurryPlugin;

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->setAdListener(Lcom/flurry/android/FlurryAdListener;)V

    .line 172
    iget-boolean v0, p0, Lcom/prime31/FlurryPlugin$8;->val$enableTestAds:Z

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "Prime31"

    const-string v1, "ad test mode is on"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->enableTestAds(Z)V

    .line 177
    :cond_0
    return-void
.end method
