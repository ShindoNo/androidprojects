.class Lcom/applovin/impl/adview/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/applovin/impl/adview/ad;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/ad;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/af;->c:Lcom/applovin/impl/adview/ad;

    iput-boolean p2, p0, Lcom/applovin/impl/adview/af;->a:Z

    iput-boolean p3, p0, Lcom/applovin/impl/adview/af;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/adview/af;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/impl/adview/af;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->c:Lcom/applovin/impl/adview/ad;

    invoke-static {v0}, Lcom/applovin/impl/adview/ad;->a(Lcom/applovin/impl/adview/ad;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/af;->c:Lcom/applovin/impl/adview/ad;

    invoke-static {v0}, Lcom/applovin/impl/adview/ad;->b(Lcom/applovin/impl/adview/ad;)V

    goto :goto_0
.end method
