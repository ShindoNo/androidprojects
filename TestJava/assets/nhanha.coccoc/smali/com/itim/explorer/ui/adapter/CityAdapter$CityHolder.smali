.class Lcom/itim/explorer/ui/adapter/CityAdapter$CityHolder;
.super Ljava/lang/Object;
.source "CityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/ui/adapter/CityAdapter;
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
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itim/explorer/ui/adapter/CityAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/itim/explorer/ui/adapter/CityAdapter$1;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/itim/explorer/ui/adapter/CityAdapter$CityHolder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/adapter/CityAdapter$CityHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/CityAdapter$CityHolder;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/CityAdapter$CityHolder;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/itim/explorer/ui/adapter/CityAdapter$CityHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/CityAdapter$CityHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/CityAdapter$CityHolder;->name:Landroid/widget/TextView;

    return-object p1
.end method
