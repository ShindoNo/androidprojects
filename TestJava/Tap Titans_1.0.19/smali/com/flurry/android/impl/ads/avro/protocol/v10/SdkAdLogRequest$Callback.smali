.class public interface abstract Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkAdLogRequest$Callback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkAdLogRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkAdLogRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# static fields
.field public static final b:Lcom/flurry/sdk/fj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkAdLogRequest;->a:Lcom/flurry/sdk/fj;

    sput-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkAdLogRequest$Callback;->b:Lcom/flurry/sdk/fj;

    return-void
.end method
