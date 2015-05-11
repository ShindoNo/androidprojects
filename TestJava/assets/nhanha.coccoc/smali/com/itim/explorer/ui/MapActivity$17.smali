.class Lcom/itim/explorer/ui/MapActivity$17;
.super Ljava/lang/Object;
.source "MapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/MapActivity;->onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/MapActivity;

.field final synthetic val$point:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/MapActivity;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 2125
    iput-object p1, p0, Lcom/itim/explorer/ui/MapActivity$17;->this$0:Lcom/itim/explorer/ui/MapActivity;

    iput-object p2, p0, Lcom/itim/explorer/ui/MapActivity$17;->val$point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 2128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2129
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Type"

    const-string v2, "Show nearby places"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2130
    const-string v1, "Button"

    const-string v2, "yes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2131
    const-string v1, "Dialog"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 2133
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity$17;->this$0:Lcom/itim/explorer/ui/MapActivity;

    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$17;->val$point:Lcom/google/android/gms/maps/model/LatLng;

    # invokes: Lcom/itim/explorer/ui/MapActivity;->onSearchNearby(Lcom/google/android/gms/maps/model/LatLng;)V
    invoke-static {v1, v2}, Lcom/itim/explorer/ui/MapActivity;->access$3600(Lcom/itim/explorer/ui/MapActivity;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 2134
    return-void
.end method
