.class public Lcom/flurry/sdk/ip$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ip;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lcom/flurry/sdk/se;

.field protected final c:Lcom/flurry/sdk/mn;

.field protected final d:Lcom/flurry/sdk/qs;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mn;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/flurry/sdk/ip$a;->a:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/flurry/sdk/ip$a;->b:Lcom/flurry/sdk/se;

    .line 90
    iput-object p4, p0, Lcom/flurry/sdk/ip$a;->c:Lcom/flurry/sdk/mn;

    .line 91
    iput-object p3, p0, Lcom/flurry/sdk/ip$a;->d:Lcom/flurry/sdk/qs;

    .line 92
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/ip$a;
    .locals 4

    .prologue
    .line 95
    new-instance v0, Lcom/flurry/sdk/ip$a;

    iget-object v1, p0, Lcom/flurry/sdk/ip$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/ip$a;->d:Lcom/flurry/sdk/qs;

    iget-object v3, p0, Lcom/flurry/sdk/ip$a;->c:Lcom/flurry/sdk/mn;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/flurry/sdk/ip$a;-><init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mn;)V

    return-object v0
.end method

.method public a()Lcom/flurry/sdk/se;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/flurry/sdk/ip$a;->b:Lcom/flurry/sdk/se;

    return-object v0
.end method

.method public b()Lcom/flurry/sdk/mn;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/flurry/sdk/ip$a;->c:Lcom/flurry/sdk/mn;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/flurry/sdk/ip$a;->a:Ljava/lang/String;

    return-object v0
.end method
