.class Lcom/gamehivecorp/ghplugin/GHPlugin$1;
.super Ljava/lang/Object;
.source "GHPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamehivecorp/ghplugin/GHPlugin;->TriggerImmersiveMode(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamehivecorp/ghplugin/GHPlugin$1;->val$window:Landroid/view/Window;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/gamehivecorp/ghplugin/GHPlugin$1;->val$window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 49
    const/16 v1, 0x1706

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 56
    return-void
.end method
