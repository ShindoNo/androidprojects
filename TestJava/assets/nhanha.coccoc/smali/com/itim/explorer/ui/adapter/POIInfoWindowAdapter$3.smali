.class Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter$3;
.super Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;
.source "POIInfoWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;

.field final synthetic val$poiNear:Lcom/itim/explorer/io/model/POI;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;Landroid/view/View;IILcom/itim/explorer/io/model/POI;)V
    .locals 0
    .param p2, "x0"    # Landroid/view/View;
    .param p3, "x1"    # I
    .param p4, "x2"    # I

    .prologue
    .line 167
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter$3;->this$0:Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;

    iput-object p5, p0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter$3;->val$poiNear:Lcom/itim/explorer/io/model/POI;

    invoke-direct {p0, p2, p3, p4}, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;-><init>(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method protected onClickConfirmed(Landroid/view/View;Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter$3;->this$0:Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;

    # getter for: Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mMapListener:Lcom/itim/explorer/interfaces/MapActivityListener;
    invoke-static {v0}, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->access$100(Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;)Lcom/itim/explorer/interfaces/MapActivityListener;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter$3;->val$poiNear:Lcom/itim/explorer/io/model/POI;

    invoke-interface {v0, v1}, Lcom/itim/explorer/interfaces/MapActivityListener;->onInfoWindowsClick(Lcom/itim/explorer/io/model/POI;)V

    .line 172
    return-void
.end method
