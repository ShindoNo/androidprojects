.class Lcom/flurry/sdk/gn$o;
.super Lcom/flurry/sdk/gn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o"
.end annotation


# instance fields
.field private final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/flurry/sdk/gn$i;->a:Lcom/flurry/sdk/gn$i;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gn;-><init>(Lcom/flurry/sdk/gn$i;)V

    .line 229
    iput-object p1, p0, Lcom/flurry/sdk/gn$o;->z:Ljava/lang/String;

    .line 230
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/flurry/sdk/gn$o;->z:Ljava/lang/String;

    return-object v0
.end method
