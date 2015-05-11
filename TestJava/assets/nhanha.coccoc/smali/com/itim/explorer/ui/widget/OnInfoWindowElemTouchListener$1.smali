.class Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener$1;
.super Ljava/lang/Object;
.source "OnInfoWindowElemTouchListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener$1;->this$0:Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener$1;->this$0:Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;

    # invokes: Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->endPress()Z
    invoke-static {v0}, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->access$000(Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener$1;->this$0:Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;

    iget-object v1, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener$1;->this$0:Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;

    # getter for: Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->view:Landroid/view/View;
    invoke-static {v1}, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->access$100(Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener$1;->this$0:Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;

    # getter for: Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->marker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v2}, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->access$200(Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->onClickConfirmed(Landroid/view/View;Lcom/google/android/gms/maps/model/Marker;)V

    .line 97
    :cond_0
    return-void
.end method
