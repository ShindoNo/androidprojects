.class Lcom/kiip/KiipPlugin$5;
.super Ljava/lang/Object;
.source "KiipPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kiip/KiipPlugin;->saveMoment(Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kiip/KiipPlugin;

.field private final synthetic val$momentId:Ljava/lang/String;

.field private final synthetic val$value:D


# direct methods
.method constructor <init>(Lcom/kiip/KiipPlugin;DLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kiip/KiipPlugin$5;->this$0:Lcom/kiip/KiipPlugin;

    iput-wide p2, p0, Lcom/kiip/KiipPlugin$5;->val$value:D

    iput-object p4, p0, Lcom/kiip/KiipPlugin$5;->val$momentId:Ljava/lang/String;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 191
    iget-wide v0, p0, Lcom/kiip/KiipPlugin$5;->val$value:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 192
    invoke-static {}, Lme/kiip/sdk/Kiip;->getInstance()Lme/kiip/sdk/Kiip;

    move-result-object v0

    iget-object v1, p0, Lcom/kiip/KiipPlugin$5;->val$momentId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/kiip/KiipPlugin$5;->val$value:D

    iget-object v4, p0, Lcom/kiip/KiipPlugin$5;->this$0:Lcom/kiip/KiipPlugin;

    invoke-virtual {v0, v1, v2, v3, v4}, Lme/kiip/sdk/Kiip;->saveMoment(Ljava/lang/String;DLme/kiip/sdk/Kiip$Callback;)V

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-static {}, Lme/kiip/sdk/Kiip;->getInstance()Lme/kiip/sdk/Kiip;

    move-result-object v0

    iget-object v1, p0, Lcom/kiip/KiipPlugin$5;->val$momentId:Ljava/lang/String;

    iget-object v2, p0, Lcom/kiip/KiipPlugin$5;->this$0:Lcom/kiip/KiipPlugin;

    invoke-virtual {v0, v1, v2}, Lme/kiip/sdk/Kiip;->saveMoment(Ljava/lang/String;Lme/kiip/sdk/Kiip$Callback;)V

    goto :goto_0
.end method
