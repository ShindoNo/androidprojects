.class public Lcom/itim/explorer/ui/ErrorDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ErrorDialogFragment.java"


# static fields
.field public static final CONNECTION_FAILURE_RESOLUTION_REQUEST:I = 0x2328


# instance fields
.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itim/explorer/ui/ErrorDialogFragment;->mDialog:Landroid/app/Dialog;

    .line 14
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/itim/explorer/ui/ErrorDialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/itim/explorer/ui/ErrorDialogFragment;->mDialog:Landroid/app/Dialog;

    .line 18
    return-void
.end method
