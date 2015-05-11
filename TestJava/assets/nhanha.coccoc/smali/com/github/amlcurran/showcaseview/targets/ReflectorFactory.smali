.class Lcom/github/amlcurran/showcaseview/targets/ReflectorFactory;
.super Ljava/lang/Object;
.source "ReflectorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/amlcurran/showcaseview/targets/ReflectorFactory$1;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getReflectorForActivity(Landroid/app/Activity;)Lcom/github/amlcurran/showcaseview/targets/Reflector;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 11
    sget-object v0, Lcom/github/amlcurran/showcaseview/targets/ReflectorFactory$1;->$SwitchMap$com$github$amlcurran$showcaseview$targets$Reflector$ActionBarType:[I

    invoke-static {p0}, Lcom/github/amlcurran/showcaseview/targets/ReflectorFactory;->searchForActivitySuperClass(Landroid/app/Activity;)Lcom/github/amlcurran/showcaseview/targets/Reflector$ActionBarType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/amlcurran/showcaseview/targets/Reflector$ActionBarType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 19
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 13
    :pswitch_0
    new-instance v0, Lcom/github/amlcurran/showcaseview/targets/ActionBarReflector;

    invoke-direct {v0, p0}, Lcom/github/amlcurran/showcaseview/targets/ActionBarReflector;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 15
    :pswitch_1
    new-instance v0, Lcom/github/amlcurran/showcaseview/targets/AppCompatReflector;

    invoke-direct {v0, p0}, Lcom/github/amlcurran/showcaseview/targets/AppCompatReflector;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 17
    :pswitch_2
    new-instance v0, Lcom/github/amlcurran/showcaseview/targets/SherlockReflector;

    invoke-direct {v0, p0}, Lcom/github/amlcurran/showcaseview/targets/SherlockReflector;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 11
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static searchForActivitySuperClass(Landroid/app/Activity;)Lcom/github/amlcurran/showcaseview/targets/Reflector$ActionBarType;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 24
    .local v0, "currentLevel":Ljava/lang/Class;
    :goto_0
    const-class v1, Landroid/app/Activity;

    if-eq v0, v1, :cond_3

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SherlockActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SherlockFragmentActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    :cond_0
    sget-object v1, Lcom/github/amlcurran/showcaseview/targets/Reflector$ActionBarType;->ACTIONBAR_SHERLOCK:Lcom/github/amlcurran/showcaseview/targets/Reflector$ActionBarType;

    .line 33
    :goto_1
    return-object v1

    .line 28
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActionBarActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    sget-object v1, Lcom/github/amlcurran/showcaseview/targets/Reflector$ActionBarType;->APP_COMPAT:Lcom/github/amlcurran/showcaseview/targets/Reflector$ActionBarType;

    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_3
    sget-object v1, Lcom/github/amlcurran/showcaseview/targets/Reflector$ActionBarType;->STANDARD:Lcom/github/amlcurran/showcaseview/targets/Reflector$ActionBarType;

    goto :goto_1
.end method
