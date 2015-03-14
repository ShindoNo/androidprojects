.class Lcom/prime31/FlurryPlugin$9;
.super Ljava/lang/Object;
.source "FlurryPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/FlurryPlugin;->fetchAdsForSpace(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/FlurryPlugin;

.field private final synthetic val$adSize:I

.field private final synthetic val$adSpace:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/prime31/FlurryPlugin;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/prime31/FlurryPlugin$9;->this$0:Lcom/prime31/FlurryPlugin;

    iput p2, p0, Lcom/prime31/FlurryPlugin$9;->val$adSize:I

    iput-object p3, p0, Lcom/prime31/FlurryPlugin$9;->val$adSpace:Ljava/lang/String;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 188
    sget-object v0, Lcom/flurry/android/FlurryAdSize;->BANNER_BOTTOM:Lcom/flurry/android/FlurryAdSize;

    .line 189
    .local v0, "adSizeEnum":Lcom/flurry/android/FlurryAdSize;
    iget v1, p0, Lcom/prime31/FlurryPlugin$9;->val$adSize:I

    packed-switch v1, :pswitch_data_0

    .line 203
    :goto_0
    sget-object v1, Lcom/flurry/android/FlurryAdSize;->FULLSCREEN:Lcom/flurry/android/FlurryAdSize;

    if-ne v0, v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/prime31/FlurryPlugin$9;->this$0:Lcom/prime31/FlurryPlugin;

    iget-object v1, v1, Lcom/prime31/FlurryPlugin;->_layout:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/prime31/FlurryPlugin$9;->this$0:Lcom/prime31/FlurryPlugin;

    iget v2, p0, Lcom/prime31/FlurryPlugin$9;->val$adSize:I

    invoke-virtual {v1, v2}, Lcom/prime31/FlurryPlugin;->prepLayout(I)V

    .line 213
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/prime31/FlurryPlugin$9;->this$0:Lcom/prime31/FlurryPlugin;

    invoke-virtual {v1}, Lcom/prime31/FlurryPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/prime31/FlurryPlugin$9;->val$adSpace:Ljava/lang/String;

    iget-object v3, p0, Lcom/prime31/FlurryPlugin$9;->this$0:Lcom/prime31/FlurryPlugin;

    iget-object v3, v3, Lcom/prime31/FlurryPlugin;->_layout:Landroid/widget/RelativeLayout;

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/android/FlurryAds;->fetchAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;)V

    .line 214
    return-void

    .line 192
    :pswitch_0
    sget-object v0, Lcom/flurry/android/FlurryAdSize;->BANNER_BOTTOM:Lcom/flurry/android/FlurryAdSize;

    .line 193
    goto :goto_0

    .line 195
    :pswitch_1
    sget-object v0, Lcom/flurry/android/FlurryAdSize;->BANNER_TOP:Lcom/flurry/android/FlurryAdSize;

    .line 196
    goto :goto_0

    .line 198
    :pswitch_2
    sget-object v0, Lcom/flurry/android/FlurryAdSize;->FULLSCREEN:Lcom/flurry/android/FlurryAdSize;

    goto :goto_0

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/prime31/FlurryPlugin$9;->this$0:Lcom/prime31/FlurryPlugin;

    iget v2, p0, Lcom/prime31/FlurryPlugin$9;->val$adSize:I

    invoke-virtual {v1, v2}, Lcom/prime31/FlurryPlugin;->prepLayout(I)V

    goto :goto_1

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
