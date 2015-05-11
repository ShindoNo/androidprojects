.class public Lcom/itim/explorer/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final HASH_ALGORITHM:Ljava/lang/String; = "hmacSHA256"

.field private static final SPREF_SELECT_CITY:Ljava/lang/String; = "select_city"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UrlEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "param"    # Ljava/lang/String;

    .prologue
    .line 833
    const-string v0, "@#&=*+-_.,:!?()/~\'%"

    invoke-static {p0, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addHashToURL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p0, "baseURL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/itim/explorer/util/Util;->createHTTPRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "requestUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 192
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "queryString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&signature="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-static {v1, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "b3154acf3a3a1919e716a"

    invoke-static {v5, v6}, Lcom/itim/explorer/util/Util;->hashMac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 202
    :goto_0
    return-object v2

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 199
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 200
    .local v0, "e":Ljava/security/SignatureException;
    invoke-virtual {v0}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_0
.end method

.method private static addHashToURLP2(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p0, "baseURL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/itim/explorer/util/Util;->createHTTPRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "requestUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 209
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "queryString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&signature="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "b3154acf3a3a1919e716a"

    invoke-static {v5, v6}, Lcom/itim/explorer/util/Util;->hashMac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 216
    :goto_0
    return-object v2

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/security/SignatureException;
    invoke-virtual {v0}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_0
.end method

.method public static bookmarkPOI(Landroid/content/Context;Lcom/itim/explorer/io/model/POI;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "poi"    # Lcom/itim/explorer/io/model/POI;

    .prologue
    const/4 v5, 0x0

    .line 286
    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getId()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/itim/explorer/util/Util;->isPOISaved(Landroid/content/Context;IZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    invoke-static {p0, p1}, Lcom/itim/explorer/util/Util;->savePoi(Landroid/content/Context;Lcom/itim/explorer/io/model/POI;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 290
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "poi_id"

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_BOOKMARK:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.itim.explorer.receiver.POIUpdateReceiver"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 308
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 301
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_BOOKMARK:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 697
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 698
    .local v2, "sbuf":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 699
    aget-byte v3, p0, v0

    and-int/lit16 v1, v3, 0xff

    .line 700
    .local v1, "intVal":I
    const/16 v3, 0x10

    if-ge v1, v3, :cond_0

    .line 701
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 704
    .end local v1    # "intVal":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 500
    new-instance v1, Ljava/util/Scanner;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v2, "\\A"

    invoke-virtual {v1, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 502
    .local v0, "s":Ljava/util/Scanner;
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static cookAddPOI(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "http://nhanha.coccoc.com/api/poi_add"

    invoke-static {v0, p0}, Lcom/itim/explorer/util/Util;->addHashToURL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cookFacebookPost(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "hash"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 158
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "appid"

    const-string v2, "explorer-app"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://nhanha.coccoc.com/api/getcheckins/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/itim/explorer/util/Util;->addHashToURL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static cookPOIURL(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "http://nhanha.coccoc.com/api/search"

    invoke-static {v5, p0}, Lcom/itim/explorer/util/Util;->createHTTPRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "requestUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 144
    .local v4, "uri":Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "queryString":Ljava/lang/String;
    :try_start_0
    const-string v5, "b3154acf3a3a1919e716a"

    invoke-static {v1, v5}, Lcom/itim/explorer/util/Util;->hashMac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "signature":Ljava/lang/String;
    const-string v5, "q"

    const-string v6, "utf-8"

    invoke-static {p1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://nhanha.coccoc.com/api/search"

    invoke-static {v6, p0}, Lcom/itim/explorer/util/Util;->createHTTPRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&signature="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 153
    .end local v3    # "signature":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static cookReportProblem(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "http://nhanha.coccoc.com/api/problem_report"

    invoke-static {v0, p0}, Lcom/itim/explorer/util/Util;->addHashToURL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cookReviewGetAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "hash"    # Ljava/lang/String;
    .param p1, "limit"    # Ljava/lang/String;
    .param p2, "offset"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "appid"

    const-string v2, "explorer-app"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "poi_hash"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v1, "limit"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v1, "offset"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v1, "http://nhanha.coccoc.com/api/review_get/"

    invoke-static {v1, v0}, Lcom/itim/explorer/util/Util;->addHashToURL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static cookReviewPOI(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "http://nhanha.coccoc.com/api/review_add/"

    invoke-static {v0, p0}, Lcom/itim/explorer/util/Util;->addHashToURLP2(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cookURL(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "http://nhanha.coccoc.com/api/search"

    invoke-static {v0, p0}, Lcom/itim/explorer/util/Util;->addHashToURL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cookUsersPois(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "http://nhanha.coccoc.com/api/poi_added"

    invoke-static {v0, p0}, Lcom/itim/explorer/util/Util;->addHashToURL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createHTTPRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .param p0, "httpAuthority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/itim/explorer/util/Util;->sortByKeys(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 222
    .local v6, "sorted":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "?"

    .line 223
    .local v4, "queryString":Ljava/lang/String;
    new-instance v3, Ljava/util/LinkedList;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 224
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 225
    .local v0, "count":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 226
    .local v5, "size":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 227
    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v7, v5, -0x1

    if-ge v0, v7, :cond_0

    .line 228
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 232
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 233
    goto :goto_0

    .line 230
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 234
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static decodePoly(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 20
    .param p0, "encoded"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v10, "poly":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v5, 0x0

    .local v5, "index":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 473
    .local v8, "len":I
    const/4 v7, 0x0

    .local v7, "lat":I
    const/4 v9, 0x0

    .line 474
    .local v9, "lng":I
    :goto_0
    if-ge v5, v8, :cond_2

    .line 475
    const/4 v13, 0x0

    .local v13, "shift":I
    const/4 v12, 0x0

    .line 477
    .local v12, "result":I
    :goto_1
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    add-int/lit8 v2, v14, -0x3f

    .line 478
    .local v2, "b":I
    and-int/lit8 v14, v2, 0x1f

    shl-int/2addr v14, v13

    or-int/2addr v12, v14

    .line 479
    add-int/lit8 v13, v13, 0x5

    .line 480
    const/16 v14, 0x20

    if-ge v2, v14, :cond_4

    .line 481
    and-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_0

    shr-int/lit8 v14, v12, 0x1

    xor-int/lit8 v3, v14, -0x1

    .line 482
    .local v3, "dlat":I
    :goto_2
    add-int/2addr v7, v3

    .line 483
    const/4 v13, 0x0

    .line 484
    const/4 v12, 0x0

    move v5, v6

    .line 486
    .end local v6    # "index":I
    .restart local v5    # "index":I
    :goto_3
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .restart local v6    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    add-int/lit8 v2, v14, -0x3f

    .line 487
    and-int/lit8 v14, v2, 0x1f

    shl-int/2addr v14, v13

    or-int/2addr v12, v14

    .line 488
    add-int/lit8 v13, v13, 0x5

    .line 489
    const/16 v14, 0x20

    if-ge v2, v14, :cond_3

    .line 490
    and-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_1

    shr-int/lit8 v14, v12, 0x1

    xor-int/lit8 v4, v14, -0x1

    .line 491
    .local v4, "dlng":I
    :goto_4
    add-int/2addr v9, v4

    .line 493
    new-instance v11, Lcom/google/android/gms/maps/model/LatLng;

    int-to-double v14, v7

    const-wide v16, 0x40f86a0000000000L

    div-double v14, v14, v16

    int-to-double v0, v9

    move-wide/from16 v16, v0

    const-wide v18, 0x40f86a0000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v11, v14, v15, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 494
    .local v11, "position":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v6

    .line 495
    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_0

    .line 481
    .end local v3    # "dlat":I
    .end local v4    # "dlng":I
    .end local v5    # "index":I
    .end local v11    # "position":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v6    # "index":I
    :cond_0
    shr-int/lit8 v3, v12, 0x1

    goto :goto_2

    .line 490
    .restart local v3    # "dlat":I
    :cond_1
    shr-int/lit8 v4, v12, 0x1

    goto :goto_4

    .line 496
    .end local v2    # "b":I
    .end local v3    # "dlat":I
    .end local v6    # "index":I
    .end local v12    # "result":I
    .end local v13    # "shift":I
    .restart local v5    # "index":I
    :cond_2
    return-object v10

    .end local v5    # "index":I
    .restart local v2    # "b":I
    .restart local v3    # "dlat":I
    .restart local v6    # "index":I
    .restart local v12    # "result":I
    .restart local v13    # "shift":I
    :cond_3
    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_3

    .end local v3    # "dlat":I
    .end local v5    # "index":I
    .restart local v6    # "index":I
    :cond_4
    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_1
.end method

.method public static deleteAllPOIs(Landroid/content/Context;Z)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isBookmark"    # Z

    .prologue
    .line 428
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p1, :cond_0

    sget-object v1, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_BOOKMARK:Landroid/net/Uri;

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 432
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.itim.explorer.receiver.POIUpdateReceiver"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 437
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 428
    :cond_0
    sget-object v1, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_HISTORY:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 435
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static deleteAllSearchQuery(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 442
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_SEARCH_QUERY:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 444
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.itim.explorer.receiver.SearchQuertUpdateReceiver"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 447
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deletePOI(Landroid/content/Context;IZ)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "isBookmark"    # Z

    .prologue
    .line 389
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/itim/explorer/util/Util;->isAvaiOnOnother(Landroid/content/Context;IZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_POIS:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 395
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_1

    sget-object v1, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_BOOKMARK:Landroid/net/Uri;

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 399
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.itim.explorer.receiver.POIUpdateReceiver"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 404
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 395
    :cond_1
    sget-object v1, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_HISTORY:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 402
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static deleteSearchQuery(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 415
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_SEARCH_QUERY:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 418
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.itim.explorer.receiver.SearchQuertUpdateReceiver"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 421
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 686
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "androidId":Ljava/lang/String;
    return-object v0
.end method

.method public static getCurrentCity(Landroid/content/Context;)Lcom/itim/explorer/io/model/CityBorder;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 556
    new-instance v0, Lcom/itim/explorer/io/model/CityBorder;

    invoke-direct {v0}, Lcom/itim/explorer/io/model/CityBorder;-><init>()V

    .line 557
    .local v0, "cityBorder":Lcom/itim/explorer/io/model/CityBorder;
    const-string v2, "select_city"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 559
    .local v1, "mPrefs":Landroid/content/SharedPreferences;
    const-string v2, "id"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itim/explorer/io/model/CityBorder;->setId(I)V

    .line 560
    const-string v2, "name"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itim/explorer/io/model/CityBorder;->setName(Ljava/lang/String;)V

    .line 561
    const-string v2, "min_lat"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/itim/explorer/io/model/CityBorder;->setMin_lat(D)V

    .line 562
    const-string v2, "min_lng"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/itim/explorer/io/model/CityBorder;->setMin_lng(D)V

    .line 563
    const-string v2, "max_lat"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/itim/explorer/io/model/CityBorder;->setMax_lat(D)V

    .line 564
    const-string v2, "max_lng"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/itim/explorer/io/model/CityBorder;->setMax_lng(D)V

    .line 565
    return-object v0
.end method

.method public static getCurrentCityName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 569
    const-string v1, "select_city"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 571
    .local v0, "mPrefs":Landroid/content/SharedPreferences;
    const-string v1, "id"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 572
    const v1, 0x7f0e00a6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 574
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getIPAddress(Z)Ljava/lang/String;
    .locals 10
    .param p0, "useIPv4"    # Z

    .prologue
    .line 804
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v5

    .line 806
    .local v5, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 807
    .local v6, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 809
    .local v1, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 810
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_1

    .line 811
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 812
    .local v8, "sAddr":Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v7

    .line 813
    .local v7, "isIPv4":Z
    if-eqz p0, :cond_3

    .line 814
    if-eqz v7, :cond_1

    .line 829
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v6    # "intf":Ljava/net/NetworkInterface;
    .end local v7    # "isIPv4":Z
    .end local v8    # "sAddr":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v8

    .line 817
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .restart local v6    # "intf":Ljava/net/NetworkInterface;
    .restart local v7    # "isIPv4":Z
    .restart local v8    # "sAddr":Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_1

    .line 818
    const/16 v9, 0x25

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 820
    .local v2, "delim":I
    if-ltz v2, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 827
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v2    # "delim":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v6    # "intf":Ljava/net/NetworkInterface;
    .end local v7    # "isIPv4":Z
    .end local v8    # "sAddr":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 829
    :cond_4
    const-string v8, ""

    goto :goto_0
.end method

.method public static getMACAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 767
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    .line 769
    .local v3, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 770
    .local v4, "intf":Ljava/net/NetworkInterface;
    if-eqz p0, :cond_1

    .line 771
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 774
    :cond_1
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v5

    .line 775
    .local v5, "mac":[B
    if-nez v5, :cond_2

    .line 776
    const-string v6, ""

    .line 786
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "mac":[B
    :goto_0
    return-object v6

    .line 777
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .restart local v4    # "intf":Ljava/net/NetworkInterface;
    .restart local v5    # "mac":[B
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 778
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_3

    .line 779
    const-string v6, "%02X:"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-byte v9, v5, v2

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 780
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 781
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 782
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 784
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "idx":I
    .end local v3    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "mac":[B
    :catch_0
    move-exception v6

    .line 786
    :cond_5
    const-string v6, ""

    goto :goto_0
.end method

.method public static getMapTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "mMapType"    # I

    .prologue
    .line 873
    packed-switch p0, :pswitch_data_0

    .line 892
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 876
    :pswitch_0
    const-string v0, "Category"

    goto :goto_0

    .line 878
    :pswitch_1
    const-string v0, "Current location"

    goto :goto_0

    .line 880
    :pswitch_2
    const-string v0, "Direction"

    goto :goto_0

    .line 882
    :pswitch_3
    const-string v0, "Map intent"

    goto :goto_0

    .line 884
    :pswitch_4
    const-string v0, "Map NhaNha intent"

    goto :goto_0

    .line 886
    :pswitch_5
    const-string v0, "Nearby"

    goto :goto_0

    .line 888
    :pswitch_6
    const-string v0, "POI"

    goto :goto_0

    .line 890
    :pswitch_7
    const-string v0, "Search"

    goto :goto_0

    .line 873
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getUTF8Bytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 715
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 717
    :goto_0
    return-object v1

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getUid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 680
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 682
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static gps2m(DDDD)D
    .locals 22
    .param p0, "lat_a"    # D
    .param p2, "lng_a"    # D
    .param p4, "lat_b"    # D
    .param p6, "lng_b"    # D

    .prologue
    .line 592
    const-wide v8, 0x404ca5a1edd6480aL

    .line 594
    .local v8, "pk":D
    div-double v0, p0, v8

    .line 595
    .local v0, "a1":D
    div-double v2, p2, v8

    .line 596
    .local v2, "a2":D
    div-double v4, p4, v8

    .line 597
    .local v4, "b1":D
    div-double v6, p6, v8

    .line 599
    .local v6, "b2":D
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v10, v18, v20

    .line 600
    .local v10, "t1":D
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v12, v18, v20

    .line 601
    .local v12, "t2":D
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v14, v18, v20

    .line 602
    .local v14, "t3":D
    add-double v18, v10, v12

    add-double v18, v18, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->acos(D)D

    move-result-wide v16

    .line 604
    .local v16, "tt":D
    const-wide v18, 0x415848cc00000000L

    mul-double v18, v18, v16

    return-wide v18
.end method

.method public static gps2m(Lcom/itim/explorer/io/model/GPS;Landroid/location/Location;)D
    .locals 8
    .param p0, "locationA"    # Lcom/itim/explorer/io/model/GPS;
    .param p1, "locationB"    # Landroid/location/Location;

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/itim/explorer/io/model/GPS;->getLat()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/GPS;->getLng()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/itim/explorer/util/Util;->gps2m(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static hashMac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "secretKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 111
    :try_start_0
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "hmacSHA256"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 112
    .local v4, "sk":Ljava/security/Key;
    invoke-interface {v4}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 113
    .local v3, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    .line 115
    .local v2, "hmac":[B
    invoke-static {v2}, Lcom/itim/explorer/util/Util;->toHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    return-object v5

    .line 116
    .end local v2    # "hmac":[B
    .end local v3    # "mac":Ljavax/crypto/Mac;
    .end local v4    # "sk":Ljava/security/Key;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e1":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/security/SignatureException;

    const-string v6, "error building signature, no such algorithm in device hmacSHA256"

    invoke-direct {v5, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 120
    .end local v1    # "e1":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 121
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v5, Ljava/security/SignatureException;

    const-string v6, "error building signature, invalid key hmacSHA256"

    invoke-direct {v5, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static haversine_km(DDDD)D
    .locals 20
    .param p0, "lat1"    # D
    .param p2, "long1"    # D
    .param p4, "lat2"    # D
    .param p6, "long2"    # D

    .prologue
    .line 614
    const-wide v6, 0x3f91df46a2529d39L

    .line 615
    .local v6, "d2r":D
    sub-double v12, p6, p2

    mul-double v10, v12, v6

    .line 616
    .local v10, "dlong":D
    sub-double v12, p4, p0

    mul-double v8, v12, v6

    .line 617
    .local v8, "dlat":D
    const-wide/high16 v12, 0x4000000000000000L

    div-double v12, v8, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double v14, p0, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double v16, p4, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L

    div-double v16, v10, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double v0, v12, v14

    .line 619
    .local v0, "a":D
    const-wide/high16 v12, 0x4000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x3ff0000000000000L

    sub-double v16, v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    mul-double v2, v12, v14

    .line 620
    .local v2, "c":D
    const-wide v12, 0x40b8df0000000000L

    mul-double v4, v12, v2

    .line 623
    .local v4, "d":D
    invoke-static {v4, v5}, Lcom/itim/explorer/util/Util;->round2digi(D)D

    move-result-wide v12

    return-wide v12
.end method

.method public static haversine_km(Lcom/itim/explorer/io/model/GPS;Landroid/location/Location;)D
    .locals 8
    .param p0, "locationA"    # Lcom/itim/explorer/io/model/GPS;
    .param p1, "locationB"    # Landroid/location/Location;

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/itim/explorer/io/model/GPS;->getLat()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/GPS;->getLng()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/itim/explorer/util/Util;->haversine_km(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static haversine_mi(DDDD)D
    .locals 20
    .param p0, "lat1"    # D
    .param p2, "long1"    # D
    .param p4, "lat2"    # D
    .param p6, "long2"    # D

    .prologue
    .line 628
    const-wide v6, 0x3f91df46a2529d39L

    .line 629
    .local v6, "d2r":D
    sub-double v12, p6, p2

    mul-double v10, v12, v6

    .line 630
    .local v10, "dlong":D
    sub-double v12, p4, p0

    mul-double v8, v12, v6

    .line 631
    .local v8, "dlat":D
    const-wide/high16 v12, 0x4000000000000000L

    div-double v12, v8, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double v14, p0, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double v16, p4, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L

    div-double v16, v10, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double v0, v12, v14

    .line 633
    .local v0, "a":D
    const-wide/high16 v12, 0x4000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x3ff0000000000000L

    sub-double v16, v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    mul-double v2, v12, v14

    .line 634
    .local v2, "c":D
    const-wide v12, 0x40aee80000000000L

    mul-double v4, v12, v2

    .line 637
    .local v4, "d":D
    return-wide v4
.end method

.method public static haversine_mi(Lcom/itim/explorer/io/model/GPS;Landroid/location/Location;)D
    .locals 8
    .param p0, "locationA"    # Lcom/itim/explorer/io/model/GPS;
    .param p1, "locationB"    # Landroid/location/Location;

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/itim/explorer/io/model/GPS;->getLat()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/GPS;->getLng()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/itim/explorer/util/Util;->haversine_mi(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static historyPOI(Landroid/content/Context;Lcom/itim/explorer/io/model/POI;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "poi"    # Lcom/itim/explorer/io/model/POI;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 321
    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getId()I

    move-result v4

    invoke-static {p0, v4, v3}, Lcom/itim/explorer/util/Util;->isPOISaved(Landroid/content/Context;IZ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 322
    invoke-static {p0, p1}, Lcom/itim/explorer/util/Util;->savePoi(Landroid/content/Context;Lcom/itim/explorer/io/model/POI;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 324
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 325
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "poi_id"

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_HISTORY:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 328
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.itim.explorer.receiver.POIUpdateReceiver"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return v2

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 332
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 335
    goto :goto_0
.end method

.method private static isAvaiOnOnother(Landroid/content/Context;IZ)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "isBookmark"    # Z

    .prologue
    const/4 v2, 0x0

    .line 454
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    sget-object v1, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_BOOKMARK:Landroid/net/Uri;

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 458
    .local v6, "cs":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 454
    .end local v6    # "cs":Landroid/database/Cursor;
    :cond_0
    sget-object v1, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_HISTORY:Landroid/net/Uri;

    goto :goto_0

    .line 458
    .restart local v6    # "cs":Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isGPSOn(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 512
    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 514
    .local v0, "manager":Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isNetworkConnection(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v3, 0x0

    .line 89
    .local v3, "haveConnectedWifi":Z
    const/4 v2, 0x0

    .line 91
    .local v2, "haveConnectedMobile":Z
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 93
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v6

    .line 94
    .local v6, "netInfo":[Landroid/net/NetworkInfo;
    move-object v0, v6

    .local v0, "arr$":[Landroid/net/NetworkInfo;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v7, v0, v4

    .line 95
    .local v7, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WIFI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 96
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 97
    const/4 v3, 0x1

    .line 98
    :cond_0
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MOBILE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 99
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 100
    const/4 v2, 0x1

    .line 101
    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 102
    const/4 v2, 0x1

    .line 94
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 104
    .end local v7    # "ni":Landroid/net/NetworkInfo;
    :cond_3
    if-nez v3, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    const/4 v8, 0x1

    :goto_1
    return v8

    :cond_5
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static isPOISaved(Landroid/content/Context;IZ)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "isBookmark"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 269
    if-nez p2, :cond_0

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_HISTORY:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 280
    :goto_0
    return v7

    .line 275
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_BOOKMARK:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 280
    .local v6, "cs":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v7, v0

    goto :goto_0

    :cond_1
    move v0, v7

    goto :goto_1
.end method

.method private static isSearchQuerySaved(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 462
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_SEARCH_QUERY:Landroid/net/Uri;

    const-string v3, "query = ?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v8

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 467
    .local v6, "cs":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    move v0, v8

    goto :goto_0
.end method

.method public static kmDecFormat(F)Ljava/lang/String;
    .locals 3
    .param p0, "d"    # F

    .prologue
    .line 82
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#####.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "kmDecFormat":Ljava/text/DecimalFormat;
    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static loadFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x400

    .line 730
    const/16 v0, 0x400

    .line 731
    .local v0, "BUFLEN":I
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 734
    .local v4, "is":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x400

    invoke-direct {v1, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 735
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v2, v7, [B

    .line 736
    .local v2, "bytes":[B
    const/4 v5, 0x0

    .line 737
    .local v5, "isUTF8":Z
    const/4 v3, 0x0

    .line 738
    .local v3, "count":I
    :goto_0
    invoke-virtual {v4, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .local v6, "read":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 739
    if-nez v3, :cond_0

    const/4 v7, 0x0

    aget-byte v7, v2, v7

    const/16 v8, -0x11

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    aget-byte v7, v2, v7

    const/16 v8, -0x45

    if-ne v7, v8, :cond_0

    const/4 v7, 0x2

    aget-byte v7, v2, v7

    const/16 v8, -0x41

    if-ne v7, v8, :cond_0

    .line 741
    const/4 v5, 0x1

    .line 742
    const/4 v7, 0x3

    add-int/lit8 v8, v6, -0x3

    invoke-virtual {v1, v2, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 746
    :goto_1
    add-int/2addr v3, v6

    goto :goto_0

    .line 744
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 751
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bytes":[B
    .end local v3    # "count":I
    .end local v5    # "isUTF8":Z
    .end local v6    # "read":I
    :catchall_0
    move-exception v7

    .line 752
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 754
    :goto_2
    throw v7

    .line 748
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bytes":[B
    .restart local v3    # "count":I
    .restart local v5    # "isUTF8":Z
    .restart local v6    # "read":I
    :cond_1
    if-eqz v5, :cond_2

    :try_start_2
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 752
    :goto_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 754
    :goto_4
    return-object v7

    .line 748
    :cond_2
    :try_start_4
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 753
    :catch_0
    move-exception v8

    goto :goto_4

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bytes":[B
    .end local v3    # "count":I
    .end local v5    # "isUTF8":Z
    .end local v6    # "read":I
    :catch_1
    move-exception v8

    goto :goto_2
.end method

.method public static metersDecFormat(F)Ljava/lang/String;
    .locals 3
    .param p0, "d"    # F

    .prologue
    .line 78
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "metersDecFormat":Ljava/text/DecimalFormat;
    const/high16 v1, 0x447a0000

    mul-float/2addr v1, p0

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static round2digi(D)D
    .locals 4
    .param p0, "x"    # D

    .prologue
    const-wide/high16 v2, 0x4059000000000000L

    .line 659
    mul-double v0, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static roundToHalf(D)D
    .locals 4
    .param p0, "x"    # D

    .prologue
    const-wide/high16 v2, 0x4000000000000000L

    .line 655
    mul-double v0, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static roundToHalf(F)F
    .locals 4
    .param p0, "x"    # F

    .prologue
    .line 651
    const/high16 v0, 0x40000000

    mul-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private static savePoi(Landroid/content/Context;Lcom/itim/explorer/io/model/POI;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "poi"    # Lcom/itim/explorer/io/model/POI;

    .prologue
    const/4 v9, 0x0

    .line 351
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_POIS:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 354
    .local v6, "cs":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 355
    :cond_0
    invoke-static {p1}, Lcom/itim/explorer/io/POISQLiteHelper;->poiToValues(Lcom/itim/explorer/io/model/POI;)Landroid/content/ContentValues;

    move-result-object v8

    .line 356
    .local v8, "values":Landroid/content/ContentValues;
    if-nez v8, :cond_1

    move v0, v9

    .line 365
    .end local v6    # "cs":Landroid/database/Cursor;
    .end local v8    # "values":Landroid/content/ContentValues;
    :goto_0
    return v0

    .line 359
    .restart local v6    # "cs":Landroid/database/Cursor;
    .restart local v8    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_POIS:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 363
    .end local v6    # "cs":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 364
    .local v7, "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v9

    .line 365
    goto :goto_0
.end method

.method public static saveQuery(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 370
    invoke-static {p0, p1}, Lcom/itim/explorer/util/Util;->isSearchQuerySaved(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 372
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 373
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "query"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_SEARCH_QUERY:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 376
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.itim.explorer.receiver.SearchQuertUpdateReceiver"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return v2

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setCurrentCity(Landroid/content/Context;Lcom/itim/explorer/io/model/CityBorder;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cityBorder"    # Lcom/itim/explorer/io/model/CityBorder;

    .prologue
    .line 543
    const-string v2, "select_city"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 545
    .local v1, "mPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 546
    .local v0, "mEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "id"

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/CityBorder;->getId()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 547
    const-string v2, "name"

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/CityBorder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 548
    const-string v2, "min_lat"

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/CityBorder;->getMin_lat()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 549
    const-string v2, "min_lng"

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/CityBorder;->getMin_lng()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 550
    const-string v2, "max_lat"

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/CityBorder;->getMax_lat()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 551
    const-string v2, "max_lng"

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/CityBorder;->getMax_lng()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 552
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 553
    return-void
.end method

.method private static sortByKeys(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 245
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<TK;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 249
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 250
    .local v3, "sortedMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 251
    .local v1, "key":Ljava/lang/Comparable;, "TK;"
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 254
    .end local v1    # "key":Ljava/lang/Comparable;, "TK;"
    :cond_0
    return-object v3
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 10
    .param p0, "bytes"    # [B

    .prologue
    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    array-length v6, p0

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 128
    .local v5, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 129
    .local v2, "formatter":Ljava/util/Formatter;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    .line 130
    .local v1, "b":B
    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "b":B
    :cond_0
    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    .line 133
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public saveLogcatToFile(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 837
    new-instance v0, Lcom/itim/explorer/util/Util$1;

    invoke-direct {v0, p0}, Lcom/itim/explorer/util/Util$1;-><init>(Lcom/itim/explorer/util/Util;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/itim/explorer/util/Util$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 871
    return-void
.end method
