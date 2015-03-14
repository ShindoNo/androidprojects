.class Lme/kiip/internal/l/a$c$8;
.super Landroid/widget/RelativeLayout$LayoutParams;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/l/a$c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/l/a$c;


# direct methods
.method constructor <init>(Lme/kiip/internal/l/a$c;II)V
    .locals 1

    .prologue
    .line 425
    iput-object p1, p0, Lme/kiip/internal/l/a$c$8;->a:Lme/kiip/internal/l/a$c;

    invoke-direct {p0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 426
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lme/kiip/internal/l/a$c$8;->addRule(I)V

    .line 427
    return-void
.end method
