.class public final enum Lcom/flurry/sdk/gz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/gz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/gz;

.field public static final enum b:Lcom/flurry/sdk/gz;

.field public static final enum c:Lcom/flurry/sdk/gz;

.field public static final enum d:Lcom/flurry/sdk/gz;

.field public static final enum e:Lcom/flurry/sdk/gz;

.field private static final synthetic h:[Lcom/flurry/sdk/gz;


# instance fields
.field protected final f:Ljava/lang/String;

.field protected final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/flurry/sdk/gz;

    const-string v1, "UTF8"

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/flurry/sdk/gz;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/flurry/sdk/gz;->a:Lcom/flurry/sdk/gz;

    .line 15
    new-instance v0, Lcom/flurry/sdk/gz;

    const-string v1, "UTF16_BE"

    const-string v2, "UTF-16BE"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/flurry/sdk/gz;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/flurry/sdk/gz;->b:Lcom/flurry/sdk/gz;

    .line 16
    new-instance v0, Lcom/flurry/sdk/gz;

    const-string v1, "UTF16_LE"

    const-string v2, "UTF-16LE"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/flurry/sdk/gz;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/flurry/sdk/gz;->c:Lcom/flurry/sdk/gz;

    .line 17
    new-instance v0, Lcom/flurry/sdk/gz;

    const-string v1, "UTF32_BE"

    const-string v2, "UTF-32BE"

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/flurry/sdk/gz;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/flurry/sdk/gz;->d:Lcom/flurry/sdk/gz;

    .line 18
    new-instance v0, Lcom/flurry/sdk/gz;

    const-string v1, "UTF32_LE"

    const-string v2, "UTF-32LE"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/flurry/sdk/gz;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/flurry/sdk/gz;->e:Lcom/flurry/sdk/gz;

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/flurry/sdk/gz;

    sget-object v1, Lcom/flurry/sdk/gz;->a:Lcom/flurry/sdk/gz;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/gz;->b:Lcom/flurry/sdk/gz;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/gz;->c:Lcom/flurry/sdk/gz;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/gz;->d:Lcom/flurry/sdk/gz;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/gz;->e:Lcom/flurry/sdk/gz;

    aput-object v1, v0, v7

    sput-object v0, Lcom/flurry/sdk/gz;->h:[Lcom/flurry/sdk/gz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/flurry/sdk/gz;->f:Ljava/lang/String;

    .line 28
    iput-boolean p4, p0, Lcom/flurry/sdk/gz;->g:Z

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/gz;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/flurry/sdk/gz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gz;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/gz;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/flurry/sdk/gz;->h:[Lcom/flurry/sdk/gz;

    invoke-virtual {v0}, [Lcom/flurry/sdk/gz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/gz;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/flurry/sdk/gz;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/flurry/sdk/gz;->g:Z

    return v0
.end method
