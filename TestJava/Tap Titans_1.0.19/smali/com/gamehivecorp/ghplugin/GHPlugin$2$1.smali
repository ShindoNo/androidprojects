.class Lcom/gamehivecorp/ghplugin/GHPlugin$2$1;
.super Ljava/lang/Object;
.source "GHPlugin.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamehivecorp/ghplugin/GHPlugin$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gamehivecorp/ghplugin/GHPlugin$2;

.field private final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/gamehivecorp/ghplugin/GHPlugin$2;Landroid/view/Window;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamehivecorp/ghplugin/GHPlugin$2$1;->this$1:Lcom/gamehivecorp/ghplugin/GHPlugin$2;

    iput-object p2, p0, Lcom/gamehivecorp/ghplugin/GHPlugin$2$1;->val$window:Landroid/view/Window;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 66
    const-string v0, "Unity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Window changed focus. Has focus? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-eqz p2, :cond_0

    .line 69
    iget-object v0, p0, Lcom/gamehivecorp/ghplugin/GHPlugin$2$1;->val$window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 70
    const/16 v1, 0x1706

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 78
    :cond_0
    return-void
.end method
