.class Lcom/itim/explorer/ui/MapActivity$13;
.super Ljava/lang/Object;
.source "MapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1452
    iput-object p1, p0, Lcom/itim/explorer/ui/MapActivity$13;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1456
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$13;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/itim/explorer/ui/MapActivity;->access$3100(Lcom/itim/explorer/ui/MapActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1457
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1458
    .local v1, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Screen"

    const-string v3, "Map screen"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    const-string v2, "Button"

    const-string v3, "Clear (X)"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    const-string v2, "Press screen button"

    invoke-static {v2, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1461
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$13;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/itim/explorer/ui/MapActivity;->access$200(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1462
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$13;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/itim/explorer/ui/MapActivity;->access$200(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1464
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$13;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const/4 v3, 0x0

    # setter for: Lcom/itim/explorer/ui/MapActivity;->mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v2, v3}, Lcom/itim/explorer/ui/MapActivity;->access$902(Lcom/itim/explorer/ui/MapActivity;Lcom/google/android/gms/maps/model/Marker;)Lcom/google/android/gms/maps/model/Marker;

    .line 1465
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$13;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # invokes: Lcom/itim/explorer/ui/MapActivity;->prepareMapForUpdate()V
    invoke-static {v2}, Lcom/itim/explorer/ui/MapActivity;->access$400(Lcom/itim/explorer/ui/MapActivity;)V

    .line 1466
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$13;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->bottomSlider:Lcom/itim/explorer/ui/POIListSliderFragment;
    invoke-static {v2}, Lcom/itim/explorer/ui/MapActivity;->access$1700(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/ui/POIListSliderFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itim/explorer/ui/POIListSliderFragment;->clear()V

    .line 1467
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$13;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # invokes: Lcom/itim/explorer/ui/MapActivity;->setPanelVisibility()V
    invoke-static {v2}, Lcom/itim/explorer/ui/MapActivity;->access$1300(Lcom/itim/explorer/ui/MapActivity;)V

    .line 1468
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$13;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const/4 v3, 0x5

    # setter for: Lcom/itim/explorer/ui/MapActivity;->mMapType:I
    invoke-static {v2, v3}, Lcom/itim/explorer/ui/MapActivity;->access$102(Lcom/itim/explorer/ui/MapActivity;I)I

    .line 1469
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$13;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/itim/explorer/util/Util;->saveQuery(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1471
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1472
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "extra_map_category_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "extra_map_category_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1473
    :cond_0
    const-string v2, "extra_map_search_query"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    const-string v2, "extra_map_type"

    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity$13;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mMapType:I
    invoke-static {v3}, Lcom/itim/explorer/ui/MapActivity;->access$100(Lcom/itim/explorer/ui/MapActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1475
    const-string v2, "extra_screen_title"

    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity$13;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const v4, 0x7f0e00fb

    invoke-virtual {v3, v4}, Lcom/itim/explorer/ui/MapActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$13;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v2}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1477
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$13;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v2}, Lcom/itim/explorer/ui/MapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity$13;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v3}, Lcom/itim/explorer/ui/MapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity$13;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v4}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_screen_title"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f02012a

    invoke-static {v2, v3, v4, v5}, Lcom/itim/explorer/util/UIUtil;->setupActionBar(Landroid/app/ActionBar;Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 1481
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    return-void
.end method
