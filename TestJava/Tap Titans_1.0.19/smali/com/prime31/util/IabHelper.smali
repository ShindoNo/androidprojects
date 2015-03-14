.class public Lcom/prime31/util/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;,
        Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;,
        Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"

.field static final TAG:Ljava/lang/String; = "Prime31-IABH"

.field public static autoVerifySignatures:Z


# instance fields
.field _asyncInProgress:Z

.field _asyncOperation:Ljava/lang/String;

.field _context:Landroid/content/Context;

.field _disposed:Z

.field _purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

.field _purchasingItemType:Ljava/lang/String;

.field _requestCode:I

.field _service:Lcom/android/vending/billing/IInAppBillingService;

.field _serviceConn:Landroid/content/ServiceConnection;

.field _setupDone:Z

.field _signatureBase64:Ljava/lang/String;

.field _subscriptionsSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    sput-boolean v0, Lcom/prime31/util/IabHelper;->autoVerifySignatures:Z

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-boolean v0, p0, Lcom/prime31/util/IabHelper;->_setupDone:Z

    .line 102
    iput-boolean v0, p0, Lcom/prime31/util/IabHelper;->_subscriptionsSupported:Z

    .line 106
    iput-boolean v0, p0, Lcom/prime31/util/IabHelper;->_disposed:Z

    .line 110
    iput-boolean v0, p0, Lcom/prime31/util/IabHelper;->_asyncInProgress:Z

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/prime31/util/IabHelper;->_asyncOperation:Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prime31/util/IabHelper;->_signatureBase64:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    .line 194
    iput-object p2, p0, Lcom/prime31/util/IabHelper;->_signatureBase64:Ljava/lang/String;

    .line 195
    const-string v0, "IAB helper created."

    invoke-static {v0}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/prime31/util/IabHelper;->_disposed:Z

    if-eqz v0, :cond_0

    .line 379
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_0
    return-void
.end method

