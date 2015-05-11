.class public interface abstract Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;
.super Ljava/lang/Object;
.source "OnShowcaseEventListener.java"


# static fields
.field public static final NONE:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener$1;

    invoke-direct {v0}, Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener$1;-><init>()V

    sput-object v0, Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;->NONE:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    return-void
.end method


# virtual methods
.method public abstract onShowcaseViewDidHide(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V
.end method

.method public abstract onShowcaseViewHide(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V
.end method

.method public abstract onShowcaseViewShow(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V
.end method
