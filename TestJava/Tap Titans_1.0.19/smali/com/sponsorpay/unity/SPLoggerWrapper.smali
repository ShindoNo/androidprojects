.class public Lcom/sponsorpay/unity/SPLoggerWrapper;
.super Ljava/lang/Object;
.source "SPLoggerWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableLogging(Z)V
    .locals 0
    .param p1, "shouldEnableLogging"    # Z

    .prologue
    .line 14
    invoke-static {p1}, Lcom/sponsorpay/utils/SponsorPayLogger;->enableLogging(Z)Z

    .line 15
    return-void
.end method
