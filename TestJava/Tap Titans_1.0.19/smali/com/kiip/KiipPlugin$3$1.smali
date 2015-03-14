.class Lcom/kiip/KiipPlugin$3$1;
.super Ljava/lang/Object;
.source "KiipPlugin.java"

# interfaces
.implements Lme/kiip/sdk/Kiip$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kiip/KiipPlugin$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kiip/KiipPlugin$3;


# direct methods
.method constructor <init>(Lcom/kiip/KiipPlugin$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kiip/KiipPlugin$3$1;->this$1:Lcom/kiip/KiipPlugin$3;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lme/kiip/sdk/Kiip;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "arg0"    # Lme/kiip/sdk/Kiip;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/kiip/KiipPlugin$3$1;->this$1:Lcom/kiip/KiipPlugin$3;

    # getter for: Lcom/kiip/KiipPlugin$3;->this$0:Lcom/kiip/KiipPlugin;
    invoke-static {v0}, Lcom/kiip/KiipPlugin$3;->access$0(Lcom/kiip/KiipPlugin$3;)Lcom/kiip/KiipPlugin;

    move-result-object v0

    const-string v1, "Kiip"

    const-string v2, "sessionFailedToStart"

    const-string v3, "Kiip Network Error"

    # invokes: Lcom/kiip/KiipPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/kiip/KiipPlugin;->access$2(Lcom/kiip/KiipPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public onFinished(Lme/kiip/sdk/Kiip;Lme/kiip/sdk/Poptart;)V
    .locals 4
    .param p1, "arg0"    # Lme/kiip/sdk/Kiip;
    .param p2, "poptart"    # Lme/kiip/sdk/Poptart;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/kiip/KiipPlugin$3$1;->this$1:Lcom/kiip/KiipPlugin$3;

    # getter for: Lcom/kiip/KiipPlugin$3;->this$0:Lcom/kiip/KiipPlugin;
    invoke-static {v0}, Lcom/kiip/KiipPlugin$3;->access$0(Lcom/kiip/KiipPlugin$3;)Lcom/kiip/KiipPlugin;

    move-result-object v0

    const-string v1, "Kiip"

    const-string v2, "sessionStarted"

    const-string v3, ""

    # invokes: Lcom/kiip/KiipPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/kiip/KiipPlugin;->access$2(Lcom/kiip/KiipPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/kiip/KiipPlugin$3$1;->this$1:Lcom/kiip/KiipPlugin$3;

    # getter for: Lcom/kiip/KiipPlugin$3;->this$0:Lcom/kiip/KiipPlugin;
    invoke-static {v0}, Lcom/kiip/KiipPlugin$3;->access$0(Lcom/kiip/KiipPlugin$3;)Lcom/kiip/KiipPlugin;

    move-result-object v0

    # invokes: Lcom/kiip/KiipPlugin;->showPoptart(Lme/kiip/sdk/Poptart;)V
    invoke-static {v0, p2}, Lcom/kiip/KiipPlugin;->access$3(Lcom/kiip/KiipPlugin;Lme/kiip/sdk/Poptart;)V

    .line 145
    return-void
.end method
