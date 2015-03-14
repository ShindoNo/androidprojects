.class Lcom/applovin/impl/sdk/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/am;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/am;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/an;->a:Lcom/applovin/impl/sdk/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/an;->a:Lcom/applovin/impl/sdk/am;

    iget-object v0, v0, Lcom/applovin/impl/sdk/am;->a:Lcom/applovin/impl/sdk/al;

    invoke-static {v0}, Lcom/applovin/impl/sdk/al;->d(Lcom/applovin/impl/sdk/al;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/ao;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/ao;-><init>(Lcom/applovin/impl/sdk/an;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
