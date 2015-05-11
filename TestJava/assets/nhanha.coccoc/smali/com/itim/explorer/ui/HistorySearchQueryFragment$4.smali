.class Lcom/itim/explorer/ui/HistorySearchQueryFragment$4;
.super Ljava/lang/Object;
.source "HistorySearchQueryFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/HistorySearchQueryFragment;->deleteAllItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/HistorySearchQueryFragment;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/HistorySearchQueryFragment;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment$4;->this$0:Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 295
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Type"

    const-string v2, "Remove all history"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v1, "Button"

    const-string v2, "yes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v1, "Dialog"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 298
    iget-object v1, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment$4;->this$0:Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    invoke-virtual {v1}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/itim/explorer/util/Util;->deleteAllSearchQuery(Landroid/content/Context;)Z

    .line 299
    return-void
.end method
