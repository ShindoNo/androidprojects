.class final Lcom/tapjoy/TapjoyConnectUnity$2;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Lcom/tapjoy/TapjoyEarnedPointsNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public earnedTapPoints(I)V
    .locals 3

    .prologue
    .line 182
    # setter for: Lcom/tapjoy/TapjoyConnectUnity;->earnedAmount:I
    invoke-static {p1}, Lcom/tapjoy/TapjoyConnectUnity;->access$302(I)I

    .line 183
    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CurrencyEarned"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method
