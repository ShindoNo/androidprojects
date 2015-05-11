.class public Lcom/itim/explorer/io/VolleySingleton;
.super Ljava/lang/Object;
.source "VolleySingleton.java"


# static fields
.field private static mInstance:Lcom/itim/explorer/io/VolleySingleton;


# instance fields
.field private mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/itim/explorer/io/VolleySingleton;->mInstance:Lcom/itim/explorer/io/VolleySingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/itim/explorer/NhaNhaApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/io/VolleySingleton;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 18
    new-instance v0, Lcom/android/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/itim/explorer/io/VolleySingleton;->mRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/itim/explorer/io/VolleySingleton$1;

    invoke-direct {v2, p0}, Lcom/itim/explorer/io/VolleySingleton$1;-><init>(Lcom/itim/explorer/io/VolleySingleton;)V

    invoke-direct {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    iput-object v0, p0, Lcom/itim/explorer/io/VolleySingleton;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/itim/explorer/io/VolleySingleton;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/itim/explorer/io/VolleySingleton;->mInstance:Lcom/itim/explorer/io/VolleySingleton;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/itim/explorer/io/VolleySingleton;

    invoke-direct {v0}, Lcom/itim/explorer/io/VolleySingleton;-><init>()V

    sput-object v0, Lcom/itim/explorer/io/VolleySingleton;->mInstance:Lcom/itim/explorer/io/VolleySingleton;

    .line 33
    :cond_0
    sget-object v0, Lcom/itim/explorer/io/VolleySingleton;->mInstance:Lcom/itim/explorer/io/VolleySingleton;

    return-object v0
.end method


# virtual methods
.method public getImageLoader()Lcom/android/volley/toolbox/ImageLoader;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/itim/explorer/io/VolleySingleton;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    return-object v0
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/itim/explorer/io/VolleySingleton;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method
