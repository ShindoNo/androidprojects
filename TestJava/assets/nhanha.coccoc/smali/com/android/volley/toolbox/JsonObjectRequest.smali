.class public Lcom/android/volley/toolbox/JsonObjectRequest;
.super Lcom/android/volley/toolbox/JsonRequest;
.source "JsonObjectRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/toolbox/JsonRequest",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p4, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lorg/json/JSONObject;>;"
    invoke-direct/range {p0 .. p5}, Lcom/android/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 48
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 6
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "jsonRequest"    # Lorg/json/JSONObject;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p4, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lorg/json/JSONObject;>;"
    if-nez p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 73
    return-void

    .line 71
    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lorg/json/JSONObject;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonRequest"    # Lorg/json/JSONObject;
    .param p4, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p3, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lorg/json/JSONObject;>;"
    if-nez p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 85
    return-void

    .line 83
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 6
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v4, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v5, "utf-8"

    .line 91
    invoke-static {v4, v5}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 92
    .local v2, "jsonString":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v4

    .line 92
    invoke-static {v3, v4}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 97
    .end local v2    # "jsonString":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/android/volley/ParseError;

    invoke-direct {v3, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v3

    goto :goto_0

    .line 96
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 97
    .local v1, "je":Lorg/json/JSONException;
    new-instance v3, Lcom/android/volley/ParseError;

    invoke-direct {v3, v1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v3

    goto :goto_0
.end method
