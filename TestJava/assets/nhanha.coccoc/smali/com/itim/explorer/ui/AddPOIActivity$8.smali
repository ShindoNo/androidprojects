.class Lcom/itim/explorer/ui/AddPOIActivity$8;
.super Ljava/lang/Object;
.source "AddPOIActivity.java"

# interfaces
.implements Lcom/facebook/Request$GraphUserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/AddPOIActivity;->retriveAuthName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/AddPOIActivity;

.field final synthetic val$session:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/AddPOIActivity;Lcom/facebook/Session;)V
    .locals 0

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/itim/explorer/ui/AddPOIActivity$8;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    iput-object p2, p0, Lcom/itim/explorer/ui/AddPOIActivity$8;->val$session:Lcom/facebook/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V
    .locals 2
    .param p1, "user"    # Lcom/facebook/model/GraphUser;
    .param p2, "response"    # Lcom/facebook/Response;

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$8;->val$session:Lcom/facebook/Session;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1018
    if-eqz p1, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$8;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/itim/explorer/ui/AddPOIActivity;->mUid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/AddPOIActivity;->access$602(Lcom/itim/explorer/ui/AddPOIActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1024
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$8;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    const-string v1, ""

    # setter for: Lcom/itim/explorer/ui/AddPOIActivity;->mUid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/AddPOIActivity;->access$602(Lcom/itim/explorer/ui/AddPOIActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
