.class public Lcom/amazon/AmazonIAPPlugin;
.super Lcom/amazon/AmazonIAPPluginBase;
.source "AmazonIAPPlugin.java"


# instance fields
.field private _isSandboxMode:Z

.field private final _offsetPrefsKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/amazon/AmazonIAPPluginBase;-><init>()V

    .line 27
    const-string v0, "P31Offset"

    iput-object v0, p0, Lcom/amazon/AmazonIAPPlugin;->_offsetPrefsKey:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public initiateGetUserIdRequest()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateGetUserIdRequest()Ljava/lang/String;

    .line 58
    return-void
.end method

.method public initiateItemDataRequest([Ljava/lang/String;)V
    .locals 7
    .param p1, "items"    # [Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 36
    .local v0, "itemHash":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-boolean v3, p0, Lcom/amazon/AmazonIAPPlugin;->_isSandboxMode:Z

    if-eqz v3, :cond_0

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 41
    const-string v3, "Amazon"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initiateItemDataRequest with items: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-static {p0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->registerObserver(Lcom/amazon/inapp/purchasing/PurchasingObserver;)V

    .line 45
    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateItemDataRequest(Ljava/util/Set;)Ljava/lang/String;

    .line 46
    return-void

    .line 39
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    aget-object v1, p1, v3

    .line 40
    .local v1, "s":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public initiatePurchaseRequest(Ljava/lang/String;)V
    .locals 0
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p1}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiatePurchaseRequest(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    return-void
.end method

.method public onGetUserIdResponse(Lcom/amazon/inapp/purchasing/GetUserIdResponse;)V
    .locals 3
    .param p1, "getUserIdResponse"    # Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/amazon/AmazonIAPPlugin;->_isSandboxMode:Z

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "Amazon"

    const-string v1, "onGetUserIdResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    const-string v0, "AmazonIAPManager"

    const-string v1, "onGetUserIdResponse"

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/AmazonIAPPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public onItemDataResponse(Lcom/amazon/inapp/purchasing/ItemDataResponse;)V
    .locals 6
    .param p1, "itemDataResponse"    # Lcom/amazon/inapp/purchasing/ItemDataResponse;

    .prologue
    .line 66
    iget-boolean v3, p0, Lcom/amazon/AmazonIAPPlugin;->_isSandboxMode:Z

    if-eqz v3, :cond_0

    .line 67
    const-string v3, "Amazon"

    const-string v4, "onItemDataResponse called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getItemDataRequestStatus()Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    move-result-object v3

    sget-object v4, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    if-ne v3, v4, :cond_1

    .line 71
    const-string v3, "AmazonIAPManager"

    const-string v4, "itemDataRequestFailed"

    const-string v5, ""

    invoke-virtual {p0, v3, v4, v5}, Lcom/amazon/AmazonIAPPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getUnavailableSkus()Ljava/util/Set;

    move-result-object v2

    .line 76
    .local v2, "unavailableSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getItemData()Ljava/util/Map;

    move-result-object v0

    .line 78
    .local v0, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item;>;"
    const-string v3, "Amazon"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unavilable skus: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v3, "Amazon"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "available skus: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0, v2, v0}, Lcom/amazon/AmazonIAPPlugin;->itemDataResponseToJSON(Ljava/util/Set;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "json":Ljava/lang/String;
    const-string v3, "AmazonIAPManager"

    const-string v4, "itemDataRequestFinished"

    invoke-virtual {p0, v3, v4, v1}, Lcom/amazon/AmazonIAPPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPurchaseResponse(Lcom/amazon/inapp/purchasing/PurchaseResponse;)V
    .locals 3
    .param p1, "purchaseResponse"    # Lcom/amazon/inapp/purchasing/PurchaseResponse;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/amazon/AmazonIAPPlugin;->_isSandboxMode:Z

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "Amazon"

    const-string v1, "onPurchaseResponse called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getPurchaseRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    if-ne v0, v1, :cond_1

    .line 94
    const-string v0, "AmazonIAPManager"

    const-string v1, "purchaseFailed"

    const-string v2, "Unknown Reason"

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/AmazonIAPPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getPurchaseRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->INVALID_SKU:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    if-ne v0, v1, :cond_2

    .line 100
    const-string v0, "AmazonIAPManager"

    const-string v1, "purchaseFailed"

    const-string v2, "Invalid SKU"

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/AmazonIAPPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getPurchaseRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->ALREADY_ENTITLED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    if-ne v0, v1, :cond_3

    .line 107
    const-string v0, "AmazonIAPManager"

    const-string v1, "purchaseFailed"

    const-string v2, "Already Entitled"

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/AmazonIAPPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_3
    const-string v0, "AmazonIAPManager"

    const-string v1, "purchaseSuccessful"

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getReceipt()Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/AmazonIAPPlugin;->purchaseResponseToJSON(Lcom/amazon/inapp/purchasing/Receipt;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/AmazonIAPPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPurchaseUpdatesResponse(Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)V
    .locals 7
    .param p1, "purchaseUpdatesResponse"    # Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    .prologue
    .line 119
    iget-boolean v4, p0, Lcom/amazon/AmazonIAPPlugin;->_isSandboxMode:Z

    if-eqz v4, :cond_0

    .line 120
    const-string v4, "Amazon"

    const-string v5, "onPurhcaseUpdatesResponse called"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    invoke-static {}, Lcom/amazon/AmazonIAPPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {}, Lcom/amazon/AmazonIAPPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 124
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 126
    .local v2, "playerPrefs":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getOffset()Lcom/amazon/inapp/purchasing/Offset;

    move-result-object v1

    .line 127
    .local v1, "offset":Lcom/amazon/inapp/purchasing/Offset;
    const-string v4, "P31Offset"

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/Offset;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getPurchaseUpdatesRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    move-result-object v4

    sget-object v5, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    if-ne v4, v5, :cond_1

    .line 133
    const-string v4, "AmazonIAPManager"

    const-string v5, "purchaseUpdatesRequestFailed"

    const-string v6, ""

    invoke-virtual {p0, v4, v5, v6}, Lcom/amazon/AmazonIAPPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getRevokedSkus()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getReceipts()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/amazon/AmazonIAPPlugin;->purchaseUpdateResponseToJSON(Ljava/util/Set;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "json":Ljava/lang/String;
    const-string v4, "AmazonIAPManager"

    const-string v5, "purchaseUpdatesRequestSuccessful"

    invoke-virtual {p0, v4, v5, v0}, Lcom/amazon/AmazonIAPPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSdkAvailable(Z)V
    .locals 5
    .param p1, "isSandboxMode"    # Z

    .prologue
    .line 145
    const-string v3, "AmazonIAPManager"

    const-string v4, "onSdkAvailable"

    if-eqz p1, :cond_1

    const-string v2, "1"

    :goto_0
    invoke-virtual {p0, v3, v4, v2}, Lcom/amazon/AmazonIAPPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iput-boolean p1, p0, Lcom/amazon/AmazonIAPPlugin;->_isSandboxMode:Z

    .line 147
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateGetUserIdRequest()Ljava/lang/String;

    .line 150
    invoke-static {}, Lcom/amazon/AmazonIAPPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/amazon/AmazonIAPPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 151
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "P31Offset"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "offsetString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 154
    const-string v2, "Amazon"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "found saved offset: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    invoke-static {v0}, Lcom/amazon/inapp/purchasing/Offset;->fromString(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/Offset;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiatePurchaseUpdatesRequest(Lcom/amazon/inapp/purchasing/Offset;)Ljava/lang/String;

    .line 157
    return-void

    .line 145
    .end local v0    # "offsetString":Ljava/lang/String;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    const-string v2, "0"

    goto :goto_0
.end method
