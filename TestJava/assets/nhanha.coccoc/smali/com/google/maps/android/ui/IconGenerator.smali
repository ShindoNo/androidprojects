.class public Lcom/google/maps/android/ui/IconGenerator;
.super Ljava/lang/Object;
.source "IconGenerator.java"


# static fields
.field public static final STYLE_BLUE:I = 0x4

.field public static final STYLE_DEFAULT:I = 0x1

.field public static final STYLE_GREEN:I = 0x5

.field public static final STYLE_ORANGE:I = 0x7

.field public static final STYLE_PURPLE:I = 0x6

.field public static final STYLE_RED:I = 0x3

.field public static final STYLE_WHITE:I = 0x2


# instance fields
.field private mAnchorU:F

.field private mAnchorV:F

.field private mBackground:Lcom/google/maps/android/ui/BubbleDrawable;

.field private mContainer:Landroid/view/ViewGroup;

.field private mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mRotation:I

.field private mRotationLayout:Lcom/google/maps/android/ui/RotationLayout;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mAnchorU:F

    .line 52
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mAnchorV:F

    .line 59
    iput-object p1, p0, Lcom/google/maps/android/ui/IconGenerator;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Lcom/google/maps/android/ui/BubbleDrawable;

    iget-object v1, p0, Lcom/google/maps/android/ui/IconGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/maps/android/ui/BubbleDrawable;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mBackground:Lcom/google/maps/android/ui/BubbleDrawable;

    .line 61
    return-void
.end method

.method private ensureViewsSetUp()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/maps/android/R$layout;->text_bubble:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mContainer:Landroid/view/ViewGroup;

    .line 262
    iget-object v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/ui/RotationLayout;

    iput-object v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mRotationLayout:Lcom/google/maps/android/ui/RotationLayout;

    .line 263
    iget-object v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mRotationLayout:Lcom/google/maps/android/ui/RotationLayout;

    sget v1, Lcom/google/maps/android/R$id;->text:I

    invoke-virtual {v0, v1}, Lcom/google/maps/android/ui/RotationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mContentView:Landroid/view/View;

    .line 264
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/maps/android/ui/IconGenerator;->setStyle(I)V

    .line 266
    :cond_0
    return-void
.end method

.method private getContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/google/maps/android/ui/IconGenerator;->ensureViewsSetUp()V

    .line 253
    iget-object v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private static getStyleColor(I)I
    .locals 1
    .param p0, "style"    # I

    .prologue
    .line 291
    packed-switch p0, :pswitch_data_0

    .line 295
    const/4 v0, -0x1

    .line 305
    :goto_0
    return v0

    .line 297
    :pswitch_0
    const/high16 v0, -0x340000

    goto :goto_0

    .line 299
    :pswitch_1
    const v0, -0xff6634

    goto :goto_0

    .line 301
    :pswitch_2
    const v0, -0x996700

    goto :goto_0

    .line 303
    :pswitch_3
    const v0, -0x66cc34

    goto :goto_0

    .line 305
    :pswitch_4
    const/16 v0, -0x7800

    goto :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static getTextStyle(I)I
    .locals 1
    .param p0, "style"    # I

    .prologue
    .line 310
    packed-switch p0, :pswitch_data_0

    .line 314
    sget v0, Lcom/google/maps/android/R$style;->Bubble_TextAppearance_Dark:I

    .line 320
    :goto_0
    return v0

    :pswitch_0
    sget v0, Lcom/google/maps/android/R$style;->Bubble_TextAppearance_Light:I

    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private rotateAnchor(FF)F
    .locals 2
    .param p1, "u"    # F
    .param p2, "v"    # F

    .prologue
    const/high16 v1, 0x3f800000

    .line 173
    iget v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mRotation:I

    packed-switch v0, :pswitch_data_0

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 177
    :pswitch_0
    sub-float p1, v1, p2

    .line 181
    .end local p1    # "u":F
    :goto_0
    :pswitch_1
    return p1

    .line 179
    .restart local p1    # "u":F
    :pswitch_2
    sub-float p1, v1, p1

    goto :goto_0

    :pswitch_3
    move p1, p2

    .line 181
    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getAnchorU()F
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mAnchorU:F

    iget v1, p0, Lcom/google/maps/android/ui/IconGenerator;->mAnchorV:F

    invoke-direct {p0, v0, v1}, Lcom/google/maps/android/ui/IconGenerator;->rotateAnchor(FF)F

    move-result v0

    return v0
.end method

.method public getAnchorV()F
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mAnchorV:F

    iget v1, p0, Lcom/google/maps/android/ui/IconGenerator;->mAnchorU:F

    invoke-direct {p0, v0, v1}, Lcom/google/maps/android/ui/IconGenerator;->rotateAnchor(FF)F

    move-result v0

    return v0
.end method

