.class Lcom/itim/explorer/ui/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/MainActivity;->setupActionBar()V
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
    .line 221
    iput-object p1, p0, Lcom/itim/explorer/ui/MainActivity$5;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 226
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 227
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Screen"

    const-string v5, "Main screen"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v4, "Position"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v4, "Select suggested POI"

    invoke-static {v4, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 230
    iget-object v4, p0, Lcom/itim/explorer/ui/MainActivity$5;->this$0:Lcom/itim/explorer/ui/MainActivity;

    # getter for: Lcom/itim/explorer/ui/MainActivity;->mSearchAdapter:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;
    invoke-static {v4}, Lcom/itim/explorer/ui/MainActivity;->access$100(Lcom/itim/explorer/ui/MainActivity;)Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->getItem(I)Lcom/itim/explorer/io/model/POI;

    move-result-object v1

    .line 231
    .local v1, "poi":Lcom/itim/explorer/io/model/POI;
    if-eqz v1, :cond_0

    .line 232
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v3, "pois":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itim/explorer/io/model/POI;>;"
    iget-object v4, p0, Lcom/itim/explorer/ui/MainActivity$5;->this$0:Lcom/itim/explorer/ui/MainActivity;

    # getter for: Lcom/itim/explorer/ui/MainActivity;->mSearchAdapter:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;
    invoke-static {v4}, Lcom/itim/explorer/ui/MainActivity;->access$100(Lcom/itim/explorer/ui/MainActivity;)Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->getResults()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 234
    iget-object v4, p0, Lcom/itim/explorer/ui/MainActivity$5;->this$0:Lcom/itim/explorer/ui/MainActivity;

    # getter for: Lcom/itim/explorer/ui/MainActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;
    invoke-static {v4}, Lcom/itim/explorer/ui/MainActivity;->access$000(Lcom/itim/explorer/ui/MainActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/POI;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/itim/explorer/ui/MainActivity$5;->this$0:Lcom/itim/explorer/ui/MainActivity;

    const-class v5, Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v2, "poiIntent":Landroid/content/Intent;
    const-string v4, "extra_map_poi"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 238
    const-string v4, "list_poi"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 240
    const-string v4, "extra_map_location"

    iget-object v5, p0, Lcom/itim/explorer/ui/MainActivity$5;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-virtual {v5}, Lcom/itim/explorer/ui/MainActivity;->getLocation()Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 241
    iget-object v4, p0, Lcom/itim/explorer/ui/MainActivity$5;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-virtual {v4, v2}, Lcom/itim/explorer/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 242
    iget-object v4, p0, Lcom/itim/explorer/ui/MainActivity$5;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-static {v4}, Lcom/itim/explorer/util/UIUtil;->transitionActivityIn(Landroid/app/Activity;)V

    .line 244
    .end local v2    # "poiIntent":Landroid/content/Intent;
    .end local v3    # "pois":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itim/explorer/io/model/POI;>;"
    :cond_0
    return-void
.end method
