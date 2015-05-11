.class Lcom/itim/explorer/ui/MainActivity$10;
.super Landroid/support/v4/app/ActionBarDrawerToggle;
.source "MainActivity.java"


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
.method constructor <init>(Lcom/itim/explorer/ui/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .locals 6
    .param p2, "x0"    # Landroid/app/Activity;
    .param p3, "x1"    # Landroid/support/v4/widget/DrawerLayout;
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 343
    iput-object p1, p0, Lcom/itim/explorer/ui/MainActivity$10;->this$0:Lcom/itim/explorer/ui/MainActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity$10;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/ui/MainActivity$10;->this$0:Lcom/itim/explorer/ui/MainActivity;

    # getter for: Lcom/itim/explorer/ui/MainActivity;->mTitle:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/itim/explorer/ui/MainActivity;->access$400(Lcom/itim/explorer/ui/MainActivity;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity$10;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/MainActivity;->supportInvalidateOptionsMenu()V

    .line 347
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity$10;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0e0020

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 352
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity$10;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/MainActivity;->supportInvalidateOptionsMenu()V

    .line 353
    return-void
.end method
