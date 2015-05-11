.class Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;
.super Landroid/widget/Filter;
.source "AutoCompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 71
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 72
    .local v1, "filterResults":Landroid/widget/Filter$FilterResults;
    if-eqz p1, :cond_1

    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    # getter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mLoad:Landroid/os/AsyncTask;
    invoke-static {v2}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->access$000(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;)Landroid/os/AsyncTask;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    # getter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mLoad:Landroid/os/AsyncTask;
    invoke-static {v2}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->access$000(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_0

    .line 79
    iget-object v2, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    # getter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mLoad:Landroid/os/AsyncTask;
    invoke-static {v2}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->access$000(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;)Landroid/os/AsyncTask;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    new-instance v3, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1$1;-><init>(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    # setter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mLoad:Landroid/os/AsyncTask;
    invoke-static {v2, v3}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->access$002(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 147
    iget-object v2, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    # getter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mLoad:Landroid/os/AsyncTask;
    invoke-static {v2}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->access$000(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;)Landroid/os/AsyncTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_1
    :goto_0
    return-object v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AutoComplete"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1
    .param p1, "contraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 162
    if-eqz p2, :cond_0

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->notifyDataSetChanged()V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
