.class Lcom/flurry/sdk/z$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/z;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/z;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/z;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/flurry/sdk/z$2;->a:Lcom/flurry/sdk/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .prologue
    .line 226
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/z$2;->a:Lcom/flurry/sdk/z;

    invoke-static {v1}, Lcom/flurry/sdk/z;->b(Lcom/flurry/sdk/z;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "here in onDismiss "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method
