.class public Lcom/itim/explorer/ui/adapter/ReviewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ReviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/ui/adapter/ReviewAdapter$POIHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mReviews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/Review;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/ReviewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/Review;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "reviews":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/Review;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/itim/explorer/ui/adapter/ReviewAdapter;->mReviews:Ljava/util/List;

    .line 26
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/ReviewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/ReviewAdapter;->mReviews:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/ReviewAdapter;->mReviews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/itim/explorer/io/model/Review;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/ReviewAdapter;->mReviews:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/ReviewAdapter;->mReviews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/Review;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/adapter/ReviewAdapter;->getItem(I)Lcom/itim/explorer/io/model/Review;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/ReviewAdapter;->mReviews:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/ReviewAdapter;->mReviews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/Review;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    iget-object v2, p0, Lcom/itim/explorer/ui/adapter/ReviewAdapter;->mReviews:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 54
    if-nez p2, :cond_1

    .line 55
    iget-object v2, p0, Lcom/itim/explorer/ui/adapter/ReviewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040045

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 57
    new-instance v0, Lcom/itim/explorer/ui/adapter/ReviewAdapter$POIHolder;

    invoke-direct {v0}, Lcom/itim/explorer/ui/adapter/ReviewAdapter$POIHolder;-><init>()V

    .line 58
    .local v0, "holder":Lcom/itim/explorer/ui/adapter/ReviewAdapter$POIHolder;
    const v2, 0x7f0b0103

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/widget/ProfilePictureView;

    iput-object v2, v0, Lcom/itim/explorer/ui/adapter/ReviewAdapter$POIHolder;->avatar:Lcom/facebook/widget/ProfilePictureView;

    .line 61
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/ReviewAdapter$POIHolder;->avatar:Lcom/facebook/widget/ProfilePictureView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/facebook/widget/ProfilePictureView;->setPresetSize(I)V

    .line 62
    const v2, 0x7f0b0106

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    iput-object v2, v0, Lcom/itim/explorer/ui/adapter/ReviewAdapter$POIHolder;->rate:Landroid/widget/RatingBar;

    .line 64
    const v2, 0x7f0b0104

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/itim/explorer/ui/adapter/ReviewAdapter$POIHolder;->name:Landroid/widget/TextView;

    .line 66
    const v2, 0x7f0b0107

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/itim/explorer/ui/adapter/ReviewAdapter$POIHolder;->date:Landroid/widget/TextView;

    .line 68
    const v2, 0x7f0b0108

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/itim/explorer/ui/adapter/ReviewAdapter$POIHolder;->comment:Landroid/widget/TextView;

    .line 70
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    :goto_0
    iget-object v2, p0, Lcom/itim/explorer/ui/adapter/ReviewAdapter;->mReviews:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/io/model/Review;

    .line 75
    .local v1, "review":Lcom/itim/explorer/io/model/Review;
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/ReviewAdapter$POIHolder;->avatar:Lcom/facebook/widget/ProfilePictureView;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/Review;->getFb_user_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/widget/ProfilePictureView;->setProfileId(Ljava/lang/String;)V

    .line 76
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/ReviewAdapter$POIHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/Review;->getFb_user_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/ReviewAdapter$POIHolder;->rate:Landroid/widget/RatingBar;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/Review;->getRating()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 78
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/ReviewAdapter$POIHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/Review;->getTimestamp()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    const-string v5, "dd/MM/yyyy"

    invoke-static {v3, v4, v5}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/ReviewAdapter$POIHolder;->comment:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/Review;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .end local v0    # "holder":Lcom/itim/explorer/ui/adapter/ReviewAdapter$POIHolder;
    .end local v1    # "review":Lcom/itim/explorer/io/model/Review;
    :cond_0
    return-object p2

    .line 72
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/ui/adapter/ReviewAdapter$POIHolder;

    .restart local v0    # "holder":Lcom/itim/explorer/ui/adapter/ReviewAdapter$POIHolder;
    goto :goto_0
.end method

.method public setPOIs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/Review;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "review":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/Review;>;"
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/ReviewAdapter;->mReviews:Ljava/util/List;

    .line 88
    invoke-virtual {p0}, Lcom/itim/explorer/ui/adapter/ReviewAdapter;->notifyDataSetChanged()V

    .line 89
    return-void
.end method
