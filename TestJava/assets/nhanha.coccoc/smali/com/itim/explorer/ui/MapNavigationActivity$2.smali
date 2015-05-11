.class Lcom/itim/explorer/ui/MapNavigationActivity$2;
.super Ljava/lang/Object;
.source "MapNavigationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/MapNavigationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/MapNavigationActivity;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/MapNavigationActivity;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/itim/explorer/ui/MapNavigationActivity$2;->this$0:Lcom/itim/explorer/ui/MapNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity$2;->this$0:Lcom/itim/explorer/ui/MapNavigationActivity;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/MapNavigationActivity;->onDirection()V

    .line 340
    return-void
.end method
