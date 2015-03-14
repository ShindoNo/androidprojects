.class public Lcom/flurry/sdk/ck;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ck$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/flurry/sdk/ck$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/flurry/sdk/ck$a;->a:Lcom/flurry/sdk/ck$a;

    sput-object v0, Lcom/flurry/sdk/ck;->b:Lcom/flurry/sdk/ck$a;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/flurry/sdk/ci;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    :goto_0
    return-object v0

    .line 91
    :cond_0
    sget-object v1, Lcom/flurry/sdk/ck$a;->a:Lcom/flurry/sdk/ck$a;

    invoke-static {v1}, Lcom/flurry/sdk/ck;->a(Lcom/flurry/sdk/ck$a;)V

    .line 96
    :try_start_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 98
    const-string v3, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 99
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 100
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 101
    new-instance v3, Lcom/flurry/sdk/ci$a;

    invoke-direct {v3}, Lcom/flurry/sdk/ci$a;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/ci$a;Ljava/util/List;)Lcom/flurry/sdk/ci;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 106
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 106
    :goto_1
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 103
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/ci$a;Ljava/util/List;)Lcom/flurry/sdk/ci;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/flurry/sdk/ci$a;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/cq;",
            ">;)",
            "Lcom/flurry/sdk/ci;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x3

    .line 115
    .line 118
    const/4 v0, 0x3

    :try_start_0
    const-string v1, "VASTXmlParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VAST eventType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x2

    sget-object v1, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v2, "VAST"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/flurry/sdk/ck$a;->b:Lcom/flurry/sdk/ck$a;

    invoke-static {v0}, Lcom/flurry/sdk/ck;->a(Lcom/flurry/sdk/ck$a;)V

    .line 124
    invoke-static {p0}, Lcom/flurry/sdk/ck;->c(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    .line 125
    invoke-static {v0}, Lcom/flurry/sdk/ck;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ci$a;->a(I)Lcom/flurry/sdk/ci$a;

    .line 132
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 134
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 138
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v1, "Ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    new-instance v0, Lcom/flurry/sdk/cq$a;

    invoke-direct {v0}, Lcom/flurry/sdk/cq$a;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cq$a;)Lcom/flurry/sdk/cq;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-static {}, Lcom/flurry/sdk/ck;->a()Lcom/flurry/sdk/ck$a;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/ck$a;->b:Lcom/flurry/sdk/ck$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ck$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    sget-object v0, Lcom/flurry/sdk/ck$a;->d:Lcom/flurry/sdk/ck$a;

    invoke-static {v0}, Lcom/flurry/sdk/ck;->a(Lcom/flurry/sdk/ck$a;)V

    .line 161
    const-string v0, "VASTXmlParser"

    const-string v1, "Error parsing VAST XML: "

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v0, Lcom/flurry/sdk/ci$a;

    invoke-direct {v0}, Lcom/flurry/sdk/ci$a;-><init>()V

    invoke-virtual {v0}, Lcom/flurry/sdk/ci$a;->a()Lcom/flurry/sdk/ci$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ci$a;->b()Lcom/flurry/sdk/ci;

    move-result-object v0

    .line 168
    :goto_1
    return-object v0

    .line 128
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 142
    :cond_2
    invoke-static {p0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {p1, p2}, Lcom/flurry/sdk/ci$a;->a(Ljava/util/List;)Lcom/flurry/sdk/ci$a;

    .line 147
    invoke-static {p2}, Lcom/flurry/sdk/ck;->a(Ljava/util/List;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ci$a;->a(Z)Lcom/flurry/sdk/ci$a;

    .line 149
    invoke-virtual {p1}, Lcom/flurry/sdk/ci$a;->b()Lcom/flurry/sdk/ci;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/flurry/sdk/ci;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 152
    sget-object v1, Lcom/flurry/sdk/ck$a;->c:Lcom/flurry/sdk/ck$a;

    invoke-static {v1}, Lcom/flurry/sdk/ck;->a(Lcom/flurry/sdk/ck$a;)V

    goto :goto_1

    .line 154
    :cond_4
    sget-object v0, Lcom/flurry/sdk/ck$a;->d:Lcom/flurry/sdk/ck$a;

    invoke-static {v0}, Lcom/flurry/sdk/ck;->a(Lcom/flurry/sdk/ck$a;)V

    .line 155
    new-instance v0, Lcom/flurry/sdk/ci$a;

    invoke-direct {v0}, Lcom/flurry/sdk/ci$a;-><init>()V

    invoke-virtual {v0}, Lcom/flurry/sdk/ci$a;->a()Lcom/flurry/sdk/ci$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ci$a;->b()Lcom/flurry/sdk/ci;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 164
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a()Lcom/flurry/sdk/ck$a;
    .locals 1

    .prologue
    .line 523
    sget-object v0, Lcom/flurry/sdk/ck;->b:Lcom/flurry/sdk/ck$a;

    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cq$a;)Lcom/flurry/sdk/cq;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 172
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "Ad"

    invoke-interface {p0, v6, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cq$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/cq$a;

    .line 175
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "sequence"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cq$a;->a(I)Lcom/flurry/sdk/cq$a;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v7, :cond_3

    .line 182
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 185
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 186
    const-string v1, "InLine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    new-instance v0, Lcom/flurry/sdk/cs$a;

    invoke-direct {v0}, Lcom/flurry/sdk/cs$a;-><init>()V

    new-instance v1, Lcom/flurry/sdk/cr$a;

    invoke-direct {v1}, Lcom/flurry/sdk/cr$a;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cs$a;Lcom/flurry/sdk/cr$a;Ljava/util/List;Ljava/util/List;)Lcom/flurry/sdk/cs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cq$a;->a(Lcom/flurry/sdk/cs;)Lcom/flurry/sdk/cq$a;

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const-string v0, "VASTXmlParser"

    const-string v1, "Could not identify Ad Sequence"

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_1
    const-string v1, "Wrapper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    new-instance v1, Lcom/flurry/sdk/cs$a;

    invoke-direct {v1}, Lcom/flurry/sdk/cs$a;-><init>()V

    new-instance v2, Lcom/flurry/sdk/cr$a;

    invoke-direct {v2}, Lcom/flurry/sdk/cr$a;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cs$a;Lcom/flurry/sdk/cr$a;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/flurry/sdk/cs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cq$a;->a(Lcom/flurry/sdk/cs;)Lcom/flurry/sdk/cq$a;

    goto :goto_0

    .line 191
    :cond_2
    invoke-static {p0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 194
    :cond_3
    invoke-virtual {p1}, Lcom/flurry/sdk/cq$a;->a()Lcom/flurry/sdk/cq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cs$a;Lcom/flurry/sdk/cr$a;Ljava/util/List;Ljava/util/List;)Lcom/flurry/sdk/cs;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/flurry/sdk/cs$a;",
            "Lcom/flurry/sdk/cr$a;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/cs;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 199
    sget-object v0, Lcom/flurry/sdk/cl;->b:Lcom/flurry/sdk/cl;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cs$a;->a(Lcom/flurry/sdk/cl;)Lcom/flurry/sdk/cs$a;

    .line 200
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "InLine"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 202
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 205
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 206
    const-string v1, "Creatives"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cs$a;->d(Ljava/util/List;)Lcom/flurry/sdk/cs$a;

    goto :goto_0

    .line 208
    :cond_1
    const-string v1, "AdSystem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "version"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/cr$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/cr$a;

    .line 210
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/cr$a;->b(Ljava/lang/String;)Lcom/flurry/sdk/cr$a;

    .line 211
    invoke-virtual {p2}, Lcom/flurry/sdk/cr$a;->a()Lcom/flurry/sdk/cr;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cs$a;->a(Lcom/flurry/sdk/cr;)Lcom/flurry/sdk/cs$a;

    goto :goto_0

    .line 212
    :cond_2
    const-string v1, "AdTitle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 213
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cs$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/cs$a;

    goto :goto_0

    .line 214
    :cond_3
    const-string v1, "Impression"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 215
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/flurry/sdk/ck;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_4
    const-string v1, "Error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 217
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/flurry/sdk/ck;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_5
    invoke-static {p0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 222
    :cond_6
    invoke-virtual {p1, p3}, Lcom/flurry/sdk/cs$a;->b(Ljava/util/List;)Lcom/flurry/sdk/cs$a;

    .line 223
    invoke-virtual {p1, p4}, Lcom/flurry/sdk/cs$a;->c(Ljava/util/List;)Lcom/flurry/sdk/cs$a;

    .line 224
    invoke-virtual {p1}, Lcom/flurry/sdk/cs$a;->a()Lcom/flurry/sdk/cs;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cs$a;Lcom/flurry/sdk/cr$a;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/flurry/sdk/cs;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/flurry/sdk/cs$a;",
            "Lcom/flurry/sdk/cr$a;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/cs;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 229
    sget-object v0, Lcom/flurry/sdk/cl;->c:Lcom/flurry/sdk/cl;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cs$a;->a(Lcom/flurry/sdk/cl;)Lcom/flurry/sdk/cs$a;

    .line 230
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "Wrapper"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 232
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 235
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 236
    const-string v1, "Creatives"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cs$a;->d(Ljava/util/List;)Lcom/flurry/sdk/cs$a;

    goto :goto_0

    .line 238
    :cond_1
    const-string v1, "AdSystem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "version"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/cr$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/cr$a;

    .line 240
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/cr$a;->b(Ljava/lang/String;)Lcom/flurry/sdk/cr$a;

    .line 241
    invoke-virtual {p2}, Lcom/flurry/sdk/cr$a;->a()Lcom/flurry/sdk/cr;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cs$a;->a(Lcom/flurry/sdk/cr;)Lcom/flurry/sdk/cs$a;

    goto :goto_0

    .line 242
    :cond_2
    const-string v1, "VASTAdTagURI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 243
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/flurry/sdk/ck;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_3
    const-string v1, "Impression"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 245
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/flurry/sdk/ck;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_4
    const-string v1, "Error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 247
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/flurry/sdk/ck;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_5
    invoke-static {p0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 252
    :cond_6
    invoke-virtual {p1, p3}, Lcom/flurry/sdk/cs$a;->a(Ljava/util/List;)Lcom/flurry/sdk/cs$a;

    .line 253
    invoke-virtual {p1, p4}, Lcom/flurry/sdk/cs$a;->b(Ljava/util/List;)Lcom/flurry/sdk/cs$a;

    .line 254
    invoke-virtual {p1, p5}, Lcom/flurry/sdk/cs$a;->c(Ljava/util/List;)Lcom/flurry/sdk/cs$a;

    .line 255
    invoke-virtual {p1}, Lcom/flurry/sdk/cs$a;->a()Lcom/flurry/sdk/cs;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/ct$a;)Lcom/flurry/sdk/ct;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 275
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "Creative"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 276
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ct$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/ct$a;

    .line 277
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "sequence"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    .line 280
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 281
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ct$a;->a(I)Lcom/flurry/sdk/ct$a;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 287
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 290
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 291
    const-string v1, "Linear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    sget-object v0, Lcom/flurry/sdk/cm;->b:Lcom/flurry/sdk/cm;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ct$a;->a(Lcom/flurry/sdk/cm;)Lcom/flurry/sdk/ct$a;

    .line 293
    new-instance v0, Lcom/flurry/sdk/cu$a;

    invoke-direct {v0}, Lcom/flurry/sdk/cu$a;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cu$a;)Lcom/flurry/sdk/cu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ct$a;->a(Lcom/flurry/sdk/cu;)Lcom/flurry/sdk/ct$a;

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    const-string v0, "VASTXmlParser"

    const-string v1, "Could not identify Creative sequence"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_1
    invoke-static {p0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/ct$a;->a()Lcom/flurry/sdk/ct;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cu$a;)Lcom/flurry/sdk/cu;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 302
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "Linear"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 303
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "skipoffset"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    .line 305
    invoke-static {v0}, Lcom/flurry/sdk/cj;->a(Ljava/lang/String;)I

    move-result v0

    .line 306
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cu$a;->b(I)Lcom/flurry/sdk/cu$a;

    .line 308
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    .line 309
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 312
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 313
    const-string v1, "Duration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/cj;->a(Ljava/lang/String;)I

    move-result v0

    .line 315
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cu$a;->a(I)Lcom/flurry/sdk/cu$a;

    goto :goto_0

    .line 316
    :cond_1
    const-string v1, "TrackingEvents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    new-instance v0, Lcom/flurry/sdk/ds;

    invoke-direct {v0}, Lcom/flurry/sdk/ds;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/ds;)Lcom/flurry/sdk/ds;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cu$a;->a(Lcom/flurry/sdk/ds;)Lcom/flurry/sdk/cu$a;

    goto :goto_0

    .line 318
    :cond_2
    const-string v1, "VideoClicks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 319
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cu$a;->a(Ljava/util/Map;)Lcom/flurry/sdk/cu$a;

    goto :goto_0

    .line 320
    :cond_3
    const-string v1, "MediaFiles"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 322
    invoke-static {v0}, Lcom/flurry/sdk/cj;->a(Ljava/util/List;)Lcom/flurry/sdk/cv;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cu$a;->a(Lcom/flurry/sdk/cv;)Lcom/flurry/sdk/cu$a;

    goto :goto_0

    .line 327
    :cond_4
    invoke-static {p0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 330
    :cond_5
    invoke-virtual {p1}, Lcom/flurry/sdk/cu$a;->a()Lcom/flurry/sdk/cu;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cv$a;)Lcom/flurry/sdk/cv;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 397
    const/4 v0, 0x2

    sget-object v1, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v2, "MediaFile"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 398
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cv$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/cv$a;

    .line 399
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "type"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cv$a;->d(Ljava/lang/String;)Lcom/flurry/sdk/cv$a;

    .line 400
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "apiFramework"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cv$a;->b(Ljava/lang/String;)Lcom/flurry/sdk/cv$a;

    .line 401
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "delivery"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {v0}, Lcom/flurry/sdk/cn;->a(Ljava/lang/String;)Lcom/flurry/sdk/cn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cv$a;->a(Lcom/flurry/sdk/cn;)Lcom/flurry/sdk/cv$a;

    .line 404
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "height"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 406
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cv$a;->b(I)Lcom/flurry/sdk/cv$a;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "width"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 413
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cv$a;->c(I)Lcom/flurry/sdk/cv$a;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 418
    :goto_1
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "bitrate"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 420
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cv$a;->a(I)Lcom/flurry/sdk/cv$a;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 424
    :goto_2
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "scalable"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 426
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cv$a;->b(Z)Lcom/flurry/sdk/cv$a;

    .line 427
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "maintainAspectRatio"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 429
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cv$a;->a(Z)Lcom/flurry/sdk/cv$a;

    .line 430
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cv$a;->c(Ljava/lang/String;)Lcom/flurry/sdk/cv$a;

    .line 431
    invoke-virtual {p1}, Lcom/flurry/sdk/cv$a;->a()Lcom/flurry/sdk/cv;

    move-result-object v0

    return-object v0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    const-string v0, "VASTXmlParser"

    const-string v1, "Could not identify MediaFile height"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :catch_1
    move-exception v0

    .line 415
    const-string v0, "VASTXmlParser"

    const-string v1, "Could not identify MediaFile width"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 421
    :catch_2
    move-exception v0

    .line 422
    const-string v0, "VASTXmlParser"

    const-string v1, "Could not identify MediaFile bitRate"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cw$a;)Lcom/flurry/sdk/cw;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 373
    const/4 v0, 0x2

    sget-object v1, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v2, "Tracking"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 374
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "event"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-static {v0}, Lcom/flurry/sdk/co;->a(Ljava/lang/String;)Lcom/flurry/sdk/co;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cw$a;->a(Lcom/flurry/sdk/co;)Lcom/flurry/sdk/cw$a;

    .line 376
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cw$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/cw$a;

    .line 377
    invoke-virtual {p1}, Lcom/flurry/sdk/cw$a;->a()Lcom/flurry/sdk/cw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/ds;)Lcom/flurry/sdk/ds;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/flurry/sdk/ds",
            "<",
            "Lcom/flurry/sdk/co;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/ds",
            "<",
            "Lcom/flurry/sdk/co;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 354
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "TrackingEvents"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 356
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 359
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 360
    const-string v1, "Tracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    new-instance v0, Lcom/flurry/sdk/cw$a;

    invoke-direct {v0}, Lcom/flurry/sdk/cw$a;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cw$a;)Lcom/flurry/sdk/cw;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Lcom/flurry/sdk/cw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    invoke-virtual {v0}, Lcom/flurry/sdk/cw;->a()Lcom/flurry/sdk/co;

    move-result-object v1

    invoke-virtual {v0}, Lcom/flurry/sdk/cw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/flurry/sdk/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 366
    :cond_1
    invoke-static {p0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 369
    :cond_2
    return-object p1
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 437
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 438
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 441
    :cond_0
    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ct;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ct;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 259
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "Creatives"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 261
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 264
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string v1, "Creative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    new-instance v0, Lcom/flurry/sdk/ct$a;

    invoke-direct {v0}, Lcom/flurry/sdk/ct$a;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/ct$a;)Lcom/flurry/sdk/ct;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    :cond_1
    invoke-static {p0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 271
    :cond_2
    return-object p1
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/cp;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/cp;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 334
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "VideoClicks"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 336
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 339
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 340
    const-string v1, "ClickThrough"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    sget-object v0, Lcom/flurry/sdk/cp;->b:Lcom/flurry/sdk/cp;

    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 342
    :cond_1
    const-string v1, "ClickTracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    sget-object v0, Lcom/flurry/sdk/cp;->c:Lcom/flurry/sdk/cp;

    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 344
    :cond_2
    const-string v1, "CustomClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 345
    sget-object v0, Lcom/flurry/sdk/cp;->d:Lcom/flurry/sdk/cp;

    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 347
    :cond_3
    invoke-static {p0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 350
    :cond_4
    return-object p1
.end method

.method private static a(Lcom/flurry/sdk/ck$a;)V
    .locals 4

    .prologue
    .line 518
    const/4 v0, 0x3

    const-string v1, "VASTXmlParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set VAST state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/ck$a;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 519
    sput-object p0, Lcom/flurry/sdk/ck;->b:Lcom/flurry/sdk/ck$a;

    .line 520
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 445
    if-nez p0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static a(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 493
    if-lt p0, v0, :cond_0

    const/4 v1, 0x3

    if-gt p0, v1, :cond_0

    .line 496
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/cq;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 477
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 489
    :goto_0
    return v0

    .line 482
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cq;

    .line 483
    invoke-virtual {v0}, Lcom/flurry/sdk/cq;->c()Lcom/flurry/sdk/cs;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_3

    sget-object v3, Lcom/flurry/sdk/cl;->b:Lcom/flurry/sdk/cl;

    invoke-virtual {v0}, Lcom/flurry/sdk/cs;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/cl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    move v0, v1

    .line 485
    goto :goto_0

    .line 489
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/cv;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/cv;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 381
    sget-object v0, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v1, "MediaFiles"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 383
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 386
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 387
    const-string v1, "MediaFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    new-instance v0, Lcom/flurry/sdk/cv$a;

    invoke-direct {v0}, Lcom/flurry/sdk/cv$a;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/ck;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/cv$a;)Lcom/flurry/sdk/cv;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 390
    :cond_1
    invoke-static {p0}, Lcom/flurry/sdk/ck;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 393
    :cond_2
    return-object p1
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 461
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 463
    :cond_0
    const/4 v0, 0x1

    .line 464
    :goto_0
    if-eqz v0, :cond_1

    .line 465
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 470
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 468
    goto :goto_0

    .line 474
    :cond_1
    return-void

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static c(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 500
    const/high16 v0, -0x80000000

    .line 501
    sget-object v1, Lcom/flurry/sdk/ck;->a:Ljava/lang/String;

    const-string v2, "version"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 503
    const-string v2, "VASTXmlParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 505
    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 506
    array-length v2, v1

    if-lez v2, :cond_0

    aget-object v2, v1, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 508
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 514
    :cond_0
    :goto_0
    return v0

    .line 509
    :catch_0
    move-exception v2

    .line 510
    const-string v2, "VASTXmlParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not detect VAST version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v1, v1, v5

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v2, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
