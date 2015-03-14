.class public final Lme/kiip/internal/e/c;
.super Ljava/lang/Object;
.source "KiipSDK"


# static fields
.field public static final a:Lme/kiip/internal/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lme/kiip/internal/e/c$1;

    invoke-direct {v0}, Lme/kiip/internal/e/c$1;-><init>()V

    sput-object v0, Lme/kiip/internal/e/c;->a:Lme/kiip/internal/c/f;

    return-void
.end method

.method private static a(Lme/kiip/internal/e/l;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/kiip/internal/e/l;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lme/kiip/internal/c/f$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 123
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 124
    :goto_0
    invoke-virtual {p0}, Lme/kiip/internal/e/l;->e()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 125
    invoke-virtual {p0, v0}, Lme/kiip/internal/e/l;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0, v0}, Lme/kiip/internal/e/l;->b(I)Ljava/lang/String;

    move-result-object v4

    move v2, v1

    .line 130
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 132
    const-string v5, " "

    invoke-static {v4, v2, v5}, Lme/kiip/internal/e/b;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    .line 134
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 135
    invoke-static {v4, v5}, Lme/kiip/internal/e/b;->a(Ljava/lang/String;I)I

    move-result v2

    .line 141
    const-string v5, "realm=\""

    const-string v7, "realm=\""

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v2, v5, v1, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    const-string v5, "realm=\""

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    .line 147
    const-string v5, "\""

    invoke-static {v4, v2, v5}, Lme/kiip/internal/e/b;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    .line 148
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 149
    add-int/lit8 v2, v5, 0x1

    .line 150
    const-string v5, ","

    invoke-static {v4, v2, v5}, Lme/kiip/internal/e/b;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 151
    add-int/lit8 v2, v2, 0x1

    .line 152
    invoke-static {v4, v2}, Lme/kiip/internal/e/b;->a(Ljava/lang/String;I)I

    move-result v2

    .line 153
    new-instance v5, Lme/kiip/internal/c/f$a;

    invoke-direct {v5, v6, v7}, Lme/kiip/internal/c/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 156
    :cond_2
    return-object v3
.end method

.method public static a(Lme/kiip/internal/c/f;ILme/kiip/internal/e/l;Lme/kiip/internal/e/l;Ljava/net/Proxy;Ljava/net/URL;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x197

    const/4 v2, 0x0

    .line 88
    const/16 v0, 0x191

    if-ne p1, v0, :cond_0

    .line 89
    const-string v1, "WWW-Authenticate"

    .line 90
    const-string v0, "Authorization"

    .line 97
    :goto_0
    invoke-static {p2, v1}, Lme/kiip/internal/e/c;->a(Lme/kiip/internal/e/l;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 98
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 109
    :goto_1
    return v0

    .line 91
    :cond_0
    if-ne p1, v4, :cond_1

    .line 92
    const-string v1, "Proxy-Authenticate"

    .line 93
    const-string v0, "Proxy-Authorization"

    goto :goto_0

    .line 95
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 101
    :cond_2
    invoke-virtual {p2}, Lme/kiip/internal/e/l;->c()I

    move-result v3

    if-ne v3, v4, :cond_3

    invoke-interface {p0, p4, p5, v1}, Lme/kiip/internal/c/f;->b(Ljava/net/Proxy;Ljava/net/URL;Ljava/util/List;)Lme/kiip/internal/c/f$b;

    move-result-object v1

    .line 104
    :goto_2
    if-nez v1, :cond_4

    move v0, v2

    .line 105
    goto :goto_1

    .line 101
    :cond_3
    invoke-interface {p0, p4, p5, v1}, Lme/kiip/internal/c/f;->a(Ljava/net/Proxy;Ljava/net/URL;Ljava/util/List;)Lme/kiip/internal/c/f$b;

    move-result-object v1

    goto :goto_2

    .line 108
    :cond_4
    invoke-virtual {v1}, Lme/kiip/internal/c/f$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lme/kiip/internal/e/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x1

    goto :goto_1
.end method
