.class Lcom/flurry/sdk/gg$a;
.super Lcom/flurry/sdk/gg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/flurry/sdk/gg;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/gg$1;)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/flurry/sdk/gg$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/gg;
    .locals 2

    .prologue
    .line 333
    new-instance v0, Lcom/flurry/sdk/fh;

    const-string v1, "Default EncoderFactory cannot be configured"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fh;-><init>(Ljava/lang/String;)V

    throw v0
.end method
