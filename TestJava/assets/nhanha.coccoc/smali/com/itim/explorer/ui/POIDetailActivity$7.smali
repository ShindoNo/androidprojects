.class Lcom/itim/explorer/ui/POIDetailActivity$7;
.super Ljava/lang/Object;
.source "POIDetailActivity.java"

# interfaces
.implements Lcom/itim/explorer/interfaces/ILoadReview;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/POIDetailActivity;->loadReviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/POIDetailActivity;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/POIDetailActivity;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/itim/explorer/interfaces/ILoad$Error;)V
    .locals 2
    .param p1, "error"    # Lcom/itim/explorer/interfaces/ILoad$Error;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$500(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$500(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 449
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 441
    iget-object v1, p0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/POIDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 442
    .local v0, "im":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-virtual {v1}, Lcom/itim/explorer/ui/POIDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 443
    iget-object v1, p0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mLoading:Landroid/view/View;
    invoke-static {v1}, Lcom/itim/explorer/ui/POIDetailActivity;->access$500(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mLoading:Landroid/view/View;
    invoke-static {v1}, Lcom/itim/explorer/ui/POIDetailActivity;->access$500(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 444
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/Review;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "reviews":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/Review;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    move-object/from16 v0, p1

    # setter for: Lcom/itim/explorer/ui/POIDetailActivity;->mReviews:Ljava/util/List;
    invoke-static {v13, v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$802(Lcom/itim/explorer/ui/POIDetailActivity;Ljava/util/List;)Ljava/util/List;

    .line 379
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->tvCountReviews:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/itim/explorer/ui/POIDetailActivity;->access$900(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/widget/TextView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    const v15, 0x7f0e012f

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mReviews:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/itim/explorer/ui/POIDetailActivity;->access$800(Lcom/itim/explorer/ui/POIDetailActivity;)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/itim/explorer/ui/POIDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->reviewsLimit:I
    invoke-static {v14}, Lcom/itim/explorer/ui/POIDetailActivity;->access$1000(Lcom/itim/explorer/ui/POIDetailActivity;)I

    move-result v14

    if-le v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->reviewsLimit:I
    invoke-static {v13}, Lcom/itim/explorer/ui/POIDetailActivity;->access$1000(Lcom/itim/explorer/ui/POIDetailActivity;)I

    move-result v3

    .line 382
    .local v3, "count":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->vListReviews:Landroid/widget/LinearLayout;
    invoke-static {v13}, Lcom/itim/explorer/ui/POIDetailActivity;->access$1100(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 383
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v3, :cond_1

    .line 384
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itim/explorer/io/model/Review;

    .line 385
    .local v8, "review":Lcom/itim/explorer/io/model/Review;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-virtual {v13}, Lcom/itim/explorer/ui/POIDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f040045

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 387
    .local v9, "reviewItem":Landroid/view/View;
    const v13, 0x7f0b0104

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 389
    .local v12, "tvNameItem":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-virtual {v13}, Lcom/itim/explorer/ui/POIDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0004

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 391
    invoke-virtual {v8}, Lcom/itim/explorer/io/model/Review;->getFb_user_name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    const v13, 0x7f0b0103

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/widget/ProfilePictureView;

    .line 395
    .local v1, "avatar":Lcom/facebook/widget/ProfilePictureView;
    const/4 v13, -0x1

    invoke-virtual {v1, v13}, Lcom/facebook/widget/ProfilePictureView;->setPresetSize(I)V

    .line 396
    invoke-virtual {v8}, Lcom/itim/explorer/io/model/Review;->getFb_user_id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/facebook/widget/ProfilePictureView;->setProfileId(Ljava/lang/String;)V

    .line 397
    const v13, 0x7f0b0106

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RatingBar;

    .line 399
    .local v7, "rbItem":Landroid/widget/RatingBar;
    invoke-virtual {v8}, Lcom/itim/explorer/io/model/Review;->getRating()F

    move-result v13

    invoke-virtual {v7, v13}, Landroid/widget/RatingBar;->setRating(F)V

    .line 401
    const v13, 0x7f0b0107

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 403
    .local v11, "tvDateItem":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-virtual {v13}, Lcom/itim/explorer/ui/POIDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0006

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 405
    invoke-virtual {v8}, Lcom/itim/explorer/io/model/Review;->getTimestamp()I

    move-result v13

    int-to-long v13, v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    const-string v15, "dd/MM/yyyy"

    invoke-static {v13, v14, v15}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    const v13, 0x7f0b0108

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 409
    .local v10, "tvCommentItem":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-virtual {v13}, Lcom/itim/explorer/ui/POIDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0004

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 411
    invoke-virtual {v8}, Lcom/itim/explorer/io/model/Review;->getComment()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    const v13, 0x7f0b0109

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 414
    .local v4, "divider":Landroid/view/View;
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 415
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-virtual {v14}, Lcom/itim/explorer/ui/POIDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0038

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v13, v14, v15, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 419
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->vListReviews:Landroid/widget/LinearLayout;
    invoke-static {v13}, Lcom/itim/explorer/ui/POIDetailActivity;->access$1100(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 383
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 381
    .end local v1    # "avatar":Lcom/facebook/widget/ProfilePictureView;
    .end local v3    # "count":I
    .end local v4    # "divider":Landroid/view/View;
    .end local v5    # "j":I
    .end local v7    # "rbItem":Landroid/widget/RatingBar;
    .end local v8    # "review":Lcom/itim/explorer/io/model/Review;
    .end local v9    # "reviewItem":Landroid/view/View;
    .end local v10    # "tvCommentItem":Landroid/widget/TextView;
    .end local v11    # "tvDateItem":Landroid/widget/TextView;
    .end local v12    # "tvNameItem":Landroid/widget/TextView;
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    goto/16 :goto_0

    .line 424
    .restart local v3    # "count":I
    .restart local v5    # "j":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->tvRate:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/itim/explorer/ui/POIDetailActivity;->access$1200(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/widget/TextView;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;
    invoke-static {v15}, Lcom/itim/explorer/ui/POIDetailActivity;->access$100(Lcom/itim/explorer/ui/POIDetailActivity;)Lcom/itim/explorer/io/model/POI;

    move-result-object v15

    invoke-virtual {v15}, Lcom/itim/explorer/io/model/POI;->getRating()F

    move-result v15

    invoke-static {v15}, Lcom/itim/explorer/util/Util;->roundToHalf(F)F

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x3

    if-le v13, v14, :cond_2

    .line 427
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-virtual {v13}, Lcom/itim/explorer/ui/POIDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f040024

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 429
    .local v6, "moreButton":Landroid/view/View;
    const v13, 0x7f0b00a0

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 431
    .local v2, "btnMore":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-virtual {v2, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->vListReviews:Landroid/widget/LinearLayout;
    invoke-static {v13}, Lcom/itim/explorer/ui/POIDetailActivity;->access$1100(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 434
    .end local v2    # "btnMore":Landroid/widget/Button;
    .end local v6    # "moreButton":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mLoading:Landroid/view/View;
    invoke-static {v13}, Lcom/itim/explorer/ui/POIDetailActivity;->access$500(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mLoading:Landroid/view/View;
    invoke-static {v13}, Lcom/itim/explorer/ui/POIDetailActivity;->access$500(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 436
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mRbReview:Landroid/widget/RatingBar;
    invoke-static {v13}, Lcom/itim/explorer/ui/POIDetailActivity;->access$1300(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/widget/RatingBar;

    move-result-object v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mRbReview:Landroid/widget/RatingBar;
    invoke-static {v13}, Lcom/itim/explorer/ui/POIDetailActivity;->access$1300(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/widget/RatingBar;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itim/explorer/ui/POIDetailActivity$7;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # invokes: Lcom/itim/explorer/ui/POIDetailActivity;->checkCanReview()Z
    invoke-static {v14}, Lcom/itim/explorer/ui/POIDetailActivity;->access$1400(Lcom/itim/explorer/ui/POIDetailActivity;)Z

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/RatingBar;->setEnabled(Z)V

    .line 437
    :cond_4
    return-void
.end method
