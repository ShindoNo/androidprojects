.class public Lme/kiip/sdk/KiipFragment;
.super Landroid/app/Fragment;
.source "KiipSDK"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private a:Lme/kiip/internal/i/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lme/kiip/sdk/KiipFragment;->setRetainInstance(Z)V

    .line 44
    new-instance v0, Lme/kiip/internal/i/c;

    invoke-direct {v0}, Lme/kiip/internal/i/c;-><init>()V

    iput-object v0, p0, Lme/kiip/sdk/KiipFragment;->a:Lme/kiip/internal/i/c;

    .line 45
    return-void
.end method

.method public static getDefaultQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lme/kiip/sdk/Poptart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {}, Lme/kiip/internal/i/c;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultQueue(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lme/kiip/sdk/Poptart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "queue":Ljava/util/List;, "Ljava/util/List<Lme/kiip/sdk/Poptart;>;"
    invoke-static {p0}, Lme/kiip/internal/i/c;->a(Ljava/util/List;)V

    .line 27
    return-void
.end method


# virtual methods
.method public dismissPoptart(Lme/kiip/sdk/Poptart;)V
    .locals 1
    .param p1, "poptart"    # Lme/kiip/sdk/Poptart;

    .prologue
    .line 65
    iget-object v0, p0, Lme/kiip/sdk/KiipFragment;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0, p1}, Lme/kiip/internal/i/c;->b(Lme/kiip/sdk/Poptart;)V

    .line 66
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 95
    iget-object v0, p0, Lme/kiip/sdk/KiipFragment;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0, p1}, Lme/kiip/internal/i/c;->a(Landroid/app/Activity;)V

    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    iget-object v0, p0, Lme/kiip/sdk/KiipFragment;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0, p1}, Lme/kiip/internal/i/c;->a(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lme/kiip/sdk/KiipFragment;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0}, Lme/kiip/internal/i/c;->e()V

    .line 125
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 126
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lme/kiip/sdk/KiipFragment;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0}, Lme/kiip/internal/i/c;->d()V

    .line 119
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 120
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lme/kiip/sdk/KiipFragment;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0}, Lme/kiip/internal/i/c;->f()V

    .line 131
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 132
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 107
    iget-object v0, p0, Lme/kiip/sdk/KiipFragment;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0}, Lme/kiip/internal/i/c;->b()V

    .line 108
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lme/kiip/sdk/KiipFragment;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0}, Lme/kiip/internal/i/c;->c()V

    .line 113
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 114
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 86
    iget-object v0, p0, Lme/kiip/sdk/KiipFragment;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0, p1}, Lme/kiip/internal/i/c;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 87
    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnShowListener;

    .prologue
    .line 77
    iget-object v0, p0, Lme/kiip/sdk/KiipFragment;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0, p1}, Lme/kiip/internal/i/c;->a(Landroid/content/DialogInterface$OnShowListener;)V

    .line 78
    return-void
.end method

.method public showPoptart(Lme/kiip/sdk/Poptart;)V
    .locals 1
    .param p1, "poptart"    # Lme/kiip/sdk/Poptart;

    .prologue
    .line 55
    iget-object v0, p0, Lme/kiip/sdk/KiipFragment;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0, p1}, Lme/kiip/internal/i/c;->a(Lme/kiip/sdk/Poptart;)V

    .line 56
    return-void
.end method
