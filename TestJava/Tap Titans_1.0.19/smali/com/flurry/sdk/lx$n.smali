.class final Lcom/flurry/sdk/lx$n;
.super Lcom/flurry/sdk/lx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "n"
.end annotation


# static fields
.field private static final b:Lcom/flurry/sdk/lx$n;

.field private static final c:Lcom/flurry/sdk/lx$n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/flurry/sdk/lx$n;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/flurry/sdk/lx$n;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/flurry/sdk/lx$n;->b:Lcom/flurry/sdk/lx$n;

    .line 79
    new-instance v0, Lcom/flurry/sdk/lx$n;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/flurry/sdk/lx$n;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/flurry/sdk/lx$n;->c:Lcom/flurry/sdk/lx$n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/flurry/sdk/lx;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/flurry/sdk/lx$n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/lx$n;"
        }
    .end annotation

    .prologue
    .line 85
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_0

    .line 86
    sget-object v0, Lcom/flurry/sdk/lx$n;->b:Lcom/flurry/sdk/lx$n;

    .line 91
    :goto_0
    return-object v0

    .line 88
    :cond_0
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    .line 89
    sget-object v0, Lcom/flurry/sdk/lx$n;->c:Lcom/flurry/sdk/lx$n;

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Lcom/flurry/sdk/lx$n;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/lx$n;-><init>(Ljava/lang/Class;)V

    goto :goto_0
.end method


# virtual methods
.method public synthetic b(Ljava/lang/String;Lcom/flurry/sdk/iw;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lx$n;->c(Ljava/lang/String;Lcom/flurry/sdk/iw;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Lcom/flurry/sdk/iw;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 96
    return-object p1
.end method
