.class Lcom/itim/explorer/ui/AddPOIActivity$6;
.super Landroid/os/AsyncTask;
.source "AddPOIActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/AddPOIActivity;->addPOI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private isSuccess:Z

.field final synthetic this$0:Lcom/itim/explorer/ui/AddPOIActivity;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/AddPOIActivity;)V
    .locals 1

    .prologue
    .line 680
    iput-object p1, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->isSuccess:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 680
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/AddPOIActivity$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v12, 0x0

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # invokes: Lcom/itim/explorer/ui/AddPOIActivity;->imageToString()Ljava/lang/String;
    invoke-static {v0}, Lcom/itim/explorer/ui/AddPOIActivity;->access$500(Lcom/itim/explorer/ui/AddPOIActivity;)Ljava/lang/String;

    move-result-object v5

    .line 689
    .local v5, "image":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 690
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->isSuccess:Z

    .line 705
    .end local v5    # "image":Ljava/lang/String;
    :goto_0
    return-object v12

    .line 693
    .restart local v5    # "image":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mUid:Ljava/lang/String;
    invoke-static {v0}, Lcom/itim/explorer/ui/AddPOIActivity;->access$600(Lcom/itim/explorer/ui/AddPOIActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mUid:Ljava/lang/String;
    invoke-static {v0}, Lcom/itim/explorer/ui/AddPOIActivity;->access$600(Lcom/itim/explorer/ui/AddPOIActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-ne v0, v1, :cond_3

    .line 694
    :cond_2
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    iget-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    invoke-static {v1}, Lcom/itim/explorer/util/Util;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/itim/explorer/ui/AddPOIActivity;->mUid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/AddPOIActivity;->access$602(Lcom/itim/explorer/ui/AddPOIActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 695
    :cond_3
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mEtTitle:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/itim/explorer/ui/AddPOIActivity;->access$700(Lcom/itim/explorer/ui/AddPOIActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mEtPhone:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/itim/explorer/ui/AddPOIActivity;->access$800(Lcom/itim/explorer/ui/AddPOIActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mCategory:Lcom/itim/explorer/io/model/Category;
    invoke-static {v2}, Lcom/itim/explorer/ui/AddPOIActivity;->access$900(Lcom/itim/explorer/ui/AddPOIActivity;)Lcom/itim/explorer/io/model/Category;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, ""

    :goto_1
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mEtAddress:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/itim/explorer/ui/AddPOIActivity;->access$1000(Lcom/itim/explorer/ui/AddPOIActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mTvCity:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/itim/explorer/ui/AddPOIActivity;->access$1100(Lcom/itim/explorer/ui/AddPOIActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mLatPicture:D
    invoke-static {v6}, Lcom/itim/explorer/ui/AddPOIActivity;->access$1200(Lcom/itim/explorer/ui/AddPOIActivity;)D

    move-result-wide v6

    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mLongPicture:D
    invoke-static {v8}, Lcom/itim/explorer/ui/AddPOIActivity;->access$1300(Lcom/itim/explorer/ui/AddPOIActivity;)D

    move-result-wide v8

    iget-object v10, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mUid:Ljava/lang/String;
    invoke-static {v10}, Lcom/itim/explorer/ui/AddPOIActivity;->access$600(Lcom/itim/explorer/ui/AddPOIActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lcom/itim/explorer/io/DataHandler;->addPOI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->isSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 702
    .end local v5    # "image":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 703
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 695
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v5    # "image":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mCategory:Lcom/itim/explorer/io/model/Category;
    invoke-static {v3}, Lcom/itim/explorer/ui/AddPOIActivity;->access$900(Lcom/itim/explorer/ui/AddPOIActivity;)Lcom/itim/explorer/io/model/Category;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/Category;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 680
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/AddPOIActivity$6;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 709
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 710
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Screen"

    const-string v2, "Add POI screen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    const-string v2, "Category"

    iget-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mCategory:Lcom/itim/explorer/io/model/Category;
    invoke-static {v1}, Lcom/itim/explorer/ui/AddPOIActivity;->access$900(Lcom/itim/explorer/ui/AddPOIActivity;)Lcom/itim/explorer/io/model/Category;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    const-string v1, "City"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mTvCity:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/itim/explorer/ui/AddPOIActivity;->access$1100(Lcom/itim/explorer/ui/AddPOIActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    const-string v1, "Button"

    const-string v2, "Rotate right"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    const-string v1, "Is success"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->isSuccess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    const-string v1, "Adding POI"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 717
    iget-boolean v1, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->isSuccess:Z

    if-eqz v1, :cond_1

    .line 718
    iget-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    new-instance v2, Lcom/itim/explorer/ui/AddPOIActivity$6$1;

    invoke-direct {v2, p0}, Lcom/itim/explorer/ui/AddPOIActivity$6$1;-><init>(Lcom/itim/explorer/ui/AddPOIActivity$6;)V

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/AddPOIActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 758
    :goto_1
    return-void

    .line 712
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mCategory:Lcom/itim/explorer/io/model/Category;
    invoke-static {v3}, Lcom/itim/explorer/ui/AddPOIActivity;->access$900(Lcom/itim/explorer/ui/AddPOIActivity;)Lcom/itim/explorer/io/model/Category;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/Category;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 733
    :cond_1
    iget-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    new-instance v2, Lcom/itim/explorer/ui/AddPOIActivity$6$2;

    invoke-direct {v2, p0}, Lcom/itim/explorer/ui/AddPOIActivity$6$2;-><init>(Lcom/itim/explorer/ui/AddPOIActivity$6;)V

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/AddPOIActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
