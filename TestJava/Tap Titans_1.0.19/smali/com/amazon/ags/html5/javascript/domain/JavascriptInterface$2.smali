.class Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface$2;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;->showOverlay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;

.field final synthetic val$json:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface$2;->this$0:Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;

    iput-object p2, p0, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface$2;->val$json:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface$2;->this$0:Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;

    # getter for: Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;->overlayLauncher:Lcom/amazon/ags/html5/overlay/OverlayManager;
    invoke-static {v0}, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;->access$200(Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;)Lcom/amazon/ags/html5/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface$2;->val$json:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/ags/html5/overlay/OverlayManager;->showOverlay(Ljava/lang/String;)V

    .line 152
    return-void
.end method
