.class final Lme/kiip/internal/f/d;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/f/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kiip/internal/f/d$b;,
        Lme/kiip/internal/f/d$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Z)Lme/kiip/internal/f/b;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lme/kiip/internal/f/d$a;

    invoke-direct {v0, p1}, Lme/kiip/internal/f/d$a;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;Z)Lme/kiip/internal/f/c;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lme/kiip/internal/f/d$b;

    invoke-direct {v0, p1}, Lme/kiip/internal/f/d$b;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method
