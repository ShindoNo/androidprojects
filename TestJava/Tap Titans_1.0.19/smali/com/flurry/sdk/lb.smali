.class public abstract Lcom/flurry/sdk/lb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/lb$b;,
        Lcom/flurry/sdk/lb$a;,
        Lcom/flurry/sdk/lb$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/flurry/sdk/lb;

.field public final b:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/flurry/sdk/lb;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/flurry/sdk/lb;->a:Lcom/flurry/sdk/lb;

    .line 24
    iput-object p2, p0, Lcom/flurry/sdk/lb;->b:Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation
.end method
