.class public interface abstract Lcom/github/amlcurran/showcaseview/targets/Target;
.super Ljava/lang/Object;
.source "Target.java"


# static fields
.field public static final NONE:Lcom/github/amlcurran/showcaseview/targets/Target;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/github/amlcurran/showcaseview/targets/Target$1;

    invoke-direct {v0}, Lcom/github/amlcurran/showcaseview/targets/Target$1;-><init>()V

    sput-object v0, Lcom/github/amlcurran/showcaseview/targets/Target;->NONE:Lcom/github/amlcurran/showcaseview/targets/Target;

    return-void
.end method


# virtual methods
.method public abstract getPoint()Landroid/graphics/Point;
.end method
