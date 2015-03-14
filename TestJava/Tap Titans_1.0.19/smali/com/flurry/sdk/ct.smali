.class public Lcom/flurry/sdk/ct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ct$1;,
        Lcom/flurry/sdk/ct$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/flurry/sdk/cm;

.field private d:Lcom/flurry/sdk/cu;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/ct$1;)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/flurry/sdk/ct;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ct;I)I
    .locals 0

    .prologue
    .line 5
    iput p1, p0, Lcom/flurry/sdk/ct;->b:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/ct;Lcom/flurry/sdk/cm;)Lcom/flurry/sdk/cm;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/flurry/sdk/ct;->c:Lcom/flurry/sdk/cm;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/ct;Lcom/flurry/sdk/cu;)Lcom/flurry/sdk/cu;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/flurry/sdk/ct;->d:Lcom/flurry/sdk/cu;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/ct;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/flurry/sdk/ct;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/flurry/sdk/ct;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/flurry/sdk/ct;->b:I

    return v0
.end method

.method public c()Lcom/flurry/sdk/cm;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/flurry/sdk/ct;->c:Lcom/flurry/sdk/cm;

    return-object v0
.end method

.method public d()Lcom/flurry/sdk/cu;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/sdk/ct;->d:Lcom/flurry/sdk/cu;

    return-object v0
.end method
