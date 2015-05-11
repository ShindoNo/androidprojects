.class Lcom/itim/explorer/ui/MapActivity$11;
.super Ljava/lang/Object;
.source "MapActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/MapActivity;->setupSearchMenuItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/MapActivity;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/MapActivity;)V
    .locals 0

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/itim/explorer/ui/MapActivity$11;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1408
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$11;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Lcom/itim/explorer/ui/MapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1409
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$11;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;
    invoke-static {v5}, Lcom/itim/explorer/ui/MapActivity;->access$3100(Lcom/itim/explorer/ui/MapActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1412
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "Screen"

    const-string v6, "Map screen"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    const-string v5, "Position"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    const-string v5, "Select suggested POI"

    invoke-static {v5, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1415
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$11;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mSearchAdapter:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;
    invoke-static {v5}, Lcom/itim/explorer/ui/MapActivity;->access$3400(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->getItem(I)Lcom/itim/explorer/io/model/POI;

    move-result-object v2

    .line 1416
    .local v2, "poi":Lcom/itim/explorer/io/model/POI;
    if-eqz v2, :cond_0

    .line 1417
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1418
    .local v4, "pois":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itim/explorer/io/model/POI;>;"
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$11;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mSearchAdapter:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;
    invoke-static {v5}, Lcom/itim/explorer/ui/MapActivity;->access$3400(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->getResults()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1419
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$11;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;
    invoke-static {v5}, Lcom/itim/explorer/ui/MapActivity;->access$3100(Lcom/itim/explorer/ui/MapActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v5

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1420
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$11;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const-class v6, Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1422
    .local v3, "poiIntent":Landroid/content/Intent;
    const-string v5, "extra_map_poi"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1423
    const-string v5, "list_poi"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1425
    const-string v5, "extra_map_location"

    iget-object v6, p0, Lcom/itim/explorer/ui/MapActivity$11;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v6}, Lcom/itim/explorer/ui/MapActivity;->getLocation()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1426
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$11;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v5, v3}, Lcom/itim/explorer/ui/MapActivity;->startActivity(Landroid/content/Intent;)V

    .line 1427
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$11;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-static {v5}, Lcom/itim/explorer/util/UIUtil;->transitionActivityIn(Landroid/app/Activity;)V

    .line 1429
    .end local v3    # "poiIntent":Landroid/content/Intent;
    .end local v4    # "pois":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itim/explorer/io/model/POI;>;"
    :cond_0
    return-void
.end method
