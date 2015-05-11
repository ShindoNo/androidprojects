.class Lcom/itim/explorer/ui/POIListFragment$4;
.super Ljava/lang/Object;
.source "POIListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/POIListFragment;->deleteAllItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/POIListFragment;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/POIListFragment;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/itim/explorer/ui/POIListFragment$4;->this$0:Lcom/itim/explorer/ui/POIListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 266
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove all POIs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/itim/explorer/ui/POIListFragment$4;->this$0:Lcom/itim/explorer/ui/POIListFragment;

    # getter for: Lcom/itim/explorer/ui/POIListFragment;->mWhich:I
    invoke-static {v1}, Lcom/itim/explorer/ui/POIListFragment;->access$500(Lcom/itim/explorer/ui/POIListFragment;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const-string v1, "History"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v1, "Button"

    const-string v2, "yes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v1, "Dialog"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 271
    iget-object v1, p0, Lcom/itim/explorer/ui/POIListFragment$4;->this$0:Lcom/itim/explorer/ui/POIListFragment;

    invoke-virtual {v1}, Lcom/itim/explorer/ui/POIListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/itim/explorer/ui/POIListFragment$4;->this$0:Lcom/itim/explorer/ui/POIListFragment;

    # getter for: Lcom/itim/explorer/ui/POIListFragment;->mIsBookmark:Z
    invoke-static {v2}, Lcom/itim/explorer/ui/POIListFragment;->access$200(Lcom/itim/explorer/ui/POIListFragment;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/itim/explorer/util/Util;->deleteAllPOIs(Landroid/content/Context;Z)Z

    .line 274
    return-void

    .line 266
    :cond_0
    const-string v1, "Bookmark"

    goto :goto_0
.end method
