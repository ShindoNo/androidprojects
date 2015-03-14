.class public Lcom/flurry/sdk/ni;
.super Lcom/flurry/sdk/ng;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ne;Lcom/flurry/sdk/ip;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/ne;",
            "Lcom/flurry/sdk/ip;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/ng;-><init>(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ne;Lcom/flurry/sdk/ip;Ljava/lang/Class;)V

    .line 27
    iput-object p5, p0, Lcom/flurry/sdk/ni;->a:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/flurry/sdk/ni;->a:Ljava/lang/String;

    return-object v0
.end method
