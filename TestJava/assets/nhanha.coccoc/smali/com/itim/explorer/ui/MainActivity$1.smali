.class Lcom/itim/explorer/ui/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/MainActivity;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/itim/explorer/ui/MainActivity$1;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity$1;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/MainActivity;->retriveAuthName()V

    .line 126
    return-void
.end method
