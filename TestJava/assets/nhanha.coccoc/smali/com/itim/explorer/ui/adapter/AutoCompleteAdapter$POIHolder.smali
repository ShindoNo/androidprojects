.class Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;
.super Ljava/lang/Object;
.source "AutoCompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "POIHolder"
.end annotation


# instance fields
.field private address:Landroid/widget/TextView;

.field private distance:Landroid/widget/TextView;

.field private icon:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

.field private name:Landroid/widget/TextView;

.field private rating:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;)Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->icon:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;)Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;
    .param p1, "x1"    # Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->icon:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->name:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->address:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->address:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->distance:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->distance:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->rating:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->rating:Landroid/widget/TextView;

    return-object p1
.end method
