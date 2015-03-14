.class final Lcom/flurry/sdk/n$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/n$d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/n;

.field private b:Landroid/webkit/WebChromeClient$CustomViewCallback;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/n;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/flurry/sdk/n$g;->a:Lcom/flurry/sdk/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-object p2, p0, Lcom/flurry/sdk/n$g;->b:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 343
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/flurry/sdk/n$g;->b:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/flurry/sdk/n$g;->b:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 350
    :cond_0
    return-void
.end method
