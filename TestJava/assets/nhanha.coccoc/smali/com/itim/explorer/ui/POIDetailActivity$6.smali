.class Lcom/itim/explorer/ui/POIDetailActivity$6;
.super Ljava/lang/Object;
.source "POIDetailActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/POIDetailActivity;->updateAllViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/POIDetailActivity;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/POIDetailActivity;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/itim/explorer/ui/POIDetailActivity$6;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$6;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # invokes: Lcom/itim/explorer/ui/POIDetailActivity;->gotoMap()V
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$700(Lcom/itim/explorer/ui/POIDetailActivity;)V

    .line 367
    return-void
.end method
