.class Lcom/itim/explorer/ui/POIDetailActivity$SessionStatusCallback;
.super Ljava/lang/Object;
.source "POIDetailActivity.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/ui/POIDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/POIDetailActivity;


# direct methods
.method private constructor <init>(Lcom/itim/explorer/ui/POIDetailActivity;)V
    .locals 0

    .prologue
    .line 761
    iput-object p1, p0, Lcom/itim/explorer/ui/POIDetailActivity$SessionStatusCallback;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itim/explorer/ui/POIDetailActivity;Lcom/itim/explorer/ui/POIDetailActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;
    .param p2, "x1"    # Lcom/itim/explorer/ui/POIDetailActivity$1;

    .prologue
    .line 761
    invoke-direct {p0, p1}, Lcom/itim/explorer/ui/POIDetailActivity$SessionStatusCallback;-><init>(Lcom/itim/explorer/ui/POIDetailActivity;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 766
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$SessionStatusCallback;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # invokes: Lcom/itim/explorer/ui/POIDetailActivity;->onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    invoke-static {v0, p1, p2, p3}, Lcom/itim/explorer/ui/POIDetailActivity;->access$1600(Lcom/itim/explorer/ui/POIDetailActivity;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 767
    return-void
.end method
