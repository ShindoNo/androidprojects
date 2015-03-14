.class Lcom/prime31/ChartboostPlugin$8;
.super Ljava/lang/Object;
.source "ChartboostPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/ChartboostPlugin;->setImpressionsUseActivities(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/ChartboostPlugin;

.field private final synthetic val$impressionsUseActivities:Z


# direct methods
.method constructor <init>(Lcom/prime31/ChartboostPlugin;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/prime31/ChartboostPlugin$8;->this$0:Lcom/prime31/ChartboostPlugin;

    iput-boolean p2, p0, Lcom/prime31/ChartboostPlugin$8;->val$impressionsUseActivities:Z

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/prime31/ChartboostPlugin$8;->val$impressionsUseActivities:Z

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setImpressionsUseActivities(Z)V

    .line 140
    return-void
.end method
