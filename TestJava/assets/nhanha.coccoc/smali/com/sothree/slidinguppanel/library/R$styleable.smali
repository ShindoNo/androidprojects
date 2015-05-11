.class public final Lcom/sothree/slidinguppanel/library/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sothree/slidinguppanel/library/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final SlidingUpPanelLayout:[I

.field public static final SlidingUpPanelLayout_umanoAnchorPoint:I = 0x8

.field public static final SlidingUpPanelLayout_umanoClipPanel:I = 0x7

.field public static final SlidingUpPanelLayout_umanoDragView:I = 0x5

.field public static final SlidingUpPanelLayout_umanoFadeColor:I = 0x3

.field public static final SlidingUpPanelLayout_umanoFlingVelocity:I = 0x4

.field public static final SlidingUpPanelLayout_umanoInitialState:I = 0x9

.field public static final SlidingUpPanelLayout_umanoOverlay:I = 0x6

.field public static final SlidingUpPanelLayout_umanoPanelHeight:I = 0x0

.field public static final SlidingUpPanelLayout_umanoParalaxOffset:I = 0x2

.field public static final SlidingUpPanelLayout_umanoShadowHeight:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout:[I

    return-void

    :array_0
    .array-data 4
        0x7f01008e
        0x7f01008f
        0x7f010090
        0x7f010091
        0x7f010092
        0x7f010093
        0x7f010094
        0x7f010095
        0x7f010096
        0x7f010097
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
