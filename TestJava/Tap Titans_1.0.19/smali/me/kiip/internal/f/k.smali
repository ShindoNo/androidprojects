.class interface abstract Lme/kiip/internal/f/k;
.super Ljava/lang/Object;
.source "KiipSDK"


# static fields
.field public static final b:Lme/kiip/internal/f/k;

.field public static final c:Lme/kiip/internal/f/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lme/kiip/internal/f/h;

    invoke-direct {v0}, Lme/kiip/internal/f/h;-><init>()V

    sput-object v0, Lme/kiip/internal/f/k;->b:Lme/kiip/internal/f/k;

    .line 24
    new-instance v0, Lme/kiip/internal/f/d;

    invoke-direct {v0}, Lme/kiip/internal/f/d;-><init>()V

    sput-object v0, Lme/kiip/internal/f/k;->c:Lme/kiip/internal/f/k;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/io/InputStream;Z)Lme/kiip/internal/f/b;
.end method

.method public abstract a(Ljava/io/OutputStream;Z)Lme/kiip/internal/f/c;
.end method
