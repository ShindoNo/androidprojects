.class Lme/kiip/internal/i/a$2;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/a/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/i/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lme/kiip/internal/i/a$a;)Lme/kiip/internal/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lme/kiip/internal/a/n$b",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lme/kiip/internal/i/a$a;

.field final synthetic c:Lme/kiip/internal/i/a;


# direct methods
.method constructor <init>(Lme/kiip/internal/i/a;Ljava/lang/String;Lme/kiip/internal/i/a$a;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lme/kiip/internal/i/a$2;->c:Lme/kiip/internal/i/a;

    iput-object p2, p0, Lme/kiip/internal/i/a$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lme/kiip/internal/i/a$2;->b:Lme/kiip/internal/i/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 375
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lme/kiip/internal/i/a$2;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lme/kiip/internal/i/a$2;->b:Lme/kiip/internal/i/a$a;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lme/kiip/internal/i/a$2;->b:Lme/kiip/internal/i/a$a;

    invoke-interface {v0, p1}, Lme/kiip/internal/i/a$a;->a(Lorg/json/JSONObject;)V

    .line 389
    :cond_0
    return-void
.end method
