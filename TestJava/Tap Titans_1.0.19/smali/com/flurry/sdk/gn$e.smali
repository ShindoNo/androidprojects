.class public final Lcom/flurry/sdk/gn$e;
.super Lcom/flurry/sdk/gn$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final z:[Lcom/flurry/sdk/fk$f;


# direct methods
.method public constructor <init>([Lcom/flurry/sdk/fk$f;)V
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gn$g;-><init>(Lcom/flurry/sdk/gn$1;)V

    .line 467
    iput-object p1, p0, Lcom/flurry/sdk/gn$e;->z:[Lcom/flurry/sdk/fk$f;

    .line 468
    return-void
.end method
