.class Lcom/applovin/impl/sdk/ao;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/an;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/an;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ao;->a:Lcom/applovin/impl/sdk/an;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ao;->a:Lcom/applovin/impl/sdk/an;

    iget-object v0, v0, Lcom/applovin/impl/sdk/an;->a:Lcom/applovin/impl/sdk/am;

    iget-object v0, v0, Lcom/applovin/impl/sdk/am;->a:Lcom/applovin/impl/sdk/al;

    invoke-static {v0}, Lcom/applovin/impl/sdk/al;->a(Lcom/applovin/impl/sdk/al;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/ap;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/ap;-><init>(Lcom/applovin/impl/sdk/ao;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
