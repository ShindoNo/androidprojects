.class Lcom/kiip/KiipPlugin$3;
.super Ljava/lang/Object;
.source "KiipPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kiip/KiipPlugin;->startSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kiip/KiipPlugin;


# direct methods
.method constructor <init>(Lcom/kiip/KiipPlugin;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kiip/KiipPlugin$3;->this$0:Lcom/kiip/KiipPlugin;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kiip/KiipPlugin$3;)Lcom/kiip/KiipPlugin;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/kiip/KiipPlugin$3;->this$0:Lcom/kiip/KiipPlugin;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lme/kiip/sdk/Kiip;->getInstance()Lme/kiip/sdk/Kiip;

    move-result-object v0

    new-instance v1, Lcom/kiip/KiipPlugin$3$1;

    invoke-direct {v1, p0}, Lcom/kiip/KiipPlugin$3$1;-><init>(Lcom/kiip/KiipPlugin$3;)V

    invoke-virtual {v0, v1}, Lme/kiip/sdk/Kiip;->startSession(Lme/kiip/sdk/Kiip$Callback;)Z

    .line 147
    return-void
.end method
