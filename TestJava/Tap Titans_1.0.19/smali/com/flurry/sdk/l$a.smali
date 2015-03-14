.class final Lcom/flurry/sdk/l$a;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/l;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/l;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/flurry/sdk/l$a;->a:Lcom/flurry/sdk/l;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/l;Lcom/flurry/sdk/l$1;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/flurry/sdk/l$a;-><init>(Lcom/flurry/sdk/l;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/flurry/sdk/l$a;->a:Lcom/flurry/sdk/l;

    invoke-static {v0}, Lcom/flurry/sdk/l;->a(Lcom/flurry/sdk/l;)V

    .line 128
    return-void
.end method
