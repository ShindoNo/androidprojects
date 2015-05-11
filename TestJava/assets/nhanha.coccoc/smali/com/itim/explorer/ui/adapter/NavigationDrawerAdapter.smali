.class public Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "NavigationDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;,
        Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;
    }
.end annotation


# instance fields
.field private mBookmarkItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGroupItems:[Ljava/lang/String;

.field private mHistoryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/itim/explorer/interfaces/MainActivityListener;

.field private mPadding:I

.field private mSelectedGroupId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lcom/itim/explorer/interfaces/MainActivityListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupItems"    # [Ljava/lang/String;
    .param p3, "listener"    # Lcom/itim/explorer/interfaces/MainActivityListener;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mSelectedGroupId:I

    .line 35
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mContext:Landroid/content/Context;

    .line 36
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    iput-object p2, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mGroupItems:[Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mListener:Lcom/itim/explorer/interfaces/MainActivityListener;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mHistoryItems:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mBookmarkItems:Ljava/util/List;

    .line 42
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v0, v0, 0xa0

    mul-int/lit8 v0, v0, 0xd

    iput v0, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mPadding:I

    .line 43
    return-void
.end method


# virtual methods
.method public getChild(II)Lcom/itim/explorer/io/model/POI;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 47
    packed-switch p1, :pswitch_data_0

    .line 58
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mHistoryItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/POI;

    goto :goto_0

    .line 51
    :pswitch_1
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/POI;

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->getChild(II)Lcom/itim/explorer/io/model/POI;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 63
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v7, 0x7f0e00a3

    const/16 v6, 0x8

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 70
    if-nez p4, :cond_0

    .line 71
    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040043

    invoke-virtual {v1, v2, p5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 73
    new-instance v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;

    invoke-direct {v0}, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;-><init>()V

    .line 74
    .local v0, "holder":Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;
    const v1, 0x7f0b00fa

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;->icon:Landroid/widget/ImageView;

    .line 76
    const v1, 0x7f0b00fe

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;->name:Landroid/widget/TextView;

    .line 78
    const v1, 0x7f0b00fd

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;->address:Landroid/widget/TextView;

    .line 80
    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    :goto_0
    iget-object v1, v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 85
    iget-object v1, v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;->name:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 86
    iget-object v1, v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;->name:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    iget-object v1, v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;->address:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 88
    iget-object v1, v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;->address:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 89
    iget-object v1, v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;->address:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    packed-switch p1, :pswitch_data_0

    .line 128
    :goto_1
    return-object p4

    .line 82
    .end local v0    # "holder":Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;

    .restart local v0    # "holder":Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;
    goto :goto_0

    .line 92
    :pswitch_0
    if-ge p2, v4, :cond_1

    .line 93
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mHistoryItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/POI;->getFe_category()I

    move-result v1

    invoke-static {v1}, Lcom/itim/explorer/io/model/Category;->getIconResource(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mHistoryItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/POI;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;->address:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mHistoryItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/POI;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 101
    :cond_1
    iget-object v1, v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 102
    iget-object v1, v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    iget-object v1, v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;->address:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 107
    :pswitch_1
    if-ge p2, v4, :cond_2

    .line 108
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/POI;->getFe_category()I

    move-result v1

    invoke-static {v1}, Lcom/itim/explorer/io/model/Category;->getIconResource(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/POI;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;->address:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/POI;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 116
    :cond_2
    iget-object v1, v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object v1, v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 118
    iget-object v1, v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$ChildViewHolder;->address:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 133
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->getGroup(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroup(I)Ljava/lang/String;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mGroupItems:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mGroupItems:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 158
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v10, 0x7f0c0038

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 165
    if-nez p3, :cond_0

    .line 166
    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04003c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 167
    new-instance v1, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;

    invoke-direct {v1}, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;-><init>()V

    .line 168
    .local v1, "holder":Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;
    const v3, 0x7f0b00dd

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;->selector:Landroid/view/View;

    .line 169
    const v3, 0x7f0b00de

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;->icon:Landroid/widget/ImageView;

    .line 171
    const v3, 0x7f0b00df

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;->name:Landroid/widget/TextView;

    .line 173
    iget-object v3, v1, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;->name:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mPadding:I

    iget v6, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mPadding:I

    iget v7, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mPadding:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 176
    const v3, 0x7f0b00e0

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;->fbName:Landroid/widget/TextView;

    .line 178
    iget-object v3, v1, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;->fbName:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 186
    :goto_0
    iget v3, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mSelectedGroupId:I

    if-ne v3, p1, :cond_1

    .line 187
    iget-object v3, v1, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;->selector:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :goto_1
    iget-object v3, v1, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;->name:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mGroupItems:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "drawableLeftID":I
    packed-switch p1, :pswitch_data_0

    .line 251
    :goto_2
    iget-object v3, v1, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    return-object p3

    .line 184
    .end local v0    # "drawableLeftID":I
    .end local v1    # "holder":Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;

    .restart local v1    # "holder":Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;
    goto :goto_0

    .line 189
    :cond_1
    iget-object v3, v1, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;->selector:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 194
    .restart local v0    # "drawableLeftID":I
    :pswitch_0
    const v0, 0x7f020129

    .line 203
    goto :goto_2

    .line 205
    :pswitch_1
    const v0, 0x7f020123

    .line 214
    goto :goto_2

    .line 216
    :pswitch_2
    const v0, 0x7f02012a

    .line 217
    goto :goto_2

    .line 219
    :pswitch_3
    const v0, 0x7f020124

    .line 220
    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mListener:Lcom/itim/explorer/interfaces/MainActivityListener;

    invoke-interface {v3}, Lcom/itim/explorer/interfaces/MainActivityListener;->getFbProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 221
    iget-object v3, v1, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;->name:Landroid/widget/TextView;

    const v4, 0x7f0e00a2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 222
    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 224
    .local v2, "pTL":I
    iget-object v3, v1, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;->name:Landroid/widget/TextView;

    iget v4, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mPadding:I

    invoke-virtual {v3, v2, v2, v4, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 225
    iget-object v3, v1, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;->fbName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mListener:Lcom/itim/explorer/interfaces/MainActivityListener;

    invoke-interface {v4}, Lcom/itim/explorer/interfaces/MainActivityListener;->getFbProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v3, v1, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;->fbName:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 228
    .end local v2    # "pTL":I
    :cond_2
    iget-object v3, v1, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;->name:Landroid/widget/TextView;

    const v4, 0x7f0e00a1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 229
    iget-object v3, v1, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;->fbName:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v3, v1, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter$GroupViewHolder;->fbName:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 234
    :pswitch_4
    const v0, 0x7f020125

    .line 235
    goto :goto_2

    .line 237
    :pswitch_5
    const v0, 0x7f020122

    .line 238
    goto :goto_2

    .line 240
    :pswitch_6
    const v0, 0x7f020121

    .line 241
    goto :goto_2

    .line 243
    :pswitch_7
    const v0, 0x7f020126

    .line 244
    goto :goto_2

    .line 192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public highlightSelectedGroup(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 279
    iput p1, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mSelectedGroupId:I

    .line 280
    invoke-virtual {p0}, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->notifyDataSetChanged()V

    .line 281
    return-void
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public setBookmarkList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 274
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mBookmarkItems:Ljava/util/List;

    .line 275
    invoke-virtual {p0}, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->notifyDataSetChanged()V

    .line 276
    return-void
.end method

.method public setHistoryList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mHistoryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 268
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->mHistoryItems:Ljava/util/List;

    .line 269
    invoke-virtual {p0}, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->notifyDataSetChanged()V

    .line 270
    return-void
.end method
