.class public Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit$Builder;
.super Lcom/flurry/sdk/gu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/gu",
        "<",
        "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 486
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->SCHEMA$:Lcom/flurry/sdk/fk;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gu;-><init>(Lcom/flurry/sdk/fk;)V

    .line 487
    return-void
.end method
