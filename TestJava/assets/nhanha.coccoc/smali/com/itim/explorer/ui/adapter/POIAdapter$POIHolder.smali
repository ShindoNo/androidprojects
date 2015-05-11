.class Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;
.super Ljava/lang/Object;
.source "POIAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/ui/adapter/POIAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "POIHolder"
.end annotation


# instance fields
.field address:Landroid/widget/TextView;

.field distance:Landroid/widget/TextView;

.field icon:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

.field iconAdv:Landroid/widget/ImageView;

.field iconCategory:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field rating:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
