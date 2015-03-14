.class Lcom/fiksu/asotracking/FiksuConfigurationManager$1;
.super Ljava/lang/Object;
.source "FiksuConfigurationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fiksu/asotracking/FiksuConfigurationManager;->updateConfigurationFromServerInTheBackground(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fiksu/asotracking/FiksuConfigurationManager;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fiksu/asotracking/FiksuConfigurationManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager$1;->this$0:Lcom/fiksu/asotracking/FiksuConfigurationManager;

    iput-object p2, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager$1;->val$url:Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager$1;->this$0:Lcom/fiksu/asotracking/FiksuConfigurationManager;

    iget-object v1, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager$1;->val$url:Ljava/lang/String;

    # invokes: Lcom/fiksu/asotracking/FiksuConfigurationManager;->updateConfigurationFromServerBlocking(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->access$1(Lcom/fiksu/asotracking/FiksuConfigurationManager;Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager$1;->this$0:Lcom/fiksu/asotracking/FiksuConfigurationManager;

    # getter for: Lcom/fiksu/asotracking/FiksuConfigurationManager;->mIsUpdatingConfiguration:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->access$0(Lcom/fiksu/asotracking/FiksuConfigurationManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 130
    return-void

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    iget-object v1, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager$1;->this$0:Lcom/fiksu/asotracking/FiksuConfigurationManager;

    # getter for: Lcom/fiksu/asotracking/FiksuConfigurationManager;->mIsUpdatingConfiguration:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->access$0(Lcom/fiksu/asotracking/FiksuConfigurationManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 129
    throw v0
.end method
