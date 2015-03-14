.class Lcom/flurry/sdk/f$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/f;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/f;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/flurry/sdk/f$5;->a:Lcom/flurry/sdk/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/flurry/sdk/f$5;->a:Lcom/flurry/sdk/f;

    invoke-static {v0, p2}, Lcom/flurry/sdk/f;->e(Lcom/flurry/sdk/f;I)I

    .line 491
    return-void
.end method
