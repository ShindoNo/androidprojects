.class public Lcom/itim/explorer/ui/GPSDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "GPSDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/ui/GPSDialog$OnGPSDialogListener;
    }
.end annotation


# instance fields
.field private mCbShowAgain:Landroid/widget/CheckBox;

.field private onGPSDialogListener:Lcom/itim/explorer/ui/GPSDialog$OnGPSDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 69
    :pswitch_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/GPSDialog;->dismiss()V

    .line 70
    iget-object v0, p0, Lcom/itim/explorer/ui/GPSDialog;->onGPSDialogListener:Lcom/itim/explorer/ui/GPSDialog$OnGPSDialogListener;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/itim/explorer/ui/GPSDialog;->onGPSDialogListener:Lcom/itim/explorer/ui/GPSDialog$OnGPSDialogListener;

    invoke-interface {v0}, Lcom/itim/explorer/ui/GPSDialog$OnGPSDialogListener;->onSettings()V

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/itim/explorer/ui/GPSDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    invoke-virtual {p0}, Lcom/itim/explorer/ui/GPSDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    goto :goto_0

    .line 76
    :pswitch_1
    invoke-virtual {p0}, Lcom/itim/explorer/ui/GPSDialog;->dismiss()V

    .line 77
    iget-object v0, p0, Lcom/itim/explorer/ui/GPSDialog;->onGPSDialogListener:Lcom/itim/explorer/ui/GPSDialog$OnGPSDialogListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/itim/explorer/ui/GPSDialog;->onGPSDialogListener:Lcom/itim/explorer/ui/GPSDialog$OnGPSDialogListener;

    invoke-interface {v0}, Lcom/itim/explorer/ui/GPSDialog$OnGPSDialogListener;->onDissmiss()V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00c6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/itim/explorer/ui/GPSDialog;->setStyle(II)V

    .line 27
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    const v1, 0x7f040037

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0b00c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/itim/explorer/ui/GPSDialog;->mCbShowAgain:Landroid/widget/CheckBox;

    .line 35
    const v1, 0x7f0b00c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const v1, 0x7f0b00c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 46
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 53
    return-void
.end method

.method public setListener(Lcom/itim/explorer/ui/GPSDialog$OnGPSDialogListener;)V
    .locals 0
    .param p1, "onGPSDialogListener"    # Lcom/itim/explorer/ui/GPSDialog$OnGPSDialogListener;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/itim/explorer/ui/GPSDialog;->onGPSDialogListener:Lcom/itim/explorer/ui/GPSDialog$OnGPSDialogListener;

    .line 57
    return-void
.end method
