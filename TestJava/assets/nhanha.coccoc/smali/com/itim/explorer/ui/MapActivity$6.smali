.class Lcom/itim/explorer/ui/MapActivity$6;
.super Ljava/lang/Object;
.source "MapActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/MapActivity;->setupMapLogic()V
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
    .line 895
    iput-object p1, p0, Lcom/itim/explorer/ui/MapActivity$6;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 899
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity$6;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/MapActivity;->finish()V

    .line 900
    return-void
.end method
