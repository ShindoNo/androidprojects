.class public final Lcom/flurry/sdk/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/flurry/sdk/cb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/flurry/sdk/cb;->c()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/cb;->b:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x7

    return v0
.end method

.method public static a(Landroid/app/Activity;II)I
    .locals 2

    .prologue
    .line 178
    const/4 v1, -0x1

    .line 179
    if-nez p0, :cond_0

    .line 188
    :goto_0
    return v1

    .line 183
    :cond_0
    sget-object v0, Lcom/flurry/sdk/cb;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 184
    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    :goto_1
    move v1, v0

    .line 188
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;)I
    .locals 2

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    sget-object v1, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;->a:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    invoke-virtual {v1, p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    const/4 v0, 0x1

    .line 200
    :cond_0
    :goto_0
    const/4 v1, -0x1

    invoke-static {p0, v1, v0}, Lcom/flurry/sdk/cb;->a(Landroid/app/Activity;II)I

    move-result v0

    return v0

    .line 196
    :cond_1
    sget-object v1, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;->b:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    invoke-virtual {v1, p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static a(Landroid/content/pm/ActivityInfo;)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 147
    if-nez p0, :cond_1

    .line 148
    const/4 v0, 0x0

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 152
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    .line 153
    or-int/lit16 v0, v0, 0xc00

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Landroid/content/pm/ActivityInfo;
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 123
    if-nez p0, :cond_0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/cb;->a(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 5

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 107
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-object v0

    .line 112
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find info for activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 3

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 40
    sget-object v0, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    const-string v1, "Context is null. Cannot set requested orientation."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-static {p0}, Lcom/flurry/sdk/cb;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    sget-object v0, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    const-string v1, "setRequestedOrientation SCREEN_ORIENTATION_SENSOR"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 48
    :cond_1
    sget-object v0, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRequestedOrientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;IZ)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 72
    if-nez p0, :cond_1

    move v1, v2

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    invoke-static {p0}, Lcom/flurry/sdk/cb;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 80
    if-nez v0, :cond_3

    .line 82
    invoke-static {p0, p1}, Lcom/flurry/sdk/cb;->b(Landroid/app/Activity;I)I

    move-result v0

    .line 84
    if-ne v3, v0, :cond_2

    .line 85
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot set requested orientation without restarting activity, requestedOrientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot set requested orientation without restarting activity. It is recommended to add keyboardHidden|orientation|screenSize for android:configChanges attribute for activity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 91
    goto :goto_0

    :cond_2
    move p1, v0

    move p2, v1

    .line 95
    :cond_3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 96
    if-nez p2, :cond_0

    .line 97
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 33
    :goto_0
    sget-object v1, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTablet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return v0

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x6

    return v0
.end method

.method public static b(Landroid/app/Activity;I)I
    .locals 1

    .prologue
    .line 162
    if-nez p0, :cond_0

    .line 163
    const/4 v0, -0x1

    .line 166
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p0, p1, v0}, Lcom/flurry/sdk/cb;->a(Landroid/app/Activity;II)I

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-static {p0}, Lcom/flurry/sdk/cb;->a(Landroid/app/Activity;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 132
    invoke-static {v1}, Lcom/flurry/sdk/cb;->a(Landroid/content/pm/ActivityInfo;)I

    move-result v1

    .line 134
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    .line 142
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 206
    const/4 v1, 0x1

    invoke-static {}, Lcom/flurry/sdk/cb;->d()Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    const/4 v1, 0x2

    invoke-static {}, Lcom/flurry/sdk/cb;->e()Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    return-object v0
.end method

.method private static d()Landroid/util/SparseIntArray;
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x7

    .line 212
    invoke-static {}, Lcom/flurry/sdk/cb;->a()I

    move-result v0

    .line 214
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 215
    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 216
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 217
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 218
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 220
    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 221
    invoke-virtual {v1, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 222
    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 224
    invoke-virtual {v1, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 226
    const/16 v0, 0xa

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 228
    return-object v1
.end method

.method private static e()Landroid/util/SparseIntArray;
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 232
    invoke-static {}, Lcom/flurry/sdk/cb;->b()I

    move-result v0

    .line 234
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 235
    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 236
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 237
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 238
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 240
    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 242
    invoke-virtual {v1, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 243
    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 245
    invoke-virtual {v1, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 247
    const/16 v0, 0xa

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 249
    return-object v1
.end method
