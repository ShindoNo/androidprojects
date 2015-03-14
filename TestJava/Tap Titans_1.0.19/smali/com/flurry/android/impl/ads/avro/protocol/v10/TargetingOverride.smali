.class public Lcom/flurry/android/impl/ads/avro/protocol/v10/TargetingOverride;
.super Lcom/flurry/sdk/gt;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/gs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/android/impl/ads/avro/protocol/v10/TargetingOverride$1;,
        Lcom/flurry/android/impl/ads/avro/protocol/v10/TargetingOverride$Builder;
    }
.end annotation


# static fields
.field public static final SCHEMA$:Lcom/flurry/sdk/fk;


# instance fields
.field public a:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/flurry/sdk/fk$q;

    invoke-direct {v0}, Lcom/flurry/sdk/fk$q;-><init>()V

    const-string v1, "{\"type\":\"record\",\"name\":\"TargetingOverride\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v10\",\"fields\":[{\"name\":\"ageRange\",\"type\":\"int\",\"default\":-2},{\"name\":\"gender\",\"type\":\"int\",\"default\":-2},{\"name\":\"personas\",\"type\":{\"type\":\"array\",\"items\":\"int\"},\"default\":[]}]}"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fk$q;->a(Ljava/lang/String;)Lcom/flurry/sdk/fk;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/TargetingOverride;->SCHEMA$:Lcom/flurry/sdk/fk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/flurry/sdk/gt;-><init>()V

    .line 97
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/fk;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/TargetingOverride;->SCHEMA$:Lcom/flurry/sdk/fk;

    return-object v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 16
    packed-switch p1, :pswitch_data_0

    .line 20
    new-instance v0, Lcom/flurry/sdk/fh;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :pswitch_0
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/TargetingOverride;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 19
    :goto_0
    return-object v0

    .line 18
    :pswitch_1
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/TargetingOverride;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 19
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/TargetingOverride;->c:Ljava/util/List;

    goto :goto_0

    .line 16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 26
    packed-switch p1, :pswitch_data_0

    .line 30
    new-instance v0, Lcom/flurry/sdk/fh;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/TargetingOverride;->a:I

    .line 32
    :goto_0
    return-void

    .line 28
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/TargetingOverride;->b:I

    goto :goto_0

    .line 29
    :pswitch_2
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/TargetingOverride;->c:Ljava/util/List;

    goto :goto_0

    .line 26
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
