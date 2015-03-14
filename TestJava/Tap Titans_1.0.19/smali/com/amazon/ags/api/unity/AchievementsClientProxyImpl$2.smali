.class Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$2;
.super Ljava/lang/Object;
.source "AchievementsClientProxyImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/AGResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->requestAchievements(I)V
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
        "Lcom/amazon/ags/api/achievements/GetAchievementsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;

.field final synthetic val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

.field final synthetic val$userData:I


# direct methods
.method constructor <init>(Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;ILcom/amazon/ags/api/unity/UnityManager;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$2;->this$0:Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;

    iput p2, p0, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$2;->val$userData:I

    iput-object p3, p0, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$2;->val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Lcom/amazon/ags/api/RequestResponse;)V
    .locals 0
    .param p1, "x0"    # Lcom/amazon/ags/api/RequestResponse;

    .prologue
    .line 135
    check-cast p1, Lcom/amazon/ags/api/achievements/GetAchievementsResponse;

    .end local p1    # "x0":Lcom/amazon/ags/api/RequestResponse;
    invoke-virtual {p0, p1}, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$2;->onComplete(Lcom/amazon/ags/api/achievements/GetAchievementsResponse;)V

    return-void
.end method

.method public onComplete(Lcom/amazon/ags/api/achievements/GetAchievementsResponse;)V
    .locals 11
    .param p1, "response"    # Lcom/amazon/ags/api/achievements/GetAchievementsResponse;

    .prologue
    .line 138
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 141
    .local v7, "rootJsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "userData"

    iget v9, p0, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$2;->val$userData:I

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    invoke-interface {p1}, Lcom/amazon/ags/api/achievements/GetAchievementsResponse;->isError()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 144
    const-string v8, "error"

    invoke-interface {p1}, Lcom/amazon/ags/api/achievements/GetAchievementsResponse;->getError()Lcom/amazon/ags/api/ErrorCode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/amazon/ags/api/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    iget-object v8, p0, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$2;->val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

    const-string v9, "requestAchievementsFailed"

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/amazon/ags/api/unity/UnityManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 150
    .local v1, "achievementJsonArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Lcom/amazon/ags/api/achievements/GetAchievementsResponse;->getAchievementsList()Ljava/util/List;

    move-result-object v3

    .line 152
    .local v3, "achievements":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/api/achievements/Achievement;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/api/achievements/Achievement;

    .line 153
    .local v0, "achievement":Lcom/amazon/ags/api/achievements/Achievement;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 154
    .local v2, "achievementJsonObject":Lorg/json/JSONObject;
    const-string v8, "achievementId"

    invoke-interface {v0}, Lcom/amazon/ags/api/achievements/Achievement;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v8, "achievementPointValue"

    invoke-interface {v0}, Lcom/amazon/ags/api/achievements/Achievement;->getPointValue()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    const-string v8, "achievementPosition"

    invoke-interface {v0}, Lcom/amazon/ags/api/achievements/Achievement;->getPosition()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    const-string v8, "achievementDescription"

    invoke-interface {v0}, Lcom/amazon/ags/api/achievements/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v8, "achievementProgress"

    invoke-interface {v0}, Lcom/amazon/ags/api/achievements/Achievement;->getProgress()F

    move-result v9

    float-to-double v9, v9

    invoke-virtual {v2, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 159
    const-string v8, "achievementTitle"

    invoke-interface {v0}, Lcom/amazon/ags/api/achievements/Achievement;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v8, "achievementUnlocked"

    invoke-interface {v0}, Lcom/amazon/ags/api/achievements/Achievement;->isUnlocked()Z

    move-result v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 161
    const-string v8, "achievementHidden"

    invoke-interface {v0}, Lcom/amazon/ags/api/achievements/Achievement;->isHidden()Z

    move-result v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 163
    invoke-interface {v0}, Lcom/amazon/ags/api/achievements/Achievement;->getDateUnlocked()Ljava/util/Date;

    move-result-object v4

    .line 165
    .local v4, "dateUnlocked":Ljava/util/Date;
    if-eqz v4, :cond_1

    .line 166
    const-string v8, "achievementDateUnlocked"

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v2, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 171
    :goto_2
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 176
    .end local v0    # "achievement":Lcom/amazon/ags/api/achievements/Achievement;
    .end local v1    # "achievementJsonArray":Lorg/json/JSONArray;
    .end local v2    # "achievementJsonObject":Lorg/json/JSONObject;
    .end local v3    # "achievements":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/api/achievements/Achievement;>;"
    .end local v4    # "dateUnlocked":Ljava/util/Date;
    .end local v6    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .line 177
    .local v5, "e":Lorg/json/JSONException;
    # getter for: Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Unable to construct json response for Unity."

    invoke-static {v8, v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 168
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v0    # "achievement":Lcom/amazon/ags/api/achievements/Achievement;
    .restart local v1    # "achievementJsonArray":Lorg/json/JSONArray;
    .restart local v2    # "achievementJsonObject":Lorg/json/JSONObject;
    .restart local v3    # "achievements":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/api/achievements/Achievement;>;"
    .restart local v4    # "dateUnlocked":Ljava/util/Date;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v8, "achievementDateUnlocked"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    .line 173
    .end local v0    # "achievement":Lcom/amazon/ags/api/achievements/Achievement;
    .end local v2    # "achievementJsonObject":Lorg/json/JSONObject;
    .end local v4    # "dateUnlocked":Ljava/util/Date;
    :cond_2
    const-string v8, "achievements"

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    iget-object v8, p0, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$2;->val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

    const-string v9, "requestAchievementsSucceeded"

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/amazon/ags/api/unity/UnityManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
