.class public Lcom/flurry/sdk/gn$b;
.super Lcom/flurry/sdk/gn$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final z:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gn$g;-><init>(Lcom/flurry/sdk/gn$1;)V

    .line 474
    iput-object p1, p0, Lcom/flurry/sdk/gn$b;->z:[B

    .line 475
    return-void
.end method
