.class Lcom/amazon/ags/html5/content/ContentManager$1;
.super Ljava/lang/Object;
.source "ContentManager.java"

# interfaces
.implements Lcom/amazon/ags/html5/content/GCVariationManager$GCVariationManagerRefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/html5/content/ContentManager;->initializeContent(Ljava/util/concurrent/ExecutorService;Lcom/amazon/ags/html5/content/GCVariationManager;Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/html5/content/ContentManager;

.field final synthetic val$callback:Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;

.field final synthetic val$executorService:Ljava/util/concurrent/ExecutorService;

.field final synthetic val$variationManager:Lcom/amazon/ags/html5/content/GCVariationManager;


# direct methods
.method constructor <init>(Lcom/amazon/ags/html5/content/ContentManager;Lcom/amazon/ags/html5/content/GCVariationManager;Ljava/util/concurrent/ExecutorService;Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->this$0:Lcom/amazon/ags/html5/content/ContentManager;

    iput-object p2, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->val$variationManager:Lcom/amazon/ags/html5/content/GCVariationManager;

    iput-object p3, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->val$executorService:Ljava/util/concurrent/ExecutorService;

    iput-object p4, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->val$callback:Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshCompleted()V
    .locals 7

    .prologue
    .line 167
    :try_start_0
    iget-object v4, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->val$variationManager:Lcom/amazon/ags/html5/content/GCVariationManager;

    invoke-virtual {v4}, Lcom/amazon/ags/html5/content/GCVariationManager;->getCachedVariations()Ljava/util/Map;

    move-result-object v3

    .line 168
    .local v3, "variationsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "ManifestSrc"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 169
    .local v2, "manifestEndpoint":Ljava/lang/String;
    iget-object v4, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->this$0:Lcom/amazon/ags/html5/content/ContentManager;

    iget-object v5, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->val$executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v6, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->val$callback:Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;

    # invokes: Lcom/amazon/ags/html5/content/ContentManager;->fullContentInitialization(Ljava/util/concurrent/ExecutorService;Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;Ljava/lang/String;)V
    invoke-static {v4, v5, v6, v2}, Lcom/amazon/ags/html5/content/ContentManager;->access$000(Lcom/amazon/ags/html5/content/ContentManager;Ljava/util/concurrent/ExecutorService;Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v2    # "manifestEndpoint":Ljava/lang/String;
    .end local v3    # "variationsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/amazon/ags/html5/content/ContentManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/amazon/ags/html5/content/ContentManager;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content initialization problem encountered"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    iget-object v4, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->this$0:Lcom/amazon/ags/html5/content/ContentManager;

    iget-object v5, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->this$0:Lcom/amazon/ags/html5/content/ContentManager;

    # getter for: Lcom/amazon/ags/html5/content/ContentManager;->currentContentBaseDirectoryLocation:Ljava/lang/String;
    invoke-static {v5}, Lcom/amazon/ags/html5/content/ContentManager;->access$200(Lcom/amazon/ags/html5/content/ContentManager;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/amazon/ags/html5/content/ContentManager;->validateContentIntegrity(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/amazon/ags/html5/content/ContentManager;->access$300(Lcom/amazon/ags/html5/content/ContentManager;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 174
    :try_start_1
    iget-object v4, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->this$0:Lcom/amazon/ags/html5/content/ContentManager;

    # invokes: Lcom/amazon/ags/html5/content/ContentManager;->revertToDefaultContent()Z
    invoke-static {v4}, Lcom/amazon/ags/html5/content/ContentManager;->access$400(Lcom/amazon/ags/html5/content/ContentManager;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 175
    :catch_1
    move-exception v1

    .line 176
    .local v1, "ex":Ljava/lang/Exception;
    # getter for: Lcom/amazon/ags/html5/content/ContentManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/amazon/ags/html5/content/ContentManager;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ContentManager unable to sanitize content state.  GameCircle cannot initialize."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    iget-object v4, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->val$callback:Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;

    invoke-interface {v4}, Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;->onFailure()V

    goto :goto_0
.end method
