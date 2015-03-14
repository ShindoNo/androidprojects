.class Lcom/applovin/sdk/unity/AppLovinFacade$5;
.super Ljava/lang/Object;
.source "AppLovinFacade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/sdk/unity/AppLovinFacade;->setAdWidth(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applovin/sdk/unity/AppLovinFacade;


# direct methods
.method constructor <init>(Lcom/applovin/sdk/unity/AppLovinFacade;)V
    .locals 0
    .param p1, "this$0"    # Lcom/applovin/sdk/unity/AppLovinFacade;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$5;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$5;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # invokes: Lcom/applovin/sdk/unity/AppLovinFacade;->updatePadding()V
    invoke-static {v0}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$600(Lcom/applovin/sdk/unity/AppLovinFacade;)V

    .line 486
    return-void
.end method
