.class Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;
.super Ljava/lang/Object;
.source "ViewUsersPOIActivity.java"

# interfaces
.implements Lcom/itim/explorer/interfaces/ILoadUsersPOI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/ui/ViewUsersPOIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;)V
    .locals 2
    .param p1, "error"    # Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    # getter for: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mVLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$800(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    # getter for: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mVLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$800(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/UsersPOI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/UsersPOI;>;"
    const/4 v3, 0x0

    .line 208
    if-eqz p1, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/io/model/UsersPOI;

    # setter for: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;
    invoke-static {v2, v1}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$002(Lcom/itim/explorer/ui/ViewUsersPOIActivity;Lcom/itim/explorer/io/model/UsersPOI;)Lcom/itim/explorer/io/model/UsersPOI;

    .line 211
    iget-object v1, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    # getter for: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtPhone:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$200(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    # getter for: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;
    invoke-static {v2}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$000(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Lcom/itim/explorer/io/model/UsersPOI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/UsersPOI;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v1, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    # getter for: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;
    invoke-static {v1}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$000(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Lcom/itim/explorer/io/model/UsersPOI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/UsersPOI;->getUrl()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 213
    iget-object v1, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    # getter for: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtWeb:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$300(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    # getter for: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;
    invoke-static {v2}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$000(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Lcom/itim/explorer/io/model/UsersPOI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/UsersPOI;->getUrl()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    # getter for: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtAddress:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$400(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    # getter for: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;
    invoke-static {v2}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$000(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Lcom/itim/explorer/io/model/UsersPOI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/UsersPOI;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    # getter for: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mTvCity:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$500(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    # getter for: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;
    invoke-static {v2}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$000(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Lcom/itim/explorer/io/model/UsersPOI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/UsersPOI;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v1, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    # invokes: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->createPhoto()V
    invoke-static {v1}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$600(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)V

    .line 222
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    # getter for: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;
    invoke-static {v1}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$000(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Lcom/itim/explorer/io/model/UsersPOI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/UsersPOI;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    # getter for: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;
    invoke-static {v3}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$000(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Lcom/itim/explorer/io/model/UsersPOI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/UsersPOI;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 224
    .local v0, "location":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    # getter for: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v1}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$700(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    iget-object v3, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    # getter for: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;
    invoke-static {v3}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$000(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Lcom/itim/explorer/io/model/UsersPOI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/UsersPOI;->getCategory()I

    move-result v3

    invoke-static {v3}, Lcom/itim/explorer/io/model/Category;->getMarkerResID(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 228
    iget-object v1, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    # getter for: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v1}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$700(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    const/high16 v2, 0x41600000

    invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 231
    iget-object v1, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    # getter for: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mVLoading:Landroid/view/View;
    invoke-static {v1}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$800(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
