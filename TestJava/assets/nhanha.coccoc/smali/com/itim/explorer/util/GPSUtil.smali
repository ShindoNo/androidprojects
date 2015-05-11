.class public Lcom/itim/explorer/util/GPSUtil;
.super Ljava/lang/Object;
.source "GPSUtil.java"


# instance fields
.field Latitude:Ljava/lang/Float;

.field Longitude:Ljava/lang/Float;

.field private valid:Z


# direct methods
.method public constructor <init>(Landroid/media/ExifInterface;)V
    .locals 6
    .param p1, "exif"    # Landroid/media/ExifInterface;

    .prologue
    const/4 v5, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/itim/explorer/util/GPSUtil;->valid:Z

    .line 10
    const-string v4, "GPSLatitude"

    invoke-virtual {p1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    .local v0, "attrLATITUDE":Ljava/lang/String;
    const-string v4, "GPSLatitudeRef"

    invoke-virtual {p1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    .local v1, "attrLATITUDE_REF":Ljava/lang/String;
    const-string v4, "GPSLongitude"

    invoke-virtual {p1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    .local v2, "attrLONGITUDE":Ljava/lang/String;
    const-string v4, "GPSLongitudeRef"

    invoke-virtual {p1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 18
    .local v3, "attrLONGITUDE_REF":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 20
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/itim/explorer/util/GPSUtil;->valid:Z

    .line 22
    const-string v4, "N"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 23
    invoke-direct {p0, v0}, Lcom/itim/explorer/util/GPSUtil;->convertToDegree(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lcom/itim/explorer/util/GPSUtil;->Latitude:Ljava/lang/Float;

    .line 28
    :goto_0
    const-string v4, "E"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 29
    invoke-direct {p0, v2}, Lcom/itim/explorer/util/GPSUtil;->convertToDegree(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lcom/itim/explorer/util/GPSUtil;->Longitude:Ljava/lang/Float;

    .line 35
    :cond_0
    :goto_1
    return-void

    .line 25
    :cond_1
    invoke-direct {p0, v0}, Lcom/itim/explorer/util/GPSUtil;->convertToDegree(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float v4, v5, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lcom/itim/explorer/util/GPSUtil;->Latitude:Ljava/lang/Float;

    goto :goto_0

    .line 31
    :cond_2
    invoke-direct {p0, v2}, Lcom/itim/explorer/util/GPSUtil;->convertToDegree(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float v4, v5, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lcom/itim/explorer/util/GPSUtil;->Longitude:Ljava/lang/Float;

    goto :goto_1
.end method

.method private convertToDegree(Ljava/lang/String;)Ljava/lang/Float;
    .locals 23
    .param p1, "stringDMS"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v13, 0x0

    .line 39
    .local v13, "result":Ljava/lang/Float;
    const-string v17, ","

    const/16 v18, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 41
    .local v5, "DMS":[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v5, v17

    const-string v18, "/"

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 42
    .local v14, "stringD":[Ljava/lang/String;
    new-instance v3, Ljava/lang/Double;

    const/16 v17, 0x0

    aget-object v17, v14, v17

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 43
    .local v3, "D0":Ljava/lang/Double;
    new-instance v4, Ljava/lang/Double;

    const/16 v17, 0x1

    aget-object v17, v14, v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 44
    .local v4, "D1":Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    div-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 46
    .local v6, "FloatD":Ljava/lang/Double;
    const/16 v17, 0x1

    aget-object v17, v5, v17

    const-string v18, "/"

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v15

    .line 47
    .local v15, "stringM":[Ljava/lang/String;
    new-instance v9, Ljava/lang/Double;

    const/16 v17, 0x0

    aget-object v17, v15, v17

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 48
    .local v9, "M0":Ljava/lang/Double;
    new-instance v10, Ljava/lang/Double;

    const/16 v17, 0x1

    aget-object v17, v15, v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 49
    .local v10, "M1":Ljava/lang/Double;
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    div-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 51
    .local v7, "FloatM":Ljava/lang/Double;
    const/16 v17, 0x2

    aget-object v17, v5, v17

    const-string v18, "/"

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v16

    .line 52
    .local v16, "stringS":[Ljava/lang/String;
    new-instance v11, Ljava/lang/Double;

    const/16 v17, 0x0

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 53
    .local v11, "S0":Ljava/lang/Double;
    new-instance v12, Ljava/lang/Double;

    const/16 v17, 0x1

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 54
    .local v12, "S1":Ljava/lang/Double;
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    div-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 56
    .local v8, "FloatS":Ljava/lang/Double;
    new-instance v13, Ljava/lang/Float;

    .end local v13    # "result":Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    const-wide/high16 v21, 0x404e000000000000L

    div-double v19, v19, v21

    add-double v17, v17, v19

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    const-wide v21, 0x40ac200000000000L

    div-double v19, v19, v21

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    invoke-direct {v13, v0, v1}, Ljava/lang/Float;-><init>(D)V

    .line 58
    .restart local v13    # "result":Ljava/lang/Float;
    return-object v13
.end method


# virtual methods
.method public getLatitude()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/itim/explorer/util/GPSUtil;->Latitude:Ljava/lang/Float;

    return-object v0
.end method

.method public getLatitudeE6()I
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/itim/explorer/util/GPSUtil;->Latitude:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v1, 0x49742400

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getLongitude()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/itim/explorer/util/GPSUtil;->Longitude:Ljava/lang/Float;

    return-object v0
.end method

.method public getLongitudeE6()I
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/itim/explorer/util/GPSUtil;->Longitude:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v1, 0x49742400

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/itim/explorer/util/GPSUtil;->valid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itim/explorer/util/GPSUtil;->Latitude:Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/util/GPSUtil;->Longitude:Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
