.class public Lcom/flurry/sdk/ct$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/flurry/sdk/ct;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/flurry/sdk/ct;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/ct;-><init>(Lcom/flurry/sdk/ct$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/ct$a;->a:Lcom/flurry/sdk/ct;

    .line 46
    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/ct$a;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/sdk/ct$a;->a:Lcom/flurry/sdk/ct;

    invoke-static {v0, p1}, Lcom/flurry/sdk/ct;->a(Lcom/flurry/sdk/ct;I)I

    .line 53
    return-object p0
.end method

.method public a(Lcom/flurry/sdk/cm;)Lcom/flurry/sdk/ct$a;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flurry/sdk/ct$a;->a:Lcom/flurry/sdk/ct;

    invoke-static {v0, p1}, Lcom/flurry/sdk/ct;->a(Lcom/flurry/sdk/ct;Lcom/flurry/sdk/cm;)Lcom/flurry/sdk/cm;

    .line 57
    return-object p0
.end method

.method public a(Lcom/flurry/sdk/cu;)Lcom/flurry/sdk/ct$a;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/flurry/sdk/ct$a;->a:Lcom/flurry/sdk/ct;

    invoke-static {v0, p1}, Lcom/flurry/sdk/ct;->a(Lcom/flurry/sdk/ct;Lcom/flurry/sdk/cu;)Lcom/flurry/sdk/cu;

    .line 61
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/flurry/sdk/ct$a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/flurry/sdk/ct$a;->a:Lcom/flurry/sdk/ct;

    invoke-static {v0, p1}, Lcom/flurry/sdk/ct;->a(Lcom/flurry/sdk/ct;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    return-object p0
.end method

.method public a()Lcom/flurry/sdk/ct;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/flurry/sdk/ct$a;->a:Lcom/flurry/sdk/ct;

    return-object v0
.end method
