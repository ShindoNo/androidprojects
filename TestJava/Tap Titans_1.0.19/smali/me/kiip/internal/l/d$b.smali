.class Lme/kiip/internal/l/d$b;
.super Landroid/widget/RelativeLayout;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/l/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lme/kiip/sdk/Poptart;)V
    .locals 10

    .prologue
    const/4 v9, -0x2

    const/high16 v8, 0x42820000

    const/high16 v7, 0x41400000

    const/4 v6, -0x1

    .line 148
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 149
    invoke-virtual {p2}, Lme/kiip/sdk/Poptart;->getNotification()Lme/kiip/sdk/Notification;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lme/kiip/internal/l/d$b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 153
    invoke-virtual {p0}, Lme/kiip/internal/l/d$b;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "kp_notification_bg"

    const-string v4, "drawable"

    invoke-virtual {p0}, Lme/kiip/internal/l/d$b;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 154
    if-nez v2, :cond_0

    .line 155
    const-string v3, "KiipSDK"

    const-string v4, "Unable to find kp_notification_bg.png in drawable-*"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    invoke-virtual {p0, v2}, Lme/kiip/internal/l/d$b;->setBackgroundResource(I)V

    .line 159
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42380000

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-direct {v2, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lme/kiip/internal/l/d$b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 163
    invoke-virtual {v0}, Lme/kiip/sdk/Notification;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x425c0000

    mul-float/2addr v4, v1

    float-to-int v4, v4

    const/high16 v5, 0x42280000

    mul-float/2addr v5, v1

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 165
    const/high16 v4, 0x40a00000

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 166
    const/4 v4, 0x0

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 167
    invoke-virtual {p0, v2, v3}, Lme/kiip/internal/l/d$b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 171
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 172
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 173
    invoke-virtual {v0}, Lme/kiip/sdk/Notification;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    const-string v3, "#7c8080"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 176
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 177
    mul-float v4, v8, v1

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 178
    const/high16 v4, 0x40800000

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 179
    const/high16 v4, 0x41f00000

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 180
    invoke-virtual {p0, v2, v3}, Lme/kiip/internal/l/d$b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 184
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 185
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 186
    invoke-virtual {v0}, Lme/kiip/sdk/Notification;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const-string v0, "#9b9f9f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 189
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 190
    mul-float v3, v8, v1

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 191
    const/high16 v3, 0x41a80000

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 192
    const/high16 v3, 0x41200000

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 193
    invoke-virtual {p0, v2, v0}, Lme/kiip/internal/l/d$b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    return-void
.end method


# virtual methods
.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 198
    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000

    :goto_0
    invoke-static {p0, v0}, Lme/kiip/internal/k/g;->a(Landroid/view/View;F)V

    .line 199
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 200
    return-void

    .line 198
    :cond_0
    const v0, 0x3f4ccccd

    goto :goto_0
.end method
