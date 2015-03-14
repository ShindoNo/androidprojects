.class Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$1;
.super Ljava/lang/Object;
.source "AchievementsClientProxyImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/AGResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->updateAchievementProgress(Ljava/lang/String;FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/ags/api/AGResponseCallback",
        "<",
        "Lcom/amazon/ags/api/achievements/UpdateProgressResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;

.field final synthetic val$achievementId:Ljava/lang/String;

.field final synthetic val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

.field final synthetic val$userData:I


# direct methods
.method constructor <init>(Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;Ljava/lang/String;ILcom/amazon/ags/api/unity/UnityManager;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$1;->this$0:Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;

    iput-object p2, p0, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$1;->val$achievementId:Ljava/lang/String;

    iput p3, p0, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$1;->val$userData:I

    iput-object p4, p0, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$1;->val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Lcom/amazon/ags/api/RequestResponse;)V
    .locals 0
    .param p1, "x0"    # Lcom/amazon/ags/api/RequestResponse;

    .prologue
    .line 75
    check-cast p1, Lcom/amazon/ags/api/achievements/UpdateProgressResponse;

    .end local p1    # "x0":Lcom/amazon/ags/api/RequestResponse;
    invoke-virtual {p0, p1}, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$1;->onComplete(Lcom/amazon/ags/api/achievements/UpdateProgressResponse;)V

    return-void
.end method

.method public onComplete(Lcom/amazon/ags/api/achievements/UpdateProgressResponse;)V
    .locals 5
    .param p1, "response"    # Lcom/amazon/ags/api/achievements/UpdateProgressResponse;

    .prologue
    .line 80
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 82
    .local v1, "rootJsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "achievementId"

    iget-object v3, p0, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$1;->val$achievementId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v2, "userData"

    iget v3, p0, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$1;->val$userData:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    invoke-interface {p1}, Lcom/amazon/ags/api/achievements/UpdateProgressResponse;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const-string v2, "error"

    invoke-interface {p1}, Lcom/amazon/ags/api/achievements/UpdateProgressResponse;->getError()Lcom/amazon/ags/api/ErrorCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/ags/api/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    iget-object v2, p0, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$1;->val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

    const-string v3, "updateAchievementFailed"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazon/ags/api/unity/UnityManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$1;->val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

    const-string v3, "updateAchievementSucceeded"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazon/ags/api/unity/UnityManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lorg/json/JSONException;
    # getter for: Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unable to construct json response for unity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
