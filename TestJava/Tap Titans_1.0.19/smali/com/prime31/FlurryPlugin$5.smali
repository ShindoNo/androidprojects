.class Lcom/prime31/FlurryPlugin$5;
.super Ljava/lang/Object;
.source "FlurryPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/FlurryPlugin;->logTimedEventWithParams(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/FlurryPlugin;

.field private final synthetic val$event:Ljava/lang/String;

.field private final synthetic val$jsonParams:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/prime31/FlurryPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/prime31/FlurryPlugin$5;->this$0:Lcom/prime31/FlurryPlugin;

    iput-object p2, p0, Lcom/prime31/FlurryPlugin$5;->val$jsonParams:Ljava/lang/String;

    iput-object p3, p0, Lcom/prime31/FlurryPlugin$5;->val$event:Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Lcom/prime31/FlurryPlugin$5;->this$0:Lcom/prime31/FlurryPlugin;

    iget-object v2, p0, Lcom/prime31/FlurryPlugin$5;->val$jsonParams:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prime31/FlurryPlugin;->fromJSON(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 128
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/prime31/FlurryPlugin$5;->val$event:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 129
    return-void
.end method