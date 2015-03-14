.class Lcom/flurry/sdk/u$a$8;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/u$a;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/android/FlurryAdListener;

.field final synthetic b:Lcom/flurry/sdk/u$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/u$a;Lcom/flurry/android/FlurryAdListener;)V
    .locals 0

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/flurry/sdk/u$a$8;->b:Lcom/flurry/sdk/u$a;

    iput-object p2, p0, Lcom/flurry/sdk/u$a$8;->a:Lcom/flurry/android/FlurryAdListener;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/flurry/sdk/u$a$8;->a:Lcom/flurry/android/FlurryAdListener;

    iget-object v1, p0, Lcom/flurry/sdk/u$a$8;->b:Lcom/flurry/sdk/u$a;

    invoke-static {v1}, Lcom/flurry/sdk/u$a;->m(Lcom/flurry/sdk/u$a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->spaceDidReceiveAd(Ljava/lang/String;)V

    .line 1122
    return-void
.end method
