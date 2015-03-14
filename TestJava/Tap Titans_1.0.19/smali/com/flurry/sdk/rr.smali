.class public final Lcom/flurry/sdk/rr;
.super Lcom/flurry/sdk/rw;
.source "SourceFile"


# static fields
.field public static final c:Lcom/flurry/sdk/rr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/flurry/sdk/rr;

    invoke-direct {v0}, Lcom/flurry/sdk/rr;-><init>()V

    sput-object v0, Lcom/flurry/sdk/rr;->c:Lcom/flurry/sdk/rr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/flurry/sdk/rw;-><init>()V

    return-void
.end method

.method public static s()Lcom/flurry/sdk/rr;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/flurry/sdk/rr;->c:Lcom/flurry/sdk/rr;

    return-object v0
.end method


# virtual methods
.method public a(D)D
    .locals 2

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final a(Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/flurry/sdk/hc;->f()V

    .line 51
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 56
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "null"

    return-object v0
.end method
