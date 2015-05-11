.class Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;
.super Ljava/lang/Object;
.source "SwipeDismissListViewTouchListener.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingDismissData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;",
        ">;"
    }
.end annotation


# instance fields
.field public position:I

.field final synthetic this$0:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;ILandroid/view/View;)V
    .locals 0
    .param p2, "position"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput p2, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;->position:I

    .line 316
    iput-object p3, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    .line 317
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;)I
    .locals 2
    .param p1, "other"    # Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;

    .prologue
    .line 322
    iget v0, p1, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;->position:I

    iget v1, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 310
    check-cast p1, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;->compareTo(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;)I

    move-result v0

    return v0
.end method
