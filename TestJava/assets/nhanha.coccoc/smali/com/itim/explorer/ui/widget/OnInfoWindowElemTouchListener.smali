.class public abstract Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;
.super Ljava/lang/Object;
.source "OnInfoWindowElemTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final bgDrawableNormal:I

.field private final bgDrawablePressed:I

.field private final confirmClickRunnable:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private marker:Lcom/google/android/gms/maps/model/Marker;

.field private pressed:Z

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bgDrawableNormal"    # I
    .param p3, "bgDrawablePressed"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->handler:Landroid/os/Handler;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->pressed:Z

    .line 92
    new-instance v0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener$1;

    invoke-direct {v0, p0}, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener$1;-><init>(Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->confirmClickRunnable:Ljava/lang/Runnable;

    .line 22
    iput-object p1, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->view:Landroid/view/View;

    .line 23
    iput p2, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->bgDrawableNormal:I

    .line 24
    iput p3, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->bgDrawablePressed:I

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->endPress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;)Lcom/google/android/gms/maps/model/Marker;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->marker:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method private endPress()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 76
    iget-boolean v1, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->pressed:Z

    if-eqz v1, :cond_1

    .line 77
    iput-boolean v0, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->pressed:Z

    .line 78
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->confirmClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    iget v0, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->bgDrawableNormal:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->view:Landroid/view/View;

    iget v1, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->bgDrawableNormal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 87
    :cond_0
    const/4 v0, 0x1

    .line 89
    :cond_1
    return v0
.end method

.method private startPress()V
    .locals 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->pressed:Z

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->pressed:Z

    .line 63
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->confirmClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    iget v0, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->bgDrawablePressed:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->view:Landroid/view/View;

    iget v1, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->bgDrawablePressed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract onClickConfirmed(Landroid/view/View;Lcom/google/android/gms/maps/model/Marker;)V
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "vv"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 35
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 36
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 57
    .end local v0    # "action":I
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 38
    .restart local v0    # "action":I
    :pswitch_1
    invoke-direct {p0}, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->startPress()V

    goto :goto_0

    .line 42
    :pswitch_2
    iget-object v1, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->confirmClickRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 46
    :pswitch_3
    invoke-direct {p0}, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->endPress()Z

    goto :goto_0

    .line 55
    .end local v0    # "action":I
    :cond_0
    invoke-direct {p0}, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->endPress()Z

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setMarker(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->marker:Lcom/google/android/gms/maps/model/Marker;

    .line 29
    return-void
.end method
