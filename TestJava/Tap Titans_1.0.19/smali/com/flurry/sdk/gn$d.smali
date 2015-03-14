.class public Lcom/flurry/sdk/gn$d;
.super Lcom/flurry/sdk/gn$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final z:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gn$g;-><init>(Lcom/flurry/sdk/gn$1;)V

    .line 400
    iput-object p1, p0, Lcom/flurry/sdk/gn$d;->z:Ljava/lang/String;

    .line 401
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/flurry/sdk/gn$1;)V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/flurry/sdk/gn$d;-><init>(Ljava/lang/String;)V

    return-void
.end method
