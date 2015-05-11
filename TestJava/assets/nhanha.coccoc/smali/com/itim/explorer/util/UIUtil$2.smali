.class final Lcom/itim/explorer/util/UIUtil$2;
.super Ljava/lang/Object;
.source "UIUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/util/UIUtil;->buildAlertMessageNoGps(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/itim/explorer/util/UIUtil$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/itim/explorer/util/UIUtil$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 130
    iget-object v0, p0, Lcom/itim/explorer/util/UIUtil$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityIn(Landroid/app/Activity;)V

    .line 131
    return-void
.end method
