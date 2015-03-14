.class public Lme/kiip/sdk/KiipFragmentCompat;
.super Landroid/support/v4/app/Fragment;
.source "KiipSDK"


# instance fields
.field private a:Lme/kiip/internal/i/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lme/kiip/sdk/KiipFragmentCompat;->setRetainInstance(Z)V

    .line 42
    new-instance v0, Lme/kiip/internal/i/c;

    invoke-direct {v0}, Lme/kiip/internal/i/c;-><init>()V

    iput-object v0, p0, Lme/kiip/sdk/KiipFragmentCompat;->a:Lme/kiip/internal/i/c;

    .line 43
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
    .line 32
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
    .line 24
    .local p0, "queue":Ljava/util/List;, "Ljava/util/List<Lme/kiip/sdk/Poptart;>;"
    invoke-static {p0}, Lme/kiip/internal/i/c;->a(Ljava/util/List;)V

    .line 25
    return-void
.end method


# virtual methods
.method public dismissPoptart(Lme/kiip/sdk/Poptart;)V
    .locals 1
    .param p1, "poptart"    # Lme/kiip/sdk/Poptart;

    .prologue
    .line 63
    iget-object v0, p0, Lme/kiip/sdk/KiipFragmentCompat;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0, p1}, Lme/kiip/internal/i/c;->b(Lme/kiip/sdk/Poptart;)V

    .line 64
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 93
    iget-object v0, p0, Lme/kiip/sdk/KiipFragmentCompat;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0, p1}, Lme/kiip/internal/i/c;->a(Landroid/app/Activity;)V

    .line 94
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    iget-object v0, p0, Lme/kiip/sdk/KiipFragmentCompat;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0, p1}, Lme/kiip/internal/i/c;->a(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lme/kiip/sdk/KiipFragmentCompat;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0}, Lme/kiip/internal/i/c;->e()V

    .line 123
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 124
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lme/kiip/sdk/KiipFragmentCompat;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0}, Lme/kiip/internal/i/c;->d()V

    .line 117
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 118
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lme/kiip/sdk/KiipFragmentCompat;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0}, Lme/kiip/internal/i/c;->f()V

    .line 129
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 130
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 105
    iget-object v0, p0, Lme/kiip/sdk/KiipFragmentCompat;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0}, Lme/kiip/internal/i/c;->b()V

    .line 106
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lme/kiip/sdk/KiipFragmentCompat;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0}, Lme/kiip/internal/i/c;->c()V

    .line 111
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 112
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 84
    iget-object v0, p0, Lme/kiip/sdk/KiipFragmentCompat;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0, p1}, Lme/kiip/internal/i/c;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 85
    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnShowListener;

    .prologue
    .line 75
    iget-object v0, p0, Lme/kiip/sdk/KiipFragmentCompat;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0, p1}, Lme/kiip/internal/i/c;->a(Landroid/content/DialogInterface$OnShowListener;)V

    .line 76
    return-void
.end method

.method public showPoptart(Lme/kiip/sdk/Poptart;)V
    .locals 1
    .param p1, "poptart"    # Lme/kiip/sdk/Poptart;

    .prologue
    .line 53
    iget-object v0, p0, Lme/kiip/sdk/KiipFragmentCompat;->a:Lme/kiip/internal/i/c;

    invoke-virtual {v0, p1}, Lme/kiip/internal/i/c;->a(Lme/kiip/sdk/Poptart;)V

    .line 54
    return-void
.end method
