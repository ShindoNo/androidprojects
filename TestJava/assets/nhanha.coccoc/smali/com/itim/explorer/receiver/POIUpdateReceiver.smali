.class public Lcom/itim/explorer/receiver/POIUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "POIUpdateReceiver.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.itim.explorer.receiver.POIUpdateReceiver"


# instance fields
.field final mLoader:Lcom/itim/explorer/io/LoadPOILoader;


# direct methods
.method public constructor <init>(Lcom/itim/explorer/io/LoadPOILoader;)V
    .locals 2
    .param p1, "loader"    # Lcom/itim/explorer/io/LoadPOILoader;

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/itim/explorer/receiver/POIUpdateReceiver;->mLoader:Lcom/itim/explorer/io/LoadPOILoader;

    .line 17
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.itim.explorer.receiver.POIUpdateReceiver"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 18
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/itim/explorer/receiver/POIUpdateReceiver;->mLoader:Lcom/itim/explorer/io/LoadPOILoader;

    invoke-virtual {v1}, Lcom/itim/explorer/io/LoadPOILoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/itim/explorer/receiver/POIUpdateReceiver;->mLoader:Lcom/itim/explorer/io/LoadPOILoader;

    invoke-virtual {v0}, Lcom/itim/explorer/io/LoadPOILoader;->onContentChanged()V

    .line 25
    return-void
.end method
