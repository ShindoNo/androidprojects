.class Lcom/tapjoy/TapjoyConnectUnity$3;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity;->sendSegmentationParams(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectUnity;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectUnity;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectUnity$3;->this$0:Lcom/tapjoy/TapjoyConnectUnity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 230
    const-string v0, "segmentationParams"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyConnectUnity;->getReferenceDictionary(Ljava/lang/String;Z)Ljava/util/Hashtable;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    .line 232
    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->tapjoyConnect:Lcom/tapjoy/TapjoyConnect;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$400()Lcom/tapjoy/TapjoyConnect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tapjoy/TapjoyConnect;->sendSegmentationParams(Ljava/util/Hashtable;)V

    .line 233
    :cond_0
    return-void
.end method
