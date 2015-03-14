.class final Lcom/flurry/sdk/kw$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/kw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/flurry/sdk/kw$a;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/flurry/sdk/kq;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/kw$a;Ljava/lang/String;Lcom/flurry/sdk/kq;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/flurry/sdk/kw$a;->a:Lcom/flurry/sdk/kw$a;

    .line 195
    iput-object p2, p0, Lcom/flurry/sdk/kw$a;->b:Ljava/lang/String;

    .line 196
    iput-object p3, p0, Lcom/flurry/sdk/kw$a;->c:Lcom/flurry/sdk/kq;

    .line 197
    return-void
.end method
