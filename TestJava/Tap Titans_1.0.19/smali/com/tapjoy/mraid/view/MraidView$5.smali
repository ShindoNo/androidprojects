.class Lcom/tapjoy/mraid/view/MraidView$5;
.super Landroid/webkit/WebChromeClient;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/view/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/mraid/view/MraidView;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "w"    # Landroid/webkit/WebView;

    .prologue
    .line 1113
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 1114
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # invokes: Lcom/tapjoy/mraid/view/MraidView;->closeWindow()V
    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$1000(Lcom/tapjoy/mraid/view/MraidView;)V

    .line 1115
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;
    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$300(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;
    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$300(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    .line 1226
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public onHideCustomView()V
    .locals 0

    .prologue
    .line 1217
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 1218
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 1107
    const-string v0, "MRAIDView"

    invoke-static {v0, p3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    const/4 v0, 0x0

    return v0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    const/16 v11, 0xd

    const/4 v10, -0x2

    const/4 v9, -0x1

    .line 1120
    const-string v4, "MRAIDView"

    const-string v5, "-- onShowCustomView --"

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 1123
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # setter for: Lcom/tapjoy/mraid/view/MraidView;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;
    invoke-static {v4, p2}, Lcom/tapjoy/mraid/view/MraidView;->access$1602(Lcom/tapjoy/mraid/view/MraidView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 1125
    instance-of v4, p1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 1127
    check-cast v1, Landroid/widget/FrameLayout;

    .line 1128
    .local v1, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/VideoView;

    if-eqz v4, :cond_0

    .line 1131
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->access$1700(Lcom/tapjoy/mraid/view/MraidView;)Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-nez v4, :cond_1

    .line 1212
    .end local v1    # "frame":Landroid/widget/FrameLayout;
    :cond_0
    :goto_0
    return-void

    .line 1134
    .restart local v1    # "frame":Landroid/widget/FrameLayout;
    :cond_1
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->access$1700(Lcom/tapjoy/mraid/view/MraidView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1136
    .local v0, "activity":Landroid/app/Activity;
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/VideoView;

    # setter for: Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;
    invoke-static {v5, v4}, Lcom/tapjoy/mraid/view/MraidView;->access$1802(Lcom/tapjoy/mraid/view/MraidView;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    .line 1138
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;
    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->access$1800(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1140
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->videoRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->access$1900(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/RelativeLayout;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1142
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->ctx:Landroid/content/Context;
    invoke-static {v6}, Lcom/tapjoy/mraid/view/MraidView;->access$1700(Lcom/tapjoy/mraid/view/MraidView;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/tapjoy/mraid/view/MraidView;->videoRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4, v5}, Lcom/tapjoy/mraid/view/MraidView;->access$1902(Lcom/tapjoy/mraid/view/MraidView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 1143
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->videoRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->access$1900(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/RelativeLayout;

    move-result-object v4

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1144
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->videoRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->access$1900(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1149
    :cond_2
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1150
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1151
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;
    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->access$1800(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1154
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    new-instance v5, Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->ctx:Landroid/content/Context;
    invoke-static {v6}, Lcom/tapjoy/mraid/view/MraidView;->access$1700(Lcom/tapjoy/mraid/view/MraidView;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x101007a

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    # setter for: Lcom/tapjoy/mraid/view/MraidView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v4, v5}, Lcom/tapjoy/mraid/view/MraidView;->access$2002(Lcom/tapjoy/mraid/view/MraidView;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 1155
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->access$2000(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/ProgressBar;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1158
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1159
    .local v3, "progressParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1160
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->access$2000(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1162
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->videoRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->access$1900(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/RelativeLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;
    invoke-static {v5}, Lcom/tapjoy/mraid/view/MraidView;->access$1800(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1163
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->videoRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->access$1900(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/RelativeLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lcom/tapjoy/mraid/view/MraidView;->access$2000(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1164
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->videoRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/tapjoy/mraid/view/MraidView;->access$1900(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/RelativeLayout;

    move-result-object v5

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1167
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;

    iget-object v6, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {v5, v6}, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1171
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    .line 1173
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;
    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->access$1800(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v4

    new-instance v5, Lcom/tapjoy/mraid/view/MraidView$5$1;

    invoke-direct {v5, p0}, Lcom/tapjoy/mraid/view/MraidView$5$1;-><init>(Lcom/tapjoy/mraid/view/MraidView$5;)V

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1187
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;
    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->access$1800(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v4

    new-instance v5, Lcom/tapjoy/mraid/view/MraidView$5$2;

    invoke-direct {v5, p0}, Lcom/tapjoy/mraid/view/MraidView$5$2;-><init>(Lcom/tapjoy/mraid/view/MraidView$5;)V

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1198
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;
    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->access$1800(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v4

    new-instance v5, Lcom/tapjoy/mraid/view/MraidView$5$3;

    invoke-direct {v5, p0}, Lcom/tapjoy/mraid/view/MraidView$5$3;-><init>(Lcom/tapjoy/mraid/view/MraidView$5;)V

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1209
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;
    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->access$1800(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/VideoView;->start()V

    goto/16 :goto_0
.end method
