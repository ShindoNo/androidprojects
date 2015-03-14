.class public Lcom/flurry/sdk/gn$l;
.super Lcom/flurry/sdk/gn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# direct methods
.method private varargs constructor <init>([Lcom/flurry/sdk/gn;)V
    .locals 2

    .prologue
    .line 254
    sget-object v0, Lcom/flurry/sdk/gn$i;->b:Lcom/flurry/sdk/gn$i;

    invoke-static {p1}, Lcom/flurry/sdk/gn$l;->c([Lcom/flurry/sdk/gn;)[Lcom/flurry/sdk/gn;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/gn;-><init>(Lcom/flurry/sdk/gn$i;[Lcom/flurry/sdk/gn;)V

    .line 255
    iget-object v0, p0, Lcom/flurry/sdk/gn$l;->b:[Lcom/flurry/sdk/gn;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 256
    return-void
.end method

.method synthetic constructor <init>([Lcom/flurry/sdk/gn;Lcom/flurry/sdk/gn$1;)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/flurry/sdk/gn$l;-><init>([Lcom/flurry/sdk/gn;)V

    return-void
.end method

.method private static c([Lcom/flurry/sdk/gn;)[Lcom/flurry/sdk/gn;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 259
    invoke-static {p0, v1}, Lcom/flurry/sdk/gn$l;->a([Lcom/flurry/sdk/gn;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [Lcom/flurry/sdk/gn;

    .line 260
    const/4 v3, 0x1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/gn$l;->a([Lcom/flurry/sdk/gn;I[Lcom/flurry/sdk/gn;ILjava/util/Map;Ljava/util/Map;)V

    .line 263
    return-object v2
.end method
