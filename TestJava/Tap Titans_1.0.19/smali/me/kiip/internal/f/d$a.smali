.class final Lme/kiip/internal/f/d$a;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/f/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/io/DataInputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lme/kiip/internal/f/d$a;->a:Ljava/io/DataInputStream;

    .line 56
    return-void
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lme/kiip/internal/f/b$a;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 112
    :goto_0
    iget-object v1, p0, Lme/kiip/internal/f/d$a;->a:Ljava/io/DataInputStream;

    invoke-interface {p1, v0, p4, v1, p3}, Lme/kiip/internal/f/b$a;->a(ZILjava/io/InputStream;I)V

    .line 113
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lme/kiip/internal/f/b$a;III)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 117
    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    const-string v0, "TYPE_PRIORITY length: %d != 4"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lme/kiip/internal/f/d$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 118
    :cond_0
    if-nez p4, :cond_1

    const-string v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lme/kiip/internal/f/d$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 119
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/f/d$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 121
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 122
    invoke-interface {p1, p4, v0}, Lme/kiip/internal/f/b$a;->a(II)V

    .line 123
    return-void
.end method

.method private c(Lme/kiip/internal/f/b$a;III)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 127
    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    const-string v0, "TYPE_RST_STREAM length: %d != 4"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lme/kiip/internal/f/d$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 128
    :cond_0
    if-nez p4, :cond_1

    const-string v0, "TYPE_RST_STREAM streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lme/kiip/internal/f/d$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 129
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/f/d$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 130
    invoke-static {v0}, Lme/kiip/internal/f/a;->b(I)Lme/kiip/internal/f/a;

    move-result-object v1

    .line 131
    if-nez v1, :cond_2

    .line 132
    const-string v1, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lme/kiip/internal/f/d$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 134
    :cond_2
    invoke-interface {p1, p4, v1}, Lme/kiip/internal/f/b$a;->a(ILme/kiip/internal/f/a;)V

    .line 135
    return-void
.end method

