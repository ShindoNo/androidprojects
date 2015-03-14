.class public Lcom/flurry/sdk/gi;
.super Lcom/flurry/sdk/gj;
.source "SourceFile"


# static fields
.field static final synthetic b:Z


# instance fields
.field private d:Lcom/flurry/sdk/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/flurry/sdk/gi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/flurry/sdk/gi;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/flurry/sdk/fk;Lcom/flurry/sdk/fk;Lcom/flurry/sdk/gc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p1, p2}, Lcom/flurry/sdk/gi;->a(Lcom/flurry/sdk/fk;Lcom/flurry/sdk/fk;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/flurry/sdk/gi;-><init>(Ljava/lang/Object;Lcom/flurry/sdk/gc;)V

    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/flurry/sdk/gc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    check-cast p1, Lcom/flurry/sdk/gn;

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/gj;-><init>(Lcom/flurry/sdk/gn;Lcom/flurry/sdk/gc;)V

    .line 60
    return-void
.end method

.method public static a(Lcom/flurry/sdk/fk;Lcom/flurry/sdk/fk;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "writer cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    if-nez p1, :cond_1

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "reader cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    new-instance v0, Lcom/flurry/sdk/gl;

    invoke-direct {v0}, Lcom/flurry/sdk/gl;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/gl;->a(Lcom/flurry/sdk/fk;Lcom/flurry/sdk/fk;)Lcom/flurry/sdk/gn;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/gn;Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 214
    instance-of v0, p2, Lcom/flurry/sdk/gn$e;

    if-eqz v0, :cond_1

    .line 215
    sget-object v0, Lcom/flurry/sdk/gn;->s:Lcom/flurry/sdk/gn;

    if-ne p1, v0, :cond_0

    .line 242
    :goto_0
    return-object p2

    :cond_0
    move-object p2, v1

    .line 215
    goto :goto_0

    .line 216
    :cond_1
    instance-of v0, p2, Lcom/flurry/sdk/gn$k;

    if-eqz v0, :cond_3

    .line 217
    check-cast p2, Lcom/flurry/sdk/gn$k;

    .line 218
    iget-object v0, p2, Lcom/flurry/sdk/gn$k;->B:Lcom/flurry/sdk/gn;

    if-eq v0, p1, :cond_2

    .line 219
    new-instance v0, Lcom/flurry/sdk/fi;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/flurry/sdk/gn$k;->B:Lcom/flurry/sdk/gn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while looking for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_2
    iget-object p2, p2, Lcom/flurry/sdk/gn$k;->z:Lcom/flurry/sdk/gn;

    goto :goto_0

    .line 224
    :cond_3
    instance-of v0, p2, Lcom/flurry/sdk/gn$n;

    if-eqz v0, :cond_4

    .line 225
    check-cast p2, Lcom/flurry/sdk/gn$n;

    iget-object v0, p2, Lcom/flurry/sdk/gn$n;->z:Lcom/flurry/sdk/gn;

    .line 226
    iget-object v2, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/gm;->d(Lcom/flurry/sdk/gn;)V

    :goto_1
    move-object p2, v1

    .line 242
    goto :goto_0

    .line 227
    :cond_4
    instance-of v0, p2, Lcom/flurry/sdk/gn$q;

    if-eqz v0, :cond_5

    .line 228
    iget-object v0, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->c()Lcom/flurry/sdk/gn;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gn$a;

    .line 229
    iget-object v2, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gm;

    iget-object v3, p0, Lcom/flurry/sdk/gi;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v3}, Lcom/flurry/sdk/gc;->s()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/flurry/sdk/gn$a;->a(I)Lcom/flurry/sdk/gn;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/gm;->c(Lcom/flurry/sdk/gn;)V

    goto :goto_1

    .line 230
    :cond_5
    instance-of v0, p2, Lcom/flurry/sdk/gn$d;

    if-eqz v0, :cond_6

    .line 231
    new-instance v0, Lcom/flurry/sdk/fi;

    check-cast p2, Lcom/flurry/sdk/gn$d;

    iget-object v1, p2, Lcom/flurry/sdk/gn$d;->z:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_6
    instance-of v0, p2, Lcom/flurry/sdk/gn$b;

    if-eqz v0, :cond_7

    .line 233
    check-cast p2, Lcom/flurry/sdk/gn$b;

    .line 234
    iget-object v0, p0, Lcom/flurry/sdk/gi;->c:Lcom/flurry/sdk/gc;

    iput-object v0, p0, Lcom/flurry/sdk/gi;->d:Lcom/flurry/sdk/gc;

    .line 235
    invoke-static {}, Lcom/flurry/sdk/gd;->a()Lcom/flurry/sdk/gd;

    move-result-object v0

    iget-object v2, p2, Lcom/flurry/sdk/gn$b;->z:[B

    invoke-virtual {v0, v2, v1}, Lcom/flurry/sdk/gd;->a([BLcom/flurry/sdk/fy;)Lcom/flurry/sdk/fy;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gi;->c:Lcom/flurry/sdk/gc;

    goto :goto_1

    .line 237
    :cond_7
    sget-object v0, Lcom/flurry/sdk/gn;->x:Lcom/flurry/sdk/gn;

    if-ne p2, v0, :cond_8

    .line 238
    iget-object v0, p0, Lcom/flurry/sdk/gi;->d:Lcom/flurry/sdk/gc;

    iput-object v0, p0, Lcom/flurry/sdk/gi;->c:Lcom/flurry/sdk/gc;

    goto :goto_1

    .line 240
    :cond_8
    new-instance v0, Lcom/flurry/sdk/fi;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fi;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->f:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    move-result-object v0

    .line 153
    sget-object v1, Lcom/flurry/sdk/gn;->e:Lcom/flurry/sdk/gn;

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/flurry/sdk/gi;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->d()I

    move-result v0

    int-to-long v0, v0

    .line 159
    :goto_0
    return-wide v0

    .line 155
    :cond_0
    sget-object v1, Lcom/flurry/sdk/gn;->h:Lcom/flurry/sdk/gn;

    if-ne v0, v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/flurry/sdk/gi;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->g()D

    move-result-wide v0

    double-to-long v0, v0

    goto :goto_0

    .line 158
    :cond_1
    sget-boolean v1, Lcom/flurry/sdk/gi;->b:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/flurry/sdk/gn;->f:Lcom/flurry/sdk/gn;

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gi;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->e()J

    move-result-wide v0

    goto :goto_0
.end method

.method public f()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->g:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    move-result-object v0

    .line 166
    sget-object v1, Lcom/flurry/sdk/gn;->e:Lcom/flurry/sdk/gn;

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/flurry/sdk/gi;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->d()I

    move-result v0

    int-to-float v0, v0

    .line 172
    :goto_0
    return v0

    .line 168
    :cond_0
    sget-object v1, Lcom/flurry/sdk/gn;->f:Lcom/flurry/sdk/gn;

    if-ne v0, v1, :cond_1

    .line 169
    iget-object v0, p0, Lcom/flurry/sdk/gi;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->e()J

    move-result-wide v0

    long-to-float v0, v0

    goto :goto_0

    .line 171
    :cond_1
    sget-boolean v1, Lcom/flurry/sdk/gi;->b:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/flurry/sdk/gn;->g:Lcom/flurry/sdk/gn;

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gi;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->f()F

    move-result v0

    goto :goto_0
.end method

.method public g()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->h:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    move-result-object v0

    .line 179
    sget-object v1, Lcom/flurry/sdk/gn;->e:Lcom/flurry/sdk/gn;

    if-ne v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/flurry/sdk/gi;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->d()I

    move-result v0

    int-to-double v0, v0

    .line 187
    :goto_0
    return-wide v0

    .line 181
    :cond_0
    sget-object v1, Lcom/flurry/sdk/gn;->f:Lcom/flurry/sdk/gn;

    if-ne v0, v1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/flurry/sdk/gi;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->e()J

    move-result-wide v0

    long-to-double v0, v0

    goto :goto_0

    .line 183
    :cond_1
    sget-object v1, Lcom/flurry/sdk/gn;->g:Lcom/flurry/sdk/gn;

    if-ne v0, v1, :cond_2

    .line 184
    iget-object v0, p0, Lcom/flurry/sdk/gi;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->f()F

    move-result v0

    float-to-double v0, v0

    goto :goto_0

    .line 186
    :cond_2
    sget-boolean v1, Lcom/flurry/sdk/gi;->b:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/flurry/sdk/gn;->h:Lcom/flurry/sdk/gn;

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/gi;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->g()D

    move-result-wide v0

    goto :goto_0
.end method

.method public k()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->l:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 194
    iget-object v0, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->c()Lcom/flurry/sdk/gn;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gn$c;

    .line 195
    iget-object v1, p0, Lcom/flurry/sdk/gi;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v1}, Lcom/flurry/sdk/gc;->k()I

    move-result v1

    .line 196
    iget-object v0, v0, Lcom/flurry/sdk/gn$c;->z:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 197
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 198
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 200
    :cond_0
    new-instance v1, Lcom/flurry/sdk/fi;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/fi;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public l()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->c()Lcom/flurry/sdk/gn;

    move-result-object v0

    .line 248
    instance-of v1, v0, Lcom/flurry/sdk/gn$k;

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gm;

    check-cast v0, Lcom/flurry/sdk/gn$k;

    iget-object v0, v0, Lcom/flurry/sdk/gn$k;->z:Lcom/flurry/sdk/gn;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/gm;->c(Lcom/flurry/sdk/gn;)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    instance-of v1, v0, Lcom/flurry/sdk/gn$n;

    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gm;

    check-cast v0, Lcom/flurry/sdk/gn$n;

    iget-object v0, v0, Lcom/flurry/sdk/gn$n;->z:Lcom/flurry/sdk/gn;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/gm;->c(Lcom/flurry/sdk/gn;)V

    goto :goto_0

    .line 252
    :cond_2
    instance-of v1, v0, Lcom/flurry/sdk/gn$q;

    if-eqz v1, :cond_3

    .line 253
    iget-object v0, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->c()Lcom/flurry/sdk/gn;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gn$a;

    .line 254
    iget-object v1, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gm;

    iget-object v2, p0, Lcom/flurry/sdk/gi;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v2}, Lcom/flurry/sdk/gc;->s()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/gn$a;->a(I)Lcom/flurry/sdk/gn;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/gm;->c(Lcom/flurry/sdk/gn;)V

    goto :goto_0

    .line 255
    :cond_3
    instance-of v1, v0, Lcom/flurry/sdk/gn$d;

    if-eqz v1, :cond_4

    .line 256
    new-instance v1, Lcom/flurry/sdk/fi;

    check-cast v0, Lcom/flurry/sdk/gn$d;

    iget-object v0, v0, Lcom/flurry/sdk/gn$d;->z:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/fi;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_4
    instance-of v1, v0, Lcom/flurry/sdk/gn$b;

    if-eqz v1, :cond_5

    .line 258
    check-cast v0, Lcom/flurry/sdk/gn$b;

    .line 259
    iget-object v1, p0, Lcom/flurry/sdk/gi;->c:Lcom/flurry/sdk/gc;

    iput-object v1, p0, Lcom/flurry/sdk/gi;->d:Lcom/flurry/sdk/gc;

    .line 260
    invoke-static {}, Lcom/flurry/sdk/gd;->a()Lcom/flurry/sdk/gd;

    move-result-object v1

    iget-object v0, v0, Lcom/flurry/sdk/gn$b;->z:[B

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/gd;->a([BLcom/flurry/sdk/fy;)Lcom/flurry/sdk/fy;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gi;->c:Lcom/flurry/sdk/gc;

    goto :goto_0

    .line 262
    :cond_5
    sget-object v1, Lcom/flurry/sdk/gn;->x:Lcom/flurry/sdk/gn;

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/flurry/sdk/gi;->d:Lcom/flurry/sdk/gc;

    iput-object v0, p0, Lcom/flurry/sdk/gi;->c:Lcom/flurry/sdk/gc;

    goto :goto_0
.end method

.method public s()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->m:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 207
    iget-object v0, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->c()Lcom/flurry/sdk/gn;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gn$p;

    .line 208
    iget-object v1, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gm;

    iget-object v2, v0, Lcom/flurry/sdk/gn$p;->B:Lcom/flurry/sdk/gn;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/gm;->c(Lcom/flurry/sdk/gn;)V

    .line 209
    iget v0, v0, Lcom/flurry/sdk/gn$p;->z:I

    return v0
.end method

.method public final u()[Lcom/flurry/sdk/fk$f;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->s:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gn$e;

    iget-object v0, v0, Lcom/flurry/sdk/gn$e;->z:[Lcom/flurry/sdk/fk$f;

    return-object v0
.end method

.method public final v()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->a()V

    .line 148
    return-void
.end method
