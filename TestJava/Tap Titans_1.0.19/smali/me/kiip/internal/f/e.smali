.class public interface abstract Lme/kiip/internal/f/e;
.super Ljava/lang/Object;
.source "KiipSDK"


# static fields
.field public static final a:Lme/kiip/internal/f/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lme/kiip/internal/f/e$1;

    invoke-direct {v0}, Lme/kiip/internal/f/e$1;-><init>()V

    sput-object v0, Lme/kiip/internal/f/e;->a:Lme/kiip/internal/f/e;

    return-void
.end method


# virtual methods
.method public abstract a(Lme/kiip/internal/f/j;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
