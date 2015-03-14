.class public Lcom/flurry/sdk/cw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/cw$1;,
        Lcom/flurry/sdk/cw$a;
    }
.end annotation


# instance fields
.field private a:Lcom/flurry/sdk/co;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/cw$1;)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/flurry/sdk/cw;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/cw;Lcom/flurry/sdk/co;)Lcom/flurry/sdk/co;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/flurry/sdk/cw;->a:Lcom/flurry/sdk/co;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/cw;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/flurry/sdk/cw;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/co;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/flurry/sdk/cw;->a:Lcom/flurry/sdk/co;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/flurry/sdk/cw;->b:Ljava/lang/String;

    return-object v0
.end method