.method public makeIcon()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 85
    invoke-direct {p0}, Lcom/google/maps/android/ui/IconGenerator;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    .line 87
    .local v1, "container":Landroid/view/ViewGroup;
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 88
    .local v2, "measureSpec":I
    invoke-virtual {v1, v2, v2}, Landroid/view/ViewGroup;->measure(II)V

    .line 90
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    .line 91
    .local v4, "measuredWidth":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    .line 93
    .local v3, "measuredHeight":I
    invoke-virtual {v1, v8, v8, v4, v3}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 95
    iget v6, p0, Lcom/google/maps/android/ui/IconGenerator;->mRotation:I

    if-eq v6, v10, :cond_0

    iget v6, p0, Lcom/google/maps/android/ui/IconGenerator;->mRotation:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 96
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    .line 97
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    .line 100
    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 101
    .local v5, "r":Landroid/graphics/Bitmap;
    invoke-virtual {v5, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 103
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 105
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget v6, p0, Lcom/google/maps/android/ui/IconGenerator;->mRotation:I

    if-nez v6, :cond_2

    .line 116
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 117
    return-object v5

    .line 107
    :cond_2
    iget v6, p0, Lcom/google/maps/android/ui/IconGenerator;->mRotation:I

    if-ne v6, v10, :cond_3

    .line 108
    int-to-float v6, v4

    invoke-virtual {v0, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 109
    const/high16 v6, 0x42b40000

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    .line 110
    :cond_3
    iget v6, p0, Lcom/google/maps/android/ui/IconGenerator;->mRotation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 111
    const/high16 v6, 0x43340000

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0

    .line 113
    :cond_4
    int-to-float v6, v3

    invoke-virtual {v0, v9, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 114
    const/high16 v6, 0x43870000

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0
.end method

.method public makeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/maps/android/ui/IconGenerator;->ensureViewsSetUp()V

    .line 71
    iget-object v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/google/maps/android/ui/IconGenerator;->makeIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 235
    invoke-direct {p0}, Lcom/google/maps/android/ui/IconGenerator;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    if-eqz p1, :cond_0

    .line 240
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 241
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 242
    invoke-direct {p0}, Lcom/google/maps/android/ui/IconGenerator;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 246
    .end local v0    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/google/maps/android/ui/IconGenerator;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mBackground:Lcom/google/maps/android/ui/BubbleDrawable;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/ui/BubbleDrawable;->setColor(I)V

    .line 224
    iget-object v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mBackground:Lcom/google/maps/android/ui/BubbleDrawable;

    invoke-virtual {p0, v0}, Lcom/google/maps/android/ui/IconGenerator;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 225
    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/google/maps/android/ui/IconGenerator;->ensureViewsSetUp()V

    .line 279
    iget-object v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 280
    return-void
.end method

.method public setContentRotation(I)V
    .locals 1
    .param p1, "degrees"    # I

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/google/maps/android/ui/IconGenerator;->ensureViewsSetUp()V

    .line 142
    iget-object v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mRotationLayout:Lcom/google/maps/android/ui/RotationLayout;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/ui/RotationLayout;->setViewRotation(I)V

    .line 143
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/maps/android/ui/IconGenerator;->ensureViewsSetUp()V

    .line 128
    iget-object v1, p0, Lcom/google/maps/android/ui/IconGenerator;->mRotationLayout:Lcom/google/maps/android/ui/RotationLayout;

    invoke-virtual {v1}, Lcom/google/maps/android/ui/RotationLayout;->removeAllViews()V

    .line 129
    iget-object v1, p0, Lcom/google/maps/android/ui/IconGenerator;->mRotationLayout:Lcom/google/maps/android/ui/RotationLayout;

    invoke-virtual {v1, p1}, Lcom/google/maps/android/ui/RotationLayout;->addView(Landroid/view/View;)V

    .line 130
    iput-object p1, p0, Lcom/google/maps/android/ui/IconGenerator;->mContentView:Landroid/view/View;

    .line 131
    iget-object v1, p0, Lcom/google/maps/android/ui/IconGenerator;->mRotationLayout:Lcom/google/maps/android/ui/RotationLayout;

    sget v2, Lcom/google/maps/android/R$id;->text:I

    invoke-virtual {v1, v2}, Lcom/google/maps/android/ui/RotationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    :goto_0
    iput-object v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mTextView:Landroid/widget/TextView;

    .line 133
    return-void

    .line 132
    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRotation(I)V
    .locals 1
    .param p1, "degrees"    # I

    .prologue
    .line 151
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x5a

    iput v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mRotation:I

    .line 152
    return-void
.end method

.method public setStyle(I)V
    .locals 2
    .param p1, "style"    # I

    .prologue
    .line 213
    invoke-static {p1}, Lcom/google/maps/android/ui/IconGenerator;->getStyleColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/maps/android/ui/IconGenerator;->setColor(I)V

    .line 214
    iget-object v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/maps/android/ui/IconGenerator;->getTextStyle(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/maps/android/ui/IconGenerator;->setTextAppearance(Landroid/content/Context;I)V

    .line 215
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/google/maps/android/ui/IconGenerator;->setTextAppearance(Landroid/content/Context;I)V

    .line 207
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/google/maps/android/ui/IconGenerator;->ensureViewsSetUp()V

    .line 194
    iget-object v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/google/maps/android/ui/IconGenerator;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 197
    :cond_0
    return-void
.end method
