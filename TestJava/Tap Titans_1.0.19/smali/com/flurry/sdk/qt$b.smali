.class public final Lcom/flurry/sdk/qt$b;
.super Lcom/flurry/sdk/rc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/qt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/rc",
        "<[Z>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/flurry/sdk/rc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)[Z
    .locals 1

    .prologue
    .line 92
    new-array v0, p1, [Z

    return-object v0
.end method

.method public synthetic b(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/qt$b;->a(I)[Z

    move-result-object v0

    return-object v0
.end method