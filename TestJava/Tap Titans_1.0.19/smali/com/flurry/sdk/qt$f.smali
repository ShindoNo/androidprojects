.class public final Lcom/flurry/sdk/qt$f;
.super Lcom/flurry/sdk/rc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/qt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/rc",
        "<[I>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/flurry/sdk/rc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)[I
    .locals 1

    .prologue
    .line 114
    new-array v0, p1, [I

    return-object v0
.end method

.method public synthetic b(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/qt$f;->a(I)[I

    move-result-object v0

    return-object v0
.end method
