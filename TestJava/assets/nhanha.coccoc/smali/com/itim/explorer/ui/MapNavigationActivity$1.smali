.class Lcom/itim/explorer/ui/MapNavigationActivity$1;
.super Ljava/lang/Object;
.source "MapNavigationActivity.java"

# interfaces
.implements Lcom/itim/explorer/interfaces/ILoadDirection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/ui/MapNavigationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/MapNavigationActivity;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/MapNavigationActivity;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/itim/explorer/ui/MapNavigationActivity$1;->this$0:Lcom/itim/explorer/ui/MapNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/itim/explorer/interfaces/ILoadDirection$Status;)V
    .locals 3
    .param p1, "status"    # Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    .prologue
    .line 155
    const-string v0, ""

    .line 156
    .local v0, "error":Ljava/lang/String;
    sget-object v1, Lcom/itim/explorer/ui/MapNavigationActivity$3;->$SwitchMap$com$itim$explorer$interfaces$ILoadDirection$Status:[I

    invoke-virtual {p1}, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 180
    :goto_0
    :pswitch_0
    const-string v1, "GetDirection"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity$1;->this$0:Lcom/itim/explorer/ui/MapNavigationActivity;

    const/4 v2, 0x0

    # setter for: Lcom/itim/explorer/ui/MapNavigationActivity;->mIsgetDirection:Z
    invoke-static {v1, v2}, Lcom/itim/explorer/ui/MapNavigationActivity;->access$302(Lcom/itim/explorer/ui/MapNavigationActivity;Z)Z

    .line 182
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity$1;->this$0:Lcom/itim/explorer/ui/MapNavigationActivity;

    # getter for: Lcom/itim/explorer/ui/MapNavigationActivity;->mPgbLoading:Landroid/view/View;
    invoke-static {v1}, Lcom/itim/explorer/ui/MapNavigationActivity;->access$400(Lcom/itim/explorer/ui/MapNavigationActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    return-void

    .line 159
    :pswitch_1
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity$1;->this$0:Lcom/itim/explorer/ui/MapNavigationActivity;

    const v2, 0x7f0e00ed

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/MapNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    goto :goto_0

    .line 166
    :pswitch_2
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity$1;->this$0:Lcom/itim/explorer/ui/MapNavigationActivity;

    const v2, 0x7f0e00ec

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/MapNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    goto :goto_0

    .line 169
    :pswitch_3
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity$1;->this$0:Lcom/itim/explorer/ui/MapNavigationActivity;

    const v2, 0x7f0e00ad

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/MapNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity$1;->this$0:Lcom/itim/explorer/ui/MapNavigationActivity;

    invoke-virtual {v1}, Lcom/itim/explorer/ui/MapNavigationActivity;->showRetryView()V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity$1;->this$0:Lcom/itim/explorer/ui/MapNavigationActivity;

    const/4 v1, 0x1

    # setter for: Lcom/itim/explorer/ui/MapNavigationActivity;->mIsgetDirection:Z
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/MapNavigationActivity;->access$302(Lcom/itim/explorer/ui/MapNavigationActivity;Z)Z

    .line 150
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity$1;->this$0:Lcom/itim/explorer/ui/MapNavigationActivity;

    # getter for: Lcom/itim/explorer/ui/MapNavigationActivity;->mPgbLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/MapNavigationActivity;->access$400(Lcom/itim/explorer/ui/MapNavigationActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/Direction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "directions":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/Direction;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v1, "directionPoint":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v9, 0x0

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itim/explorer/io/model/Direction;

    invoke-virtual {v9}, Lcom/itim/explorer/io/model/Direction;->getLegs()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/DirectionLegs;

    .line 113
    .local v0, "directionLeg":Lcom/itim/explorer/io/model/DirectionLegs;
    new-instance v9, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/DirectionLegs;->getStart_location()Lcom/itim/explorer/io/model/GPS;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itim/explorer/io/model/GPS;->getLat()D

    move-result-wide v10

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/DirectionLegs;->getStart_location()Lcom/itim/explorer/io/model/GPS;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itim/explorer/io/model/GPS;->getLng()D

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {v0}, Lcom/itim/explorer/io/model/DirectionLegs;->getSteps()Ljava/util/List;

    move-result-object v6

    .line 116
    .local v6, "steps":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/DirectionStep;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itim/explorer/io/model/DirectionStep;

    .line 117
    .local v5, "step":Lcom/itim/explorer/io/model/DirectionStep;
    new-instance v9, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v5}, Lcom/itim/explorer/io/model/DirectionStep;->getStart_location()Lcom/itim/explorer/io/model/GPS;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itim/explorer/io/model/GPS;->getLat()D

    move-result-wide v10

    invoke-virtual {v5}, Lcom/itim/explorer/io/model/DirectionStep;->getStart_location()Lcom/itim/explorer/io/model/GPS;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itim/explorer/io/model/GPS;->getLng()D

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v5}, Lcom/itim/explorer/io/model/DirectionStep;->getPolyline()Lcom/itim/explorer/io/model/DirectionStep$Polyline;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itim/explorer/io/model/DirectionStep$Polyline;->getPoints()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/itim/explorer/util/Util;->decodePoly(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 121
    .local v3, "poty":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 122
    new-instance v9, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v5}, Lcom/itim/explorer/io/model/DirectionStep;->getEnd_location()Lcom/itim/explorer/io/model/GPS;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itim/explorer/io/model/GPS;->getLat()D

    move-result-wide v10

    invoke-virtual {v5}, Lcom/itim/explorer/io/model/DirectionStep;->getEnd_location()Lcom/itim/explorer/io/model/GPS;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itim/explorer/io/model/GPS;->getLng()D

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    .end local v3    # "poty":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    .end local v5    # "step":Lcom/itim/explorer/io/model/DirectionStep;
    :cond_0
    new-instance v9, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/DirectionLegs;->getEnd_location()Lcom/itim/explorer/io/model/GPS;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itim/explorer/io/model/GPS;->getLat()D

    move-result-wide v10

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/DirectionLegs;->getEnd_location()Lcom/itim/explorer/io/model/GPS;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itim/explorer/io/model/GPS;->getLng()D

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v9, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v9}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    const/high16 v10, 0x40800000

    invoke-virtual {v9, v10}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/android/gms/maps/model/PolylineOptions;->geodesic(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v9

    iget-object v10, p0, Lcom/itim/explorer/ui/MapNavigationActivity$1;->this$0:Lcom/itim/explorer/ui/MapNavigationActivity;

    invoke-virtual {v10}, Lcom/itim/explorer/ui/MapNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0025

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v4

    .line 132
    .local v4, "rectLine":Lcom/google/android/gms/maps/model/PolylineOptions;
    invoke-virtual {v4, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 133
    iget-object v9, p0, Lcom/itim/explorer/ui/MapNavigationActivity$1;->this$0:Lcom/itim/explorer/ui/MapNavigationActivity;

    # getter for: Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v9}, Lcom/itim/explorer/ui/MapNavigationActivity;->access$000(Lcom/itim/explorer/ui/MapNavigationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    .line 134
    const-string v9, "Direction is shown"

    invoke-static {v9}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 135
    iget-object v10, p0, Lcom/itim/explorer/ui/MapNavigationActivity$1;->this$0:Lcom/itim/explorer/ui/MapNavigationActivity;

    const/4 v9, 0x0

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itim/explorer/io/model/Direction;

    # invokes: Lcom/itim/explorer/ui/MapNavigationActivity;->animateBound(Ljava/util/List;Lcom/itim/explorer/io/model/Direction;)V
    invoke-static {v10, v1, v9}, Lcom/itim/explorer/ui/MapNavigationActivity;->access$100(Lcom/itim/explorer/ui/MapNavigationActivity;Ljava/util/List;Lcom/itim/explorer/io/model/Direction;)V

    .line 137
    iget-object v9, p0, Lcom/itim/explorer/ui/MapNavigationActivity$1;->this$0:Lcom/itim/explorer/ui/MapNavigationActivity;

    const v10, 0x7f0b009b

    invoke-virtual {v9, v10}, Lcom/itim/explorer/ui/MapNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 138
    .local v8, "tvDistanceTime":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/itim/explorer/io/model/DirectionLegs;->getDuration()Lcom/itim/explorer/io/model/DirectionStepValue;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itim/explorer/io/model/DirectionStepValue;->getText()Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, "time":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/DirectionLegs;->getDistance()Lcom/itim/explorer/io/model/DirectionStepValue;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itim/explorer/io/model/DirectionStepValue;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v9, p0, Lcom/itim/explorer/ui/MapNavigationActivity$1;->this$0:Lcom/itim/explorer/ui/MapNavigationActivity;

    # getter for: Lcom/itim/explorer/ui/MapNavigationActivity;->mPoiMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v9}, Lcom/itim/explorer/ui/MapNavigationActivity;->access$200(Lcom/itim/explorer/ui/MapNavigationActivity;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 143
    .end local v0    # "directionLeg":Lcom/itim/explorer/io/model/DirectionLegs;
    .end local v1    # "directionPoint":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "rectLine":Lcom/google/android/gms/maps/model/PolylineOptions;
    .end local v6    # "steps":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/DirectionStep;>;"
    .end local v7    # "time":Ljava/lang/String;
    .end local v8    # "tvDistanceTime":Landroid/widget/TextView;
    :cond_1
    iget-object v9, p0, Lcom/itim/explorer/ui/MapNavigationActivity$1;->this$0:Lcom/itim/explorer/ui/MapNavigationActivity;

    const/4 v10, 0x0

    # setter for: Lcom/itim/explorer/ui/MapNavigationActivity;->mIsgetDirection:Z
    invoke-static {v9, v10}, Lcom/itim/explorer/ui/MapNavigationActivity;->access$302(Lcom/itim/explorer/ui/MapNavigationActivity;Z)Z

    .line 144
    iget-object v9, p0, Lcom/itim/explorer/ui/MapNavigationActivity$1;->this$0:Lcom/itim/explorer/ui/MapNavigationActivity;

    # getter for: Lcom/itim/explorer/ui/MapNavigationActivity;->mPgbLoading:Landroid/view/View;
    invoke-static {v9}, Lcom/itim/explorer/ui/MapNavigationActivity;->access$400(Lcom/itim/explorer/ui/MapNavigationActivity;)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 145
    return-void
.end method
