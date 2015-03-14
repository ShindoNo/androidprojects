.class public Lme/kiip/internal/i/e;
.super Ljava/lang/Exception;
.source "KiipSDK"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    iput p1, p0, Lme/kiip/internal/i/e;->a:I

    .line 11
    iput-object p3, p0, Lme/kiip/internal/i/e;->b:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lme/kiip/internal/i/e;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lme/kiip/internal/i/e;->b:Ljava/lang/String;

    return-object v0
.end method
