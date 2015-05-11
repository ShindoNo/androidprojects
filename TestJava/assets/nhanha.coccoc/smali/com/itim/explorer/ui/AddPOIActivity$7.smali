.class Lcom/itim/explorer/ui/AddPOIActivity$7;
.super Ljava/lang/Object;
.source "AddPOIActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/AddPOIActivity;->createPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/AddPOIActivity;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/AddPOIActivity;)V
    .locals 0

    .prologue
    .line 981
    iput-object p1, p0, Lcom/itim/explorer/ui/AddPOIActivity$7;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 983
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$7;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mIsFristSize:Z
    invoke-static {v0}, Lcom/itim/explorer/ui/AddPOIActivity;->access$2000(Lcom/itim/explorer/ui/AddPOIActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$7;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    const/4 v1, 0x0

    # setter for: Lcom/itim/explorer/ui/AddPOIActivity;->mIsFristSize:Z
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/AddPOIActivity;->access$2002(Lcom/itim/explorer/ui/AddPOIActivity;Z)Z

    .line 988
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
