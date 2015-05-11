.class Lcom/itim/explorer/ui/adapter/ReviewAdapter$POIHolder;
.super Ljava/lang/Object;
.source "ReviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/ui/adapter/ReviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "POIHolder"
.end annotation


# instance fields
.field avatar:Lcom/facebook/widget/ProfilePictureView;

.field comment:Landroid/widget/TextView;

.field date:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field rate:Landroid/widget/RatingBar;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
