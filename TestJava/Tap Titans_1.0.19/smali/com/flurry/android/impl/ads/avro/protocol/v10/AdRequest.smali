.class public Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;
.super Lcom/flurry/sdk/gt;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/gs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$1;,
        Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    }
.end annotation


# static fields
.field public static final SCHEMA$:Lcom/flurry/sdk/fk;


# instance fields
.field public A:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public B:Ljava/util/Map;
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

.field public a:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:Lcom/flurry/android/impl/ads/avro/protocol/v10/Location;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public g:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public h:Ljava/util/List;
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

.field public i:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public j:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public k:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public l:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public m:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public n:Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public o:Ljava/util/Map;
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

.field public p:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public q:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public r:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public t:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public u:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public w:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public x:Lcom/flurry/android/impl/ads/avro/protocol/v10/TargetingOverride;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public y:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
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

    const-string v1, "{\"type\":\"record\",\"name\":\"AdRequest\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v10\",\"fields\":[{\"name\":\"apiKey\",\"type\":\"string\"},{\"name\":\"agentVersion\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"adSpaceName\",\"type\":\"string\"},{\"name\":\"sessionId\",\"type\":\"long\"},{\"name\":\"adReportedIds\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"AdReportedId\",\"fields\":[{\"name\":\"type\",\"type\":\"int\"},{\"name\":\"id\",\"type\":\"bytes\"}]}}},{\"name\":\"location\",\"type\":{\"type\":\"record\",\"name\":\"Location\",\"fields\":[{\"name\":\"lat\",\"type\":\"float\",\"default\":0.0},{\"name\":\"lon\",\"type\":\"float\",\"default\":0.0}]},\"default\":\"null\"},{\"name\":\"testDevice\",\"type\":\"boolean\",\"default\":false},{\"name\":\"bindings\",\"type\":{\"type\":\"array\",\"items\":\"int\"}},{\"name\":\"adViewContainer\",\"type\":{\"type\":\"record\",\"name\":\"AdViewContainer\",\"fields\":[{\"name\":\"viewWidth\",\"type\":\"int\",\"default\":0},{\"name\":\"viewHeight\",\"type\":\"int\",\"default\":0},{\"name\":\"screenWidth\",\"type\":\"int\",\"default\":0},{\"name\":\"screenHeight\",\"type\":\"int\",\"default\":0},{\"name\":\"density\",\"type\":\"float\",\"default\":1.0},{\"name\":\"screenOrientation\",\"type\":{\"type\":\"enum\",\"name\":\"ScreenOrientationType\",\"symbols\":[\"PORTRAIT\",\"LANDSCAPE\",\"UNKNOWN\"]},\"default\":\"UNKNOWN\"}]},\"default\":\"null\"},{\"name\":\"locale\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"timezone\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"osVersion\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"devicePlatform\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"testAds\",\"type\":{\"type\":\"record\",\"name\":\"TestAds\",\"fields\":[{\"name\":\"adspacePlacement\",\"type\":\"int\",\"default\":0}]},\"default\":\"null\"},{\"name\":\"keywords\",\"type\":{\"type\":\"map\",\"values\":\"string\"},\"default\":[]},{\"name\":\"refresh\",\"type\":\"boolean\",\"default\":false},{\"name\":\"canDoSKAppStore\",\"type\":\"boolean\",\"default\":false},{\"name\":\"networkStatus\",\"type\":\"int\",\"default\":1},{\"name\":\"frequencyCapInfos\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"FrequencyCapInfo\",\"fields\":[{\"name\":\"idHash\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"serveTime\",\"type\":\"long\"},{\"name\":\"expirationTime\",\"type\":\"long\"},{\"name\":\"views\",\"type\":\"int\"},{\"name\":\"newCap\",\"type\":\"int\"},{\"name\":\"previousCap\",\"type\":\"int\"},{\"name\":\"previousCapType\",\"type\":\"int\"}]}}},{\"name\":\"adTrackingEnabled\",\"type\":\"boolean\"},{\"name\":\"preferredLanguage\",\"type\":\"string\"},{\"name\":\"bcat\",\"type\":{\"type\":\"array\",\"items\":\"string\"}},{\"name\":\"userAgent\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"targetingOverride\",\"type\":{\"type\":\"record\",\"name\":\"TargetingOverride\",\"fields\":[{\"name\":\"ageRange\",\"type\":\"int\",\"default\":-2},{\"name\":\"gender\",\"type\":\"int\",\"default\":-2},{\"name\":\"personas\",\"type\":{\"type\":\"array\",\"items\":\"int\"},\"default\":[]}]},\"default\":[]},{\"name\":\"sendConfiguration\",\"type\":\"boolean\",\"default\":false},{\"name\":\"origins\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"default\":[]},{\"name\":\"renderTime\",\"type\":\"boolean\",\"default\":false},{\"name\":\"clientSideRtbPayload\",\"type\":{\"type\":\"map\",\"values\":\"string\"},\"default\":[]}]}"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fk$q;->a(Ljava/lang/String;)Lcom/flurry/sdk/fk;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->SCHEMA$:Lcom/flurry/sdk/fk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/flurry/sdk/gt;-><init>()V

    .line 547
    return-void
.end method

