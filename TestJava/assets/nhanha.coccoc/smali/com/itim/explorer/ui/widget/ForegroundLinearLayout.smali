.class public Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ForegroundLinearLayout.java"


# instance fields
.field private mForeground:Landroid/graphics/drawable/Drawable;

.field mForegroundBoundsChanged:Z

.field private mForegroundGravity:I

.field protected mForegroundInPadding:Z

.field private final mOverlayBounds:Landroid/graphics/Rect;

.field private final mSelfBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 38
    const/16 v0, 0x77

    iput v0, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForegroundGravity:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForegroundInPadding:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForegroundBoundsChanged:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 36
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 38
    const/16 v2, 0x77

    iput v2, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForegroundGravity:I

    .line 40
    iput-boolean v4, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForegroundInPadding:Z

    .line 42
    iput-boolean v3, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForegroundBoundsChanged:Z

    .line 57
    sget-object v2, Lcom/itim/nhanha/R$styleable;->ForegroundLinearLayout:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForegroundGravity:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForegroundGravity:I

    .line 64
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 66
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForegroundInPadding:Z

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 200
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 202
    iget-object v5, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 203
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 205
    .local v0, "foreground":Landroid/graphics/drawable/Drawable;
    iget-boolean v5, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForegroundBoundsChanged:Z

    if-eqz v5, :cond_0

    .line 206
    iput-boolean v7, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForegroundBoundsChanged:Z

    .line 207
    iget-object v3, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 208
    .local v3, "selfBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 210
    .local v2, "overlayBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->getLeft()I

    move-result v6

    sub-int v4, v5, v6

    .line 211
    .local v4, "w":I
    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->getTop()I

    move-result v6

    sub-int v1, v5, v6

    .line 213
    .local v1, "h":I
    iget-boolean v5, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForegroundInPadding:Z

    if-eqz v5, :cond_2

    .line 214
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 220
    :goto_0
    iget v5, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForegroundGravity:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v5, v6, v7, v3, v2}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 224
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 227
    .end local v1    # "h":I
    .end local v2    # "overlayBounds":Landroid/graphics/Rect;
    .end local v3    # "selfBounds":Landroid/graphics/Rect;
    .end local v4    # "w":I
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 229
    .end local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void

    .line 216
    .restart local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "h":I
    .restart local v2    # "overlayBounds":Landroid/graphics/Rect;
    .restart local v3    # "selfBounds":Landroid/graphics/Rect;
    .restart local v4    # "w":I
    :cond_2
    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->getPaddingRight()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->getPaddingBottom()I

    move-result v8

    sub-int v8, v1, v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 134
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 137
    :cond_0
    return-void
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getForegroundGravity()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForegroundGravity:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 126
    invoke-super {p0}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    .line 127
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 129
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 188
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 189
    iput-boolean p1, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForegroundBoundsChanged:Z

    .line 190
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 194
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForegroundBoundsChanged:Z

    .line 196
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 149
    iget-object v1, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_3

    .line 150
    iget-object v1, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 152
    iget-object v1, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    :cond_0
    iput-object p1, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 157
    if-eqz p1, :cond_4

    .line 158
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->setWillNotDraw(Z)V

    .line 159
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 160
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 163
    :cond_1
    iget v1, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForegroundGravity:I

    const/16 v2, 0x77

    if-ne v1, v2, :cond_2

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 165
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 170
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->requestLayout()V

    .line 171
    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->invalidate()V

    .line 173
    :cond_3
    return-void

    .line 168
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method public setForegroundGravity(I)V
    .locals 3
    .param p1, "foregroundGravity"    # I

    .prologue
    .line 98
    iget v1, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForegroundGravity:I

    if-eq v1, p1, :cond_3

    .line 99
    const v1, 0x800007

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    .line 100
    const v1, 0x800003

    or-int/2addr p1, v1

    .line 103
    :cond_0
    and-int/lit8 v1, p1, 0x70

    if-nez v1, :cond_1

    .line 104
    or-int/lit8 p1, p1, 0x30

    .line 107
    :cond_1
    iput p1, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForegroundGravity:I

    .line 109
    iget v1, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForegroundGravity:I

    const/16 v2, 0x77

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 111
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 114
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->requestLayout()V

    .line 116
    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/widget/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
