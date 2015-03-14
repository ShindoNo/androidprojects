.class public Lcom/gamehivecorp/ghplugin/GHActivity;
.super Landroid/app/Activity;
.source "GHActivity.java"


# static fields
.field private static final CAMERA_PIC_REQUEST:I = 0x2

.field private static final MAX_IMAGE_SIZE:I = 0x400

.field private static final PHOTO_ALMBUM_REQUEST:I = 0x1


# instance fields
.field private GHPluginManager:Ljava/lang/String;

.field private tempImagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const-string v0, "GHPluginManager"

    iput-object v0, p0, Lcom/gamehivecorp/ghplugin/GHActivity;->GHPluginManager:Ljava/lang/String;

    .line 17
    return-void
.end method

.method private checkImageSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x400

    const/high16 v7, 0x44800000

    .line 98
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 99
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 100
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 103
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 104
    .local v5, "width":I
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 107
    .local v0, "height":I
    if-gt v5, v8, :cond_0

    if-le v0, v8, :cond_1

    .line 109
    :cond_0
    const/high16 v3, 0x3f800000

    .line 110
    .local v3, "scaleTo":F
    if-le v5, v0, :cond_2

    .line 111
    int-to-float v6, v5

    div-float v3, v6, v7

    .line 116
    :goto_0
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 117
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 118
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 119
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 122
    .local v4, "scaledImage":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/gamehivecorp/ghplugin/GHActivity;->tempImagePath:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 123
    .local v2, "out":Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v4, v6, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :goto_1
    iget-object p1, p0, Lcom/gamehivecorp/ghplugin/GHActivity;->tempImagePath:Ljava/lang/String;

    .line 129
    .end local v3    # "scaleTo":F
    .end local v4    # "scaledImage":Landroid/graphics/Bitmap;
    :cond_1
    return-object p1

    .line 113
    .restart local v3    # "scaleTo":F
    :cond_2
    int-to-float v6, v0

    div-float v3, v6, v7

    goto :goto_0

    .line 124
    .restart local v4    # "scaledImage":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x2

    const/4 v11, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 50
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 52
    if-ne p1, v0, :cond_2

    if-ne p2, v4, :cond_2

    if-eqz p3, :cond_2

    .line 54
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 55
    .local v1, "selectedImage":Landroid/net/Uri;
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v11

    .line 57
    .local v2, "filePathColumn":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/gamehivecorp/ghplugin/GHActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 58
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 60
    aget-object v0, v2, v11

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 61
    .local v7, "columnIndex":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 62
    .local v10, "picturePath":Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 64
    invoke-direct {p0, v10}, Lcom/gamehivecorp/ghplugin/GHActivity;->checkImageSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 65
    new-instance v9, Ljava/io/File;

    iget-object v0, p0, Lcom/gamehivecorp/ghplugin/GHActivity;->tempImagePath:Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/gamehivecorp/ghplugin/GHActivity;->GHPluginManager:Ljava/lang/String;

    const-string v3, "photoChooserSucceeded"

    invoke-static {v0, v3, v10}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .end local v1    # "selectedImage":Landroid/net/Uri;
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v7    # "columnIndex":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "picturePath":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/gamehivecorp/ghplugin/GHActivity;->finish()V

    .line 93
    return-void

    .line 69
    .restart local v1    # "selectedImage":Landroid/net/Uri;
    .restart local v2    # "filePathColumn":[Ljava/lang/String;
    .restart local v7    # "columnIndex":I
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "picturePath":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/gamehivecorp/ghplugin/GHActivity;->GHPluginManager:Ljava/lang/String;

    const-string v3, "photoChooserFailed"

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v1    # "selectedImage":Landroid/net/Uri;
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v7    # "columnIndex":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "picturePath":Ljava/lang/String;
    :cond_2
    if-ne p1, v5, :cond_4

    if-ne p2, v4, :cond_4

    .line 74
    iget-object v0, p0, Lcom/gamehivecorp/ghplugin/GHActivity;->tempImagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 75
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/gamehivecorp/ghplugin/GHActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, ""

    const-string v4, ""

    invoke-static {v0, v6, v3, v4}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/gamehivecorp/ghplugin/GHActivity;->tempImagePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gamehivecorp/ghplugin/GHActivity;->checkImageSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 79
    .restart local v10    # "picturePath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .restart local v9    # "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/gamehivecorp/ghplugin/GHActivity;->GHPluginManager:Ljava/lang/String;

    const-string v3, "cameraPhotoSucceeded"

    invoke-static {v0, v3, v10}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/gamehivecorp/ghplugin/GHActivity;->GHPluginManager:Ljava/lang/String;

    const-string v3, "cameraPhotoFailed"

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "picturePath":Ljava/lang/String;
    :cond_4
    if-ne p1, v0, :cond_5

    .line 87
    iget-object v0, p0, Lcom/gamehivecorp/ghplugin/GHActivity;->GHPluginManager:Ljava/lang/String;

    const-string v3, "photoChooserFailed"

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_5
    if-ne p1, v5, :cond_0

    .line 89
    iget-object v0, p0, Lcom/gamehivecorp/ghplugin/GHActivity;->GHPluginManager:Ljava/lang/String;

    const-string v3, "cameraPhotoFailed"

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gamehivecorp/ghplugin/GHActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/customBoss.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/gamehivecorp/ghplugin/GHActivity;->tempImagePath:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Lcom/gamehivecorp/ghplugin/GHActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 32
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "action"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "message":Ljava/lang/String;
    const-string v4, "getAlbumPath"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 36
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 37
    .local v1, "i":Landroid/content/Intent;
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/gamehivecorp/ghplugin/GHActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 46
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string v4, "getCameraPhotoPath"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .restart local v1    # "i":Landroid/content/Intent;
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/gamehivecorp/ghplugin/GHActivity;->tempImagePath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "file":Ljava/io/File;
    const-string v4, "output"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    const/4 v4, 0x2

    invoke-virtual {p0, v1, v4}, Lcom/gamehivecorp/ghplugin/GHActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
