.class Lcom/github/amlcurran/showcaseview/TextDrawer;
.super Ljava/lang/Object;
.source "TextDrawer.java"


# instance fields
.field private final actionBarOffset:F

.field private final calculator:Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;

.field private final context:Landroid/content/Context;

.field private hasRecalculated:Z

.field private mBestTextPosition:[F

.field private mDetailSpan:Landroid/text/style/TextAppearanceSpan;

.field private mDetails:Ljava/lang/CharSequence;

.field private mDynamicDetailLayout:Landroid/text/DynamicLayout;

.field private mDynamicTitleLayout:Landroid/text/DynamicLayout;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleSpan:Landroid/text/style/TextAppearanceSpan;

.field private final padding:F

.field private final textPaint:Landroid/text/TextPaint;

.field private final titlePaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;Landroid/content/Context;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "calculator"    # Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    .line 35
    sget v0, Lcom/github/amlcurran/showcaseview/R$dimen;->text_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    .line 36
    sget v0, Lcom/github/amlcurran/showcaseview/R$dimen;->action_bar_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->actionBarOffset:F

    .line 38
    iput-object p2, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->calculator:Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;

    .line 39
    iput-object p3, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->context:Landroid/content/Context;

    .line 41
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->titlePaint:Landroid/text/TextPaint;

    .line 42
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->titlePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 44
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->textPaint:Landroid/text/TextPaint;

    .line 45
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 46
    return-void
.end method


# virtual methods
.method public calculateTextPosition(IILcom/github/amlcurran/showcaseview/ShowcaseView;Z)V
    .locals 11
    .param p1, "canvasW"    # I
    .param p2, "canvasH"    # I
    .param p3, "showcaseView"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .param p4, "shouldCentreText"    # Z

    .prologue
    const/high16 v10, 0x40000000

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 111
    invoke-virtual {p3}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasShowcaseView()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->calculator:Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;

    invoke-virtual {v4}, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;->getShowcaseRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 115
    .local v3, "showcase":Landroid/graphics/Rect;
    :goto_0
    const/4 v4, 0x4

    new-array v0, v4, [I

    .line 116
    .local v0, "areas":[I
    iget v4, v3, Landroid/graphics/Rect;->left:I

    mul-int/2addr v4, p2

    aput v4, v0, v8

    .line 117
    iget v4, v3, Landroid/graphics/Rect;->top:I

    mul-int/2addr v4, p1

    aput v4, v0, v7

    .line 118
    iget v4, v3, Landroid/graphics/Rect;->right:I

    sub-int v4, p1, v4

    mul-int/2addr v4, p2

    aput v4, v0, v9

    .line 119
    const/4 v4, 0x3

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v5, p2, v5

    mul-int/2addr v5, p1

    aput v5, v0, v4

    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, "largest":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 123
    aget v4, v0, v1

    aget v5, v0, v2

    if-le v4, v5, :cond_0

    .line 124
    move v2, v1

    .line 122
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 111
    .end local v0    # "areas":[I
    .end local v1    # "i":I
    .end local v2    # "largest":I
    .end local v3    # "showcase":Landroid/graphics/Rect;
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    .line 128
    .restart local v0    # "areas":[I
    .restart local v1    # "i":I
    .restart local v2    # "largest":I
    .restart local v3    # "showcase":Landroid/graphics/Rect;
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 150
    :goto_2
    if-eqz p4, :cond_3

    .line 152
    packed-switch v2, :pswitch_data_1

    .line 173
    :goto_3
    iput-boolean v7, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->hasRecalculated:Z

    .line 174
    return-void

    .line 130
    :pswitch_0
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    iget v5, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    aput v5, v4, v8

    .line 131
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    iget v5, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    aput v5, v4, v7

    .line 132
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    mul-float/2addr v6, v10

    sub-float/2addr v5, v6

    aput v5, v4, v9

    goto :goto_2

    .line 135
    :pswitch_1
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    iget v5, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    aput v5, v4, v8

    .line 136
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    iget v5, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    iget v6, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->actionBarOffset:F

    add-float/2addr v5, v6

    aput v5, v4, v7

    .line 137
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    int-to-float v5, p1

    iget v6, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    mul-float/2addr v6, v10

    sub-float/2addr v5, v6

    aput v5, v4, v9

    goto :goto_2

    .line 140
    :pswitch_2
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    iget v5, v3, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    add-float/2addr v5, v6

    aput v5, v4, v8

    .line 141
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    iget v5, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    aput v5, v4, v7

    .line 142
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int v5, p1, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    mul-float/2addr v6, v10

    sub-float/2addr v5, v6

    aput v5, v4, v9

    goto :goto_2

    .line 145
    :pswitch_3
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    iget v5, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    aput v5, v4, v8

    .line 146
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget v6, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    add-float/2addr v5, v6

    aput v5, v4, v7

    .line 147
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    int-to-float v5, p1

    iget v6, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    mul-float/2addr v6, v10

    sub-float/2addr v5, v6

    aput v5, v4, v9

    goto :goto_2

    .line 155
    :pswitch_4
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    aget v5, v4, v7

    div-int/lit8 v6, p2, 0x4

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, v4, v7

    goto :goto_3

    .line 159
    :pswitch_5
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    aget v5, v4, v9

    div-float/2addr v5, v10

    aput v5, v4, v9

    .line 160
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    aget v5, v4, v8

    div-int/lit8 v6, p1, 0x4

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, v4, v8

    goto/16 :goto_3

    .line 165
    :cond_3
    packed-switch v2, :pswitch_data_2

    :pswitch_6
    goto/16 :goto_3

    .line 168
    :pswitch_7
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    aget v5, v4, v7

    iget v6, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->actionBarOffset:F

    add-float/2addr v5, v6

    aput v5, v4, v7

    goto/16 :goto_3

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 152
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 165
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/TextDrawer;->shouldDrawText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/TextDrawer;->getBestTextPosition()[F

    move-result-object v9

    .line 52
    .local v9, "textPosition":[F
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 54
    iget-boolean v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->hasRecalculated:Z

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->titlePaint:Landroid/text/TextPaint;

    const/4 v3, 0x2

    aget v3, v9, v3

    float-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000

    const/high16 v6, 0x3f800000

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDynamicTitleLayout:Landroid/text/DynamicLayout;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDynamicTitleLayout:Landroid/text/DynamicLayout;

    if-eqz v0, :cond_1

    .line 60
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 61
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDynamicTitleLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v0, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDetails:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 68
    iget-boolean v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->hasRecalculated:Z

    if-eqz v0, :cond_2

    .line 69
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDetails:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->textPaint:Landroid/text/TextPaint;

    const/4 v3, 0x2

    aget v3, v9, v3

    float-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const v5, 0x3f99999a

    const/high16 v6, 0x3f800000

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDynamicDetailLayout:Landroid/text/DynamicLayout;

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDynamicTitleLayout:Landroid/text/DynamicLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDynamicTitleLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v0

    int-to-float v8, v0

    .line 76
    .local v8, "offsetForTitle":F
    :goto_0
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDynamicDetailLayout:Landroid/text/DynamicLayout;

    if-eqz v0, :cond_3

    .line 77
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    add-float/2addr v1, v8

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 78
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDynamicDetailLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v0, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 84
    .end local v8    # "offsetForTitle":F
    .end local v9    # "textPosition":[F
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->hasRecalculated:Z

    .line 85
    return-void

    .line 74
    .restart local v9    # "textPosition":[F
    :cond_4
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public getBestTextPosition()[F
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    return-object v0
.end method

.method public getContentText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDetails:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setContentText(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "details"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 88
    if-eqz p1, :cond_0

    .line 89
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 90
    .local v0, "ssbDetail":Landroid/text/SpannableString;
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDetailSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 91
    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDetails:Ljava/lang/CharSequence;

    .line 93
    .end local v0    # "ssbDetail":Landroid/text/SpannableString;
    :cond_0
    return-void
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 96
    if-eqz p1, :cond_0

    .line 97
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 98
    .local v0, "ssbTitle":Landroid/text/SpannableString;
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mTitleSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 99
    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mTitle:Ljava/lang/CharSequence;

    .line 101
    .end local v0    # "ssbTitle":Landroid/text/SpannableString;
    :cond_0
    return-void
.end method

.method public setDetailStyling(I)V
    .locals 2
    .param p1, "styleId"    # I

    .prologue
    .line 182
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDetailSpan:Landroid/text/style/TextAppearanceSpan;

    .line 183
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDetails:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/TextDrawer;->setContentText(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method

.method public setTitleStyling(I)V
    .locals 2
    .param p1, "styleId"    # I

    .prologue
    .line 177
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mTitleSpan:Landroid/text/style/TextAppearanceSpan;

    .line 178
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/TextDrawer;->setContentTitle(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method

.method public shouldDrawText()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDetails:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
