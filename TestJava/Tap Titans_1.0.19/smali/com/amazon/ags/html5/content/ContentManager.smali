.class public Lcom/amazon/ags/html5/content/ContentManager;
.super Ljava/lang/Object;
.source "ContentManager.java"

# interfaces
.implements Lcom/amazon/ags/html5/javascript/JavascriptRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ags/html5/content/ContentManager$4;,
        Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;,
        Lcom/amazon/ags/html5/content/ContentManager$UpgradeAction;
    }
.end annotation


# static fields
.field private static final AGS_BASE_DIRECTORY_NAME:Ljava/lang/String; = ".ags"

.field private static final ALERT_JAVASCRIPT_FILE:Ljava/lang/String; = "alert.html"

.field private static final BACKGROUND_JAVASCRIPT_FILE:Ljava/lang/String; = "background.html"

.field private static final BYTES_PER_KB:J = 0x400L

.field private static final BYTES_PER_MB:J = 0x100000L

.field private static final CONTENT_FILENAME:Ljava/lang/String; = "agscontent.zip"

.field private static final CURRENT_CONTENT_DIRECTORY_NAME:Ljava/lang/String; = "current"

.field private static final DEFAULT_CONTENT_DIRECTORY_NAME:Ljava/lang/String; = "raw"

.field private static final DEFAULT_CONTENT_FILENAME:Ljava/lang/String; = "amazon_gc_prototype.zip"

.field private static final DEFAULT_CONTENT_RESOURCE_NAME:Ljava/lang/String; = "amazon_gc_prototype"

.field private static final DOWNLOAD_DIR_NAME:Ljava/lang/String; = "download"

.field private static final IMAGE_DIRECTORY_NAME:Ljava/lang/String; = "images"

.field private static final KB_PER_MB:J = 0x400L

.field private static final MANIFEST_FILENAME:Ljava/lang/String; = "agsmanifest.txt"

.field private static final MANIFEST_VARIATION:Ljava/lang/String; = "ManifestSrc"

.field private static final MAX_ASYNCHRONOUS_DOWNLOAD_TIME_MS:J

.field private static final MAX_IMAGE_CACHE_SIZE_BYTES:J = 0xf00000L

.field private static final OVERLAY_JAVASCRIPT_FILE:Ljava/lang/String; = "overlay.html"

.field private static final PREVIOUS_CONTENT_DIRECTORY_NAME:Ljava/lang/String; = "previous"

.field private static final TAG:Ljava/lang/String;

.field private static final TEMP_DIR_NAME:Ljava/lang/String; = "tmp"

.field private static final TOAST_JAVASCRIPT_FILE:Ljava/lang/String; = "toast.html"

.field private static final UPGRADE_CONTENT_DIRECTORY_NAME:Ljava/lang/String; = "upgrade"

.field private static final VERSION_FILENAME:Ljava/lang/String; = "version.txt"


# instance fields
.field private final agsBaseDirectoryLocation:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private final currentContentBaseDirectoryLocation:Ljava/lang/String;

.field private final downloadContentBaseDirectoryLocation:Ljava/lang/String;

.field private final imageBaseDirectoryLocation:Ljava/lang/String;

.field private initializedContentVersion:Lcom/amazon/ags/html5/content/ContentVersion;

.field private networkUtil:Lcom/amazon/ags/html5/util/NetworkUtil;

.field private final previousContentBaseDirectoryLocation:Ljava/lang/String;

.field private final tempContentBaseDirectoryLocation:Ljava/lang/String;

.field private final upgradeContentBaseDirectoryLocation:Ljava/lang/String;

