.class Lcom/prime31/ChartboostPlugin$7;
.super Ljava/lang/Object;
.source "ChartboostPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/ChartboostPlugin;->init(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/ChartboostPlugin;

.field private final synthetic val$appId:Ljava/lang/String;

.field private final synthetic val$appSignature:Ljava/lang/String;

.field private final synthetic val$shouldRequestInterstitialsInFirstSession:Z


# direct methods
.method constructor <init>(Lcom/prime31/ChartboostPlugin;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/prime31/ChartboostPlugin$7;->this$0:Lcom/prime31/ChartboostPlugin;

    iput-object p2, p0, Lcom/prime31/ChartboostPlugin$7;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/prime31/ChartboostPlugin$7;->val$appSignature:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/prime31/ChartboostPlugin$7;->val$shouldRequestInterstitialsInFirstSession:Z

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/prime31/ChartboostPlugin$7;->this$0:Lcom/prime31/ChartboostPlugin;

    invoke-virtual {v0}, Lcom/prime31/ChartboostPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/prime31/ChartboostPlugin$7;->val$appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/prime31/ChartboostPlugin$7;->val$appSignature:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/prime31/ChartboostPlugin$7;->this$0:Lcom/prime31/ChartboostPlugin;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 124
    iget-boolean v0, p0, Lcom/prime31/ChartboostPlugin$7;->val$shouldRequestInterstitialsInFirstSession:Z

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setShouldRequestInterstitialsInFirstSession(Z)V

    .line 125
    iget-object v0, p0, Lcom/prime31/ChartboostPlugin$7;->this$0:Lcom/prime31/ChartboostPlugin;

    invoke-virtual {v0}, Lcom/prime31/ChartboostPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;)V

    .line 126
    iget-object v0, p0, Lcom/prime31/ChartboostPlugin$7;->this$0:Lcom/prime31/ChartboostPlugin;

    invoke-virtual {v0}, Lcom/prime31/ChartboostPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 127
    iget-object v0, p0, Lcom/prime31/ChartboostPlugin$7;->this$0:Lcom/prime31/ChartboostPlugin;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prime31/ChartboostPlugin;->access$0(Lcom/prime31/ChartboostPlugin;Z)V

    .line 128
    return-void
.end method
