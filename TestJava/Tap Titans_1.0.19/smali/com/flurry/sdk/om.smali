.class public Lcom/flurry/sdk/om;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/om$1;,
        Lcom/flurry/sdk/om$d;,
        Lcom/flurry/sdk/om$a;,
        Lcom/flurry/sdk/om$c;,
        Lcom/flurry/sdk/om$b;
    }
.end annotation


# instance fields
.field protected final a:Lcom/flurry/sdk/jr;

.field protected final b:Lcom/flurry/sdk/mt;

.field protected final c:Lcom/flurry/sdk/kd$a;

.field protected final d:Lcom/flurry/sdk/in;

.field protected e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/flurry/sdk/om;->a:Lcom/flurry/sdk/jr;

    .line 40
    iput-object p2, p0, Lcom/flurry/sdk/om;->b:Lcom/flurry/sdk/mt;

    .line 41
    invoke-virtual {p1}, Lcom/flurry/sdk/jr;->g()Lcom/flurry/sdk/kd$a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/mt;->a(Lcom/flurry/sdk/kd$a;)Lcom/flurry/sdk/kd$a;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/om;->c:Lcom/flurry/sdk/kd$a;

    .line 42
    iget-object v0, p0, Lcom/flurry/sdk/om;->a:Lcom/flurry/sdk/jr;

    invoke-virtual {v0}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/in;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/om;->d:Lcom/flurry/sdk/in;

    .line 43
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jh;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/mn;Z)Lcom/flurry/sdk/of;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/sdk/jw;",
            "Lcom/flurry/sdk/jw;",
            "Lcom/flurry/sdk/mn;",
            "Z)",
            "Lcom/flurry/sdk/of;"
        }
    .end annotation

    .prologue
    .line 67
    move-object/from16 v0, p6

    instance-of v3, v0, Lcom/flurry/sdk/mm;

    if-eqz v3, :cond_1

    .line 68
    const/4 v11, 0x0

    move-object/from16 v3, p6

    .line 69
    check-cast v3, Lcom/flurry/sdk/mm;

    invoke-virtual {v3}, Lcom/flurry/sdk/mm;->e()Ljava/lang/reflect/Field;

    move-result-object v12

    .line 76
    :goto_0
    move-object/from16 v0, p6

    move/from16 v1, p7

    move-object/from16 v2, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/om;->a(Lcom/flurry/sdk/mj;ZLcom/flurry/sdk/se;)Lcom/flurry/sdk/se;

    move-result-object v3

    .line 79
    if-eqz p5, :cond_6

    .line 84
    if-nez v3, :cond_0

    move-object/from16 v3, p2

    .line 88
    :cond_0
    invoke-virtual {v3}, Lcom/flurry/sdk/se;->g()Lcom/flurry/sdk/se;

    move-result-object v4

    .line 93
    if-nez v4, :cond_2

    .line 94
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem trying to create BeanPropertyWriter for property \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' (of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/flurry/sdk/om;->b:Lcom/flurry/sdk/mt;

    invoke-virtual {v6}, Lcom/flurry/sdk/mt;->a()Lcom/flurry/sdk/se;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "); serialization type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " has no content"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    move-object/from16 v3, p6

    .line 71
    check-cast v3, Lcom/flurry/sdk/mo;

    invoke-virtual {v3}, Lcom/flurry/sdk/mo;->e()Ljava/lang/reflect/Method;

    move-result-object v11

    .line 72
    const/4 v12, 0x0

    goto :goto_0

    .line 97
    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/se;->e(Ljava/lang/Object;)Lcom/flurry/sdk/se;

    move-result-object v10

    .line 98
    invoke-virtual {v10}, Lcom/flurry/sdk/se;->g()Lcom/flurry/sdk/se;

    .line 101
    :goto_1
    const/4 v14, 0x0

    .line 102
    const/4 v3, 0x0

    .line 104
    iget-object v4, p0, Lcom/flurry/sdk/om;->d:Lcom/flurry/sdk/in;

    iget-object v5, p0, Lcom/flurry/sdk/om;->c:Lcom/flurry/sdk/kd$a;

    move-object/from16 v0, p6

    invoke-virtual {v4, v0, v5}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/mj;Lcom/flurry/sdk/kd$a;)Lcom/flurry/sdk/kd$a;

    move-result-object v4

    .line 106
    if-eqz v4, :cond_3

    .line 107
    sget-object v5, Lcom/flurry/sdk/om$1;->a:[I

    invoke-virtual {v4}, Lcom/flurry/sdk/kd$a;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    :cond_3
    move v13, v3

    .line 137
    :goto_2
    new-instance v3, Lcom/flurry/sdk/of;

    iget-object v4, p0, Lcom/flurry/sdk/om;->b:Lcom/flurry/sdk/mt;

    invoke-virtual {v4}, Lcom/flurry/sdk/mt;->i()Lcom/flurry/sdk/qs;

    move-result-object v5

    move-object/from16 v4, p6

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v3 .. v14}, Lcom/flurry/sdk/of;-><init>(Lcom/flurry/sdk/mn;Lcom/flurry/sdk/qs;Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jh;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/se;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    .line 141
    iget-object v4, p0, Lcom/flurry/sdk/om;->d:Lcom/flurry/sdk/in;

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/flurry/sdk/in;->b(Lcom/flurry/sdk/mn;)Ljava/lang/Boolean;

    move-result-object v4

    .line 142
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 143
    invoke-virtual {v3}, Lcom/flurry/sdk/of;->c()Lcom/flurry/sdk/of;

    move-result-object v3

    .line 145
    :cond_4
    return-object v3

    .line 109
    :pswitch_0
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v11, v12}, Lcom/flurry/sdk/om;->a(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v14

    .line 110
    if-nez v14, :cond_5

    .line 111
    const/4 v3, 0x1

    move v13, v3

    goto :goto_2

    .line 114
    :cond_5
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 115
    invoke-static {v14}, Lcom/flurry/sdk/qw;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move v13, v3

    goto :goto_2

    .line 121
    :pswitch_1
    const/4 v3, 0x1

    .line 123
    invoke-virtual/range {p0 .. p2}, Lcom/flurry/sdk/om;->b(Ljava/lang/String;Lcom/flurry/sdk/se;)Ljava/lang/Object;

    move-result-object v14

    move v13, v3

    .line 124
    goto :goto_2

    .line 126
    :pswitch_2
    const/4 v3, 0x1

    .line 130
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/sdk/se;->f()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 131
    invoke-virtual/range {p0 .. p2}, Lcom/flurry/sdk/om;->a(Ljava/lang/String;Lcom/flurry/sdk/se;)Ljava/lang/Object;

    move-result-object v14

    move v13, v3

    goto :goto_2

    :cond_6
    move-object v10, v3

    goto :goto_1

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a()Lcom/flurry/sdk/qs;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/sdk/om;->b:Lcom/flurry/sdk/mt;

    invoke-virtual {v0}, Lcom/flurry/sdk/mt;->i()Lcom/flurry/sdk/qs;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/flurry/sdk/mj;ZLcom/flurry/sdk/se;)Lcom/flurry/sdk/se;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 163
    iget-object v0, p0, Lcom/flurry/sdk/om;->d:Lcom/flurry/sdk/in;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/in;->e(Lcom/flurry/sdk/mj;)Ljava/lang/Class;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_6

    .line 166
    invoke-virtual {p3}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v2

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    invoke-virtual {p3, v0}, Lcom/flurry/sdk/se;->h(Ljava/lang/Class;)Lcom/flurry/sdk/se;

    move-result-object v0

    :goto_0
    move p2, v1

    .line 188
    :goto_1
    iget-object v2, p0, Lcom/flurry/sdk/om;->a:Lcom/flurry/sdk/jr;

    invoke-static {v2, p1, v0}, Lcom/flurry/sdk/oi;->b(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/se;

    move-result-object v2

    .line 189
    if-eq v2, v0, :cond_5

    move-object v0, v2

    move v2, v1

    .line 197
    :goto_2
    if-nez v2, :cond_4

    .line 198
    iget-object v3, p0, Lcom/flurry/sdk/om;->d:Lcom/flurry/sdk/in;

    invoke-virtual {v3, p1}, Lcom/flurry/sdk/in;->f(Lcom/flurry/sdk/mj;)Lcom/flurry/sdk/kd$b;

    move-result-object v3

    .line 199
    if-eqz v3, :cond_4

    .line 200
    sget-object v2, Lcom/flurry/sdk/kd$b;->b:Lcom/flurry/sdk/kd$b;

    if-ne v3, v2, :cond_2

    .line 203
    :goto_3
    if-eqz v1, :cond_3

    :goto_4
    return-object v0

    .line 176
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal concrete-type annotation for method \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/flurry/sdk/mj;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " not a super-type of (declared) class "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/flurry/sdk/om;->a:Lcom/flurry/sdk/jr;

    invoke-virtual {v2, p3, v0}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/se;Ljava/lang/Class;)Lcom/flurry/sdk/se;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 203
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    move v2, p2

    goto :goto_2

    :cond_6
    move-object v0, p3

    goto :goto_1
