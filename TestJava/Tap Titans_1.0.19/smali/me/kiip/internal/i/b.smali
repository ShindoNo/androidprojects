.class public abstract Lme/kiip/internal/i/b;
.super Landroid/app/Dialog;
.source "KiipSDK"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lme/kiip/internal/i/b;->a()V

    .line 20
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lme/kiip/internal/i/b;->requestWindowFeature(I)Z

    .line 25
    invoke-virtual {p0}, Lme/kiip/internal/i/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 26
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 27
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 28
    return-void
.end method


# virtual methods
.method public show()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 32
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 34
    invoke-virtual {p0}, Lme/kiip/internal/i/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 35
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 36
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 37
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 38
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 40
    return-void
.end method
