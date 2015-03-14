.class Lme/kiip/internal/l/d$2;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/a/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/l/d;->a(Lorg/json/JSONObject;Lme/kiip/internal/l/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/l/d$a;

.field final synthetic b:Lme/kiip/internal/l/c;

.field final synthetic c:Lme/kiip/internal/l/d;


# direct methods
.method constructor <init>(Lme/kiip/internal/l/d;Lme/kiip/internal/l/d$a;Lme/kiip/internal/l/c;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lme/kiip/internal/l/d$2;->c:Lme/kiip/internal/l/d;

    iput-object p2, p0, Lme/kiip/internal/l/d$2;->a:Lme/kiip/internal/l/d$a;

    iput-object p3, p0, Lme/kiip/internal/l/d$2;->b:Lme/kiip/internal/l/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lme/kiip/internal/a/s;)V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lme/kiip/internal/l/d$2;->a:Lme/kiip/internal/l/d$a;

    iget-object v1, p0, Lme/kiip/internal/l/d$2;->c:Lme/kiip/internal/l/d;

    iget-object v2, p0, Lme/kiip/internal/l/d$2;->b:Lme/kiip/internal/l/c;

    invoke-interface {v0, v1, v2, p1}, Lme/kiip/internal/l/d$a;->a(Lme/kiip/internal/l/d;Lme/kiip/sdk/Poptart;Ljava/lang/Exception;)V

    .line 112
    return-void
.end method
