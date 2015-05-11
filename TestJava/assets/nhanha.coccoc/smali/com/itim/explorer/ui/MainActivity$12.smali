.class Lcom/itim/explorer/ui/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/MainActivity;->onCategorySelect(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/MainActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/MainActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 947
    iput-object p1, p0, Lcom/itim/explorer/ui/MainActivity$12;->this$0:Lcom/itim/explorer/ui/MainActivity;

    iput-object p2, p0, Lcom/itim/explorer/ui/MainActivity$12;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const v6, 0x7f0e0031

    const/4 v5, 0x3

    .line 952
    new-instance v0, Lcom/itim/explorer/io/model/Category;

    invoke-direct {v0}, Lcom/itim/explorer/io/model/Category;-><init>()V

    .line 953
    .local v0, "category":Lcom/itim/explorer/io/model/Category;
    const-string v1, ""

    .line 954
    .local v1, "categoryName":Ljava/lang/String;
    iget-object v4, p0, Lcom/itim/explorer/ui/MainActivity$12;->val$view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 994
    :pswitch_0
    invoke-virtual {v0, v5}, Lcom/itim/explorer/io/model/Category;->setId(I)V

    .line 995
    iget-object v4, p0, Lcom/itim/explorer/ui/MainActivity$12;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-virtual {v4}, Lcom/itim/explorer/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1000
    :goto_0
    iget-object v4, p0, Lcom/itim/explorer/ui/MainActivity$12;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-virtual {v4}, Lcom/itim/explorer/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 1002
    .local v3, "locale":Ljava/lang/String;
    const-string v4, "vi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1003
    invoke-virtual {v0, v1}, Lcom/itim/explorer/io/model/Category;->setVi(Ljava/lang/String;)V

    .line 1008
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1009
    .local v2, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "ID"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/Category;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    const-string v4, "Name"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    const-string v4, "Category click"

    invoke-static {v4, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1012
    iget-object v4, p0, Lcom/itim/explorer/ui/MainActivity$12;->this$0:Lcom/itim/explorer/ui/MainActivity;

    # invokes: Lcom/itim/explorer/ui/MainActivity;->goToMap(Lcom/itim/explorer/io/model/Category;)V
    invoke-static {v4, v0}, Lcom/itim/explorer/ui/MainActivity;->access$800(Lcom/itim/explorer/ui/MainActivity;Lcom/itim/explorer/io/model/Category;)V

    .line 1013
    iget-object v4, p0, Lcom/itim/explorer/ui/MainActivity$12;->this$0:Lcom/itim/explorer/ui/MainActivity;

    const/4 v5, 0x0

    # setter for: Lcom/itim/explorer/ui/MainActivity;->isOnTouchCategory:Z
    invoke-static {v4, v5}, Lcom/itim/explorer/ui/MainActivity;->access$902(Lcom/itim/explorer/ui/MainActivity;Z)Z

    .line 1014
    return-void

    .line 956
    .end local v2    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "locale":Ljava/lang/String;
    :pswitch_1
    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Lcom/itim/explorer/io/model/Category;->setId(I)V

    .line 957
    iget-object v4, p0, Lcom/itim/explorer/ui/MainActivity$12;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-virtual {v4}, Lcom/itim/explorer/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 958
    goto :goto_0

    .line 960
    :pswitch_2
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Lcom/itim/explorer/io/model/Category;->setId(I)V

    .line 961
    iget-object v4, p0, Lcom/itim/explorer/ui/MainActivity$12;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-virtual {v4}, Lcom/itim/explorer/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 962
    goto :goto_0

    .line 964
    :pswitch_3
    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Lcom/itim/explorer/io/model/Category;->setId(I)V

    .line 965
    iget-object v4, p0, Lcom/itim/explorer/ui/MainActivity$12;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-virtual {v4}, Lcom/itim/explorer/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 966
    goto/16 :goto_0

    .line 968
    :pswitch_4
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lcom/itim/explorer/io/model/Category;->setId(I)V

    .line 969
    iget-object v4, p0, Lcom/itim/explorer/ui/MainActivity$12;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-virtual {v4}, Lcom/itim/explorer/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 970
    goto/16 :goto_0

    .line 972
    :pswitch_5
    const/16 v4, 0x15

    invoke-virtual {v0, v4}, Lcom/itim/explorer/io/model/Category;->setId(I)V

    .line 973
    iget-object v4, p0, Lcom/itim/explorer/ui/MainActivity$12;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-virtual {v4}, Lcom/itim/explorer/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e002d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 974
    goto/16 :goto_0

    .line 976
    :pswitch_6
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/itim/explorer/io/model/Category;->setId(I)V

    .line 977
    iget-object v4, p0, Lcom/itim/explorer/ui/MainActivity$12;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-virtual {v4}, Lcom/itim/explorer/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 978
    goto/16 :goto_0

    .line 980
    :pswitch_7
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/itim/explorer/io/model/Category;->setId(I)V

    .line 981
    iget-object v4, p0, Lcom/itim/explorer/ui/MainActivity$12;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-virtual {v4}, Lcom/itim/explorer/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 982
    goto/16 :goto_0

    .line 984
    :pswitch_8
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Lcom/itim/explorer/io/model/Category;->setId(I)V

    .line 985
    iget-object v4, p0, Lcom/itim/explorer/ui/MainActivity$12;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-virtual {v4}, Lcom/itim/explorer/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 986
    goto/16 :goto_0

    .line 988
    :pswitch_9
    invoke-virtual {v0, v5}, Lcom/itim/explorer/io/model/Category;->setId(I)V

    .line 989
    iget-object v4, p0, Lcom/itim/explorer/ui/MainActivity$12;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-virtual {v4}, Lcom/itim/explorer/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 991
    goto/16 :goto_0

    .line 1005
    .restart local v3    # "locale":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v1}, Lcom/itim/explorer/io/model/Category;->setEn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 954
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00e2
        :pswitch_2
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_9
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method
