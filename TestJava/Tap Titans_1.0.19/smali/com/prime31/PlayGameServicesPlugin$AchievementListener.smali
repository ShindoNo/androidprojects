.class Lcom/prime31/PlayGameServicesPlugin$AchievementListener;
.super Lcom/prime31/PlayGameServicesPlugin$ListenerBase;
.source "PlayGameServicesPlugin.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prime31/PlayGameServicesPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AchievementListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prime31/PlayGameServicesPlugin$ListenerBase;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/PlayGameServicesPlugin;


# direct methods
.method public constructor <init>(Lcom/prime31/PlayGameServicesPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "successMethod"    # Ljava/lang/String;
    .param p3, "failedMethod"    # Ljava/lang/String;

    .prologue
    .line 1591
    iput-object p1, p0, Lcom/prime31/PlayGameServicesPlugin$AchievementListener;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    .line 1590
    invoke-direct {p0, p1}, Lcom/prime31/PlayGameServicesPlugin$ListenerBase;-><init>(Lcom/prime31/PlayGameServicesPlugin;)V

    .line 1592
    iput-object p3, p0, Lcom/prime31/PlayGameServicesPlugin$AchievementListener;->_failedMethod:Ljava/lang/String;

    .line 1593
    iput-object p2, p0, Lcom/prime31/PlayGameServicesPlugin$AchievementListener;->_successMethod:Ljava/lang/String;

    .line 1594
    return-void
.end method

.method public constructor <init>(Lcom/prime31/PlayGameServicesPlugin;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p2, "successMethod"    # Ljava/lang/String;
    .param p3, "failedMethod"    # Ljava/lang/String;
    .param p4, "reportedScore"    # J

    .prologue
    .line 1606
    invoke-direct {p0, p1, p2, p3}, Lcom/prime31/PlayGameServicesPlugin$AchievementListener;-><init>(Lcom/prime31/PlayGameServicesPlugin;Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prime31/PlayGameServicesPlugin$AchievementListener;->_reportedScoreString:Ljava/lang/String;

    .line 1608
    return-void
.end method

.method public constructor <init>(Lcom/prime31/PlayGameServicesPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "successMethod"    # Ljava/lang/String;
    .param p3, "failedMethod"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;

    .prologue
    .line 1599
    invoke-direct {p0, p1, p2, p3}, Lcom/prime31/PlayGameServicesPlugin$AchievementListener;-><init>(Lcom/prime31/PlayGameServicesPlugin;Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    iput-object p4, p0, Lcom/prime31/PlayGameServicesPlugin$AchievementListener;->_id:Ljava/lang/String;

    .line 1601
    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;

    invoke-virtual {p0, p1}, Lcom/prime31/PlayGameServicesPlugin$AchievementListener;->onResult(Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;)V
    .locals 7
    .param p1, "res"    # Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;

    .prologue
    .line 1614
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    .line 1615
    .local v2, "statusCode":I
    const/4 v0, 0x0

    .line 1617
    .local v0, "error":Ljava/lang/String;
    sparse-switch v2, :sswitch_data_0

    .line 1641
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1644
    :goto_0
    if-eqz v0, :cond_0

    .line 1645
    iget-object v3, p0, Lcom/prime31/PlayGameServicesPlugin$AchievementListener;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    iget-object v4, p0, Lcom/prime31/PlayGameServicesPlugin$AchievementListener;->_failedMethod:Ljava/lang/String;

    iget-object v5, p0, Lcom/prime31/PlayGameServicesPlugin$AchievementListener;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    iget-object v6, p0, Lcom/prime31/PlayGameServicesPlugin$AchievementListener;->_id:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lcom/prime31/PlayGameServicesPlugin;->jsonizeIdentiferAndError(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    :cond_0
    return-void

    .line 1621
    :sswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;->getAchievementId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0xbbb

    if-ne v2, v3, :cond_1

    const-string v3, "1"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1622
    .local v1, "resString":Ljava/lang/String;
    iget-object v3, p0, Lcom/prime31/PlayGameServicesPlugin$AchievementListener;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    iget-object v4, p0, Lcom/prime31/PlayGameServicesPlugin$AchievementListener;->_successMethod:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1621
    .end local v1    # "resString":Ljava/lang/String;
    :cond_1
    const-string v3, "0"

    goto :goto_1

    .line 1631
    :sswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Network or unknown error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1632
    goto :goto_0

    .line 1634
    :sswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "License check failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1635
    goto :goto_0

    .line 1637
    :sswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Reconnect required: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1638
    iget-object v3, p0, Lcom/prime31/PlayGameServicesPlugin$AchievementListener;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    iget-object v3, v3, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v3}, Lcom/prime31/GameHelper;->reconnectClient()V

    goto :goto_0

    .line 1617
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
        0xbb8 -> :sswitch_1
        0xbb9 -> :sswitch_1
        0xbba -> :sswitch_1
        0xbbb -> :sswitch_0
    .end sparse-switch
.end method
