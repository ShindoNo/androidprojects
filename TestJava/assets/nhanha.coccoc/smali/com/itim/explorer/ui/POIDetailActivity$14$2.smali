.class Lcom/itim/explorer/ui/POIDetailActivity$14$2;
.super Ljava/lang/Object;
.source "POIDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/POIDetailActivity$14;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/itim/explorer/ui/POIDetailActivity$14;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/POIDetailActivity$14;)V
    .locals 0

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/itim/explorer/ui/POIDetailActivity$14$2;->this$1:Lcom/itim/explorer/ui/POIDetailActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$14$2;->this$1:Lcom/itim/explorer/ui/POIDetailActivity$14;

    iget-object v0, v0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    const v1, 0x7f0e0136

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1083
    return-void
.end method
