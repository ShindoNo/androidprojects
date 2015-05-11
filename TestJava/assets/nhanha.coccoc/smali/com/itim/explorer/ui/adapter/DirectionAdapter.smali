.class public Lcom/itim/explorer/ui/adapter/DirectionAdapter;
.super Landroid/widget/BaseAdapter;
.source "DirectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/ui/adapter/DirectionAdapter$DirectionHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mLegs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/DirectionLegs;",
            ">;"
        }
    .end annotation
.end field

.field private mSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/DirectionStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/DirectionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/DirectionAdapter;->mLegs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/DirectionAdapter;->mSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/itim/explorer/io/model/DirectionLegs;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/DirectionAdapter;->mLegs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/DirectionAdapter;->mLegs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/DirectionLegs;

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
    .line 18
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/adapter/DirectionAdapter;->getItem(I)Lcom/itim/explorer/io/model/DirectionLegs;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 48
    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/DirectionAdapter;->mLegs:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 50
    if-nez p2, :cond_1

    .line 51
    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/DirectionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040043

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 53
    new-instance v0, Lcom/itim/explorer/ui/adapter/DirectionAdapter$DirectionHolder;

    invoke-direct {v0}, Lcom/itim/explorer/ui/adapter/DirectionAdapter$DirectionHolder;-><init>()V

    .line 54
    .local v0, "holder":Lcom/itim/explorer/ui/adapter/DirectionAdapter$DirectionHolder;
    const v1, 0x7f0b00fa

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/itim/explorer/ui/adapter/DirectionAdapter$DirectionHolder;->icon:Landroid/widget/ImageView;

    .line 56
    const v1, 0x7f0b00fe

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/itim/explorer/ui/adapter/DirectionAdapter$DirectionHolder;->name:Landroid/widget/TextView;

    .line 58
    const v1, 0x7f0b00fd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/itim/explorer/ui/adapter/DirectionAdapter$DirectionHolder;->address:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :goto_0
    if-nez p1, :cond_2

    .line 68
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/DirectionAdapter$DirectionHolder;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/DirectionAdapter;->mLegs:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/io/model/DirectionLegs;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/DirectionLegs;->getStart_address()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .end local v0    # "holder":Lcom/itim/explorer/ui/adapter/DirectionAdapter$DirectionHolder;
    :cond_0
    :goto_1
    return-object p2

    .line 62
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/ui/adapter/DirectionAdapter$DirectionHolder;

    .restart local v0    # "holder":Lcom/itim/explorer/ui/adapter/DirectionAdapter$DirectionHolder;
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/itim/explorer/ui/adapter/DirectionAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_3

    .line 73
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/DirectionAdapter$DirectionHolder;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/DirectionAdapter;->mLegs:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/io/model/DirectionLegs;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/DirectionLegs;->getEnd_address()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 79
    :cond_3
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/DirectionAdapter$DirectionHolder;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/DirectionAdapter;->mSteps:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/io/model/DirectionStep;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/DirectionStep;->getHtml_instructions()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/DirectionAdapter$DirectionHolder;->address:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/DirectionAdapter;->mSteps:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/io/model/DirectionStep;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/DirectionStep;->getDistance()Lcom/itim/explorer/io/model/DirectionStepValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/DirectionStepValue;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/DirectionLegs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "diLegs":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/DirectionLegs;>;"
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/DirectionAdapter;->mLegs:Ljava/util/List;

    .line 90
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/DirectionAdapter;->mLegs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/DirectionLegs;

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/DirectionLegs;->getSteps()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/DirectionAdapter;->mSteps:Ljava/util/List;

    .line 91
    invoke-virtual {p0}, Lcom/itim/explorer/ui/adapter/DirectionAdapter;->notifyDataSetChanged()V

    .line 92
    return-void
.end method
