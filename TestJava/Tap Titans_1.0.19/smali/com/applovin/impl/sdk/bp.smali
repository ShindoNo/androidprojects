.class Lcom/applovin/impl/sdk/bp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/bl;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/applovin/impl/sdk/ay;

.field private final d:Lcom/applovin/impl/sdk/bm;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/bl;Lcom/applovin/impl/sdk/ay;Lcom/applovin/impl/sdk/bm;)V
    .locals 1

    iput-object p1, p0, Lcom/applovin/impl/sdk/bp;->a:Lcom/applovin/impl/sdk/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ay;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/bp;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/bp;->c:Lcom/applovin/impl/sdk/ay;

    iput-object p3, p0, Lcom/applovin/impl/sdk/bp;->d:Lcom/applovin/impl/sdk/bm;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :try_start_0
    invoke-static {}, Lcom/applovin/impl/sdk/l;->a()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bp;->a:Lcom/applovin/impl/sdk/bl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bl;->a(Lcom/applovin/impl/sdk/bl;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/bp;->a:Lcom/applovin/impl/sdk/bl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bl;->a(Lcom/applovin/impl/sdk/bl;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bp;->a:Lcom/applovin/impl/sdk/bl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bl;->b(Lcom/applovin/impl/sdk/bl;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iget-object v3, p0, Lcom/applovin/impl/sdk/bp;->b:Ljava/lang/String;

    const-string v4, "Task started execution..."

    invoke-interface {v0, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bp;->c:Lcom/applovin/impl/sdk/ay;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ay;->run()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bp;->c:Lcom/applovin/impl/sdk/ay;

    instance-of v0, v0, Lcom/applovin/impl/sdk/ca;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/applovin/impl/sdk/bv;->a()Lcom/applovin/impl/sdk/bv;

    move-result-object v5

    iget-object v0, p0, Lcom/applovin/impl/sdk/bp;->c:Lcom/applovin/impl/sdk/ay;

    check-cast v0, Lcom/applovin/impl/sdk/ca;

    invoke-interface {v0}, Lcom/applovin/impl/sdk/ca;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/applovin/impl/sdk/bp;->a:Lcom/applovin/impl/sdk/bl;

    invoke-static {v6}, Lcom/applovin/impl/sdk/bl;->a(Lcom/applovin/impl/sdk/bl;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v6

    invoke-static {v6}, Lcom/applovin/impl/sdk/o;->a(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v3, v4, v6}, Lcom/applovin/impl/sdk/bv;->a(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/bp;->a:Lcom/applovin/impl/sdk/bl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bl;->b(Lcom/applovin/impl/sdk/bl;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iget-object v5, p0, Lcom/applovin/impl/sdk/bp;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task executed successfully in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bp;->a:Lcom/applovin/impl/sdk/bl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bl;->a(Lcom/applovin/impl/sdk/bl;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/be;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/applovin/impl/sdk/bp;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/applovin/impl/sdk/be;->a(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/applovin/impl/sdk/bp;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v3, v4}, Lcom/applovin/impl/sdk/be;->a(Ljava/lang/String;J)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/bp;->a:Lcom/applovin/impl/sdk/bl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bl;->a(Lcom/applovin/impl/sdk/bl;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bp;->a:Lcom/applovin/impl/sdk/bl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bl;->a(Lcom/applovin/impl/sdk/bl;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->e()V

    :goto_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/bp;->c:Lcom/applovin/impl/sdk/ay;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ay;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/applovin/impl/sdk/bp;->a:Lcom/applovin/impl/sdk/bl;

    invoke-static {v3}, Lcom/applovin/impl/sdk/bl;->b(Lcom/applovin/impl/sdk/bl;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/bp;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task failed execution in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/bp;->a:Lcom/applovin/impl/sdk/bl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bl;->b(Lcom/applovin/impl/sdk/bl;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iget-object v3, p0, Lcom/applovin/impl/sdk/bp;->b:Ljava/lang/String;

    const-string v4, "Task not executed, SDK is disabled"

    invoke-interface {v0, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/bp;->a:Lcom/applovin/impl/sdk/bl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bl;->b(Lcom/applovin/impl/sdk/bl;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iget-object v3, p0, Lcom/applovin/impl/sdk/bp;->b:Ljava/lang/String;

    const-string v4, "Task re-scheduled..."

    invoke-interface {v0, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bp;->a:Lcom/applovin/impl/sdk/bl;

    iget-object v3, p0, Lcom/applovin/impl/sdk/bp;->c:Lcom/applovin/impl/sdk/ay;

    iget-object v4, p0, Lcom/applovin/impl/sdk/bp;->d:Lcom/applovin/impl/sdk/bm;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/applovin/impl/sdk/bl;->a(Lcom/applovin/impl/sdk/ay;Lcom/applovin/impl/sdk/bm;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
