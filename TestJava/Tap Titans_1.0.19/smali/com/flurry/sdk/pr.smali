.class public Lcom/flurry/sdk/pr;
.super Lcom/flurry/sdk/on;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/sdk/jy;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/on",
        "<",
        "Lcom/flurry/sdk/jf;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/flurry/sdk/pr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/flurry/sdk/pr;

    invoke-direct {v0}, Lcom/flurry/sdk/pr;-><init>()V

    sput-object v0, Lcom/flurry/sdk/pr;->a:Lcom/flurry/sdk/pr;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/flurry/sdk/jf;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/on;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jf;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 40
    invoke-interface {p1, p2, p3}, Lcom/flurry/sdk/jf;->a(Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 41
    return-void
.end method

.method public final a(Lcom/flurry/sdk/jf;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 52
    instance-of v0, p1, Lcom/flurry/sdk/jg;

    if-eqz v0, :cond_0

    .line 53
    check-cast p1, Lcom/flurry/sdk/jg;

    invoke-interface {p1, p2, p3, p4}, Lcom/flurry/sdk/jg;->a(Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pr;->a(Lcom/flurry/sdk/jf;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 27
    check-cast p1, Lcom/flurry/sdk/jf;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pr;->a(Lcom/flurry/sdk/jf;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 27
    check-cast p1, Lcom/flurry/sdk/jf;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/pr;->a(Lcom/flurry/sdk/jf;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V

    return-void
.end method
