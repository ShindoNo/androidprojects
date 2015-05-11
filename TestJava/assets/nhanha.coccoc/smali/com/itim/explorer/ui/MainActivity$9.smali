.class Lcom/itim/explorer/ui/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/MainActivity;->setupDrawerMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/MainActivity;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/itim/explorer/ui/MainActivity$9;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity$9;->this$0:Lcom/itim/explorer/ui/MainActivity;

    # getter for: Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lcom/itim/explorer/ui/MainActivity;->access$300(Lcom/itim/explorer/ui/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 315
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity$9;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/MainActivity;->onCitySelect()V

    .line 316
    return-void
.end method
