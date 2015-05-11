.class Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$CityHolder;
.super Ljava/lang/Object;
.source "CategorySpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CityHolder"
.end annotation


# instance fields
.field private name:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$1;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$CityHolder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$CityHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$CityHolder;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$CityHolder;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$CityHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$CityHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$CityHolder;->name:Landroid/widget/TextView;

    return-object p1
.end method
