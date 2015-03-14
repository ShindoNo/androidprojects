.class public final Lme/kiip/internal/e/n;
.super Ljava/lang/Object;
.source "KiipSDK"


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field private final e:Ljava/net/URI;

.field private final f:Lme/kiip/internal/e/l;

.field private g:Ljava/util/Date;

.field private h:Ljava/util/Date;

.field private i:Ljava/util/Date;

.field private j:J

.field private k:J

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lme/kiip/internal/d/f;->a()Lme/kiip/internal/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lme/kiip/internal/d/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/kiip/internal/e/n;->c:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lme/kiip/internal/d/f;->a()Lme/kiip/internal/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lme/kiip/internal/d/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/kiip/internal/e/n;->d:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lme/kiip/internal/d/f;->a()Lme/kiip/internal/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lme/kiip/internal/d/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Response-Source"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/kiip/internal/e/n;->a:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lme/kiip/internal/d/f;->a()Lme/kiip/internal/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lme/kiip/internal/d/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Selected-Transport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/kiip/internal/e/n;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lme/kiip/internal/e/l;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput v2, p0, Lme/kiip/internal/e/n;->n:I

    .line 98
    iput v2, p0, Lme/kiip/internal/e/n;->o:I

    .line 110
    iput v2, p0, Lme/kiip/internal/e/n;->s:I

    .line 113
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/e/n;->t:Ljava/util/Set;

    .line 117
    iput v2, p0, Lme/kiip/internal/e/n;->w:I

    .line 121
    iput-object p1, p0, Lme/kiip/internal/e/n;->e:Ljava/net/URI;

    .line 122
    iput-object p2, p0, Lme/kiip/internal/e/n;->f:Lme/kiip/internal/e/l;

    .line 124
    new-instance v3, Lme/kiip/internal/e/n$1;

    invoke-direct {v3, p0}, Lme/kiip/internal/e/n$1;-><init>(Lme/kiip/internal/e/n;)V

    move v0, v1

    .line 142
    :goto_0
    invoke-virtual {p2}, Lme/kiip/internal/e/l;->e()I

    move-result v2

    if-ge v0, v2, :cond_f

    .line 143
    invoke-virtual {p2, v0}, Lme/kiip/internal/e/l;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {p2, v0}, Lme/kiip/internal/e/l;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 145
    const-string v5, "Cache-Control"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 146
    invoke-static {v4, v3}, Lme/kiip/internal/e/b;->a(Ljava/lang/String;Lme/kiip/internal/e/b$a;)V

    .line 142
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    const-string v5, "Date"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 148
    invoke-static {v4}, Lme/kiip/internal/e/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lme/kiip/internal/e/n;->g:Ljava/util/Date;

    goto :goto_1

    .line 149
    :cond_2
    const-string v5, "Expires"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 150
    invoke-static {v4}, Lme/kiip/internal/e/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lme/kiip/internal/e/n;->i:Ljava/util/Date;

    goto :goto_1

    .line 151
    :cond_3
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 152
    invoke-static {v4}, Lme/kiip/internal/e/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lme/kiip/internal/e/n;->h:Ljava/util/Date;

    goto :goto_1

    .line 153
    :cond_4
    const-string v5, "ETag"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 154
    iput-object v4, p0, Lme/kiip/internal/e/n;->r:Ljava/lang/String;

    goto :goto_1

    .line 155
    :cond_5
    const-string v5, "Pragma"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 156
    const-string v2, "no-cache"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const/4 v2, 0x1

    iput-boolean v2, p0, Lme/kiip/internal/e/n;->l:Z

    goto :goto_1

    .line 159
    :cond_6
    const-string v5, "Age"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 160
    invoke-static {v4}, Lme/kiip/internal/e/b;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lme/kiip/internal/e/n;->s:I

    goto :goto_1

    .line 161
    :cond_7
    const-string v5, "Vary"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 163
    iget-object v2, p0, Lme/kiip/internal/e/n;->t:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 164
    new-instance v2, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v2, p0, Lme/kiip/internal/e/n;->t:Ljava/util/Set;

    .line 166
    :cond_8
    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    .line 167
    iget-object v7, p0, Lme/kiip/internal/e/n;->t:Ljava/util/Set;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 169
    :cond_9
    const-string v5, "Content-Encoding"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 170
    iput-object v4, p0, Lme/kiip/internal/e/n;->u:Ljava/lang/String;

    goto/16 :goto_1

    .line 171
    :cond_a
    const-string v5, "Transfer-Encoding"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 172
    iput-object v4, p0, Lme/kiip/internal/e/n;->v:Ljava/lang/String;

    goto/16 :goto_1

    .line 173
    :cond_b
    const-string v5, "Content-Length"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 175
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lme/kiip/internal/e/n;->w:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 176
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 178
    :cond_c
    const-string v5, "Connection"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 179
    iput-object v4, p0, Lme/kiip/internal/e/n;->x:Ljava/lang/String;

    goto/16 :goto_1

    .line 180
    :cond_d
    sget-object v5, Lme/kiip/internal/e/n;->c:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 181
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lme/kiip/internal/e/n;->j:J

    goto/16 :goto_1

    .line 182
    :cond_e
    sget-object v5, Lme/kiip/internal/e/n;->d:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lme/kiip/internal/e/n;->k:J

    goto/16 :goto_1

    .line 186
    :cond_f
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/e/n;I)I
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lme/kiip/internal/e/n;->n:I

    return p1
