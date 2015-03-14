.class Lcom/kiip/KiipPlugin$4$1;
.super Ljava/lang/Object;
.source "KiipPlugin.java"

# interfaces
.implements Lme/kiip/sdk/Kiip$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kiip/KiipPlugin$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kiip/KiipPlugin$4;


# direct methods
.method constructor <init>(Lcom/kiip/KiipPlugin$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kiip/KiipPlugin$4$1;->this$1:Lcom/kiip/KiipPlugin$4;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lme/kiip/sdk/Kiip;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "arg0"    # Lme/kiip/sdk/Kiip;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 167
    const-string v1, "KiipPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "failed to end session: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Kiip Network Error"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 167
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onFinished(Lme/kiip/sdk/Kiip;Lme/kiip/sdk/Poptart;)V
    .locals 2
    .param p1, "arg0"    # Lme/kiip/sdk/Kiip;
    .param p2, "poptart"    # Lme/kiip/sdk/Poptart;

    .prologue
    .line 173
    const-string v0, "KiipPlugin"

    const-string v1, "session ended"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method
