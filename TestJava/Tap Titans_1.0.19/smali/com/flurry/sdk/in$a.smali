.class public Lcom/flurry/sdk/in$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/in;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/in$a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/flurry/sdk/in$a$a;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/in$a$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/flurry/sdk/in$a;->a:Lcom/flurry/sdk/in$a$a;

    .line 68
    iput-object p2, p0, Lcom/flurry/sdk/in$a;->b:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/flurry/sdk/in$a;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/flurry/sdk/in$a;

    sget-object v1, Lcom/flurry/sdk/in$a$a;->a:Lcom/flurry/sdk/in$a$a;

    invoke-direct {v0, v1, p0}, Lcom/flurry/sdk/in$a;-><init>(Lcom/flurry/sdk/in$a$a;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/flurry/sdk/in$a;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/flurry/sdk/in$a;

    sget-object v1, Lcom/flurry/sdk/in$a$a;->b:Lcom/flurry/sdk/in$a$a;

    invoke-direct {v0, v1, p0}, Lcom/flurry/sdk/in$a;-><init>(Lcom/flurry/sdk/in$a$a;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flurry/sdk/in$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/flurry/sdk/in$a;->a:Lcom/flurry/sdk/in$a$a;

    sget-object v1, Lcom/flurry/sdk/in$a$a;->a:Lcom/flurry/sdk/in$a$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flurry/sdk/in$a;->a:Lcom/flurry/sdk/in$a$a;

    sget-object v1, Lcom/flurry/sdk/in$a$a;->b:Lcom/flurry/sdk/in$a$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
