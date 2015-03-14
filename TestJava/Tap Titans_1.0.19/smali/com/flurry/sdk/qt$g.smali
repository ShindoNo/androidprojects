.class public final Lcom/flurry/sdk/qt$g;
.super Lcom/flurry/sdk/rc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/qt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/rc",
        "<[J>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/flurry/sdk/rc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)[J
    .locals 1

    .prologue
    .line 121
    new-array v0, p1, [J

    return-object v0
.end method

.method public synthetic b(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/qt$g;->a(I)[J

    move-result-object v0

    return-object v0
.end method
