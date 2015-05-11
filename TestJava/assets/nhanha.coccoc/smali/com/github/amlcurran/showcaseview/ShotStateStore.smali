.class Lcom/github/amlcurran/showcaseview/ShotStateStore;
.super Ljava/lang/Object;
.source "ShotStateStore.java"


# static fields
.field private static final INVALID_SHOT_ID:I = -0x1

.field private static final PREFS_SHOWCASE_INTERNAL:Ljava/lang/String; = "showcase_internal"


# instance fields
.field private final context:Landroid/content/Context;

.field shotId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/github/amlcurran/showcaseview/ShotStateStore;->shotId:J

    .line 16
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/ShotStateStore;->context:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method hasShot()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShotStateStore;->isSingleShot()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShotStateStore;->context:Landroid/content/Context;

    const-string v2, "showcase_internal"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasShot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/github/amlcurran/showcaseview/ShotStateStore;->shotId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isSingleShot()Z
    .locals 4

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/github/amlcurran/showcaseview/ShotStateStore;->shotId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setSingleShot(J)V
    .locals 0
    .param p1, "shotId"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/github/amlcurran/showcaseview/ShotStateStore;->shotId:J

    .line 38
    return-void
.end method

.method storeShot()V
    .locals 5

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShotStateStore;->isSingleShot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShotStateStore;->context:Landroid/content/Context;

    const-string v2, "showcase_internal"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    .local v0, "internal":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasShot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/github/amlcurran/showcaseview/ShotStateStore;->shotId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    .end local v0    # "internal":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
