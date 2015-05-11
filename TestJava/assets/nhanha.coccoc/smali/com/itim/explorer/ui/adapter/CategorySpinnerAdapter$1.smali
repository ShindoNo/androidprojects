.class Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$1;
.super Landroid/widget/Filter;
.source "CategorySpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resultValue"    # Ljava/lang/Object;

    .prologue
    .line 118
    check-cast p1, Lcom/itim/explorer/io/model/Category;

    .end local p1    # "resultValue":Ljava/lang/Object;
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;

    # getter for: Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;->access$200(Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itim/explorer/io/model/Category;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 139
    if-eqz p1, :cond_2

    .line 140
    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;

    # getter for: Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;->mCities_result:Ljava/util/List;
    invoke-static {v3}, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;->access$300(Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 141
    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;

    # getter for: Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;->mCitiesAll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;->access$400(Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/Category;

    .line 142
    .local v0, "cityBorder":Lcom/itim/explorer/io/model/Category;
    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;

    # getter for: Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;->access$200(Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itim/explorer/io/model/Category;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;

    # getter for: Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;->locale:Ljava/util/Locale;
    invoke-static {v5}, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;->access$500(Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;

    # getter for: Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;->mCities_result:Ljava/util/List;
    invoke-static {v3}, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;->access$300(Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    .end local v0    # "cityBorder":Lcom/itim/explorer/io/model/Category;
    :cond_1
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 147
    .local v1, "filterResults":Landroid/widget/Filter$FilterResults;
    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;

    # getter for: Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;->mCities_result:Ljava/util/List;
    invoke-static {v3}, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;->access$300(Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 148
    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;

    # getter for: Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;->mCities_result:Ljava/util/List;
    invoke-static {v3}, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;->access$300(Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 151
    .end local v1    # "filterResults":Landroid/widget/Filter$FilterResults;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    return-object v1

    :cond_2
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    goto :goto_1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 125
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 126
    .local v1, "filteredList":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/Category;>;"
    if-eqz p2, :cond_1

    iget v3, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v3, :cond_1

    .line 127
    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;

    invoke-virtual {v3}, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;->clear()V

    .line 128
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/Category;

    .line 129
    .local v0, "c":Lcom/itim/explorer/io/model/Category;
    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;

    invoke-virtual {v3, v0}, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    .end local v0    # "c":Lcom/itim/explorer/io/model/Category;
    :cond_0
    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;

    invoke-virtual {v3}, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;->notifyDataSetChanged()V

    .line 135
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    return-void

    .line 134
    :cond_1
    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;

    invoke-virtual {v3}, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;->notifyDataSetInvalidated()V

    goto :goto_1
.end method
