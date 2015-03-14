.class public interface abstract Lme/kiip/internal/d/d;
.super Ljava/lang/Object;
.source "KiipSDK"


# static fields
.field public static final a:Lme/kiip/internal/d/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lme/kiip/internal/d/d$1;

    invoke-direct {v0}, Lme/kiip/internal/d/d$1;-><init>()V

    sput-object v0, Lme/kiip/internal/d/d;->a:Lme/kiip/internal/d/d;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)[Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
