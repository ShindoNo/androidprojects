.class public final enum Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;
.super Ljava/lang/Enum;
.source "FiksuTrackingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fiksu/asotracking/FiksuTrackingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PurchaseEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

.field public static final enum EVENT1:Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

.field public static final enum EVENT2:Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

.field public static final enum EVENT3:Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

.field public static final enum EVENT4:Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

.field public static final enum EVENT5:Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;


# instance fields
.field private final nameSuffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    const-string v1, "EVENT1"

    const-string v2, ""

    invoke-direct {v0, v1, v3, v2}, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;->EVENT1:Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    .line 36
    new-instance v0, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    const-string v1, "EVENT2"

    const-string v2, "02"

    invoke-direct {v0, v1, v4, v2}, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;->EVENT2:Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    .line 37
    new-instance v0, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    const-string v1, "EVENT3"

    const-string v2, "03"

    invoke-direct {v0, v1, v5, v2}, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;->EVENT3:Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    .line 38
    new-instance v0, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    const-string v1, "EVENT4"

    const-string v2, "04"

    invoke-direct {v0, v1, v6, v2}, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;->EVENT4:Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    .line 39
    new-instance v0, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    const-string v1, "EVENT5"

    const-string v2, "05"

    invoke-direct {v0, v1, v7, v2}, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;->EVENT5:Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    sget-object v1, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;->EVENT1:Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;->EVENT2:Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;->EVENT3:Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;->EVENT4:Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;->EVENT5:Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    aput-object v1, v0, v7

    sput-object v0, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;->ENUM$VALUES:[Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "nameSuffix"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;->nameSuffix:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    return-object v0
.end method

.method public static values()[Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;->ENUM$VALUES:[Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    array-length v1, v0

    new-array v2, v1, [Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method final getNameSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;->nameSuffix:Ljava/lang/String;

    return-object v0
.end method
