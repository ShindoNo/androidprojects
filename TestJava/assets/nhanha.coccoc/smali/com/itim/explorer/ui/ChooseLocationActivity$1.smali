.class Lcom/itim/explorer/ui/ChooseLocationActivity$1;
.super Ljava/lang/Object;
.source "ChooseLocationActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/ChooseLocationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/ChooseLocationActivity;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$1;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$1;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    invoke-virtual {v0, p1}, Lcom/itim/explorer/ui/ChooseLocationActivity;->onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 58
    return-void
.end method