.field private final upgradesEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/html5/content/ContentManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/html5/content/ContentManager;->TAG:Ljava/lang/String;

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/ags/html5/content/ContentManager;->MAX_ASYNCHRONOUS_DOWNLOAD_TIME_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/ags/html5/content/ContentManager;->upgradesEnabled:Z

    .line 83
    iput-object p1, p0, Lcom/amazon/ags/html5/content/ContentManager;->context:Landroid/content/Context;

    .line 84
    new-instance v0, Lcom/amazon/ags/html5/util/NetworkUtil;

    invoke-direct {v0, p1}, Lcom/amazon/ags/html5/util/NetworkUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/ags/html5/content/ContentManager;->networkUtil:Lcom/amazon/ags/html5/util/NetworkUtil;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ags"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/html5/content/ContentManager;->agsBaseDirectoryLocation:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ags/html5/content/ContentManager;->agsBaseDirectoryLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "images"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/html5/content/ContentManager;->imageBaseDirectoryLocation:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ags/html5/content/ContentManager;->agsBaseDirectoryLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "current"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/html5/content/ContentManager;->currentContentBaseDirectoryLocation:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ags/html5/content/ContentManager;->agsBaseDirectoryLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "upgrade"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/html5/content/ContentManager;->upgradeContentBaseDirectoryLocation:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ags/html5/content/ContentManager;->agsBaseDirectoryLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "previous"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/html5/content/ContentManager;->previousContentBaseDirectoryLocation:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ags/html5/content/ContentManager;->agsBaseDirectoryLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/html5/content/ContentManager;->downloadContentBaseDirectoryLocation:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ags/html5/content/ContentManager;->agsBaseDirectoryLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/html5/content/ContentManager;->tempContentBaseDirectoryLocation:Ljava/lang/String;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ags/html5/content/ContentManager;Ljava/util/concurrent/ExecutorService;Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/ags/html5/content/ContentManager;
    .param p1, "x1"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "x2"    # Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/ags/html5/content/ContentManager;->fullContentInitialization(Ljava/util/concurrent/ExecutorService;Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/amazon/ags/html5/content/ContentManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/ags/html5/content/ContentManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/html5/content/ContentManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amazon/ags/html5/content/ContentManager;->currentContentBaseDirectoryLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/ags/html5/content/ContentManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/html5/content/ContentManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/ags/html5/content/ContentManager;->validateContentIntegrity(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/amazon/ags/html5/content/ContentManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/html5/content/ContentManager;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/amazon/ags/html5/content/ContentManager;->revertToDefaultContent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/amazon/ags/html5/content/ContentManager;ZLjava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/html5/content/ContentManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/html5/content/ContentManager;->downloadRemoteManifest(ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()J
    .locals 2

    .prologue
    .line 28
    sget-wide v0, Lcom/amazon/ags/html5/content/ContentManager;->MAX_ASYNCHRONOUS_DOWNLOAD_TIME_MS:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/amazon/ags/html5/content/ContentManager;ZLjava/lang/String;JLjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/html5/content/ContentManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .param p5, "x4"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct/range {p0 .. p5}, Lcom/amazon/ags/html5/content/ContentManager;->downloadRemoteContent(ZLjava/lang/String;JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized downloadRemoteContent(ZLjava/lang/String;JLjava/lang/String;)Z
    .locals 5
    .param p1, "clearDirectoryFirst"    # Z
    .param p2, "contentURL"    # Ljava/lang/String;
    .param p3, "timeoutMS"    # J
    .param p5, "targetChecksum"    # Ljava/lang/String;

    .prologue
    .line 357
    monitor-enter p0

    if-nez p5, :cond_0

    .line 358
    :try_start_0
    sget-object v3, Lcom/amazon/ags/html5/content/ContentManager;->TAG:Ljava/lang/String;

    const-string v4, "No checksum was provided"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    const/4 v0, 0x0

    .line 363
    .local v0, "downloadSuccessful":Z
    if-eqz p1, :cond_1

    .line 364
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/amazon/ags/html5/content/ContentManager;->downloadContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/amazon/ags/html5/content/FileUtils;->deleteDirectory(Ljava/io/File;)Z

    .line 365
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/amazon/ags/html5/content/ContentManager;->downloadContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/amazon/ags/html5/content/FileUtils;->ensureDirectoryExists(Ljava/io/File;)Z

    .line 368
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/ags/html5/content/ContentManager;->downloadContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "agscontent.zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "filePath":Ljava/lang/String;
    invoke-static {p2, v2, p3, p4}, Lcom/amazon/ags/html5/content/FileUtils;->downloadFile(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 370
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .local v1, "downloadedFile":Ljava/io/File;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p5, :cond_2

    invoke-static {v2}, Lcom/amazon/ags/html5/content/FileUtils;->getMD5ChecksumForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 373
    :cond_2
    const/4 v0, 0x1

    .line 377
    .end local v1    # "downloadedFile":Ljava/io/File;
    :cond_3
    if-nez v0, :cond_4

    .line 378
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/amazon/ags/html5/content/ContentManager;->downloadContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/amazon/ags/html5/content/FileUtils;->deleteDirectory(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :cond_4
    monitor-exit p0

    return v0

    .line 357
    .end local v0    # "downloadSuccessful":Z
    .end local v2    # "filePath":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private downloadRemoteManifest(ZLjava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p1, "clearDirectoryFirst"    # Z
    .param p2, "manifestEndpoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/html5/content/ContentManifestEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    if-eqz p1, :cond_0

    .line 342
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->downloadContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/ags/html5/content/FileUtils;->deleteDirectory(Ljava/io/File;)Z

    .line 343
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->downloadContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/ags/html5/content/FileUtils;->ensureDirectoryExists(Ljava/io/File;)Z

    .line 346
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 353
    :goto_0
    return-object v0

    .line 350
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->downloadContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "agsmanifest.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-static {p2, v1, v2, v3}, Lcom/amazon/ags/html5/content/FileUtils;->downloadFile(Ljava/lang/String;Ljava/lang/String;J)Z

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->downloadContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "agsmanifest.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/ags/html5/content/ContentManifestEntry;->createManifestEntriesFromFile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 353
    .local v0, "manifestEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/ags/html5/content/ContentManifestEntry;>;"
    goto :goto_0
.end method

.method private downloadedFileChecksumIsValid(Ljava/lang/String;)Z
    .locals 4
    .param p1, "targetChecksum"    # Ljava/lang/String;

    .prologue
    .line 282
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/ags/html5/content/ContentManager;->downloadContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "agscontent.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, "downloadedFile":Ljava/io/File;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_1

    .line 284
    :cond_0
    const/4 v2, 0x0

    .line 288
    :goto_0
    return v2

    .line 287
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/ags/html5/content/ContentManager;->downloadContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "agscontent.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/ags/html5/content/FileUtils;->getMD5ChecksumForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "fileChecksum":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private ensureBaseDirectoriesExist()Z
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x1

    .line 114
    .local v0, "directoriesExist":Z
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->agsBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/ags/html5/content/FileUtils;->ensureDirectoryExists(Ljava/io/File;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 115
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->imageBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/ags/html5/content/FileUtils;->ensureDirectoryExists(Ljava/io/File;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 116
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->currentContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/ags/html5/content/FileUtils;->ensureDirectoryExists(Ljava/io/File;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 117
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->upgradeContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/ags/html5/content/FileUtils;->ensureDirectoryExists(Ljava/io/File;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 118
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->downloadContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/ags/html5/content/FileUtils;->ensureDirectoryExists(Ljava/io/File;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 120
    return v0
.end method

.method private fullContentInitialization(Ljava/util/concurrent/ExecutorService;Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;Ljava/lang/String;)V
    .locals 9
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "callback"    # Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;
    .param p3, "manifestEndpoint"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/amazon/ags/html5/content/ContentManager;->ensureBaseDirectoriesExist()Z

    move-result v6

    if-nez v6, :cond_0

    .line 188
    sget-object v6, Lcom/amazon/ags/html5/content/ContentManager;->TAG:Ljava/lang/String;

    const-string v7, "Unable to setup AGS directory structure.  Content initialization aborted"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v6, p0, Lcom/amazon/ags/html5/content/ContentManager;->currentContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/amazon/ags/html5/content/ContentManager;->validateContentIntegrity(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 197
    invoke-direct {p0}, Lcom/amazon/ags/html5/content/ContentManager;->revertToDefaultContent()Z

    .line 200
    :cond_1
    iget-object v6, p0, Lcom/amazon/ags/html5/content/ContentManager;->context:Landroid/content/Context;

    const-string v7, "raw"

    const-string v8, "amazon_gc_prototype"

    invoke-static {v6, v7, v8}, Lcom/amazon/ags/html5/content/ContentVersion;->createVersionFromDefaultContentRawResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ags/html5/content/ContentVersion;

    move-result-object v2

    .line 201
    .local v2, "defaultContentVersion":Lcom/amazon/ags/html5/content/ContentVersion;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/amazon/ags/html5/content/ContentManager;->currentContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "version.txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/ags/html5/content/ContentVersion;->createVersionFromFile(Ljava/lang/String;)Lcom/amazon/ags/html5/content/ContentVersion;

    move-result-object v1

    .line 202
    .local v1, "currentContentVersion":Lcom/amazon/ags/html5/content/ContentVersion;
    invoke-direct {p0}, Lcom/amazon/ags/html5/content/ContentManager;->localUpgradeContentVersion()Lcom/amazon/ags/html5/content/ContentVersion;

    move-result-object v5

    .line 204
    .local v5, "upgradeContentVersion":Lcom/amazon/ags/html5/content/ContentVersion;
    if-eqz v1, :cond_2

    .line 205
    sget-object v6, Lcom/amazon/ags/html5/content/ContentManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current JavaScript content version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_2
    if-eqz v2, :cond_3

    .line 208
    sget-object v6, Lcom/amazon/ags/html5/content/ContentManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Default JavaScript content version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_3
    if-eqz v5, :cond_4

    .line 211
    sget-object v6, Lcom/amazon/ags/html5/content/ContentManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upgrade JavaScript content version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_4
    sget-object v4, Lcom/amazon/ags/html5/content/ContentManager$UpgradeAction;->NO_UPGRADE:Lcom/amazon/ags/html5/content/ContentManager$UpgradeAction;

    .line 216
    .local v4, "upgradeAction":Lcom/amazon/ags/html5/content/ContentManager$UpgradeAction;
    invoke-virtual {v2, v1}, Lcom/amazon/ags/html5/content/ContentVersion;->compareTo(Lcom/amazon/ags/html5/content/ContentVersion;)I

    move-result v6

    if-lez v6, :cond_5

    .line 217
    sget-object v4, Lcom/amazon/ags/html5/content/ContentManager$UpgradeAction;->DEFAULT_UPGRADE_ACTION:Lcom/amazon/ags/html5/content/ContentManager$UpgradeAction;

    .line 220
    :cond_5
    invoke-virtual {v5, v2}, Lcom/amazon/ags/html5/content/ContentVersion;->compareTo(Lcom/amazon/ags/html5/content/ContentVersion;)I

    move-result v6

    if-lez v6, :cond_6

    invoke-virtual {v5, v1}, Lcom/amazon/ags/html5/content/ContentVersion;->compareTo(Lcom/amazon/ags/html5/content/ContentVersion;)I

    move-result v6

    if-lez v6, :cond_6

    .line 221
    sget-object v4, Lcom/amazon/ags/html5/content/ContentManager$UpgradeAction;->LOCAL_UPGRADE_ACTION:Lcom/amazon/ags/html5/content/ContentManager$UpgradeAction;

    .line 224
    :cond_6
    sget-object v6, Lcom/amazon/ags/html5/content/ContentManager$UpgradeAction;->DEFAULT_UPGRADE_ACTION:Lcom/amazon/ags/html5/content/ContentManager$UpgradeAction;

    if-eq v4, v6, :cond_7

    sget-object v6, Lcom/amazon/ags/html5/content/ContentManager$UpgradeAction;->NO_UPGRADE:Lcom/amazon/ags/html5/content/ContentManager$UpgradeAction;

    if-ne v4, v6, :cond_8

    .line 225
    :cond_7
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/amazon/ags/html5/content/ContentManager;->upgradeContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/amazon/ags/html5/content/FileUtils;->deleteDirectory(Ljava/io/File;)Z

    .line 226
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/amazon/ags/html5/content/ContentManager;->downloadContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/amazon/ags/html5/content/FileUtils;->deleteDirectory(Ljava/io/File;)Z

    .line 229
    :cond_8
    invoke-direct {p0, v4}, Lcom/amazon/ags/html5/content/ContentManager;->updateContent(Lcom/amazon/ags/html5/content/ContentManager$UpgradeAction;)Z

    .line 232
    sget-object v6, Lcom/amazon/ags/html5/content/ContentManager$UpgradeAction;->NO_UPGRADE:Lcom/amazon/ags/html5/content/ContentManager$UpgradeAction;

    if-ne v4, v6, :cond_a

    .line 233
    move-object v3, v1

    .line 238
    .local v3, "postUpgradeCurrentContentVersion":Lcom/amazon/ags/html5/content/ContentVersion;
    :goto_1
    iget-object v6, p0, Lcom/amazon/ags/html5/content/ContentManager;->networkUtil:Lcom/amazon/ags/html5/util/NetworkUtil;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/amazon/ags/html5/content/ContentManager;->networkUtil:Lcom/amazon/ags/html5/util/NetworkUtil;

    invoke-virtual {v6}, Lcom/amazon/ags/html5/util/NetworkUtil;->isNetworkConnected()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 240
    new-instance v6, Lcom/amazon/ags/html5/content/ContentManager$2;

    invoke-direct {v6, p0, p3, v3}, Lcom/amazon/ags/html5/content/ContentManager$2;-><init>(Lcom/amazon/ags/html5/content/ContentManager;Ljava/lang/String;Lcom/amazon/ags/html5/content/ContentVersion;)V

    invoke-interface {p1, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 266
    :cond_9
    iget-object v6, p0, Lcom/amazon/ags/html5/content/ContentManager;->currentContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/amazon/ags/html5/content/ContentManager;->validateContentIntegrity(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 267
    const/4 v0, 0x1

    .line 273
    .local v0, "contentIsReady":Z
    :goto_2
    if-eqz v0, :cond_c

    .line 274
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/amazon/ags/html5/content/ContentManager;->currentContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "version.txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/ags/html5/content/ContentVersion;->createVersionFromFile(Ljava/lang/String;)Lcom/amazon/ags/html5/content/ContentVersion;

    move-result-object v6

    iput-object v6, p0, Lcom/amazon/ags/html5/content/ContentManager;->initializedContentVersion:Lcom/amazon/ags/html5/content/ContentVersion;

    .line 275
    invoke-interface {p2}, Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;->onInitialized()V

    goto/16 :goto_0

    .line 235
    .end local v0    # "contentIsReady":Z
    .end local v3    # "postUpgradeCurrentContentVersion":Lcom/amazon/ags/html5/content/ContentVersion;
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/amazon/ags/html5/content/ContentManager;->currentContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "version.txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/ags/html5/content/ContentVersion;->createVersionFromFile(Ljava/lang/String;)Lcom/amazon/ags/html5/content/ContentVersion;

    move-result-object v3

    .restart local v3    # "postUpgradeCurrentContentVersion":Lcom/amazon/ags/html5/content/ContentVersion;
    goto :goto_1

    .line 270
    :cond_b
    invoke-direct {p0}, Lcom/amazon/ags/html5/content/ContentManager;->revertToDefaultContent()Z

    move-result v0

    .restart local v0    # "contentIsReady":Z
    goto :goto_2

    .line 277
    :cond_c
    invoke-interface {p2}, Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;->onFailure()V

    goto/16 :goto_0
.end method

.method private loadManagedContentFileIntoWebview(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 442
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/ags/html5/content/ContentManager;->getContentDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 443
    .local v0, "javascriptFile":Ljava/io/File;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/amazon/ags/html5/content/ContentManager$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/ags/html5/content/ContentManager$3;-><init>(Lcom/amazon/ags/html5/content/ContentManager;Landroid/webkit/WebView;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 448
    return-void
.end method

.method private localUpgradeContentVersion()Lcom/amazon/ags/html5/content/ContentVersion;
    .locals 4

    .prologue
    .line 386
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/ags/html5/content/ContentManager;->downloadContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "agscontent.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 387
    .local v1, "upgradeZip":Ljava/util/zip/ZipFile;
    invoke-static {v1}, Lcom/amazon/ags/html5/content/ContentVersion;->createVersionFromZip(Ljava/util/zip/ZipFile;)Lcom/amazon/ags/html5/content/ContentVersion;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 393
    .end local v1    # "upgradeZip":Ljava/util/zip/ZipFile;
    :goto_0
    return-object v2

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/amazon/ags/html5/content/ContentManager;->TAG:Ljava/lang/String;

    const-string v3, "Upgrade zip does not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-static {}, Lcom/amazon/ags/html5/content/ContentVersion;->getBlankContentVersion()Lcom/amazon/ags/html5/content/ContentVersion;

    move-result-object v2

    goto :goto_0

    .line 390
    :catch_1
    move-exception v0

    .line 391
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/amazon/ags/html5/content/ContentManager;->TAG:Ljava/lang/String;

    const-string v3, "Error in reading content version from upgrade candidate."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private revertToDefaultContent()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 124
    const/4 v1, 0x1

    .line 126
    .local v1, "reversionSuccessful":Z
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/amazon/ags/html5/content/ContentManager;->currentContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "currentContentDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/amazon/ags/html5/content/ContentManager;->currentContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/amazon/ags/html5/content/FileUtils;->deleteDirectory(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v2

    .line 132
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/amazon/ags/html5/content/ContentManager;->currentContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/amazon/ags/html5/content/FileUtils;->ensureDirectoryExists(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/amazon/ags/html5/content/ContentManager;->context:Landroid/content/Context;

    const-string v4, "amazon_gc_prototype"

    const-string v5, "amazon_gc_prototype.zip"

    iget-object v6, p0, Lcom/amazon/ags/html5/content/ContentManager;->tempContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/amazon/ags/html5/content/FileUtils;->copyResourceContentIntoDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 136
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/amazon/ags/html5/content/ContentManager;->tempContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/amazon/ags/html5/content/FileUtils;->deleteDirectory(Ljava/io/File;)Z

    goto :goto_0

    .line 139
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/ags/html5/content/ContentManager;->tempContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "amazon_gc_prototype.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/ags/html5/content/ContentManager;->currentContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ags/html5/content/FileUtils;->extractZipToDirectory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 140
    const/4 v1, 0x0

    .line 142
    :cond_3
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/amazon/ags/html5/content/ContentManager;->tempContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/amazon/ags/html5/content/FileUtils;->deleteDirectory(Ljava/io/File;)Z

    move v2, v1

    .line 144
    goto :goto_0
.end method

.method private trimImageCache(J)V
    .locals 5
    .param p1, "sizeLimit"    # J

    .prologue
    .line 148
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/amazon/ags/html5/content/ContentManager;->imageBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v2, "imageDirectory":Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    invoke-static {v2}, Lcom/amazon/ags/html5/content/FileUtils;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v0

    .line 153
    .local v0, "dirSize":J
    cmp-long v3, v0, p1

    if-ltz v3, :cond_0

    .line 154
    invoke-static {v2}, Lcom/amazon/ags/html5/content/FileUtils;->deleteDirectory(Ljava/io/File;)Z

    .line 155
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/amazon/ags/html5/content/ContentManager;->imageBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/amazon/ags/html5/content/FileUtils;->ensureDirectoryExists(Ljava/io/File;)Z

    .line 158
    .end local v0    # "dirSize":J
    :cond_0
    return-void
.end method

.method private updateContent(Lcom/amazon/ags/html5/content/ContentManager$UpgradeAction;)Z
    .locals 2
    .param p1, "upgradeAction"    # Lcom/amazon/ags/html5/content/ContentManager$UpgradeAction;

    .prologue
    .line 292
    sget-object v0, Lcom/amazon/ags/html5/content/ContentManager$4;->$SwitchMap$com$amazon$ags$html5$content$ContentManager$UpgradeAction:[I

    invoke-virtual {p1}, Lcom/amazon/ags/html5/content/ContentManager$UpgradeAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 300
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 294
    :pswitch_0
    invoke-direct {p0}, Lcom/amazon/ags/html5/content/ContentManager;->revertToDefaultContent()Z

    move-result v0

    goto :goto_0

    .line 296
    :pswitch_1
    invoke-direct {p0}, Lcom/amazon/ags/html5/content/ContentManager;->updateContentFromLocalUpgrade()Z

    move-result v0

    goto :goto_0

    .line 298
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateContentFromLocalUpgrade()Z
    .locals 3

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 308
    .local v0, "updateSuccess":Z
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->currentContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/ags/html5/content/FileUtils;->ensureDirectoryExists(Ljava/io/File;)Z

    .line 309
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->upgradeContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/ags/html5/content/FileUtils;->ensureDirectoryExists(Ljava/io/File;)Z

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->downloadContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "agscontent.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->upgradeContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/ags/html5/content/FileUtils;->extractZipToDirectory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/amazon/ags/html5/content/ContentManager;->upgradeContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/amazon/ags/html5/content/ContentManager;->validateContentIntegrity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/amazon/ags/html5/content/ContentManager;->currentContentBaseDirectoryLocation:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->previousContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/ags/html5/content/FileUtils;->renameDirectory(Ljava/lang/String;Ljava/lang/String;)Z

    .line 316
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->currentContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/ags/html5/content/FileUtils;->deleteDirectory(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/amazon/ags/html5/content/ContentManager;->upgradeContentBaseDirectoryLocation:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->currentContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/ags/html5/content/FileUtils;->renameDirectory(Ljava/lang/String;Ljava/lang/String;)Z

    .line 320
    iget-object v1, p0, Lcom/amazon/ags/html5/content/ContentManager;->currentContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/amazon/ags/html5/content/ContentManager;->validateContentIntegrity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->previousContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/ags/html5/content/FileUtils;->deleteDirectory(Ljava/io/File;)Z

    .line 323
    const/4 v0, 0x1

    .line 335
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->upgradeContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/ags/html5/content/FileUtils;->deleteDirectory(Ljava/io/File;)Z

    .line 336
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->downloadContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/ags/html5/content/FileUtils;->deleteDirectory(Ljava/io/File;)Z

    .line 337
    return v0

    .line 325
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->currentContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/ags/html5/content/FileUtils;->deleteDirectory(Ljava/io/File;)Z

    .line 326
    iget-object v1, p0, Lcom/amazon/ags/html5/content/ContentManager;->previousContentBaseDirectoryLocation:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->currentContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/ags/html5/content/FileUtils;->renameDirectory(Ljava/lang/String;Ljava/lang/String;)Z

    .line 327
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->previousContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/ags/html5/content/FileUtils;->deleteDirectory(Ljava/io/File;)Z

    .line 328
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager;->upgradeContentBaseDirectoryLocation:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/ags/html5/content/FileUtils;->deleteDirectory(Ljava/io/File;)Z

    goto :goto_0
.end method

.method private validateContentIntegrity(Ljava/lang/String;)Z
    .locals 7
    .param p1, "directoryLocation"    # Ljava/lang/String;

    .prologue
    .line 397
    const/4 v1, 0x1

    .line 399
    .local v1, "integritySatisifactory":Z
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "background.html"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    .local v0, "backgroundIndex":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "overlay.html"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    .local v2, "overlayIndex":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "toast.html"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .local v3, "toastIndex":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "version.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 404
    .local v4, "versionFile":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_1

    .line 405
    :cond_0
    const/4 v1, 0x0

    .line 408
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_3

    .line 409
    :cond_2
    const/4 v1, 0x0

    .line 412
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_5

    .line 413
    :cond_4
    const/4 v1, 0x0

    .line 416
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_7

    .line 417
    :cond_6
    const/4 v1, 0x0

    .line 420
    :cond_7
    return v1
.end method


# virtual methods
.method public getContentDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazon/ags/html5/content/ContentManager;->currentContentBaseDirectoryLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getImageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amazon/ags/html5/content/ContentManager;->imageBaseDirectoryLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getInitializedContentVersion()Lcom/amazon/ags/html5/content/ContentVersion;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/amazon/ags/html5/content/ContentManager;->initializedContentVersion:Lcom/amazon/ags/html5/content/ContentVersion;

    return-object v0
.end method

.method public declared-synchronized initializeContent(Ljava/util/concurrent/ExecutorService;Lcom/amazon/ags/html5/content/GCVariationManager;Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;)V
    .locals 2
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "variationManager"    # Lcom/amazon/ags/html5/content/GCVariationManager;
    .param p3, "callback"    # Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;

    .prologue
    .line 161
    monitor-enter p0

    const-wide/32 v0, 0xf00000

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/amazon/ags/html5/content/ContentManager;->trimImageCache(J)V

    .line 163
    iget-object v0, p0, Lcom/amazon/ags/html5/content/ContentManager;->context:Landroid/content/Context;

    new-instance v1, Lcom/amazon/ags/html5/content/ContentManager$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/amazon/ags/html5/content/ContentManager$1;-><init>(Lcom/amazon/ags/html5/content/ContentManager;Lcom/amazon/ags/html5/content/GCVariationManager;Ljava/util/concurrent/ExecutorService;Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;)V

    invoke-virtual {p2, v0, v1}, Lcom/amazon/ags/html5/content/GCVariationManager;->refreshVariations(Landroid/content/Context;Lcom/amazon/ags/html5/content/GCVariationManager$GCVariationManagerRefreshCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadAlertJavascript(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 430
    const-string v0, "alert.html"

    invoke-direct {p0, p1, v0}, Lcom/amazon/ags/html5/content/ContentManager;->loadManagedContentFileIntoWebview(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public loadBackgroundJavascript(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 426
    const-string v0, "background.html"

    invoke-direct {p0, p1, v0}, Lcom/amazon/ags/html5/content/ContentManager;->loadManagedContentFileIntoWebview(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public loadOverlayJavascript(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 434
    const-string v0, "overlay.html"

    invoke-direct {p0, p1, v0}, Lcom/amazon/ags/html5/content/ContentManager;->loadManagedContentFileIntoWebview(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public loadToastJavascript(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 438
    const-string v0, "toast.html"

    invoke-direct {p0, p1, v0}, Lcom/amazon/ags/html5/content/ContentManager;->loadManagedContentFileIntoWebview(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/amazon/ags/html5/content/ContentManager;->context:Landroid/content/Context;

    .line 96
    iput-object v0, p0, Lcom/amazon/ags/html5/content/ContentManager;->networkUtil:Lcom/amazon/ags/html5/util/NetworkUtil;

    .line 97
    return-void
.end method
