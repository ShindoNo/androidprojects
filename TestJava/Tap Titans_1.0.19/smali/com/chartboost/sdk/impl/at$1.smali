.class Lcom/chartboost/sdk/impl/at$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/at;-><init>(Lcom/chartboost/sdk/impl/ax;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/at;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/at;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/chartboost/sdk/impl/at$1;->a:Lcom/chartboost/sdk/impl/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at$1;->a:Lcom/chartboost/sdk/impl/at;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/at;->a(Lcom/chartboost/sdk/impl/at;)V

    .line 42
    return-void
.end method
