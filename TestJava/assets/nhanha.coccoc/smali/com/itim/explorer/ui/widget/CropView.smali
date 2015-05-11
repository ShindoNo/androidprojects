.class public Lcom/itim/explorer/ui/widget/CropView;
.super Landroid/view/View;
.source "CropView.java"


# static fields
.field public static final MIN_HEIGHT:I = 0x64

.field public static final MIN_WIDTH:I = 0x64


# instance fields
.field broadStrokePaint:Landroid/graphics/Paint;

.field endx:I

.field endy:I

.field semiTransparentPaint:Landroid/graphics/Paint;

.field startx:I

.field starty:I

.field strokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x12c

    const/16 v0, 0x96

    const/4 v1, 0x1

    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    iput v0, p0, Lcom/itim/explorer/ui/widget/CropView;->startx:I

    .line 17
    iput v0, p0, Lcom/itim/explorer/ui/widget/CropView;->starty:I

    .line 18
    iput v2, p0, Lcom/itim/explorer/ui/widget/CropView;->endx:I

    .line 19
    iput v2, p0, Lcom/itim/explorer/ui/widget/CropView;->endy:I

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/itim/explorer/ui/widget/CropView;->strokePaint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/itim/explorer/ui/widget/CropView;->broadStrokePaint:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/itim/explorer/ui/widget/CropView;->semiTransparentPaint:Landroid/graphics/Paint;

    .line 27
    invoke-direct {p0}, Lcom/itim/explorer/ui/widget/CropView;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v2, 0x12c

    const/16 v0, 0x96

    const/4 v1, 0x1

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput v0, p0, Lcom/itim/explorer/ui/widget/CropView;->startx:I

    .line 17
    iput v0, p0, Lcom/itim/explorer/ui/widget/CropView;->starty:I

    .line 18
    iput v2, p0, Lcom/itim/explorer/ui/widget/CropView;->endx:I

    .line 19
    iput v2, p0, Lcom/itim/explorer/ui/widget/CropView;->endy:I

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/itim/explorer/ui/widget/CropView;->strokePaint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/itim/explorer/ui/widget/CropView;->broadStrokePaint:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/itim/explorer/ui/widget/CropView;->semiTransparentPaint:Landroid/graphics/Paint;

    .line 32
    invoke-direct {p0}, Lcom/itim/explorer/ui/widget/CropView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v2, 0x12c

    const/16 v0, 0x96

    const/4 v1, 0x1

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    iput v0, p0, Lcom/itim/explorer/ui/widget/CropView;->startx:I

    .line 17
    iput v0, p0, Lcom/itim/explorer/ui/widget/CropView;->starty:I

    .line 18
    iput v2, p0, Lcom/itim/explorer/ui/widget/CropView;->endx:I

    .line 19
    iput v2, p0, Lcom/itim/explorer/ui/widget/CropView;->endy:I

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/itim/explorer/ui/widget/CropView;->strokePaint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/itim/explorer/ui/widget/CropView;->broadStrokePaint:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/itim/explorer/ui/widget/CropView;->semiTransparentPaint:Landroid/graphics/Paint;

    .line 37
    invoke-direct {p0}, Lcom/itim/explorer/ui/widget/CropView;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/high16 v2, -0x1000000

    .line 54
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/CropView;->strokePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/CropView;->strokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/CropView;->broadStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/CropView;->broadStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/CropView;->broadStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/CropView;->semiTransparentPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/CropView;->semiTransparentPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/CropView;->semiTransparentPaint:Landroid/graphics/Paint;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 64
    return-void
.end method


# virtual methods
.method public getEndx()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/itim/explorer/ui/widget/CropView;->endx:I

    return v0
.end method

.method public getEndy()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/itim/explorer/ui/widget/CropView;->endy:I

    return v0
.end method

.method public getStartx()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/itim/explorer/ui/widget/CropView;->startx:I

    return v0
.end method

