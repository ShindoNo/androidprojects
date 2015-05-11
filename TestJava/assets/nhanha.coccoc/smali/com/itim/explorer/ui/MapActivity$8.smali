.class Lcom/itim/explorer/ui/MapActivity$8;
.super Ljava/lang/Object;
.source "MapActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/MapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/MapActivity;

.field final synthetic val$menu:Landroid/view/Menu;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/MapActivity;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 1253
    iput-object p1, p0, Lcom/itim/explorer/ui/MapActivity$8;->this$0:Lcom/itim/explorer/ui/MapActivity;

    iput-object p2, p0, Lcom/itim/explorer/ui/MapActivity$8;->val$menu:Landroid/view/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1291
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$8;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v2}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "extra_map_search_input"

    iget-object v6, p0, Lcom/itim/explorer/ui/MapActivity$8;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;
    invoke-static {v6}, Lcom/itim/explorer/ui/MapActivity;->access$3100(Lcom/itim/explorer/ui/MapActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1295
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$8;->val$menu:Landroid/view/Menu;

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1297
    .local v1, "listItem":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 1298
    # invokes: Lcom/itim/explorer/ui/MapActivity;->isPanelHidden()Z
    invoke-static {}, Lcom/itim/explorer/ui/MapActivity;->access$3200()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1300
    :cond_0
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$8;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const-string v5, "input_method"

    invoke-virtual {v2, v5}, Lcom/itim/explorer/ui/MapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1301
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$8;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/itim/explorer/ui/MapActivity;->access$3100(Lcom/itim/explorer/ui/MapActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1304
    return v3

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    move v2, v4

    .line 1298
    goto :goto_0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1257
    invoke-static {}, Lcom/itim/explorer/ui/MapActivity;->collapsePanel()V

    .line 1264
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$8;->val$menu:Landroid/view/Menu;

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1266
    .local v0, "listItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1267
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1268
    :cond_0
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$8;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/itim/explorer/ui/MapActivity;->access$3100(Lcom/itim/explorer/ui/MapActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 1269
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$8;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/itim/explorer/ui/MapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1272
    .local v1, "mgr":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1, v6, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 1274
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$8;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/itim/explorer/ui/MapActivity;->access$3100(Lcom/itim/explorer/ui/MapActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$8;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v2}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "extra_map_search_input"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$8;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v2}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "extra_map_search_input"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1283
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$8;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/itim/explorer/ui/MapActivity;->access$3100(Lcom/itim/explorer/ui/MapActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity$8;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/itim/explorer/ui/MapActivity;->access$3100(Lcom/itim/explorer/ui/MapActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 1285
    return v5

    .line 1274
    :cond_1
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$8;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v2}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "extra_map_search_input"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$8;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v2}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "extra_map_search_query"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$8;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mMapType:I
    invoke-static {v2}, Lcom/itim/explorer/ui/MapActivity;->access$100(Lcom/itim/explorer/ui/MapActivity;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$8;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mMapType:I
    invoke-static {v2}, Lcom/itim/explorer/ui/MapActivity;->access$100(Lcom/itim/explorer/ui/MapActivity;)I

    move-result v2

    if-eq v2, v5, :cond_3

    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$8;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v2}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "extra_screen_title"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method
