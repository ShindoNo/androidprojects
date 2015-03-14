.class final Lcom/flurry/sdk/j$d;
.super Lcom/flurry/sdk/j$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/j$c;-><init>(Lcom/flurry/sdk/j$1;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 240
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/j$d;->b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/j$d;->c(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method
