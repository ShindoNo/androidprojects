.class Lcom/amazon/ags/client/KindleFireIPCProxy$1;
.super Ljava/lang/Object;
.source "KindleFireIPCProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/client/KindleFireIPCProxy;->bindToAsynchronousService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/KindleFireIPCProxy;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/KindleFireIPCProxy;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/amazon/ags/client/KindleFireIPCProxy$1;->this$0:Lcom/amazon/ags/client/KindleFireIPCProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy$1;->this$0:Lcom/amazon/ags/client/KindleFireIPCProxy;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lcom/amazon/ags/client/KindleFireIPCProxy;->asynchronousMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/amazon/ags/client/KindleFireIPCProxy;->access$002(Lcom/amazon/ags/client/KindleFireIPCProxy;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 283
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy$1;->this$0:Lcom/amazon/ags/client/KindleFireIPCProxy;

    # invokes: Lcom/amazon/ags/client/KindleFireIPCProxy;->onBindChange()V
    invoke-static {v0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->access$100(Lcom/amazon/ags/client/KindleFireIPCProxy;)V

    .line 284
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy$1;->this$0:Lcom/amazon/ags/client/KindleFireIPCProxy;

    const/4 v1, 0x0

    # setter for: Lcom/amazon/ags/client/KindleFireIPCProxy;->asynchronousMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/amazon/ags/client/KindleFireIPCProxy;->access$002(Lcom/amazon/ags/client/KindleFireIPCProxy;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 289
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy$1;->this$0:Lcom/amazon/ags/client/KindleFireIPCProxy;

    # invokes: Lcom/amazon/ags/client/KindleFireIPCProxy;->onBindChange()V
    invoke-static {v0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->access$100(Lcom/amazon/ags/client/KindleFireIPCProxy;)V

    .line 290
    return-void
.end method
