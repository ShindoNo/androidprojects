.class Lcom/gamehivecorp/ghplugin/GHPlugin$3;
.super Ljava/lang/Thread;
.source "GHPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamehivecorp/ghplugin/GHPlugin;->GetAndroidAdvertisingID(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamehivecorp/ghplugin/GHPlugin$3;->val$context:Landroid/content/Context;

    .line 101
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/gamehivecorp/ghplugin/GHPlugin$3;->val$context:Landroid/content/Context;

    # invokes: Lcom/gamehivecorp/ghplugin/GHPlugin;->getIDInThread(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/gamehivecorp/ghplugin/GHPlugin;->access$0(Landroid/content/Context;)V

    .line 105
    return-void
.end method
