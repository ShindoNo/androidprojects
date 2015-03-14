.class final enum Lcom/fiksu/asotracking/FiksuEventType;
.super Ljava/lang/Enum;
.source "FiksuEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fiksu/asotracking/FiksuEventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONVERSION:Lcom/fiksu/asotracking/FiksuEventType;

.field public static final enum CUSTOM_EVENT_01:Lcom/fiksu/asotracking/FiksuEventType;

.field private static final synthetic ENUM$VALUES:[Lcom/fiksu/asotracking/FiksuEventType;

.field public static final enum LAUNCH:Lcom/fiksu/asotracking/FiksuEventType;

.field public static final enum NOTIFICATION_LAUNCH:Lcom/fiksu/asotracking/FiksuEventType;

.field public static final enum NOTIFICATION_RESUME:Lcom/fiksu/asotracking/FiksuEventType;

.field public static final enum PURCHASE:Lcom/fiksu/asotracking/FiksuEventType;

.field public static final enum RATING:Lcom/fiksu/asotracking/FiksuEventType;

.field public static final enum REGISTRATION:Lcom/fiksu/asotracking/FiksuEventType;

.field public static final enum RESUME:Lcom/fiksu/asotracking/FiksuEventType;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 17
    new-instance v0, Lcom/fiksu/asotracking/FiksuEventType;

    const-string v1, "CONVERSION"

    const-string v2, "Conversion"

    invoke-direct {v0, v1, v4, v2}, Lcom/fiksu/asotracking/FiksuEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fiksu/asotracking/FiksuEventType;->CONVERSION:Lcom/fiksu/asotracking/FiksuEventType;

    .line 18
    new-instance v0, Lcom/fiksu/asotracking/FiksuEventType;

    const-string v1, "LAUNCH"

    const-string v2, "Launch"

    invoke-direct {v0, v1, v5, v2}, Lcom/fiksu/asotracking/FiksuEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fiksu/asotracking/FiksuEventType;->LAUNCH:Lcom/fiksu/asotracking/FiksuEventType;

    .line 19
    new-instance v0, Lcom/fiksu/asotracking/FiksuEventType;

    const-string v1, "NOTIFICATION_LAUNCH"

    const-string v2, "NotificationLaunch"

    invoke-direct {v0, v1, v6, v2}, Lcom/fiksu/asotracking/FiksuEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fiksu/asotracking/FiksuEventType;->NOTIFICATION_LAUNCH:Lcom/fiksu/asotracking/FiksuEventType;

    .line 20
    new-instance v0, Lcom/fiksu/asotracking/FiksuEventType;

    const-string v1, "RESUME"

    const-string v2, "Resume"

    invoke-direct {v0, v1, v7, v2}, Lcom/fiksu/asotracking/FiksuEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fiksu/asotracking/FiksuEventType;->RESUME:Lcom/fiksu/asotracking/FiksuEventType;

    .line 21
    new-instance v0, Lcom/fiksu/asotracking/FiksuEventType;

    const-string v1, "NOTIFICATION_RESUME"

    const-string v2, "NotificationResume"

    invoke-direct {v0, v1, v8, v2}, Lcom/fiksu/asotracking/FiksuEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fiksu/asotracking/FiksuEventType;->NOTIFICATION_RESUME:Lcom/fiksu/asotracking/FiksuEventType;

    .line 22
    new-instance v0, Lcom/fiksu/asotracking/FiksuEventType;

    const-string v1, "REGISTRATION"

    const/4 v2, 0x5

    const-string v3, "Registration"

    invoke-direct {v0, v1, v2, v3}, Lcom/fiksu/asotracking/FiksuEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fiksu/asotracking/FiksuEventType;->REGISTRATION:Lcom/fiksu/asotracking/FiksuEventType;

    .line 23
    new-instance v0, Lcom/fiksu/asotracking/FiksuEventType;

    const-string v1, "PURCHASE"

    const/4 v2, 0x6

    const-string v3, "Purchase"

    invoke-direct {v0, v1, v2, v3}, Lcom/fiksu/asotracking/FiksuEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fiksu/asotracking/FiksuEventType;->PURCHASE:Lcom/fiksu/asotracking/FiksuEventType;

    .line 24
    new-instance v0, Lcom/fiksu/asotracking/FiksuEventType;

    const-string v1, "CUSTOM_EVENT_01"

    const/4 v2, 0x7

    const-string v3, "Custom01"

    invoke-direct {v0, v1, v2, v3}, Lcom/fiksu/asotracking/FiksuEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fiksu/asotracking/FiksuEventType;->CUSTOM_EVENT_01:Lcom/fiksu/asotracking/FiksuEventType;

    .line 25
    new-instance v0, Lcom/fiksu/asotracking/FiksuEventType;

    const-string v1, "RATING"

    const/16 v2, 0x8

    const-string v3, "Rating"

    invoke-direct {v0, v1, v2, v3}, Lcom/fiksu/asotracking/FiksuEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fiksu/asotracking/FiksuEventType;->RATING:Lcom/fiksu/asotracking/FiksuEventType;

    .line 15
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/fiksu/asotracking/FiksuEventType;

    sget-object v1, Lcom/fiksu/asotracking/FiksuEventType;->CONVERSION:Lcom/fiksu/asotracking/FiksuEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fiksu/asotracking/FiksuEventType;->LAUNCH:Lcom/fiksu/asotracking/FiksuEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fiksu/asotracking/FiksuEventType;->NOTIFICATION_LAUNCH:Lcom/fiksu/asotracking/FiksuEventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fiksu/asotracking/FiksuEventType;->RESUME:Lcom/fiksu/asotracking/FiksuEventType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fiksu/asotracking/FiksuEventType;->NOTIFICATION_RESUME:Lcom/fiksu/asotracking/FiksuEventType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fiksu/asotracking/FiksuEventType;->REGISTRATION:Lcom/fiksu/asotracking/FiksuEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fiksu/asotracking/FiksuEventType;->PURCHASE:Lcom/fiksu/asotracking/FiksuEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fiksu/asotracking/FiksuEventType;->CUSTOM_EVENT_01:Lcom/fiksu/asotracking/FiksuEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fiksu/asotracking/FiksuEventType;->RATING:Lcom/fiksu/asotracking/FiksuEventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fiksu/asotracking/FiksuEventType;->ENUM$VALUES:[Lcom/fiksu/asotracking/FiksuEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/fiksu/asotracking/FiksuEventType;->mName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fiksu/asotracking/FiksuEventType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fiksu/asotracking/FiksuEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fiksu/asotracking/FiksuEventType;

    return-object v0
.end method

.method public static values()[Lcom/fiksu/asotracking/FiksuEventType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fiksu/asotracking/FiksuEventType;->ENUM$VALUES:[Lcom/fiksu/asotracking/FiksuEventType;

    array-length v1, v0

    new-array v2, v1, [Lcom/fiksu/asotracking/FiksuEventType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuEventType;->mName:Ljava/lang/String;

    return-object v0
.end method
