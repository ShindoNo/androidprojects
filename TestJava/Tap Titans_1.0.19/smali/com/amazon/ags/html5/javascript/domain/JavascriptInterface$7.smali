.class Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface$7;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;->closeAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;


# direct methods
.method constructor <init>(Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface$7;->this$0:Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 237
    iget-object v2, p0, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface$7;->this$0:Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;

    # getter for: Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;->closeAlertListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;->access$600(Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ags/html5/javascript/domain/CloseAlertListener;

    .line 238
    .local v1, "recipient":Lcom/amazon/ags/html5/javascript/domain/CloseAlertListener;
    invoke-interface {v1}, Lcom/amazon/ags/html5/javascript/domain/CloseAlertListener;->closeAlert()V

    goto :goto_0

    .line 240
    .end local v1    # "recipient":Lcom/amazon/ags/html5/javascript/domain/CloseAlertListener;
    :cond_0
    return-void
.end method