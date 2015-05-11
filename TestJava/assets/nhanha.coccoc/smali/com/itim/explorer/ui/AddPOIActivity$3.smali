.class Lcom/itim/explorer/ui/AddPOIActivity$3;
.super Ljava/lang/Object;
.source "AddPOIActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/AddPOIActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/AddPOIActivity;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/AddPOIActivity;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/itim/explorer/ui/AddPOIActivity$3;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$3;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mLPhoto:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/AddPOIActivity;->access$100(Lcom/itim/explorer/ui/AddPOIActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 204
    return-void
.end method
