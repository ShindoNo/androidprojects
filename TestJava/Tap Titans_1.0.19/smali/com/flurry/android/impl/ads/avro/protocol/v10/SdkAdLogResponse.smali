.class public interface abstract Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkAdLogResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkAdLogResponse$Callback;
    }
.end annotation


# static fields
.field public static final a:Lcom/flurry/sdk/fj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "{\"protocol\":\"SdkAdLogResponse\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v10\",\"types\":[{\"type\":\"record\",\"name\":\"SdkLogResponse\",\"fields\":[{\"name\":\"result\",\"type\":\"string\"},{\"name\":\"errors\",\"type\":{\"type\":\"array\",\"items\":\"string\"}}]}],\"messages\":{}}"

    invoke-static {v0}, Lcom/flurry/sdk/fj;->a(Ljava/lang/String;)Lcom/flurry/sdk/fj;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkAdLogResponse;->a:Lcom/flurry/sdk/fj;

    return-void
.end method
