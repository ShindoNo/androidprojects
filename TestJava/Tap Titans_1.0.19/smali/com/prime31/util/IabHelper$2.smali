.class Lcom/prime31/util/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/util/IabHelper;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$listener:Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;

.field private final synthetic val$moreSkus:Ljava/util/List;

.field private final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/prime31/util/IabHelper;ZLjava/util/List;Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/prime31/util/IabHelper$2;->this$0:Lcom/prime31/util/IabHelper;

    iput-boolean p2, p0, Lcom/prime31/util/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/prime31/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/prime31/util/IabHelper$2;->val$listener:Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lcom/prime31/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 757
    new-instance v3, Lcom/prime31/util/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 758
    .local v3, "result":Lcom/prime31/util/IabResult;
    const/4 v1, 0x0

    .line 761
    .local v1, "inv":Lcom/prime31/util/Inventory;
    :try_start_0
    iget-object v5, p0, Lcom/prime31/util/IabHelper$2;->this$0:Lcom/prime31/util/IabHelper;

    iget-boolean v6, p0, Lcom/prime31/util/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/prime31/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lcom/prime31/util/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/prime31/util/Inventory;
    :try_end_0
    .catch Lcom/prime31/util/IabException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 772
    :goto_0
    iget-object v5, p0, Lcom/prime31/util/IabHelper$2;->this$0:Lcom/prime31/util/IabHelper;

    invoke-virtual {v5}, Lcom/prime31/util/IabHelper;->flagEndAsync()V

    .line 774
    move-object v4, v3

    .line 775
    .local v4, "result_f":Lcom/prime31/util/IabResult;
    move-object v2, v1

    .line 777
    .local v2, "inv_f":Lcom/prime31/util/Inventory;
    iget-object v5, p0, Lcom/prime31/util/IabHelper$2;->this$0:Lcom/prime31/util/IabHelper;

    iget-boolean v5, v5, Lcom/prime31/util/IabHelper;->_disposed:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/prime31/util/IabHelper$2;->val$listener:Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;

    if-eqz v5, :cond_0

    .line 779
    iget-object v5, p0, Lcom/prime31/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/prime31/util/IabHelper$2$1;

    iget-object v7, p0, Lcom/prime31/util/IabHelper$2;->val$listener:Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {v6, p0, v7, v4, v2}, Lcom/prime31/util/IabHelper$2$1;-><init>(Lcom/prime31/util/IabHelper$2;Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;Lcom/prime31/util/IabResult;Lcom/prime31/util/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 787
    :cond_0
    return-void

    .line 763
    .end local v2    # "inv_f":Lcom/prime31/util/Inventory;
    .end local v4    # "result_f":Lcom/prime31/util/IabResult;
    :catch_0
    move-exception v0

    .line 765
    .local v0, "ex":Lcom/prime31/util/IabException;
    invoke-virtual {v0}, Lcom/prime31/util/IabException;->getResult()Lcom/prime31/util/IabResult;

    move-result-object v3

    goto :goto_0

    .line 767
    .end local v0    # "ex":Lcom/prime31/util/IabException;
    :catch_1
    move-exception v0

    .line 769
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Lcom/prime31/util/IabResult;

    .end local v3    # "result":Lcom/prime31/util/IabResult;
    const/4 v5, 0x6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception in queryInventory: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    .restart local v3    # "result":Lcom/prime31/util/IabResult;
    goto :goto_0
.end method
