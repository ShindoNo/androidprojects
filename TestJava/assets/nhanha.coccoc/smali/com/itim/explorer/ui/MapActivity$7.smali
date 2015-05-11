.class Lcom/itim/explorer/ui/MapActivity$7;
.super Lcom/itim/explorer/io/LoadPOI;
.source "MapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/MapActivity;->loadPOIs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/MapActivity;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/MapActivity;Lcom/itim/explorer/interfaces/ILoad;)V
    .locals 0
    .param p2, "x0"    # Lcom/itim/explorer/interfaces/ILoad;

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/itim/explorer/ui/MapActivity$7;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-direct {p0, p2}, Lcom/itim/explorer/io/LoadPOI;-><init>(Lcom/itim/explorer/interfaces/ILoad;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1092
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/MapActivity$7;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1094
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    invoke-super {p0, p1}, Lcom/itim/explorer/io/LoadPOI;->onPostExecute(Ljava/util/List;)V

    .line 1096
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1097
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity$7;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/POI;

    # invokes: Lcom/itim/explorer/ui/MapActivity;->camera_show_poi(Lcom/itim/explorer/io/model/POI;)V
    invoke-static {v1, v0}, Lcom/itim/explorer/ui/MapActivity;->access$3000(Lcom/itim/explorer/ui/MapActivity;Lcom/itim/explorer/io/model/POI;)V

    .line 1098
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity$7;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # invokes: Lcom/itim/explorer/ui/MapActivity;->setPanelVisibility()V
    invoke-static {v0}, Lcom/itim/explorer/ui/MapActivity;->access$1300(Lcom/itim/explorer/ui/MapActivity;)V

    .line 1101
    :cond_0
    return-void
.end method
