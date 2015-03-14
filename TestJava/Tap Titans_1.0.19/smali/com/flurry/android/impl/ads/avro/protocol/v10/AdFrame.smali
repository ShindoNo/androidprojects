.class public Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;
.super Lcom/flurry/sdk/gt;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/gs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame$1;,
        Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame$Builder;
    }
.end annotation


# static fields
.field public static final SCHEMA$:Lcom/flurry/sdk/fk;


# instance fields
.field public a:I
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

.field public d:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/Callback;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public g:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public h:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public i:Ljava/util/List;
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

.field public j:Ljava/util/List;
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

    const-string v1, "{\"type\":\"record\",\"name\":\"AdFrame\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v10\",\"fields\":[{\"name\":\"binding\",\"type\":\"int\"},{\"name\":\"display\",\"type\":\"string\"},{\"name\":\"content\",\"type\":\"string\"},{\"name\":\"adSpaceLayout\",\"type\":{\"type\":\"record\",\"name\":\"AdSpaceLayout\",\"fields\":[{\"name\":\"adWidth\",\"type\":\"int\"},{\"name\":\"adHeight\",\"type\":\"int\"},{\"name\":\"fix\",\"type\":\"string\"},{\"name\":\"format\",\"type\":\"string\"},{\"name\":\"alignment\",\"type\":\"string\"}]}},{\"name\":\"callbacks\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"Callback\",\"fields\":[{\"name\":\"event\",\"type\":\"string\"},{\"name\":\"actions\",\"type\":{\"type\":\"array\",\"items\":\"string\"}}]}}},{\"name\":\"adGuid\",\"type\":\"string\"},{\"name\":\"cachingEnum\",\"type\":\"int\",\"default\":1},{\"name\":\"assetExpirationTimestampUTCMillis\",\"type\":\"long\"},{\"name\":\"cacheWhitelistedAssets\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"default\":[]},{\"name\":\"cacheBlacklistedAssets\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"default\":[]}]}"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fk$q;->a(Ljava/lang/String;)Lcom/flurry/sdk/fk;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->SCHEMA$:Lcom/flurry/sdk/fk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/flurry/sdk/gt;-><init>()V

    .line 223
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/fk;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->SCHEMA$:Lcom/flurry/sdk/fk;

    return-object v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 23
    packed-switch p1, :pswitch_data_0

    .line 34
    new-instance v0, Lcom/flurry/sdk/fh;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :pswitch_0
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    .line 25
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->b:Ljava/lang/CharSequence;

    goto :goto_0

    .line 26
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->c:Ljava/lang/CharSequence;

    goto :goto_0

    .line 27
    :pswitch_3
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->d:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;

    goto :goto_0

    .line 28
    :pswitch_4
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->e:Ljava/util/List;

    goto :goto_0

    .line 29
    :pswitch_5
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->f:Ljava/lang/CharSequence;

    goto :goto_0

    .line 30
    :pswitch_6
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 31
    :pswitch_7
    iget-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 32
    :pswitch_8
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->i:Ljava/util/List;

    goto :goto_0

    .line 33
    :pswitch_9
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->j:Ljava/util/List;

    goto :goto_0

    .line 23
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
    .end packed-switch
.end method

.method public a(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 40
    packed-switch p1, :pswitch_data_0

    .line 51
    new-instance v0, Lcom/flurry/sdk/fh;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->a:I

    .line 53
    :goto_0
    return-void

    .line 42
    :pswitch_1
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->b:Ljava/lang/CharSequence;

    goto :goto_0

    .line 43
    :pswitch_2
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->c:Ljava/lang/CharSequence;

    goto :goto_0

    .line 44
    :pswitch_3
    check-cast p2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->d:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;

    goto :goto_0

    .line 45
    :pswitch_4
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->e:Ljava/util/List;

    goto :goto_0

    .line 46
    :pswitch_5
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->f:Ljava/lang/CharSequence;

    goto :goto_0

    .line 47
    :pswitch_6
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g:I

    goto :goto_0

    .line 48
    :pswitch_7
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->h:J

    goto :goto_0

    .line 49
    :pswitch_8
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->i:Ljava/util/List;

    goto :goto_0

    .line 50
    :pswitch_9
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->j:Ljava/util/List;

    goto :goto_0

    .line 40
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
    .end packed-switch
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public e()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->d:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/Callback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->e:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public h()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->i:Ljava/util/List;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->j:Ljava/util/List;

    return-object v0
.end method
