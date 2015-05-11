.class Lcom/itim/explorer/io/GPSTracker$2;
.super Ljava/lang/Object;
.source "GPSTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/io/GPSTracker;->showSettingsAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/io/GPSTracker;


# direct methods
.method constructor <init>(Lcom/itim/explorer/io/GPSTracker;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/itim/explorer/io/GPSTracker$2;->this$0:Lcom/itim/explorer/io/GPSTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 179
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 180
    return-void
.end method
