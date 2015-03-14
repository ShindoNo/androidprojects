.class Lcom/kiip/KiipPlugin$4;
.super Ljava/lang/Object;
.source "KiipPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kiip/KiipPlugin;->endSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kiip/KiipPlugin;


# direct methods
.method constructor <init>(Lcom/kiip/KiipPlugin;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kiip/KiipPlugin$4;->this$0:Lcom/kiip/KiipPlugin;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Lme/kiip/sdk/Kiip;->getInstance()Lme/kiip/sdk/Kiip;

    move-result-object v0

    new-instance v1, Lcom/kiip/KiipPlugin$4$1;

    invoke-direct {v1, p0}, Lcom/kiip/KiipPlugin$4$1;-><init>(Lcom/kiip/KiipPlugin$4;)V

    invoke-virtual {v0, v1}, Lme/kiip/sdk/Kiip;->endSession(Lme/kiip/sdk/Kiip$Callback;)Z

    .line 176
    return-void
.end method
