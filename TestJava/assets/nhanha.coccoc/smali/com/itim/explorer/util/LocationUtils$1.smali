.class final Lcom/itim/explorer/util/LocationUtils$1;
.super Ljava/lang/Object;
.source "LocationUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/util/LocationUtils;->showNoLocationDialog(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isNeedCity:Z


# direct methods
.method constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/itim/explorer/util/LocationUtils$1;->val$isNeedCity:Z

    iput-object p2, p0, Lcom/itim/explorer/util/LocationUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v1, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Dialog"

    const-string v3, "No Location"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v2, "Button"

    const-string v3, "Cancel"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v2, "Press screen button"

    invoke-static {v2, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    iget-boolean v2, p0, Lcom/itim/explorer/util/LocationUtils$1;->val$isNeedCity:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itim/explorer/util/LocationUtils$1;->val$context:Landroid/content/Context;

    instance-of v2, v2, Lcom/itim/explorer/ui/MainActivity;

    if-eqz v2, :cond_0

    .line 83
    iget-object v0, p0, Lcom/itim/explorer/util/LocationUtils$1;->val$context:Landroid/content/Context;

    check-cast v0, Lcom/itim/explorer/ui/MainActivity;

    .line 84
    .local v0, "activity":Lcom/itim/explorer/ui/MainActivity;
    invoke-virtual {v0}, Lcom/itim/explorer/ui/MainActivity;->onCitySelect()V

    .line 86
    .end local v0    # "activity":Lcom/itim/explorer/ui/MainActivity;
    :cond_0
    return-void
.end method
