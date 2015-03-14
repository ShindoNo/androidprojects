.class public Lcom/flurry/sdk/gn$h;
.super Lcom/flurry/sdk/gn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final A:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 407
    sget-object v0, Lcom/flurry/sdk/gn$i;->g:Lcom/flurry/sdk/gn$i;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gn;-><init>(Lcom/flurry/sdk/gn$i;)V

    .line 408
    iput p1, p0, Lcom/flurry/sdk/gn$h;->A:I

    .line 409
    return-void
.end method
