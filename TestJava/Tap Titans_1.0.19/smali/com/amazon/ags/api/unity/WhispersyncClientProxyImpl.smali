.class public Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;
.super Ljava/lang/Object;
.source "WhispersyncClientProxyImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/whispersync/WhispersyncClient;
.implements Lcom/amazon/ags/api/whispersync/migration/MigrationCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl$2;
    }
.end annotation


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "WS"

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;


# instance fields
.field private wsEventListener:Lcom/amazon/ags/api/whispersync/WhispersyncEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->instance:Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl$1;

    invoke-direct {v0, p0}, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl$1;-><init>(Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;)V

    iput-object v0, p0, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->wsEventListener:Lcom/amazon/ags/api/whispersync/WhispersyncEventListener;

    .line 121
    iget-object v0, p0, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->wsEventListener:Lcom/amazon/ags/api/whispersync/WhispersyncEventListener;

    invoke-virtual {p0, v0}, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->setWhispersyncEventListener(Lcom/amazon/ags/api/whispersync/WhispersyncEventListener;)V

    .line 122
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->instance:Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;

    invoke-direct {v0}, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;-><init>()V

    sput-object v0, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->instance:Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;

    .line 128
    :cond_0
    sget-object v0, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->instance:Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;

    return-object v0
.end method


# virtual methods
.method public flush()V
    .locals 3

    .prologue
    .line 155
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getWhispersyncClient()Lcom/amazon/ags/api/whispersync/WhispersyncClient;

    move-result-object v0

    .line 156
    .local v0, "wsClient":Lcom/amazon/ags/api/whispersync/WhispersyncClient;
    if-nez v0, :cond_0

    .line 157
    sget-object v1, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v2, "Whispersync client is null. Cannot flush. Please call initialize for AmazonGames."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/WhispersyncClient;->synchronize()V

    goto :goto_0
.end method

.method public getGameData()Lcom/amazon/ags/api/whispersync/GameDataMap;
    .locals 3

    .prologue
    .line 134
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getWhispersyncClient()Lcom/amazon/ags/api/whispersync/WhispersyncClient;

    move-result-object v0

    .line 135
    .local v0, "wsClient":Lcom/amazon/ags/api/whispersync/WhispersyncClient;
    if-nez v0, :cond_0

    .line 136
    sget-object v1, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v2, "Whispersync client is null. Cannot get game data. Please call initialize for AmazonGames."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v1, 0x0

    .line 139
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/WhispersyncClient;->getGameData()Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v1

    goto :goto_0
.end method

.method public migrateVersion1GameData(Lcom/amazon/ags/api/whispersync/migration/MigrationCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/amazon/ags/api/whispersync/migration/MigrationCallback;

    .prologue
    .line 166
    return-void
.end method

.method public onComplete(Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;[B)V
    .locals 0
    .param p1, "result"    # Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;
    .param p2, "data"    # [B

    .prologue
    .line 176
    return-void
.end method

.method public setWhispersyncEventListener(Lcom/amazon/ags/api/whispersync/WhispersyncEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/amazon/ags/api/whispersync/WhispersyncEventListener;

    .prologue
    .line 180
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getWhispersyncClient()Lcom/amazon/ags/api/whispersync/WhispersyncClient;

    move-result-object v0

    .line 181
    .local v0, "wsClient":Lcom/amazon/ags/api/whispersync/WhispersyncClient;
    if-nez v0, :cond_0

    .line 182
    sget-object v1, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v2, "Whispersync client is null. Cannot set event listener. Please call initialize for AmazonGames."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-interface {v0, p1}, Lcom/amazon/ags/api/whispersync/WhispersyncClient;->setWhispersyncEventListener(Lcom/amazon/ags/api/whispersync/WhispersyncEventListener;)V

    goto :goto_0
.end method

.method public synchronize()V
    .locals 3

    .prologue
    .line 145
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getWhispersyncClient()Lcom/amazon/ags/api/whispersync/WhispersyncClient;

    move-result-object v0

    .line 146
    .local v0, "wsClient":Lcom/amazon/ags/api/whispersync/WhispersyncClient;
    if-nez v0, :cond_0

    .line 147
    sget-object v1, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v2, "Whispersync client is null. Cannot synchronize. Please call initialize for AmazonGames."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/WhispersyncClient;->synchronize()V

    goto :goto_0
.end method

.method public unpackVersion1MultiFileGameData([BLjava/io/File;)V
    .locals 0
    .param p1, "gameData"    # [B
    .param p2, "overrideDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    return-void
.end method
