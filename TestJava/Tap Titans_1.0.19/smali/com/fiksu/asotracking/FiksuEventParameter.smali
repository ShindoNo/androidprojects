.class final enum Lcom/fiksu/asotracking/FiksuEventParameter;
.super Ljava/lang/Enum;
.source "FiksuEventParameter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fiksu/asotracking/FiksuEventParameter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/fiksu/asotracking/FiksuEventParameter;

.field public static final enum EVENT:Lcom/fiksu/asotracking/FiksuEventParameter;

.field public static final enum FVALUE:Lcom/fiksu/asotracking/FiksuEventParameter;

.field public static final enum IVALUE:Lcom/fiksu/asotracking/FiksuEventParameter;

.field public static final enum TVALUE:Lcom/fiksu/asotracking/FiksuEventParameter;

.field public static final enum USERNAME:Lcom/fiksu/asotracking/FiksuEventParameter;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/fiksu/asotracking/FiksuEventParameter;

    const-string v1, "EVENT"

    const-string v2, "event"

    invoke-direct {v0, v1, v3, v2}, Lcom/fiksu/asotracking/FiksuEventParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fiksu/asotracking/FiksuEventParameter;->EVENT:Lcom/fiksu/asotracking/FiksuEventParameter;

    .line 13
    new-instance v0, Lcom/fiksu/asotracking/FiksuEventParameter;

    const-string v1, "USERNAME"

    const-string v2, "username"

    invoke-direct {v0, v1, v4, v2}, Lcom/fiksu/asotracking/FiksuEventParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fiksu/asotracking/FiksuEventParameter;->USERNAME:Lcom/fiksu/asotracking/FiksuEventParameter;

    .line 14
    new-instance v0, Lcom/fiksu/asotracking/FiksuEventParameter;

    const-string v1, "IVALUE"

    const-string v2, "ivalue"

    invoke-direct {v0, v1, v5, v2}, Lcom/fiksu/asotracking/FiksuEventParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fiksu/asotracking/FiksuEventParameter;->IVALUE:Lcom/fiksu/asotracking/FiksuEventParameter;

    .line 15
    new-instance v0, Lcom/fiksu/asotracking/FiksuEventParameter;

    const-string v1, "FVALUE"

    const-string v2, "fvalue"

    invoke-direct {v0, v1, v6, v2}, Lcom/fiksu/asotracking/FiksuEventParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fiksu/asotracking/FiksuEventParameter;->FVALUE:Lcom/fiksu/asotracking/FiksuEventParameter;

    .line 16
    new-instance v0, Lcom/fiksu/asotracking/FiksuEventParameter;

    const-string v1, "TVALUE"

    const-string v2, "tvalue"

    invoke-direct {v0, v1, v7, v2}, Lcom/fiksu/asotracking/FiksuEventParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fiksu/asotracking/FiksuEventParameter;->TVALUE:Lcom/fiksu/asotracking/FiksuEventParameter;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fiksu/asotracking/FiksuEventParameter;

    sget-object v1, Lcom/fiksu/asotracking/FiksuEventParameter;->EVENT:Lcom/fiksu/asotracking/FiksuEventParameter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fiksu/asotracking/FiksuEventParameter;->USERNAME:Lcom/fiksu/asotracking/FiksuEventParameter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fiksu/asotracking/FiksuEventParameter;->IVALUE:Lcom/fiksu/asotracking/FiksuEventParameter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fiksu/asotracking/FiksuEventParameter;->FVALUE:Lcom/fiksu/asotracking/FiksuEventParameter;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fiksu/asotracking/FiksuEventParameter;->TVALUE:Lcom/fiksu/asotracking/FiksuEventParameter;

    aput-object v1, v0, v7

    sput-object v0, Lcom/fiksu/asotracking/FiksuEventParameter;->ENUM$VALUES:[Lcom/fiksu/asotracking/FiksuEventParameter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/fiksu/asotracking/FiksuEventParameter;->mName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fiksu/asotracking/FiksuEventParameter;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fiksu/asotracking/FiksuEventParameter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fiksu/asotracking/FiksuEventParameter;

    return-object v0
.end method

.method public static values()[Lcom/fiksu/asotracking/FiksuEventParameter;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fiksu/asotracking/FiksuEventParameter;->ENUM$VALUES:[Lcom/fiksu/asotracking/FiksuEventParameter;

    array-length v1, v0

    new-array v2, v1, [Lcom/fiksu/asotracking/FiksuEventParameter;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuEventParameter;->mName:Ljava/lang/String;

    return-object v0
.end method
