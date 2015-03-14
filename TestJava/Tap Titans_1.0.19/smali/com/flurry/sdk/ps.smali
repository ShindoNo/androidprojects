.class public Lcom/flurry/sdk/ps;
.super Lcom/flurry/sdk/pt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/sdk/jy;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/pt",
        "<",
        "Lcom/flurry/sdk/jg;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/flurry/sdk/ps;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/flurry/sdk/ps;

    invoke-direct {v0}, Lcom/flurry/sdk/ps;-><init>()V

    sput-object v0, Lcom/flurry/sdk/ps;->a:Lcom/flurry/sdk/ps;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/flurry/sdk/jg;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/pt;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jg;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 38
    invoke-interface {p1, p2, p3}, Lcom/flurry/sdk/jg;->a(Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 39
    return-void
.end method

.method public final a(Lcom/flurry/sdk/jg;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 46
    invoke-interface {p1, p2, p3, p4}, Lcom/flurry/sdk/jg;->a(Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V

    .line 47
    return-void
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
    .line 25
    check-cast p1, Lcom/flurry/sdk/jg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/ps;->a(Lcom/flurry/sdk/jg;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

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
    .line 25
    check-cast p1, Lcom/flurry/sdk/jg;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/ps;->a(Lcom/flurry/sdk/jg;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V

    return-void
.end method