.method public getStarty()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/itim/explorer/ui/widget/CropView;->starty:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 69
    iget v0, p0, Lcom/itim/explorer/ui/widget/CropView;->startx:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/CropView;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/itim/explorer/ui/widget/CropView;->semiTransparentPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 70
    iget v0, p0, Lcom/itim/explorer/ui/widget/CropView;->endx:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/CropView;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/CropView;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/itim/explorer/ui/widget/CropView;->semiTransparentPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 71
    iget v0, p0, Lcom/itim/explorer/ui/widget/CropView;->startx:I

    int-to-float v3, v0

    iget v0, p0, Lcom/itim/explorer/ui/widget/CropView;->endx:I

    int-to-float v5, v0

    iget v0, p0, Lcom/itim/explorer/ui/widget/CropView;->starty:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/itim/explorer/ui/widget/CropView;->semiTransparentPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 72
    iget v0, p0, Lcom/itim/explorer/ui/widget/CropView;->startx:I

    int-to-float v1, v0

    iget v0, p0, Lcom/itim/explorer/ui/widget/CropView;->endy:I

    int-to-float v2, v0

    iget v0, p0, Lcom/itim/explorer/ui/widget/CropView;->endx:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/CropView;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/itim/explorer/ui/widget/CropView;->semiTransparentPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 74
    iget v0, p0, Lcom/itim/explorer/ui/widget/CropView;->startx:I

    int-to-float v1, v0

    iget v0, p0, Lcom/itim/explorer/ui/widget/CropView;->starty:I

    int-to-float v2, v0

    iget v0, p0, Lcom/itim/explorer/ui/widget/CropView;->endx:I

    int-to-float v3, v0

    iget v0, p0, Lcom/itim/explorer/ui/widget/CropView;->endy:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/itim/explorer/ui/widget/CropView;->broadStrokePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 75
    iget v0, p0, Lcom/itim/explorer/ui/widget/CropView;->startx:I

    int-to-float v1, v0

    iget v0, p0, Lcom/itim/explorer/ui/widget/CropView;->starty:I

    int-to-float v2, v0

    iget v0, p0, Lcom/itim/explorer/ui/widget/CropView;->endx:I

    int-to-float v3, v0

    iget v0, p0, Lcom/itim/explorer/ui/widget/CropView;->endy:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/itim/explorer/ui/widget/CropView;->strokePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    return-void
.end method

.method public setEndx(I)V
    .locals 0
    .param p1, "endx"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/itim/explorer/ui/widget/CropView;->endx:I

    .line 92
    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/CropView;->invalidate()V

    .line 93
    return-void
.end method

.method public setEndy(I)V
    .locals 0
    .param p1, "endy"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/itim/explorer/ui/widget/CropView;->endy:I

    .line 97
    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/CropView;->invalidate()V

    .line 98
    return-void
.end method

.method public setRect(FFFF)V
    .locals 4
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 79
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itim/explorer/ui/widget/CropView;->setRect(IIII)V

    .line 80
    return-void
.end method

.method public setRect(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/itim/explorer/ui/widget/CropView;->startx:I

    .line 84
    iput p2, p0, Lcom/itim/explorer/ui/widget/CropView;->starty:I

    .line 85
    iput p3, p0, Lcom/itim/explorer/ui/widget/CropView;->endx:I

    .line 86
    iput p4, p0, Lcom/itim/explorer/ui/widget/CropView;->endy:I

    .line 87
    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/CropView;->invalidate()V

    .line 88
    return-void
.end method

.method public setStartx(I)V
    .locals 0
    .param p1, "startx"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/itim/explorer/ui/widget/CropView;->startx:I

    .line 102
    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/CropView;->invalidate()V

    .line 103
    return-void
.end method

.method public setStarty(I)V
    .locals 0
    .param p1, "starty"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/itim/explorer/ui/widget/CropView;->starty:I

    .line 107
    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/CropView;->invalidate()V

    .line 108
    return-void
.end method
