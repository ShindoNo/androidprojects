.class public Lcom/flurry/sdk/qc;
.super Lcom/flurry/sdk/pq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/pq",
        "<",
        "Ljava/util/TimeZone;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/flurry/sdk/qc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/flurry/sdk/qc;

    invoke-direct {v0}, Lcom/flurry/sdk/qc;-><init>()V

    sput-object v0, Lcom/flurry/sdk/qc;->a:Lcom/flurry/sdk/qc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Ljava/util/TimeZone;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/pq;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 14
    check-cast p1, Ljava/util/TimeZone;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/qc;->a(Ljava/util/TimeZone;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 14
    check-cast p1, Ljava/util/TimeZone;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/qc;->a(Ljava/util/TimeZone;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V

    return-void
.end method

.method public a(Ljava/util/TimeZone;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/hc;->b(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public a(Ljava/util/TimeZone;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 34
    const-class v0, Ljava/util/TimeZone;

    invoke-virtual {p4, p1, p2, v0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Ljava/lang/Class;)V

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/qc;->a(Ljava/util/TimeZone;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 36
    invoke-virtual {p4, p1, p2}, Lcom/flurry/sdk/jw;->d(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V

    .line 37
    return-void
.end method
