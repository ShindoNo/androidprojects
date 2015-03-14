.class Lcom/flurry/sdk/gn$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field public final a:[Lcom/flurry/sdk/gn;

.field public final b:I


# direct methods
.method public constructor <init>([Lcom/flurry/sdk/gn;I)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/flurry/sdk/gn$f;->a:[Lcom/flurry/sdk/gn;

    .line 140
    iput p2, p0, Lcom/flurry/sdk/gn$f;->b:I

    .line 141
    return-void
.end method
