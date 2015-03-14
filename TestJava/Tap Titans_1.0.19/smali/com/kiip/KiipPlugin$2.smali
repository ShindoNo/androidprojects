.class Lcom/kiip/KiipPlugin$2;
.super Ljava/lang/Object;
.source "KiipPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kiip/KiipPlugin;->init(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kiip/KiipPlugin;

.field private final synthetic val$appKey:Ljava/lang/String;

.field private final synthetic val$appSecret:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kiip/KiipPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kiip/KiipPlugin$2;->this$0:Lcom/kiip/KiipPlugin;

    iput-object p2, p0, Lcom/kiip/KiipPlugin$2;->val$appKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/kiip/KiipPlugin$2;->val$appSecret:Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 111
    iget-object v1, p0, Lcom/kiip/KiipPlugin$2;->this$0:Lcom/kiip/KiipPlugin;

    # invokes: Lcom/kiip/KiipPlugin;->getActivity()Landroid/app/Activity;
    invoke-static {v1}, Lcom/kiip/KiipPlugin;->access$0(Lcom/kiip/KiipPlugin;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/kiip/KiipPlugin$2;->val$appKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/kiip/KiipPlugin$2;->val$appSecret:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lme/kiip/sdk/Kiip;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Lme/kiip/sdk/Kiip;

    move-result-object v0

    .line 112
    .local v0, "kiip":Lme/kiip/sdk/Kiip;
    invoke-static {v0}, Lme/kiip/sdk/Kiip;->setInstance(Lme/kiip/sdk/Kiip;)V

    .line 113
    invoke-static {}, Lme/kiip/sdk/Kiip;->getInstance()Lme/kiip/sdk/Kiip;

    move-result-object v1

    iget-object v2, p0, Lcom/kiip/KiipPlugin$2;->this$0:Lcom/kiip/KiipPlugin;

    invoke-virtual {v1, v2}, Lme/kiip/sdk/Kiip;->setOnContentListener(Lme/kiip/sdk/Kiip$OnContentListener;)V

    .line 114
    iget-object v1, p0, Lcom/kiip/KiipPlugin$2;->this$0:Lcom/kiip/KiipPlugin;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/kiip/KiipPlugin;->access$1(Lcom/kiip/KiipPlugin;Z)V

    .line 116
    invoke-static {}, Lcom/kiip/KiipPlugin;->instance()Lcom/kiip/KiipPlugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kiip/KiipPlugin;->startSession()V

    .line 117
    return-void
.end method
