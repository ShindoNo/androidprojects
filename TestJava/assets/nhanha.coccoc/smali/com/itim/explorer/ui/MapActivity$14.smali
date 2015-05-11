.class Lcom/itim/explorer/ui/MapActivity$14;
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
    .line 1483
    iput-object p1, p0, Lcom/itim/explorer/ui/MapActivity$14;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1488
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$14;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/itim/explorer/ui/MapActivity;->access$3100(Lcom/itim/explorer/ui/MapActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1489
    .local v1, "search":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1490
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$14;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const/4 v3, 0x0

    # invokes: Lcom/itim/explorer/ui/MapActivity;->onSearch(Ljava/lang/String;Z)V
    invoke-static {v2, v1, v3}, Lcom/itim/explorer/ui/MapActivity;->access$3300(Lcom/itim/explorer/ui/MapActivity;Ljava/lang/String;Z)V

    .line 1491
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1493
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Screen"

    const-string v3, "Map screen"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    const-string v2, "Button"

    const-string v3, "Search button in panel"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    const-string v2, "Search in field"

    invoke-static {v2, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1496
    return-void
.end method