.method private d(Lme/kiip/internal/f/b$a;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 139
    rem-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_0

    const-string v0, "TYPE_SETTINGS length %% 8 != 0: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lme/kiip/internal/f/d$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 140
    :cond_0
    if-eqz p4, :cond_1

    const-string v0, "TYPE_SETTINGS streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lme/kiip/internal/f/d$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 141
    :cond_1
    new-instance v2, Lme/kiip/internal/f/g;

    invoke-direct {v2}, Lme/kiip/internal/f/g;-><init>()V

    move v0, v1

    .line 142
    :goto_0
    if-ge v0, p3, :cond_2

    .line 143
    iget-object v3, p0, Lme/kiip/internal/f/d$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 144
    iget-object v4, p0, Lme/kiip/internal/f/d$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 146
    const v5, 0xffffff

    and-int/2addr v3, v5

    .line 147
    invoke-virtual {v2, v3, v1, v4}, Lme/kiip/internal/f/g;->a(III)V

    .line 142
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 149
    :cond_2
    invoke-interface {p1, v1, v2}, Lme/kiip/internal/f/b$a;->a(ZLme/kiip/internal/f/g;)V

    .line 150
    return-void
.end method

.method private e(Lme/kiip/internal/f/b$a;III)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method private f(Lme/kiip/internal/f/b$a;III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 157
    const/16 v2, 0x8

    if-eq p3, v2, :cond_0

    const-string v2, "TYPE_PING length != 8: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lme/kiip/internal/f/d$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 158
    :cond_0
    if-eqz p4, :cond_1

    const-string v0, "TYPE_PING streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lme/kiip/internal/f/d$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 159
    :cond_1
    iget-object v2, p0, Lme/kiip/internal/f/d$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 160
    iget-object v3, p0, Lme/kiip/internal/f/d$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 161
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_2

    .line 162
    :goto_0
    invoke-interface {p1, v0, v2, v3}, Lme/kiip/internal/f/b$a;->a(ZII)V

    .line 163
    return-void

    :cond_2
    move v0, v1

    .line 161
    goto :goto_0
.end method

.method private g(Lme/kiip/internal/f/b$a;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 167
    const/16 v0, 0x8

    if-ge p3, v0, :cond_0

    const-string v0, "TYPE_GOAWAY length < 8: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lme/kiip/internal/f/d$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 168
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/f/d$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 169
    iget-object v1, p0, Lme/kiip/internal/f/d$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 170
    add-int/lit8 v2, p3, -0x8

    .line 171
    invoke-static {v1}, Lme/kiip/internal/f/a;->b(I)Lme/kiip/internal/f/a;

    move-result-object v3

    .line 172
    if-nez v3, :cond_1

    .line 173
    const-string v0, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lme/kiip/internal/f/d$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 175
    :cond_1
    iget-object v1, p0, Lme/kiip/internal/f/d$a;->a:Ljava/io/DataInputStream;

    int-to-long v4, v2

    invoke-static {v1, v4, v5}, Lme/kiip/internal/d/h;->a(Ljava/io/InputStream;J)J

    move-result-wide v4

    int-to-long v1, v2

    cmp-long v1, v4, v1

    if-eqz v1, :cond_2

    .line 176
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_GOAWAY opaque data was truncated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_2
    invoke-interface {p1, v0, v3}, Lme/kiip/internal/f/b$a;->b(ILme/kiip/internal/f/a;)V

    .line 179
    return-void
.end method

.method private h(Lme/kiip/internal/f/b$a;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lme/kiip/internal/f/d$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 185
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    .line 186
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 187
    :goto_0
    invoke-interface {p1, p4, v1, v0}, Lme/kiip/internal/f/b$a;->a(IIZ)V

    .line 188
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lme/kiip/internal/f/b$a;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 61
    :try_start_0
    iget-object v1, p0, Lme/kiip/internal/f/d$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 65
    iget-object v2, p0, Lme/kiip/internal/f/d$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 67
    const v3, 0xffff

    and-int/2addr v3, v1

    .line 68
    const/high16 v4, 0xff0000

    and-int/2addr v4, v1

    shr-int/lit8 v4, v4, 0x10

    .line 69
    const/high16 v5, -0x1000000

    and-int/2addr v1, v5

    shr-int/lit8 v1, v1, 0x18

    .line 71
    const v5, 0x7fffffff

    and-int/2addr v2, v5

    .line 73
    packed-switch v4, :pswitch_data_0

    .line 107
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TODO"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    .line 75
    :pswitch_1
    invoke-direct {p0, p1, v1, v3, v2}, Lme/kiip/internal/f/d$a;->a(Lme/kiip/internal/f/b$a;III)V

    goto :goto_0

    .line 79
    :pswitch_2
    invoke-direct {p0, p1, v1, v3, v2}, Lme/kiip/internal/f/d$a;->b(Lme/kiip/internal/f/b$a;III)V

    goto :goto_0

    .line 83
    :pswitch_3
    invoke-direct {p0, p1, v1, v3, v2}, Lme/kiip/internal/f/d$a;->c(Lme/kiip/internal/f/b$a;III)V

    goto :goto_0

    .line 87
    :pswitch_4
    invoke-direct {p0, p1, v1, v3, v2}, Lme/kiip/internal/f/d$a;->d(Lme/kiip/internal/f/b$a;III)V

    goto :goto_0

    .line 91
    :pswitch_5
    invoke-direct {p0, p1, v1, v3, v2}, Lme/kiip/internal/f/d$a;->e(Lme/kiip/internal/f/b$a;III)V

    goto :goto_0

    .line 95
    :pswitch_6
    invoke-direct {p0, p1, v1, v3, v2}, Lme/kiip/internal/f/d$a;->f(Lme/kiip/internal/f/b$a;III)V

    goto :goto_0

    .line 99
    :pswitch_7
    invoke-direct {p0, p1, v1, v3, v2}, Lme/kiip/internal/f/d$a;->g(Lme/kiip/internal/f/b$a;III)V

    goto :goto_0

    .line 103
    :pswitch_8
    invoke-direct {p0, p1, v1, v3, v2}, Lme/kiip/internal/f/d$a;->h(Lme/kiip/internal/f/b$a;III)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lme/kiip/internal/f/d$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 196
    return-void
.end method
