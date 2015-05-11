.class Lcom/itim/explorer/ui/CityChooseDialog$1;
.super Ljava/lang/Object;
.source "CityChooseDialog.java"

# interfaces
.implements Lcom/itim/explorer/interfaces/ILoadCityBorder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/ui/CityChooseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/CityChooseDialog;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/CityChooseDialog;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/itim/explorer/ui/CityChooseDialog$1;->this$0:Lcom/itim/explorer/ui/CityChooseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/itim/explorer/interfaces/ILoad$Error;)V
    .locals 0
    .param p1, "error"    # Lcom/itim/explorer/interfaces/ILoad$Error;

    .prologue
    .line 110
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 106
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
            "Lcom/itim/explorer/io/model/CityBorder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "cities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itim/explorer/io/model/CityBorder;>;"
    iget-object v0, p0, Lcom/itim/explorer/ui/CityChooseDialog$1;->this$0:Lcom/itim/explorer/ui/CityChooseDialog;

    # getter for: Lcom/itim/explorer/ui/CityChooseDialog;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/itim/explorer/ui/CityChooseDialog;->access$000(Lcom/itim/explorer/ui/CityChooseDialog;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/ui/CityChooseDialog$1;->this$0:Lcom/itim/explorer/ui/CityChooseDialog;

    # getter for: Lcom/itim/explorer/ui/CityChooseDialog;->mNotSetCurrentCity:Z
    invoke-static {v0}, Lcom/itim/explorer/ui/CityChooseDialog;->access$100(Lcom/itim/explorer/ui/CityChooseDialog;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/itim/explorer/ui/CityChooseDialog$1;->this$0:Lcom/itim/explorer/ui/CityChooseDialog;

    # getter for: Lcom/itim/explorer/ui/CityChooseDialog;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/itim/explorer/ui/CityChooseDialog;->access$000(Lcom/itim/explorer/ui/CityChooseDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/itim/explorer/io/model/CityBorder;->createCurrentCity(Landroid/content/Context;)Lcom/itim/explorer/io/model/CityBorder;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/itim/explorer/ui/CityChooseDialog$1;->this$0:Lcom/itim/explorer/ui/CityChooseDialog;

    new-instance v1, Lcom/itim/explorer/ui/adapter/CityAdapter;

    iget-object v2, p0, Lcom/itim/explorer/ui/CityChooseDialog$1;->this$0:Lcom/itim/explorer/ui/CityChooseDialog;

    # getter for: Lcom/itim/explorer/ui/CityChooseDialog;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/itim/explorer/ui/CityChooseDialog;->access$000(Lcom/itim/explorer/ui/CityChooseDialog;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040052

    const v4, 0x7f0b0148

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/itim/explorer/ui/adapter/CityAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    # setter for: Lcom/itim/explorer/ui/CityChooseDialog;->mCityAdapter:Lcom/itim/explorer/ui/adapter/CityAdapter;
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/CityChooseDialog;->access$202(Lcom/itim/explorer/ui/CityChooseDialog;Lcom/itim/explorer/ui/adapter/CityAdapter;)Lcom/itim/explorer/ui/adapter/CityAdapter;

    .line 101
    iget-object v0, p0, Lcom/itim/explorer/ui/CityChooseDialog$1;->this$0:Lcom/itim/explorer/ui/CityChooseDialog;

    # getter for: Lcom/itim/explorer/ui/CityChooseDialog;->mLvPOIs:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/itim/explorer/ui/CityChooseDialog;->access$300(Lcom/itim/explorer/ui/CityChooseDialog;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/ui/CityChooseDialog$1;->this$0:Lcom/itim/explorer/ui/CityChooseDialog;

    # getter for: Lcom/itim/explorer/ui/CityChooseDialog;->mCityAdapter:Lcom/itim/explorer/ui/adapter/CityAdapter;
    invoke-static {v1}, Lcom/itim/explorer/ui/CityChooseDialog;->access$200(Lcom/itim/explorer/ui/CityChooseDialog;)Lcom/itim/explorer/ui/adapter/CityAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
