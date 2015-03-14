.class public Lcom/flurry/sdk/cv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/cv$1;,
        Lcom/flurry/sdk/cv$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/flurry/sdk/cn;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/cv$1;)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/flurry/sdk/cv;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/cv;I)I
    .locals 0

    .prologue
    .line 5
    iput p1, p0, Lcom/flurry/sdk/cv;->d:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/cv;Lcom/flurry/sdk/cn;)Lcom/flurry/sdk/cn;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/flurry/sdk/cv;->e:Lcom/flurry/sdk/cn;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/cv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/flurry/sdk/cv;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/cv;Z)Z
    .locals 0

    .prologue
    .line 5
    iput-boolean p1, p0, Lcom/flurry/sdk/cv;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/cv;I)I
    .locals 0

    .prologue
    .line 5
    iput p1, p0, Lcom/flurry/sdk/cv;->f:I

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/cv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/flurry/sdk/cv;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/cv;Z)Z
    .locals 0

    .prologue
    .line 5
    iput-boolean p1, p0, Lcom/flurry/sdk/cv;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/flurry/sdk/cv;I)I
    .locals 0

    .prologue
    .line 5
    iput p1, p0, Lcom/flurry/sdk/cv;->g:I

    return p1
.end method

.method static synthetic c(Lcom/flurry/sdk/cv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/flurry/sdk/cv;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/flurry/sdk/cv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/flurry/sdk/cv;->j:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/sdk/cv;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/flurry/sdk/cv;->d:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/flurry/sdk/cv;->j:Ljava/lang/String;

    return-object v0
.end method