.method private getExplicitIapIntent()Landroid/content/Intent;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 217
    iget-object v8, p0, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 218
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v3, "implicitIntent":Landroid/content/Intent;
    invoke-virtual {v5, v3, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 222
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    .line 224
    :cond_0
    const-string v8, "Prime31-IABH"

    const-string v9, "attempted to locate IAP info and found either 0 or more than 1 result. bailing."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v2, 0x0

    .line 236
    :goto_0
    return-object v2

    .line 228
    :cond_1
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 229
    .local v7, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 230
    .local v4, "packageName":Ljava/lang/String;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 232
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 234
    .local v2, "iapIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 937
    const-string v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    .line 939
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 941
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_1

    .line 943
    rsub-int v2, p0, -0x3e8

    .line 944
    .local v2, "index":I
    if-ltz v2, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 945
    aget-object v3, v1, v2

    .line 952
    .end local v2    # "index":I
    :goto_0
    return-object v3

    .line 947
    .restart local v2    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 949
    .end local v2    # "index":I
    :cond_1
    if-ltz p0, :cond_2

    array-length v3, v0

    if-lt p0, v3, :cond_3

    .line 950
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 952
    :cond_3
    aget-object v3, v0, p0

    goto :goto_0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 959
    iget-boolean v0, p0, Lcom/prime31/util/IabHelper;->_setupDone:Z

    if-nez v0, :cond_0

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal state for operation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 962
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_0
    return-void
.end method

.method consume(Lcom/prime31/util/Purchase;)V
    .locals 8
    .param p1, "itemInfo"    # Lcom/prime31/util/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prime31/util/IabException;
        }
    .end annotation

    .prologue
    .line 817
    invoke-direct {p0}, Lcom/prime31/util/IabHelper;->checkNotDisposed()V

    .line 818
    const-string v4, "consume"

    invoke-virtual {p0, v4}, Lcom/prime31/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 820
    iget-object v4, p1, Lcom/prime31/util/Purchase;->_itemType:Ljava/lang/String;

    const-string v5, "inapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 821
    new-instance v4, Lcom/prime31/util/IabException;

    const/16 v5, -0x3f2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Items of type \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/prime31/util/Purchase;->_itemType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' can\'t be consumed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/prime31/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 825
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/prime31/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 826
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/prime31/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 827
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 829
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t consume "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". No token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 830
    new-instance v4, Lcom/prime31/util/IabException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PurchaseInfo is missing token for sku: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/prime31/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 847
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/prime31/util/IabException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/prime31/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 833
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sku":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Consuming sku: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 834
    iget-object v4, p0, Lcom/prime31/util/IabHelper;->_service:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 835
    .local v1, "response":I
    if-nez v1, :cond_3

    .line 837
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Successfully consumed sku: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 849
    return-void

    .line 841
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error consuming consuming sku "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/prime31/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 842
    new-instance v4, Lcom/prime31/util/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error consuming sku "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/prime31/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public consumeAsync(Lcom/prime31/util/Purchase;Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;)V
    .locals 2
    .param p1, "purchase"    # Lcom/prime31/util/Purchase;
    .param p2, "listener"    # Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;

    .prologue
    .line 901
    invoke-direct {p0}, Lcom/prime31/util/IabHelper;->checkNotDisposed()V

    .line 902
    const-string v1, "consume"

    invoke-virtual {p0, v1}, Lcom/prime31/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 903
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 904
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/prime31/util/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/prime31/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 906
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/prime31/util/Purchase;",
            ">;",
            "Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 921
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/prime31/util/Purchase;>;"
    invoke-direct {p0}, Lcom/prime31/util/IabHelper;->checkNotDisposed()V

    .line 922
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/prime31/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 923
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/prime31/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 924
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 7
    .param p2, "singleListener"    # Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/prime31/util/Purchase;",
            ">;",
            "Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;",
            "Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1201
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/prime31/util/Purchase;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 1202
    .local v4, "handler":Landroid/os/Handler;
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/prime31/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 1203
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/prime31/util/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/prime31/util/IabHelper$3;-><init>(Lcom/prime31/util/IabHelper;Ljava/util/List;Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1244
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1245
    return-void
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 351
    const-string v1, "Disposing."

    invoke-static {v1}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 355
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/prime31/util/IabHelper;->_setupDone:Z

    .line 356
    iget-object v1, p0, Lcom/prime31/util/IabHelper;->_serviceConn:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 358
    const-string v1, "Unbinding from service."

    invoke-static {v1}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/prime31/util/IabHelper;->_serviceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 363
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/prime31/util/IabHelper;->_disposed:Z

    .line 364
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    .line 365
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/prime31/util/IabHelper;->_serviceConn:Landroid/content/ServiceConnection;

    .line 366
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/prime31/util/IabHelper;->_service:Lcom/android/vending/billing/IInAppBillingService;

    .line 367
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Prime31-IABH"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception disposing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method flagEndAsync()V
    .locals 2

    .prologue
    .line 1025
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flagEndAsync"

    invoke-static {v0, v1}, Lcom/prime31/IABConstants;->logEntering(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ending async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prime31/util/IabHelper;->_asyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1027
    const-string v0, ""

    iput-object v0, p0, Lcom/prime31/util/IabHelper;->_asyncOperation:Ljava/lang/String;

    .line 1028
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prime31/util/IabHelper;->_asyncInProgress:Z

    .line 1029
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 1015
    iget-boolean v0, p0, Lcom/prime31/util/IabHelper;->_asyncInProgress:Z

    if-eqz v0, :cond_0

    .line 1016
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t start async operation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/prime31/util/IabHelper;->_asyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1017
    :cond_0
    iput-object p1, p0, Lcom/prime31/util/IabHelper;->_asyncOperation:Ljava/lang/String;

    .line 1018
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prime31/util/IabHelper;->_asyncInProgress:Z

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1020
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 971
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 972
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 974
    const-string v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-static {v1}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 975
    const/4 v1, 0x0

    .line 980
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 977
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 978
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 979
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 980
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0

    .line 983
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 984
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 985
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for bundle response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 994
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 995
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 997
    const-string v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 998
    const/4 v1, 0x0

    .line 1003
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 1000
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1001
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 1002
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 1003
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0

    .line 1006
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 1008
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for intent response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 14
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 539
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "handleActivityResult"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object p3, v11, v12

    invoke-static {v9, v10, v11}, Lcom/prime31/IABConstants;->logEntering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "current _requestCode: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/prime31/util/IabHelper;->_requestCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 543
    iget v9, p0, Lcom/prime31/util/IabHelper;->_requestCode:I

    if-eq p1, v9, :cond_0

    .line 544
    const/4 v9, 0x0

    .line 645
    :goto_0
    return v9

    .line 546
    :cond_0
    invoke-direct {p0}, Lcom/prime31/util/IabHelper;->checkNotDisposed()V

    .line 547
    const-string v9, "handleActivityResult"

    invoke-virtual {p0, v9}, Lcom/prime31/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Lcom/prime31/util/IabHelper;->flagEndAsync()V

    .line 552
    if-nez p3, :cond_2

    .line 554
    const-string v9, "Null data in IAB activity result."

    invoke-virtual {p0, v9}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 555
    new-instance v7, Lcom/prime31/util/IabResult;

    const/16 v9, -0x3ea

    const-string v10, "Null data in IAB result"

    invoke-direct {v7, v9, v10}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 556
    .local v7, "result":Lcom/prime31/util/IabResult;
    iget-object v9, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v9, :cond_1

    .line 558
    const-string v9, "calling purchaseListener.onIabPurchaseFinished"

    invoke-static {v9}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 559
    iget-object v9, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v10, 0x0

    invoke-interface {v9, v7, v10}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    .line 561
    :cond_1
    const/4 v9, 0x1

    goto :goto_0

    .line 564
    .end local v7    # "result":Lcom/prime31/util/IabResult;
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/prime31/util/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v6

    .line 565
    .local v6, "responseCode":I
    const-string v9, "INAPP_PURCHASE_DATA"

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 566
    .local v5, "purchaseData":Ljava/lang/String;
    const-string v9, "INAPP_DATA_SIGNATURE"

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, "dataSignature":Ljava/lang/String;
    const/4 v9, -0x1

    move/from16 v0, p2

    if-ne v0, v9, :cond_b

    if-nez v6, :cond_b

    .line 570
    const-string v9, "Successful resultcode from purchase activity."

    invoke-static {v9}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 571
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Purchase data: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 572
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Data signature: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 573
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Extras: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 574
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Expected item type: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/prime31/util/IabHelper;->_purchasingItemType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 576
    if-eqz v5, :cond_3

    if-nez v1, :cond_5

    .line 578
    :cond_3
    const-string v9, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v9}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 579
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Extras: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 580
    new-instance v7, Lcom/prime31/util/IabResult;

    const/16 v9, -0x3f0

    const-string v10, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v7, v9, v10}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 581
    .restart local v7    # "result":Lcom/prime31/util/IabResult;
    iget-object v9, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v9, :cond_4

    .line 582
    iget-object v9, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v10, 0x0

    invoke-interface {v9, v7, v10}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    .line 583
    :cond_4
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 586
    .end local v7    # "result":Lcom/prime31/util/IabResult;
    :cond_5
    const/4 v3, 0x0

    .line 589
    .local v3, "purchase":Lcom/prime31/util/Purchase;
    :try_start_0
    new-instance v4, Lcom/prime31/util/Purchase;

    iget-object v9, p0, Lcom/prime31/util/IabHelper;->_purchasingItemType:Ljava/lang/String;

    invoke-direct {v4, v9, v5, v1}, Lcom/prime31/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    .end local v3    # "purchase":Lcom/prime31/util/Purchase;
    .local v4, "purchase":Lcom/prime31/util/Purchase;
    :try_start_1
    invoke-virtual {v4}, Lcom/prime31/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v8

    .line 593
    .local v8, "sku":Ljava/lang/String;
    iget-object v9, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v9, :cond_6

    .line 594
    iget-object v9, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v9, v5, v1}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseCompleteAwaitingVerification(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_6
    sget-boolean v9, Lcom/prime31/util/IabHelper;->autoVerifySignatures:Z

    if-eqz v9, :cond_8

    invoke-virtual {v4}, Lcom/prime31/util/Purchase;->isTestSku()Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/prime31/util/IabHelper;->_signatureBase64:Ljava/lang/String;

    invoke-static {v9, v5, v1}, Lcom/prime31/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 598
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Purchase signature verification FAILED for sku "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 599
    new-instance v7, Lcom/prime31/util/IabResult;

    const/16 v9, -0x3eb

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Signature verification failed for sku "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 600
    .restart local v7    # "result":Lcom/prime31/util/IabResult;
    iget-object v9, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v9, :cond_7

    .line 601
    iget-object v9, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v9, v7, v4}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    .line 602
    :cond_7
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 604
    .end local v7    # "result":Lcom/prime31/util/IabResult;
    :cond_8
    const-string v9, "Purchase signature successfully verified."

    invoke-static {v9}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 616
    iget-object v9, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v9, :cond_9

    .line 618
    iget-object v9, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v10, Lcom/prime31/util/IabResult;

    const/4 v11, 0x0

    const-string v12, "Success"

    invoke-direct {v10, v11, v12}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v9, v10, v4}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    .line 645
    .end local v4    # "purchase":Lcom/prime31/util/Purchase;
    .end local v8    # "sku":Ljava/lang/String;
    :cond_9
    :goto_1
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 606
    .restart local v3    # "purchase":Lcom/prime31/util/Purchase;
    :catch_0
    move-exception v2

    .line 608
    .local v2, "e":Lorg/json/JSONException;
    :goto_2
    const-string v9, "Failed to parse purchase data."

    invoke-virtual {p0, v9}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 610
    new-instance v7, Lcom/prime31/util/IabResult;

    const/16 v9, -0x3ea

    const-string v10, "Failed to parse purchase data."

    invoke-direct {v7, v9, v10}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 611
    .restart local v7    # "result":Lcom/prime31/util/IabResult;
    iget-object v9, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v9, :cond_a

    .line 612
    iget-object v9, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v10, 0x0

    invoke-interface {v9, v7, v10}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    .line 613
    :cond_a
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 621
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "purchase":Lcom/prime31/util/Purchase;
    .end local v7    # "result":Lcom/prime31/util/IabResult;
    :cond_b
    const/4 v9, -0x1

    move/from16 v0, p2

    if-ne v0, v9, :cond_c

    .line 624
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Result code was OK but in-app billing response was not OK: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/prime31/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 625
    iget-object v9, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v9, :cond_9

    .line 627
    new-instance v7, Lcom/prime31/util/IabResult;

    const-string v9, "Problem purchashing item."

    invoke-direct {v7, v6, v9}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 628
    .restart local v7    # "result":Lcom/prime31/util/IabResult;
    iget-object v9, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v10, 0x0

    invoke-interface {v9, v7, v10}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    goto :goto_1

    .line 631
    .end local v7    # "result":Lcom/prime31/util/IabResult;
    :cond_c
    if-nez p2, :cond_d

    .line 633
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Purchase canceled - Response: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/prime31/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 634
    new-instance v7, Lcom/prime31/util/IabResult;

    const/16 v9, -0x3ed

    const-string v10, "User canceled."

    invoke-direct {v7, v9, v10}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 635
    .restart local v7    # "result":Lcom/prime31/util/IabResult;
    iget-object v9, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v9, :cond_9

    .line 636
    iget-object v9, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v10, 0x0

    invoke-interface {v9, v7, v10}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    goto :goto_1

    .line 640
    .end local v7    # "result":Lcom/prime31/util/IabResult;
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Purchase failed. Result code: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". Response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Lcom/prime31/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 641
    new-instance v7, Lcom/prime31/util/IabResult;

    const/16 v9, -0x3ee

    const-string v10, "Unknown purchase response."

    invoke-direct {v7, v9, v10}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 642
    .restart local v7    # "result":Lcom/prime31/util/IabResult;
    iget-object v9, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v9, :cond_9

    .line 643
    iget-object v9, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v10, 0x0

    invoke-interface {v9, v7, v10}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    goto/16 :goto_1

    .line 606
    .end local v7    # "result":Lcom/prime31/util/IabResult;
    .restart local v4    # "purchase":Lcom/prime31/util/Purchase;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "purchase":Lcom/prime31/util/Purchase;
    .restart local v3    # "purchase":Lcom/prime31/util/Purchase;
    goto/16 :goto_2
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 415
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/prime31/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 421
    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/prime31/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)Z

    .line 422
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)Z
    .locals 13
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "listener"    # Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p6, "extraData"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/prime31/util/IabHelper;->checkNotDisposed()V

    .line 468
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/prime31/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 469
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/prime31/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 474
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Constructing buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", itemType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 475
    move/from16 v0, p4

    iput v0, p0, Lcom/prime31/util/IabHelper;->_requestCode:I

    .line 476
    iget-object v1, p0, Lcom/prime31/util/IabHelper;->_service:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 477
    .local v8, "buyIntentBundle":Landroid/os/Bundle;
    invoke-virtual {p0, v8}, Lcom/prime31/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v11

    .line 478
    .local v11, "response":I
    if-eqz v11, :cond_1

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to buy item, Error response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/prime31/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 482
    new-instance v12, Lcom/prime31/util/IabResult;

    const-string v1, "Unable to buy item"

    invoke-direct {v12, v11, v1}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 483
    .local v12, "result":Lcom/prime31/util/IabResult;
    if-eqz p5, :cond_0

    .line 484
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v1}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/prime31/util/IabHelper;->flagEndAsync()V

    .line 486
    const/4 v1, 0x0

    .line 516
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v11    # "response":I
    .end local v12    # "result":Lcom/prime31/util/IabResult;
    :goto_0
    return v1

    .line 489
    .restart local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v11    # "response":I
    :cond_1
    const-string v1, "BUY_INTENT"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 490
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 491
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 492
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/prime31/util/IabHelper;->_purchasingItemType:Ljava/lang/String;

    .line 493
    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, p1

    move/from16 v3, p4

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 516
    const/4 v1, 0x1

    goto :goto_0

    .line 495
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v11    # "response":I
    :catch_0
    move-exception v9

    .line 497
    .local v9, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v9}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 500
    new-instance v12, Lcom/prime31/util/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v12, v1, v2}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 501
    .restart local v12    # "result":Lcom/prime31/util/IabResult;
    if-eqz p5, :cond_2

    .line 502
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v1}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    .line 503
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 505
    .end local v9    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v12    # "result":Lcom/prime31/util/IabResult;
    :catch_1
    move-exception v9

    .line 507
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 510
    new-instance v12, Lcom/prime31/util/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v12, v1, v2}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 511
    .restart local v12    # "result":Lcom/prime31/util/IabResult;
    if-eqz p5, :cond_3

    .line 512
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v1}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    .line 513
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 427
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/prime31/util/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 433
    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/prime31/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)Z

    .line 434
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1250
    const-string v0, "Prime31-IABH"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1256
    const-string v0, "Prime31-IABH"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing warning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/prime31/util/Inventory;
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/prime31/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prime31/util/IabException;
        }
    .end annotation

    .prologue
    .line 651
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/prime31/util/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/prime31/util/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/prime31/util/Inventory;
    .locals 6
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/prime31/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prime31/util/IabException;
        }
    .end annotation

    .prologue
    .line 672
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "moreSubsSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/prime31/util/IabHelper;->checkNotDisposed()V

    .line 673
    const-string v3, "queryInventory"

    invoke-virtual {p0, v3}, Lcom/prime31/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 676
    :try_start_0
    new-instance v1, Lcom/prime31/util/Inventory;

    invoke-direct {v1}, Lcom/prime31/util/Inventory;-><init>()V

    .line 677
    .local v1, "inv":Lcom/prime31/util/Inventory;
    const-string v3, "inapp"

    invoke-virtual {p0, v1, v3}, Lcom/prime31/util/IabHelper;->queryPurchases(Lcom/prime31/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 678
    .local v2, "r":I
    if-eqz v2, :cond_0

    .line 679
    new-instance v3, Lcom/prime31/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lcom/prime31/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 705
    .end local v1    # "inv":Lcom/prime31/util/Inventory;
    .end local v2    # "r":I
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/prime31/util/IabException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/prime31/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 681
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lcom/prime31/util/Inventory;
    .restart local v2    # "r":I
    :cond_0
    if-eqz p1, :cond_1

    .line 683
    :try_start_1
    const-string v3, "inapp"

    invoke-virtual {p0, v3, v1, p2}, Lcom/prime31/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/prime31/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 684
    if-eqz v2, :cond_1

    .line 685
    new-instance v3, Lcom/prime31/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lcom/prime31/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 709
    .end local v1    # "inv":Lcom/prime31/util/Inventory;
    .end local v2    # "r":I
    :catch_1
    move-exception v0

    .line 711
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/prime31/util/IabException;

    const/16 v4, -0x3ea

    const-string v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/prime31/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 689
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lcom/prime31/util/Inventory;
    .restart local v2    # "r":I
    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lcom/prime31/util/IabHelper;->_subscriptionsSupported:Z

    if-eqz v3, :cond_3

    .line 691
    const-string v3, "subs"

    invoke-virtual {p0, v1, v3}, Lcom/prime31/util/IabHelper;->queryPurchases(Lcom/prime31/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 692
    if-eqz v2, :cond_2

    .line 693
    new-instance v3, Lcom/prime31/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/prime31/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 695
    :cond_2
    if-eqz p1, :cond_3

    .line 697
    const-string v3, "subs"

    invoke-virtual {p0, v3, v1, p2}, Lcom/prime31/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/prime31/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 698
    if-eqz v2, :cond_3

    .line 699
    new-instance v3, Lcom/prime31/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/prime31/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 703
    :cond_3
    return-object v1
.end method

.method public queryInventoryAsync(Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 794
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/prime31/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 795
    return-void
.end method

.method public queryInventoryAsync(ZLcom/prime31/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .param p2, "listener"    # Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 800
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/prime31/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 801
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 7
    .param p1, "querySkuDetails"    # Z
    .param p3, "listener"    # Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 748
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 749
    .local v5, "handler":Landroid/os/Handler;
    invoke-direct {p0}, Lcom/prime31/util/IabHelper;->checkNotDisposed()V

    .line 750
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/prime31/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 751
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/prime31/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 753
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/prime31/util/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/prime31/util/IabHelper$2;-><init>(Lcom/prime31/util/IabHelper;ZLjava/util/List;Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 788
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 789
    return-void
.end method

.method queryPurchases(Lcom/prime31/util/Inventory;Ljava/lang/String;)I
    .locals 20
    .param p1, "inv"    # Lcom/prime31/util/Inventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1035
    const-string v17, "Querying owned items..."

    invoke-static/range {v17 .. v17}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1036
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Package name: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1037
    const/16 v16, 0x0

    .line 1038
    .local v16, "verificationFailed":Z
    const/4 v4, 0x0

    .line 1042
    .local v4, "continueToken":Ljava/lang/String;
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Calling getPurchases with continuation token: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/prime31/util/IabHelper;->_service:Lcom/android/vending/billing/IInAppBillingService;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p2

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 1045
    .local v6, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/prime31/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v12

    .line 1046
    .local v12, "response":I
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Owned items response: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1047
    if-eqz v12, :cond_1

    .line 1049
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "getPurchases() failed: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/prime31/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1109
    .end local v12    # "response":I
    :goto_0
    return v12

    .line 1052
    .restart local v12    # "response":I
    :cond_1
    const-string v17, "INAPP_PURCHASE_ITEM_LIST"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "INAPP_PURCHASE_DATA_LIST"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "INAPP_DATA_SIGNATURE_LIST"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 1054
    :cond_2
    const-string v17, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 1055
    const/16 v12, -0x3ea

    goto :goto_0

    .line 1058
    :cond_3
    const-string v17, "INAPP_PURCHASE_ITEM_LIST"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1059
    .local v7, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v17, "INAPP_PURCHASE_DATA_LIST"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1060
    .local v10, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v17, "INAPP_DATA_SIGNATURE_LIST"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1062
    .local v14, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_4

    .line 1104
    const-string v17, "INAPP_CONTINUATION_TOKEN"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1105
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Continuation token: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1107
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1109
    if-eqz v16, :cond_9

    const/16 v17, -0x3eb

    :goto_2
    move/from16 v12, v17

    goto :goto_0

    .line 1064
    :cond_4
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1065
    .local v9, "purchaseData":Ljava/lang/String;
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1066
    .local v13, "signature":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1070
    .local v15, "sku":Ljava/lang/String;
    const/4 v11, 0x1

    .line 1071
    .local v11, "purchaseIsVerified":Z
    sget-boolean v17, Lcom/prime31/util/IabHelper;->autoVerifySignatures:Z

    if-eqz v17, :cond_5

    .line 1073
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "verified sku: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/prime31/util/IabHelper;->_signatureBase64:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v9, v13}, Lcom/prime31/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 1077
    :cond_5
    new-instance v8, Lcom/prime31/util/Purchase;

    move-object/from16 v0, p2

    invoke-direct {v8, v0, v9, v13}, Lcom/prime31/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    .local v8, "purchase":Lcom/prime31/util/Purchase;
    invoke-virtual {v8}, Lcom/prime31/util/Purchase;->isTestSku()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1080
    const/4 v11, 0x1

    .line 1081
    const-string v17, "Prime31-IABH"

    const-string v18, "skipping signature verification because this is a test product"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_6
    if-eqz v11, :cond_8

    .line 1086
    invoke-virtual {v8}, Lcom/prime31/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1088
    const-string v17, "BUG: empty/null token!"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/prime31/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 1089
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Purchase data: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1093
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/prime31/util/Inventory;->addPurchase(Lcom/prime31/util/Purchase;)V

    .line 1062
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1097
    :cond_8
    const-string v17, "Purchase signature verification **FAILED**. Not adding item."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/prime31/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 1098
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "   Purchase data: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1099
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "   Signature: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1100
    const/16 v16, 0x1

    goto :goto_3

    .line 1109
    .end local v8    # "purchase":Lcom/prime31/util/Purchase;
    .end local v9    # "purchaseData":Ljava/lang/String;
    .end local v11    # "purchaseIsVerified":Z
    .end local v13    # "signature":Ljava/lang/String;
    .end local v15    # "sku":Ljava/lang/String;
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_2
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/prime31/util/Inventory;Ljava/util/List;)I
    .locals 23
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lcom/prime31/util/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/prime31/util/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1115
    .local p3, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v19, "Querying SKU details."

    invoke-static/range {v19 .. v19}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1116
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1117
    .local v15, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/prime31/util/Inventory;->getAllOwnedSkus()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1119
    if-eqz p3, :cond_1

    .line 1121
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_2

    .line 1128
    :cond_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_3

    .line 1130
    const-string v19, "queryPrices: nothing to do because there are no SKUs."

    invoke-static/range {v19 .. v19}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1131
    const/4 v10, 0x0

    .line 1195
    :goto_1
    return v10

    .line 1121
    :cond_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1123
    .local v13, "sku":Ljava/lang/String;
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 1124
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1138
    .end local v13    # "sku":Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1140
    .local v8, "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    div-int/lit8 v7, v19, 0x14

    .line 1141
    .local v7, "n":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    rem-int/lit8 v6, v19, 0x14

    .line 1143
    .local v6, "mod":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-lt v5, v7, :cond_6

    .line 1152
    if-eqz v6, :cond_4

    .line 1154
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1155
    .local v17, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    mul-int/lit8 v19, v7, 0x14

    mul-int/lit8 v20, v7, 0x14

    add-int v20, v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_8

    .line 1158
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    .end local v17    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_9

    .line 1195
    const/4 v10, 0x0

    goto :goto_1

    .line 1145
    :cond_6
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1146
    .restart local v17    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    mul-int/lit8 v19, v5, 0x14

    mul-int/lit8 v20, v5, 0x14

    add-int/lit8 v20, v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_7

    .line 1149
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1146
    :cond_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1147
    .local v12, "s":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1155
    .end local v12    # "s":Ljava/lang/String;
    :cond_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1156
    .restart local v12    # "s":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1163
    .end local v12    # "s":Ljava/lang/String;
    .end local v17    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 1165
    .local v16, "skuPartList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1166
    .local v9, "querySkus":Landroid/os/Bundle;
    const-string v20, "ITEM_ID_LIST"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/prime31/util/IabHelper;->_service:Lcom/android/vending/billing/IInAppBillingService;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3, v9}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v14

    .line 1170
    .local v14, "skuDetails":Landroid/os/Bundle;
    const-string v20, "DETAILS_LIST"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 1172
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/prime31/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v10

    .line 1173
    .local v10, "response":I
    if-eqz v10, :cond_a

    .line 1175
    const-string v19, "Prime31-IABH"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "getSkuDetails() failed: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/prime31/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1180
    :cond_a
    const-string v19, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 1181
    const/16 v10, -0x3ea

    goto/16 :goto_1

    .line 1186
    .end local v10    # "response":I
    :cond_b
    const-string v20, "DETAILS_LIST"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1187
    .local v11, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1189
    .local v18, "thisResponse":Ljava/lang/String;
    new-instance v4, Lcom/prime31/util/SkuDetails;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/prime31/util/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    .local v4, "d":Lcom/prime31/util/SkuDetails;
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Got sku details: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1191
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/prime31/util/Inventory;->addSkuDetails(Lcom/prime31/util/SkuDetails;)V

    goto :goto_5
.end method

.method public startSetup(Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/prime31/util/IabHelper;->checkNotDisposed()V

    .line 252
    iget-boolean v1, p0, Lcom/prime31/util/IabHelper;->_setupDone:Z

    if-eqz v1, :cond_0

    .line 253
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IAB helper is already set up."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :cond_0
    const-string v1, "Starting in-app billing service"

    invoke-static {v1}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 257
    new-instance v1, Lcom/prime31/util/IabHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/prime31/util/IabHelper$1;-><init>(Lcom/prime31/util/IabHelper;Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v1, p0, Lcom/prime31/util/IabHelper;->_serviceConn:Landroid/content/ServiceConnection;

    .line 321
    invoke-direct {p0}, Lcom/prime31/util/IabHelper;->getExplicitIapIntent()Landroid/content/Intent;

    move-result-object v0

    .line 322
    .local v0, "serviceIntent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 325
    iget-object v1, p0, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/prime31/util/IabHelper;->_serviceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 333
    :cond_1
    :goto_0
    return-void

    .line 330
    :cond_2
    if-eqz p1, :cond_1

    .line 331
    new-instance v1, Lcom/prime31/util/IabResult;

    const/4 v2, 0x3

    const-string v3, "Billing service unavailable on device."

    invoke-direct {v1, v2, v3}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/prime31/util/IabResult;)V

    goto :goto_0
.end method

.method public subscriptionsSupported()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/prime31/util/IabHelper;->_subscriptionsSupported:Z

    return v0
.end method
