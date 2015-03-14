.class public abstract Lcom/flurry/sdk/nv;
.super Lcom/flurry/sdk/jw;
.source "SourceFile"


# instance fields
.field protected final b:Lcom/flurry/sdk/ne;

.field protected final c:Lcom/flurry/sdk/ip;


# direct methods
.method protected constructor <init>(Lcom/flurry/sdk/ne;Lcom/flurry/sdk/ip;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/flurry/sdk/jw;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/flurry/sdk/nv;->b:Lcom/flurry/sdk/ne;

    .line 20
    iput-object p2, p0, Lcom/flurry/sdk/nv;->c:Lcom/flurry/sdk/ip;

    .line 21
    return-void
.end method
