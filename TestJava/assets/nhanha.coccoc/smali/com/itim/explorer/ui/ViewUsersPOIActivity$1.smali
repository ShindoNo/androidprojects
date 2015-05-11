.class Lcom/itim/explorer/ui/ViewUsersPOIActivity$1;
.super Ljava/lang/Object;
.source "ViewUsersPOIActivity.java"

# interfaces
.implements Lcom/itim/explorer/interfaces/ILoadCategory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/ui/ViewUsersPOIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$1;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/itim/explorer/interfaces/ILoad$Error;)V
    .locals 0
    .param p1, "error"    # Lcom/itim/explorer/interfaces/ILoad$Error;

    .prologue
    .line 201
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itim/explorer/io/model/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itim/explorer/io/model/Category;>;"
    iget-object v3, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$1;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    # getter for: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;
    invoke-static {v3}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$000(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Lcom/itim/explorer/io/model/UsersPOI;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$1;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    # getter for: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;
    invoke-static {v3}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$000(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Lcom/itim/explorer/io/model/UsersPOI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/UsersPOI;->getCategory()I

    move-result v1

    .line 187
    .local v1, "categoryID":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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

    .line 188
    .local v0, "category":Lcom/itim/explorer/io/model/Category;
    invoke-virtual {v0}, Lcom/itim/explorer/io/model/Category;->getId()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 189
    iget-object v3, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$1;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    # getter for: Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mTvCategory:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->access$100(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$1;->this$0:Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    invoke-virtual {v0, v4}, Lcom/itim/explorer/io/model/Category;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 193
    .end local v0    # "category":Lcom/itim/explorer/io/model/Category;
    .end local v1    # "categoryID":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
