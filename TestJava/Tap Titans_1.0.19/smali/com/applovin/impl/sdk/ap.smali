.class Lcom/applovin/impl/sdk/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/ao;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ap;->a:Lcom/applovin/impl/sdk/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ap;->a:Lcom/applovin/impl/sdk/ao;

    iget-object v0, v0, Lcom/applovin/impl/sdk/ao;->a:Lcom/applovin/impl/sdk/an;

    iget-object v0, v0, Lcom/applovin/impl/sdk/an;->a:Lcom/applovin/impl/sdk/am;

    iget-object v0, v0, Lcom/applovin/impl/sdk/am;->a:Lcom/applovin/impl/sdk/al;

    invoke-static {v0}, Lcom/applovin/impl/sdk/al;->c(Lcom/applovin/impl/sdk/al;)V

    return-void
.end method
