.class Lcom/itim/explorer/ui/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/facebook/Request$GraphUserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/MainActivity;->retriveAuthName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/MainActivity;

.field final synthetic val$session:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/MainActivity;Lcom/facebook/Session;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/itim/explorer/ui/MainActivity$11;->this$0:Lcom/itim/explorer/ui/MainActivity;

    iput-object p2, p0, Lcom/itim/explorer/ui/MainActivity$11;->val$session:Lcom/facebook/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V
    .locals 2
    .param p1, "user"    # Lcom/facebook/model/GraphUser;
    .param p2, "response"    # Lcom/facebook/Response;

    .prologue
    .line 809
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity$11;->val$session:Lcom/facebook/Session;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 810
    if-eqz p1, :cond_1

    .line 811
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity$11;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/itim/explorer/ui/MainActivity;->mFBProfileName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/MainActivity;->access$502(Lcom/itim/explorer/ui/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 812
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity$11;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/itim/explorer/ui/MainActivity;->mFBProfileID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/MainActivity;->access$602(Lcom/itim/explorer/ui/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 817
    :goto_0
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity$11;->this$0:Lcom/itim/explorer/ui/MainActivity;

    # getter for: Lcom/itim/explorer/ui/MainActivity;->mNaviDrawerAdapter:Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;
    invoke-static {v0}, Lcom/itim/explorer/ui/MainActivity;->access$700(Lcom/itim/explorer/ui/MainActivity;)Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity$11;->this$0:Lcom/itim/explorer/ui/MainActivity;

    # getter for: Lcom/itim/explorer/ui/MainActivity;->mNaviDrawerAdapter:Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;
    invoke-static {v0}, Lcom/itim/explorer/ui/MainActivity;->access$700(Lcom/itim/explorer/ui/MainActivity;)Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->notifyDataSetChanged()V

    .line 820
    :cond_0
    return-void

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity$11;->this$0:Lcom/itim/explorer/ui/MainActivity;

    const-string v1, ""

    # setter for: Lcom/itim/explorer/ui/MainActivity;->mFBProfileName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/MainActivity;->access$502(Lcom/itim/explorer/ui/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 815
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity$11;->this$0:Lcom/itim/explorer/ui/MainActivity;

    const-string v1, ""

    # setter for: Lcom/itim/explorer/ui/MainActivity;->mFBProfileID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/MainActivity;->access$602(Lcom/itim/explorer/ui/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
