.class public final enum Lcom/flurry/sdk/fk$v;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/fk$v;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/fk$v;

.field public static final enum b:Lcom/flurry/sdk/fk$v;

.field public static final enum c:Lcom/flurry/sdk/fk$v;

.field public static final enum d:Lcom/flurry/sdk/fk$v;

.field public static final enum e:Lcom/flurry/sdk/fk$v;

.field public static final enum f:Lcom/flurry/sdk/fk$v;

.field public static final enum g:Lcom/flurry/sdk/fk$v;

.field public static final enum h:Lcom/flurry/sdk/fk$v;

.field public static final enum i:Lcom/flurry/sdk/fk$v;

.field public static final enum j:Lcom/flurry/sdk/fk$v;

.field public static final enum k:Lcom/flurry/sdk/fk$v;

.field public static final enum l:Lcom/flurry/sdk/fk$v;

.field public static final enum m:Lcom/flurry/sdk/fk$v;

.field public static final enum n:Lcom/flurry/sdk/fk$v;

.field private static final synthetic p:[Lcom/flurry/sdk/fk$v;


# instance fields
.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    new-instance v0, Lcom/flurry/sdk/fk$v;

    const-string v1, "RECORD"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/fk$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/fk$v;->a:Lcom/flurry/sdk/fk$v;

    new-instance v0, Lcom/flurry/sdk/fk$v;

    const-string v1, "ENUM"

    invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/fk$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/fk$v;->b:Lcom/flurry/sdk/fk$v;

    new-instance v0, Lcom/flurry/sdk/fk$v;

    const-string v1, "ARRAY"

    invoke-direct {v0, v1, v5}, Lcom/flurry/sdk/fk$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/fk$v;->c:Lcom/flurry/sdk/fk$v;

    new-instance v0, Lcom/flurry/sdk/fk$v;

    const-string v1, "MAP"

    invoke-direct {v0, v1, v6}, Lcom/flurry/sdk/fk$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/fk$v;->d:Lcom/flurry/sdk/fk$v;

    new-instance v0, Lcom/flurry/sdk/fk$v;

    const-string v1, "UNION"

    invoke-direct {v0, v1, v7}, Lcom/flurry/sdk/fk$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/fk$v;->e:Lcom/flurry/sdk/fk$v;

    new-instance v0, Lcom/flurry/sdk/fk$v;

    const-string v1, "FIXED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/fk$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/fk$v;->f:Lcom/flurry/sdk/fk$v;

    new-instance v0, Lcom/flurry/sdk/fk$v;

    const-string v1, "STRING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/fk$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/fk$v;->g:Lcom/flurry/sdk/fk$v;

    new-instance v0, Lcom/flurry/sdk/fk$v;

    const-string v1, "BYTES"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/fk$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/fk$v;->h:Lcom/flurry/sdk/fk$v;

    .line 92
    new-instance v0, Lcom/flurry/sdk/fk$v;

    const-string v1, "INT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/fk$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/fk$v;->i:Lcom/flurry/sdk/fk$v;

    new-instance v0, Lcom/flurry/sdk/fk$v;

    const-string v1, "LONG"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/fk$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/fk$v;->j:Lcom/flurry/sdk/fk$v;

    new-instance v0, Lcom/flurry/sdk/fk$v;

    const-string v1, "FLOAT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/fk$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/fk$v;->k:Lcom/flurry/sdk/fk$v;

    new-instance v0, Lcom/flurry/sdk/fk$v;

    const-string v1, "DOUBLE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/fk$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/fk$v;->l:Lcom/flurry/sdk/fk$v;

    new-instance v0, Lcom/flurry/sdk/fk$v;

    const-string v1, "BOOLEAN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/fk$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/fk$v;->m:Lcom/flurry/sdk/fk$v;

    new-instance v0, Lcom/flurry/sdk/fk$v;

    const-string v1, "NULL"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/fk$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/fk$v;->n:Lcom/flurry/sdk/fk$v;

    .line 90
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/flurry/sdk/fk$v;

    sget-object v1, Lcom/flurry/sdk/fk$v;->a:Lcom/flurry/sdk/fk$v;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/fk$v;->b:Lcom/flurry/sdk/fk$v;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/fk$v;->c:Lcom/flurry/sdk/fk$v;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/fk$v;->d:Lcom/flurry/sdk/fk$v;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/fk$v;->e:Lcom/flurry/sdk/fk$v;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/fk$v;->f:Lcom/flurry/sdk/fk$v;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/fk$v;->g:Lcom/flurry/sdk/fk$v;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/flurry/sdk/fk$v;->h:Lcom/flurry/sdk/fk$v;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/flurry/sdk/fk$v;->i:Lcom/flurry/sdk/fk$v;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/flurry/sdk/fk$v;->j:Lcom/flurry/sdk/fk$v;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/flurry/sdk/fk$v;->k:Lcom/flurry/sdk/fk$v;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/flurry/sdk/fk$v;->l:Lcom/flurry/sdk/fk$v;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/flurry/sdk/fk$v;->m:Lcom/flurry/sdk/fk$v;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/flurry/sdk/fk$v;->n:Lcom/flurry/sdk/fk$v;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/sdk/fk$v;->p:[Lcom/flurry/sdk/fk$v;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/flurry/sdk/fk$v;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/fk$v;->o:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/fk$v;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/flurry/sdk/fk$v;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/fk$v;
    .locals 1

    .prologue
    .line 90
    const-class v0, Lcom/flurry/sdk/fk$v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fk$v;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/fk$v;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/flurry/sdk/fk$v;->p:[Lcom/flurry/sdk/fk$v;

    invoke-virtual {v0}, [Lcom/flurry/sdk/fk$v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/fk$v;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flurry/sdk/fk$v;->o:Ljava/lang/String;

    return-object v0
.end method
