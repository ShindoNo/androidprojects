.class Lcom/kiip/KiipPlugin$1;
.super Ljava/lang/Object;
.source "KiipPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kiip/KiipPlugin;->showPoptart(Lme/kiip/sdk/Poptart;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kiip/KiipPlugin;

.field private final synthetic val$poptart:Lme/kiip/sdk/Poptart;


# direct methods
.method constructor <init>(Lcom/kiip/KiipPlugin;Lme/kiip/sdk/Poptart;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kiip/KiipPlugin$1;->this$0:Lcom/kiip/KiipPlugin;

    iput-object p2, p0, Lcom/kiip/KiipPlugin$1;->val$poptart:Lme/kiip/sdk/Poptart;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 75
    iget-object v2, p0, Lcom/kiip/KiipPlugin$1;->val$poptart:Lme/kiip/sdk/Poptart;

    invoke-virtual {v2}, Lme/kiip/sdk/Poptart;->getNotification()Lme/kiip/sdk/Notification;

    move-result-object v1

    .line 76
    .local v1, "notification":Lme/kiip/sdk/Notification;
    iget-object v2, p0, Lcom/kiip/KiipPlugin$1;->val$poptart:Lme/kiip/sdk/Poptart;

    invoke-virtual {v2}, Lme/kiip/sdk/Poptart;->getModal()Lme/kiip/sdk/Modal;

    move-result-object v0

    .line 78
    .local v0, "modal":Lme/kiip/sdk/Modal;
    iget-object v2, p0, Lcom/kiip/KiipPlugin$1;->val$poptart:Lme/kiip/sdk/Poptart;

    iget-object v3, p0, Lcom/kiip/KiipPlugin$1;->this$0:Lcom/kiip/KiipPlugin;

    # invokes: Lcom/kiip/KiipPlugin;->getActivity()Landroid/app/Activity;
    invoke-static {v3}, Lcom/kiip/KiipPlugin;->access$0(Lcom/kiip/KiipPlugin;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lme/kiip/sdk/Poptart;->setTag(Ljava/lang/Object;)V

    .line 80
    iget-object v2, p0, Lcom/kiip/KiipPlugin$1;->val$poptart:Lme/kiip/sdk/Poptart;

    iget-object v3, p0, Lcom/kiip/KiipPlugin$1;->this$0:Lcom/kiip/KiipPlugin;

    invoke-virtual {v2, v3}, Lme/kiip/sdk/Poptart;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 81
    iget-object v2, p0, Lcom/kiip/KiipPlugin$1;->val$poptart:Lme/kiip/sdk/Poptart;

    iget-object v3, p0, Lcom/kiip/KiipPlugin$1;->this$0:Lcom/kiip/KiipPlugin;

    invoke-virtual {v2, v3}, Lme/kiip/sdk/Poptart;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 83
    if-eqz v1, :cond_0

    .line 85
    iget-object v2, p0, Lcom/kiip/KiipPlugin$1;->this$0:Lcom/kiip/KiipPlugin;

    invoke-virtual {v1, v2}, Lme/kiip/sdk/Notification;->setOnShowListener(Lme/kiip/sdk/Notification$OnShowListener;)V

    .line 86
    iget-object v2, p0, Lcom/kiip/KiipPlugin$1;->this$0:Lcom/kiip/KiipPlugin;

    invoke-virtual {v1, v2}, Lme/kiip/sdk/Notification;->setOnClickListener(Lme/kiip/sdk/Notification$OnClickListener;)V

    .line 87
    iget-object v2, p0, Lcom/kiip/KiipPlugin$1;->this$0:Lcom/kiip/KiipPlugin;

    invoke-virtual {v1, v2}, Lme/kiip/sdk/Notification;->setOnDismissListener(Lme/kiip/sdk/Notification$OnDismissListener;)V

    .line 90
    :cond_0
    if-eqz v0, :cond_1

    .line 92
    iget-object v2, p0, Lcom/kiip/KiipPlugin$1;->this$0:Lcom/kiip/KiipPlugin;

    invoke-virtual {v0, v2}, Lme/kiip/sdk/Modal;->setOnShowListener(Lme/kiip/sdk/Modal$OnShowListener;)V

    .line 93
    iget-object v2, p0, Lcom/kiip/KiipPlugin$1;->this$0:Lcom/kiip/KiipPlugin;

    invoke-virtual {v0, v2}, Lme/kiip/sdk/Modal;->setOnDismissListener(Lme/kiip/sdk/Modal$OnDismissListener;)V

    .line 94
    iget-object v2, p0, Lcom/kiip/KiipPlugin$1;->this$0:Lcom/kiip/KiipPlugin;

    invoke-virtual {v0, v2}, Lme/kiip/sdk/Modal;->setVideoListener(Lme/kiip/sdk/Modal$VideoListener;)V

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/kiip/KiipPlugin$1;->val$poptart:Lme/kiip/sdk/Poptart;

    iget-object v3, p0, Lcom/kiip/KiipPlugin$1;->this$0:Lcom/kiip/KiipPlugin;

    # invokes: Lcom/kiip/KiipPlugin;->getActivity()Landroid/app/Activity;
    invoke-static {v3}, Lcom/kiip/KiipPlugin;->access$0(Lcom/kiip/KiipPlugin;)Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lme/kiip/sdk/Poptart;->show(Landroid/content/Context;Z)V

    .line 98
    return-void
.end method
