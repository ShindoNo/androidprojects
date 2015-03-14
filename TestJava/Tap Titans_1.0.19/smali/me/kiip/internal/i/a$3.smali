.class Lme/kiip/internal/i/a$3;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/a/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/i/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lme/kiip/internal/i/a$a;)Lme/kiip/internal/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONArray;

.field final synthetic c:Lme/kiip/internal/i/a$a;

.field final synthetic d:Lme/kiip/internal/i/a;


# direct methods
.method constructor <init>(Lme/kiip/internal/i/a;Ljava/lang/String;Lorg/json/JSONArray;Lme/kiip/internal/i/a$a;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lme/kiip/internal/i/a$3;->d:Lme/kiip/internal/i/a;

    iput-object p2, p0, Lme/kiip/internal/i/a$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lme/kiip/internal/i/a$3;->b:Lorg/json/JSONArray;

    iput-object p4, p0, Lme/kiip/internal/i/a$3;->c:Lme/kiip/internal/i/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lme/kiip/internal/a/s;)V
    .locals 4

    .prologue
    .line 398
    iget-object v0, p0, Lme/kiip/internal/i/a$3;->b:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 399
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 400
    iget-object v2, p0, Lme/kiip/internal/i/a$3;->d:Lme/kiip/internal/i/a;

    invoke-static {v2}, Lme/kiip/internal/i/a;->a(Lme/kiip/internal/i/a;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lme/kiip/internal/i/a$3;->b:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/i/a$3;->c:Lme/kiip/internal/i/a$a;

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lme/kiip/internal/i/a$3;->c:Lme/kiip/internal/i/a$a;

    invoke-interface {v0, p1}, Lme/kiip/internal/i/a$a;->a(Ljava/lang/Exception;)V

    .line 406
    :cond_1
    return-void
.end method
