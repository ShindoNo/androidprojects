.class Lme/kiip/internal/a/t$a$a;
.super Ljava/lang/Object;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/a/t$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lme/kiip/internal/a/t$a$a;->a:Ljava/lang/String;

    .line 116
    iput-wide p2, p0, Lme/kiip/internal/a/t$a$a;->b:J

    .line 117
    iput-wide p4, p0, Lme/kiip/internal/a/t$a$a;->c:J

    .line 118
    return-void
.end method