.method public static b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 2

    .prologue
    .line 531
    new-instance v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;-><init>(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$1;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/fk;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->SCHEMA$:Lcom/flurry/sdk/fk;

    return-object v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 41
    packed-switch p1, :pswitch_data_0

    .line 70
    new-instance v0, Lcom/flurry/sdk/fh;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->a:Ljava/lang/CharSequence;

    .line 69
    :goto_0
    return-object v0

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->b:Ljava/lang/CharSequence;

    goto :goto_0

    .line 44
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->c:Ljava/lang/CharSequence;

    goto :goto_0

    .line 45
    :pswitch_3
    iget-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 46
    :pswitch_4
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->e:Ljava/util/List;

    goto :goto_0

    .line 47
    :pswitch_5
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->f:Lcom/flurry/android/impl/ads/avro/protocol/v10/Location;

    goto :goto_0

    .line 48
    :pswitch_6
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_7
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->h:Ljava/util/List;

    goto :goto_0

    .line 50
    :pswitch_8
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->i:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;

    goto :goto_0

    .line 51
    :pswitch_9
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->j:Ljava/lang/CharSequence;

    goto :goto_0

    .line 52
    :pswitch_a
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->k:Ljava/lang/CharSequence;

    goto :goto_0

    .line 53
    :pswitch_b
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->l:Ljava/lang/CharSequence;

    goto :goto_0

    .line 54
    :pswitch_c
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->m:Ljava/lang/CharSequence;

    goto :goto_0

    .line 55
    :pswitch_d
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->n:Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds;

    goto :goto_0

    .line 56
    :pswitch_e
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->o:Ljava/util/Map;

    goto :goto_0

    .line 57
    :pswitch_f
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->p:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 58
    :pswitch_10
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->q:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_11
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 60
    :pswitch_12
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->s:Ljava/util/List;

    goto :goto_0

    .line 61
    :pswitch_13
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->t:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_14
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->u:Ljava/lang/CharSequence;

    goto :goto_0

    .line 63
    :pswitch_15
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->v:Ljava/util/List;

    goto :goto_0

    .line 64
    :pswitch_16
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->w:Ljava/lang/CharSequence;

    goto :goto_0

    .line 65
    :pswitch_17
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->x:Lcom/flurry/android/impl/ads/avro/protocol/v10/TargetingOverride;

    goto :goto_0

    .line 66
    :pswitch_18
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->y:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 67
    :pswitch_19
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->z:Ljava/util/List;

    goto :goto_0

    .line 68
    :pswitch_1a
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->A:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 69
    :pswitch_1b
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->B:Ljava/util/Map;

    goto :goto_0

    .line 41
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
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method public a(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 76
    packed-switch p1, :pswitch_data_0

    .line 105
    new-instance v0, Lcom/flurry/sdk/fh;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :pswitch_0
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->a:Ljava/lang/CharSequence;

    .line 107
    :goto_0
    return-void

    .line 78
    :pswitch_1
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->b:Ljava/lang/CharSequence;

    goto :goto_0

    .line 79
    :pswitch_2
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->c:Ljava/lang/CharSequence;

    goto :goto_0

    .line 80
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->d:J

    goto :goto_0

    .line 81
    :pswitch_4
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->e:Ljava/util/List;

    goto :goto_0

    .line 82
    :pswitch_5
    check-cast p2, Lcom/flurry/android/impl/ads/avro/protocol/v10/Location;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->f:Lcom/flurry/android/impl/ads/avro/protocol/v10/Location;

    goto :goto_0

    .line 83
    :pswitch_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->g:Z

    goto :goto_0

    .line 84
    :pswitch_7
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->h:Ljava/util/List;

    goto :goto_0

    .line 85
    :pswitch_8
    check-cast p2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->i:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;

    goto :goto_0

    .line 86
    :pswitch_9
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->j:Ljava/lang/CharSequence;

    goto :goto_0

    .line 87
    :pswitch_a
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->k:Ljava/lang/CharSequence;

    goto :goto_0

    .line 88
    :pswitch_b
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->l:Ljava/lang/CharSequence;

    goto :goto_0

    .line 89
    :pswitch_c
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->m:Ljava/lang/CharSequence;

    goto :goto_0

    .line 90
    :pswitch_d
    check-cast p2, Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->n:Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds;

    goto :goto_0

    .line 91
    :pswitch_e
    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->o:Ljava/util/Map;

    goto :goto_0

    .line 92
    :pswitch_f
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->p:Z

    goto :goto_0

    .line 93
    :pswitch_10
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->q:Z

    goto :goto_0

    .line 94
    :pswitch_11
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->r:I

    goto :goto_0

    .line 95
    :pswitch_12
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->s:Ljava/util/List;

    goto :goto_0

    .line 96
    :pswitch_13
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->t:Z

    goto :goto_0

    .line 97
    :pswitch_14
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->u:Ljava/lang/CharSequence;

    goto :goto_0

    .line 98
    :pswitch_15
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->v:Ljava/util/List;

    goto/16 :goto_0

    .line 99
    :pswitch_16
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->w:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 100
    :pswitch_17
    check-cast p2, Lcom/flurry/android/impl/ads/avro/protocol/v10/TargetingOverride;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->x:Lcom/flurry/android/impl/ads/avro/protocol/v10/TargetingOverride;

    goto/16 :goto_0

    .line 101
    :pswitch_18
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->y:Z

    goto/16 :goto_0

    .line 102
    :pswitch_19
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->z:Ljava/util/List;

    goto/16 :goto_0

    .line 103
    :pswitch_1a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->A:Z

    goto/16 :goto_0

    .line 104
    :pswitch_1b
    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->B:Ljava/util/Map;

    goto/16 :goto_0

    .line 76
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
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method public a(Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->n:Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds;

    .line 317
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->p:Z

    .line 347
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->c:Ljava/lang/CharSequence;

    .line 152
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
    .line 331
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->o:Ljava/util/Map;

    .line 332
    return-void
.end method

.method public b(Ljava/util/Map;)V
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
    .line 526
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->B:Ljava/util/Map;

    .line 527
    return-void
.end method
