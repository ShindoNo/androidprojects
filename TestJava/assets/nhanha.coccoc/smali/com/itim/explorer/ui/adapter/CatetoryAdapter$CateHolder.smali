.class Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;
.super Ljava/lang/Object;
.source "CatetoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/ui/adapter/CatetoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CateHolder"
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private name:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itim/explorer/ui/adapter/CatetoryAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/itim/explorer/ui/adapter/CatetoryAdapter$1;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;->icon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;->name:Landroid/widget/TextView;

    return-object p1
.end method