.end method

.method protected a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 308
    move-object v0, p1

    .line 309
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 312
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 313
    :cond_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 314
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' of default "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/lang/String;Lcom/flurry/sdk/se;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/flurry/sdk/om;->a:Lcom/flurry/sdk/jr;

    sget-object v1, Lcom/flurry/sdk/jr$a;->w:Lcom/flurry/sdk/jr$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    invoke-virtual {p2}, Lcom/flurry/sdk/se;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Lcom/flurry/sdk/om$a;

    invoke-direct {v0}, Lcom/flurry/sdk/om$a;-><init>()V

    .line 264
    :goto_0
    return-object v0

    .line 260
    :cond_0
    const-class v0, Ljava/util/Collection;

    invoke-virtual {p2}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    new-instance v0, Lcom/flurry/sdk/om$b;

    invoke-direct {v0}, Lcom/flurry/sdk/om$b;-><init>()V

    goto :goto_0

    .line 264
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/flurry/sdk/om;->b()Ljava/lang/Object;

    move-result-object v1

    .line 231
    if-eqz p2, :cond_0

    .line 232
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    .line 234
    :cond_0
    invoke-virtual {p3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {p0, v0, p1, v1}, Lcom/flurry/sdk/om;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected b()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/flurry/sdk/om;->e:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/flurry/sdk/om;->b:Lcom/flurry/sdk/mt;

    iget-object v1, p0, Lcom/flurry/sdk/om;->a:Lcom/flurry/sdk/jr;

    sget-object v2, Lcom/flurry/sdk/jr$a;->e:Lcom/flurry/sdk/jr$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/mt;->a(Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/om;->e:Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/flurry/sdk/om;->e:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/flurry/sdk/om;->b:Lcom/flurry/sdk/mt;

    invoke-virtual {v0}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/mk;->e()Ljava/lang/Class;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has no default constructor; can not instantiate default bean value to support \'properties=JsonSerialize.Inclusion.NON_DEFAULT\' annotation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/om;->e:Ljava/lang/Object;

    return-object v0
.end method

.method protected b(Ljava/lang/String;Lcom/flurry/sdk/se;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p2}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v0

    .line 285
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 286
    new-instance v0, Lcom/flurry/sdk/om$d;

    invoke-direct {v0}, Lcom/flurry/sdk/om$d;-><init>()V

    .line 297
    :goto_0
    return-object v0

    .line 288
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/se;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    new-instance v0, Lcom/flurry/sdk/om$a;

    invoke-direct {v0}, Lcom/flurry/sdk/om$a;-><init>()V

    goto :goto_0

    .line 291
    :cond_1
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    new-instance v0, Lcom/flurry/sdk/om$b;

    invoke-direct {v0}, Lcom/flurry/sdk/om$b;-><init>()V

    goto :goto_0

    .line 294
    :cond_2
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    new-instance v0, Lcom/flurry/sdk/om$c;

    invoke-direct {v0}, Lcom/flurry/sdk/om$c;-><init>()V

    goto :goto_0

    .line 297
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