.end method

.method private a(J)J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 294
    iget-object v2, p0, Lme/kiip/internal/e/n;->g:Ljava/util/Date;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lme/kiip/internal/e/n;->k:J

    iget-object v4, p0, Lme/kiip/internal/e/n;->g:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 296
    :cond_0
    iget v2, p0, Lme/kiip/internal/e/n;->s:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lme/kiip/internal/e/n;->s:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 299
    :cond_1
    iget-wide v2, p0, Lme/kiip/internal/e/n;->k:J

    iget-wide v4, p0, Lme/kiip/internal/e/n;->j:J

    sub-long/2addr v2, v4

    .line 300
    iget-wide v4, p0, Lme/kiip/internal/e/n;->k:J

    sub-long v4, p1, v4

    .line 301
    add-long/2addr v0, v2

    add-long/2addr v0, v4

    return-wide v0
.end method

.method static synthetic a(Lme/kiip/internal/e/n;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lme/kiip/internal/e/n;->l:Z

    return p1
.end method

.method static synthetic b(Lme/kiip/internal/e/n;I)I
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lme/kiip/internal/e/n;->o:I

    return p1
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 496
    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lme/kiip/internal/e/n;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lme/kiip/internal/e/n;->m:Z

    return p1
.end method

.method static synthetic c(Lme/kiip/internal/e/n;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lme/kiip/internal/e/n;->p:Z

    return p1
.end method

.method static synthetic d(Lme/kiip/internal/e/n;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lme/kiip/internal/e/n;->q:Z

    return p1
.end method

.method private j()J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 309
    iget v0, p0, Lme/kiip/internal/e/n;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 310
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lme/kiip/internal/e/n;->n:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 324
    :cond_0
    :goto_0
    return-wide v2

    .line 311
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/e/n;->i:Ljava/util/Date;

    if-eqz v0, :cond_4

    .line 312
    iget-object v0, p0, Lme/kiip/internal/e/n;->g:Ljava/util/Date;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lme/kiip/internal/e/n;->g:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 313
    :goto_1
    iget-object v4, p0, Lme/kiip/internal/e/n;->i:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 314
    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    :goto_2
    move-wide v2, v0

    goto :goto_0

    .line 312
    :cond_2
    iget-wide v0, p0, Lme/kiip/internal/e/n;->k:J

    goto :goto_1

    :cond_3
    move-wide v0, v2

    .line 314
    goto :goto_2

    .line 315
    :cond_4
    iget-object v0, p0, Lme/kiip/internal/e/n;->h:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/e/n;->e:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lme/kiip/internal/e/n;->g:Ljava/util/Date;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lme/kiip/internal/e/n;->g:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 321
    :goto_3
    iget-object v4, p0, Lme/kiip/internal/e/n;->h:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 322
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0xa

    div-long v2, v0, v2

    goto :goto_0

    .line 320
    :cond_5
    iget-wide v0, p0, Lme/kiip/internal/e/n;->j:J

    goto :goto_3
.end method

.method private k()Z
    .locals 2

    .prologue
    .line 333
    iget v0, p0, Lme/kiip/internal/e/n;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lme/kiip/internal/e/n;->i:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(JLme/kiip/internal/e/m;)Lme/kiip/internal/c/i;
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v10, -0x1

    .line 392
    invoke-virtual {p0, p3}, Lme/kiip/internal/e/n;->a(Lme/kiip/internal/e/m;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    sget-object v0, Lme/kiip/internal/c/i;->c:Lme/kiip/internal/c/i;

    .line 438
    :goto_0
    return-object v0

    .line 396
    :cond_0
    invoke-virtual {p3}, Lme/kiip/internal/e/m;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lme/kiip/internal/e/m;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    :cond_1
    sget-object v0, Lme/kiip/internal/c/i;->c:Lme/kiip/internal/c/i;

    goto :goto_0

    .line 400
    :cond_2
    invoke-direct {p0, p1, p2}, Lme/kiip/internal/e/n;->a(J)J

    move-result-wide v6

    .line 401
    invoke-direct {p0}, Lme/kiip/internal/e/n;->j()J

    move-result-wide v0

    .line 403
    invoke-virtual {p3}, Lme/kiip/internal/e/m;->e()I

    move-result v2

    if-eq v2, v10, :cond_3

    .line 404
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lme/kiip/internal/e/m;->e()I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 408
    :cond_3
    invoke-virtual {p3}, Lme/kiip/internal/e/m;->g()I

    move-result v2

    if-eq v2, v10, :cond_c

    .line 409
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lme/kiip/internal/e/m;->g()I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 413
    :goto_1
    iget-boolean v8, p0, Lme/kiip/internal/e/n;->q:Z

    if-nez v8, :cond_4

    invoke-virtual {p3}, Lme/kiip/internal/e/m;->f()I

    move-result v8

    if-eq v8, v10, :cond_4

    .line 414
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lme/kiip/internal/e/m;->f()I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 417
    :cond_4
    iget-boolean v8, p0, Lme/kiip/internal/e/n;->l:Z

    if-nez v8, :cond_7

    add-long v8, v6, v2

    add-long/2addr v4, v0

    cmp-long v4, v8, v4

    if-gez v4, :cond_7

    .line 418
    add-long/2addr v2, v6

    cmp-long v0, v2, v0

    if-ltz v0, :cond_5

    .line 419
    iget-object v0, p0, Lme/kiip/internal/e/n;->f:Lme/kiip/internal/e/l;

    const-string v1, "Warning"

    const-string v2, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v0, v1, v2}, Lme/kiip/internal/e/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_5
    const-wide/32 v0, 0x5265c00

    .line 422
    cmp-long v0, v6, v0

    if-lez v0, :cond_6

    invoke-direct {p0}, Lme/kiip/internal/e/n;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 423
    iget-object v0, p0, Lme/kiip/internal/e/n;->f:Lme/kiip/internal/e/l;

    const-string v1, "Warning"

    const-string v2, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v0, v1, v2}, Lme/kiip/internal/e/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_6
    sget-object v0, Lme/kiip/internal/c/i;->a:Lme/kiip/internal/c/i;

    goto/16 :goto_0

    .line 428
    :cond_7
    iget-object v0, p0, Lme/kiip/internal/e/n;->h:Ljava/util/Date;

    if-eqz v0, :cond_a

    .line 429
    iget-object v0, p0, Lme/kiip/internal/e/n;->h:Ljava/util/Date;

    invoke-virtual {p3, v0}, Lme/kiip/internal/e/m;->a(Ljava/util/Date;)V

    .line 434
    :cond_8
    :goto_2
    iget-object v0, p0, Lme/kiip/internal/e/n;->r:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 435
    iget-object v0, p0, Lme/kiip/internal/e/n;->r:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lme/kiip/internal/e/m;->f(Ljava/lang/String;)V

    .line 438
    :cond_9
    invoke-virtual {p3}, Lme/kiip/internal/e/m;->r()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lme/kiip/internal/c/i;->b:Lme/kiip/internal/c/i;

    goto/16 :goto_0

    .line 430
    :cond_a
    iget-object v0, p0, Lme/kiip/internal/e/n;->g:Ljava/util/Date;

    if-eqz v0, :cond_8

    .line 431
    iget-object v0, p0, Lme/kiip/internal/e/n;->g:Ljava/util/Date;

    invoke-virtual {p3, v0}, Lme/kiip/internal/e/m;->a(Ljava/util/Date;)V

    goto :goto_2

    .line 438
    :cond_b
    sget-object v0, Lme/kiip/internal/c/i;->c:Lme/kiip/internal/c/i;

    goto/16 :goto_0

    :cond_c
    move-wide v2, v4

    goto :goto_1
.end method

.method public a(JJ)V
    .locals 3

    .prologue
    .line 275
    iput-wide p1, p0, Lme/kiip/internal/e/n;->j:J

    .line 276
    iget-object v0, p0, Lme/kiip/internal/e/n;->f:Lme/kiip/internal/e/l;

    sget-object v1, Lme/kiip/internal/e/n;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lme/kiip/internal/e/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iput-wide p3, p0, Lme/kiip/internal/e/n;->k:J

    .line 278
    iget-object v0, p0, Lme/kiip/internal/e/n;->f:Lme/kiip/internal/e/l;

    sget-object v1, Lme/kiip/internal/e/n;->d:Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lme/kiip/internal/e/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lme/kiip/internal/e/n;->f:Lme/kiip/internal/e/l;

    sget-object v1, Lme/kiip/internal/e/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lme/kiip/internal/e/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public a(Lme/kiip/internal/c/i;)V
    .locals 4

    .prologue
    .line 282
    iget-object v0, p0, Lme/kiip/internal/e/n;->f:Lme/kiip/internal/e/l;

    sget-object v1, Lme/kiip/internal/e/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lme/kiip/internal/c/i;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lme/kiip/internal/e/n;->f:Lme/kiip/internal/e/l;

    invoke-virtual {v3}, Lme/kiip/internal/e/l;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lme/kiip/internal/e/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 189
    const-string v0, "gzip"

    iget-object v1, p0, Lme/kiip/internal/e/n;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lme/kiip/internal/e/n;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 380
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lme/kiip/internal/d/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    const/4 v0, 0x0

    .line 384
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lme/kiip/internal/e/m;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 343
    iget-object v1, p0, Lme/kiip/internal/e/n;->f:Lme/kiip/internal/e/l;

    invoke-virtual {v1}, Lme/kiip/internal/e/l;->c()I

    move-result v1

    .line 344
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    const/16 v2, 0xcb

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x19a

    if-eq v1, v2, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v0

    .line 354
    :cond_1
    invoke-virtual {p1}, Lme/kiip/internal/e/m;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lme/kiip/internal/e/n;->p:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lme/kiip/internal/e/n;->q:Z

    if-nez v1, :cond_2

    iget v1, p0, Lme/kiip/internal/e/n;->o:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 358
    :cond_2
    iget-boolean v1, p0, Lme/kiip/internal/e/n;->m:Z

    if-nez v1, :cond_0

    .line 362
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lme/kiip/internal/e/n;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 446
    iget-object v1, p1, Lme/kiip/internal/e/n;->f:Lme/kiip/internal/e/l;

    invoke-virtual {v1}, Lme/kiip/internal/e/l;->c()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v0

    .line 453
    :cond_1
    iget-object v1, p0, Lme/kiip/internal/e/n;->h:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lme/kiip/internal/e/n;->h:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lme/kiip/internal/e/n;->h:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lme/kiip/internal/e/n;->h:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 459
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lme/kiip/internal/e/n;)Lme/kiip/internal/e/n;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 467
    new-instance v2, Lme/kiip/internal/e/l;

    invoke-direct {v2}, Lme/kiip/internal/e/l;-><init>()V

    .line 468
    iget-object v0, p0, Lme/kiip/internal/e/n;->f:Lme/kiip/internal/e/l;

    invoke-virtual {v0}, Lme/kiip/internal/e/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lme/kiip/internal/e/l;->b(Ljava/lang/String;)V

    move v0, v1

    .line 470
    :goto_0
    iget-object v3, p0, Lme/kiip/internal/e/n;->f:Lme/kiip/internal/e/l;

    invoke-virtual {v3}, Lme/kiip/internal/e/l;->e()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 471
    iget-object v3, p0, Lme/kiip/internal/e/n;->f:Lme/kiip/internal/e/l;

    invoke-virtual {v3, v0}, Lme/kiip/internal/e/l;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 472
    iget-object v4, p0, Lme/kiip/internal/e/n;->f:Lme/kiip/internal/e/l;

    invoke-virtual {v4, v0}, Lme/kiip/internal/e/l;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 473
    const-string v5, "Warning"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 470
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_1
    invoke-static {v3}, Lme/kiip/internal/e/n;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p1, Lme/kiip/internal/e/n;->f:Lme/kiip/internal/e/l;

    invoke-virtual {v5, v3}, Lme/kiip/internal/e/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 477
    :cond_2
    invoke-virtual {v2, v3, v4}, Lme/kiip/internal/e/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 481
    :cond_3
    :goto_2
    iget-object v0, p1, Lme/kiip/internal/e/n;->f:Lme/kiip/internal/e/l;

    invoke-virtual {v0}, Lme/kiip/internal/e/l;->e()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 482
    iget-object v0, p1, Lme/kiip/internal/e/n;->f:Lme/kiip/internal/e/l;

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/l;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-static {v0}, Lme/kiip/internal/e/n;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 484
    iget-object v3, p1, Lme/kiip/internal/e/n;->f:Lme/kiip/internal/e/l;

    invoke-virtual {v3, v1}, Lme/kiip/internal/e/l;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lme/kiip/internal/e/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 488
    :cond_5
    new-instance v0, Lme/kiip/internal/e/n;

    iget-object v1, p0, Lme/kiip/internal/e/n;->e:Ljava/net/URI;

    invoke-direct {v0, v1, v2}, Lme/kiip/internal/e/n;-><init>(Ljava/net/URI;Lme/kiip/internal/e/l;)V

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lme/kiip/internal/e/n;->u:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lme/kiip/internal/e/n;->f:Lme/kiip/internal/e/l;

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/l;->d(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 198
    const/4 v0, -0x1

    iput v0, p0, Lme/kiip/internal/e/n;->w:I

    .line 199
    iget-object v0, p0, Lme/kiip/internal/e/n;->f:Lme/kiip/internal/e/l;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/l;->d(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 203
    const-string v0, "chunked"

    iget-object v1, p0, Lme/kiip/internal/e/n;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 207
    const-string v0, "close"

    iget-object v1, p0, Lme/kiip/internal/e/n;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f()Lme/kiip/internal/e/l;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lme/kiip/internal/e/n;->f:Lme/kiip/internal/e/l;

    return-object v0
.end method

.method public g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lme/kiip/internal/e/n;->t:Ljava/util/Set;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lme/kiip/internal/e/n;->w:I

    return v0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lme/kiip/internal/e/n;->t:Ljava/util/Set;

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
