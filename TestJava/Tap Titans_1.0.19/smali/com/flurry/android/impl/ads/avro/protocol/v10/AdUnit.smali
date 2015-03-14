.class public Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;
.super Lcom/flurry/sdk/gt;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/gs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit$1;,
        Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit$Builder;
    }
.end annotation


# static fields
.field public static final SCHEMA$:Lcom/flurry/sdk/fk;


# instance fields
.field public a:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public g:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public h:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public i:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public j:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public k:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public l:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public m:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public n:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public o:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public p:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public q:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public r:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public s:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public t:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public u:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public w:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;
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

    const-string v1, "{\"type\":\"record\",\"name\":\"AdUnit\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v10\",\"fields\":[{\"name\":\"adSpace\",\"type\":\"string\"},{\"name\":\"expiration\",\"type\":\"long\"},{\"name\":\"adFrames\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"AdFrame\",\"fields\":[{\"name\":\"binding\",\"type\":\"int\"},{\"name\":\"display\",\"type\":\"string\"},{\"name\":\"content\",\"type\":\"string\"},{\"name\":\"adSpaceLayout\",\"type\":{\"type\":\"record\",\"name\":\"AdSpaceLayout\",\"fields\":[{\"name\":\"adWidth\",\"type\":\"int\"},{\"name\":\"adHeight\",\"type\":\"int\"},{\"name\":\"fix\",\"type\":\"string\"},{\"name\":\"format\",\"type\":\"string\"},{\"name\":\"alignment\",\"type\":\"string\"}]}},{\"name\":\"callbacks\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"Callback\",\"fields\":[{\"name\":\"event\",\"type\":\"string\"},{\"name\":\"actions\",\"type\":{\"type\":\"array\",\"items\":\"string\"}}]}}},{\"name\":\"adGuid\",\"type\":\"string\"},{\"name\":\"cachingEnum\",\"type\":\"int\",\"default\":1},{\"name\":\"assetExpirationTimestampUTCMillis\",\"type\":\"long\"},{\"name\":\"cacheWhitelistedAssets\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"default\":[]},{\"name\":\"cacheBlacklistedAssets\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"default\":[]}]}}},{\"name\":\"combinable\",\"type\":\"int\",\"default\":0},{\"name\":\"groupId\",\"type\":\"string\"},{\"name\":\"idHash\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"serveTime\",\"type\":\"long\"},{\"name\":\"newCap\",\"type\":\"int\",\"default\":-1},{\"name\":\"previousCap\",\"type\":\"int\",\"default\":-1},{\"name\":\"previousCapType\",\"type\":\"int\",\"default\":0},{\"name\":\"expirationTime\",\"type\":\"long\"},{\"name\":\"price\",\"type\":\"long\",\"default\":0},{\"name\":\"adomain\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"closableTime\",\"type\":\"long\",\"default\":0},{\"name\":\"rewardable\",\"type\":\"boolean\",\"default\":false},{\"name\":\"preRenderTimeoutMillis\",\"type\":\"long\",\"default\":10000},{\"name\":\"preCacheAdSkippableTimeLimitMillis\",\"type\":\"int\",\"default\":20000},{\"name\":\"videoAutoPlay\",\"type\":\"boolean\",\"default\":false},{\"name\":\"supportMRAID\",\"type\":\"boolean\",\"default\":false},{\"name\":\"preRender\",\"type\":\"boolean\",\"default\":true},{\"name\":\"renderTime\",\"type\":\"boolean\",\"default\":false},{\"name\":\"clientSideRtbPayload\",\"type\":{\"type\":\"map\",\"values\":\"string\"},\"default\":[]},{\"name\":\"screenOrientation\",\"type\":{\"type\":\"enum\",\"name\":\"ScreenOrientationType\",\"symbols\":[\"PORTRAIT\",\"LANDSCAPE\",\"UNKNOWN\"]},\"default\":\"UNKNOWN\"}]}"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fk$q;->a(Ljava/lang/String;)Lcom/flurry/sdk/fk;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->SCHEMA$:Lcom/flurry/sdk/fk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/flurry/sdk/gt;-><init>()V

    .line 457
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/fk;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->SCHEMA$:Lcom/flurry/sdk/fk;

    return-object v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 36
    packed-switch p1, :pswitch_data_0

    .line 60
    new-instance v0, Lcom/flurry/sdk/fh;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->a:Ljava/lang/CharSequence;

    .line 59
    :goto_0
    return-object v0

    .line 38
    :pswitch_1
    iget-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 39
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->c:Ljava/util/List;

    goto :goto_0

    .line 40
    :pswitch_3
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_4
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->e:Ljava/lang/CharSequence;

    goto :goto_0

    .line 42
    :pswitch_5
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->f:Ljava/lang/CharSequence;

    goto :goto_0

    .line 43
    :pswitch_6
    iget-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->g:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 44
    :pswitch_7
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 45
    :pswitch_8
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 46
    :pswitch_9
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_a
    iget-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->k:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 48
    :pswitch_b
    iget-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->l:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_c
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->m:Ljava/lang/CharSequence;

    goto :goto_0

    .line 50
    :pswitch_d
    iget-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->n:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 51
    :pswitch_e
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->o:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_f
    iget-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->p:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 53
    :pswitch_10
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 54
    :pswitch_11
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->r:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 55
    :pswitch_12
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->s:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_13
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->t:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 57
    :pswitch_14
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->u:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 58
    :pswitch_15
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->v:Ljava/util/Map;

    goto :goto_0

    .line 59
    :pswitch_16
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->w:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    goto/16 :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public a(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 66
    packed-switch p1, :pswitch_data_0

    .line 90
    new-instance v0, Lcom/flurry/sdk/fh;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :pswitch_0
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->a:Ljava/lang/CharSequence;

    .line 92
    :goto_0
    return-void

    .line 68
    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b:J

    goto :goto_0

    .line 69
    :pswitch_2
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->c:Ljava/util/List;

    goto :goto_0

    .line 70
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d:I

    goto :goto_0

    .line 71
    :pswitch_4
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->e:Ljava/lang/CharSequence;

    goto :goto_0

    .line 72
    :pswitch_5
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->f:Ljava/lang/CharSequence;

    goto :goto_0

    .line 73
    :pswitch_6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->g:J

    goto :goto_0

    .line 74
    :pswitch_7
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->h:I

    goto :goto_0

    .line 75
    :pswitch_8
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->i:I

    goto :goto_0

    .line 76
    :pswitch_9
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->j:I

    goto :goto_0

    .line 77
    :pswitch_a
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->k:J

    goto :goto_0

    .line 78
    :pswitch_b
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->l:J

    goto :goto_0

    .line 79
    :pswitch_c
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->m:Ljava/lang/CharSequence;

    goto :goto_0

    .line 80
    :pswitch_d
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->n:J

    goto :goto_0

    .line 81
    :pswitch_e
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->o:Z

    goto :goto_0

    .line 82
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->p:J

    goto :goto_0

    .line 83
    :pswitch_10
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->q:I

    goto :goto_0

    .line 84
    :pswitch_11
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->r:Z

    goto/16 :goto_0

    .line 85
    :pswitch_12
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->s:Z

    goto/16 :goto_0

    .line 86
    :pswitch_13
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->t:Z

    goto/16 :goto_0

    .line 87
    :pswitch_14
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->u:Z

    goto/16 :goto_0

    .line 88
    :pswitch_15
    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->v:Ljava/util/Map;

    goto/16 :goto_0

    .line 89
    :pswitch_16
    check-cast p2, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->w:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    goto/16 :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->u:Z

    .line 407
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->e:Ljava/lang/CharSequence;

    .line 167
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->c:Ljava/util/List;

    .line 137
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 421
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->v:Ljava/util/Map;

    .line 422
    return-void
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->f:Ljava/lang/CharSequence;

    .line 182
    return-void
.end method

.method public c()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->c:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public h()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->g:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 248
    iget-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->k:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 293
    iget-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->n:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->o:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 323
    iget-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->p:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->r:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->s:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->u:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->v:Ljava/util/Map;

    return-object v0
.end method

.method public u()Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->w:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    return-object v0
.end method
