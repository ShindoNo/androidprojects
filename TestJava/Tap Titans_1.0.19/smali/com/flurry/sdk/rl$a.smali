.class public Lcom/flurry/sdk/rl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/rl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/flurry/sdk/he;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/flurry/sdk/rl$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/flurry/sdk/rl$a;

    invoke-direct {v0}, Lcom/flurry/sdk/rl$a;-><init>()V

    sput-object v0, Lcom/flurry/sdk/rl$a;->a:Lcom/flurry/sdk/rl$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/flurry/sdk/rl$a;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/flurry/sdk/rl$a;->a:Lcom/flurry/sdk/rl$a;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/flurry/sdk/he;
    .locals 1

    .prologue
    .line 156
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/flurry/sdk/rl$a;->b()Lcom/flurry/sdk/he;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method