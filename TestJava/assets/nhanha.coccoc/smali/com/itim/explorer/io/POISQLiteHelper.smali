.class public Lcom/itim/explorer/io/POISQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "POISQLiteHelper.java"


# static fields
.field public static final COLUMN_ADDRESS:Ljava/lang/String; = "address"

.field public static final COLUMN_ADS_CATEGORY:Ljava/lang/String; = "ads_category"

.field public static final COLUMN_ADS_CATEGORY_NAME:Ljava/lang/String; = "ads_category_name"

.field public static final COLUMN_BOOKMARK_ID:Ljava/lang/String; = "poi_id"

.field public static final COLUMN_BUILDING:Ljava/lang/String; = "building"

.field public static final COLUMN_CITY_BODER:Ljava/lang/String; = "city_borders"

.field public static final COLUMN_CLICK_URL:Ljava/lang/String; = "click_url"

.field public static final COLUMN_DESC:Ljava/lang/String; = "description"

.field public static final COLUMN_EMAIL:Ljava/lang/String; = "email"

.field public static final COLUMN_FEATURED_STATUS:Ljava/lang/String; = "featured_status"

.field public static final COLUMN_FE_CATEGORY:Ljava/lang/String; = "fe_category"

.field public static final COLUMN_FE_CATEGORY_NAME_EN:Ljava/lang/String; = "fe_category_name_en"

.field public static final COLUMN_FE_CATEGORY_NAME_VN:Ljava/lang/String; = "fe_category_name_vn"

.field public static final COLUMN_FLOOR:Ljava/lang/String; = "floor"

.field public static final COLUMN_FRAME_START:Ljava/lang/String; = "frame_start"

.field public static final COLUMN_GPS_LAT:Ljava/lang/String; = "gps_lat"

.field public static final COLUMN_GPS_LONG:Ljava/lang/String; = "gps_long"

.field public static final COLUMN_GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final COLUMN_HASH:Ljava/lang/String; = "hash"

.field public static final COLUMN_HISTORY_ID:Ljava/lang/String; = "poi_id"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_IMG:Ljava/lang/String; = "img"

.field public static final COLUMN_PHONE:Ljava/lang/String; = "phone"

.field public static final COLUMN_PROMOTE_TEXT:Ljava/lang/String; = "promote_text"

.field public static final COLUMN_RANK:Ljava/lang/String; = "rank"

.field public static final COLUMN_RATING:Ljava/lang/String; = "rating"

.field public static final COLUMN_REGION_ID:Ljava/lang/String; = "region_id"

.field public static final COLUMN_REGION_NAMES_FULL:Ljava/lang/String; = "region_names_full"

.field public static final COLUMN_REGION_NAMES_SHORT:Ljava/lang/String; = "region_names_short"

.field public static final COLUMN_ROOM:Ljava/lang/String; = "room"

.field public static final COLUMN_SCENE_ID:Ljava/lang/String; = "scene_id"

.field public static final COLUMN_SCORE:Ljava/lang/String; = "score"

.field public static final COLUMN_SEARCH_QUERY:Ljava/lang/String; = "query"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_URL:Ljava/lang/String; = "url"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final SQL_CREATE_TABLE:Ljava/lang/String; = "create table POIS(_id integer primary key, address text, ads_category integer , ads_category_name text not null, building text, city_borders text not null, click_url text, description text, email text, fe_category integer, fe_category_name_en text not null, fe_category_name_vn text not null, featured_status integer, floor text, frame_start integer, gps_long integer not null, gps_lat integer not null, group_id integer, hash text not null, img text not null, phone text, promote_text text, rank integer, rating real, region_id integer, region_names_full text, region_names_short text, room text, scene_id integer, score real, title text not null, url text);"

.field private static final SQL_CREATE_TABLE_BOOKMARK:Ljava/lang/String; = "create table BOOKMARK(_id integer primary key autoincrement, poi_id integer);"

.field private static final SQL_CREATE_TABLE_HISTORY:Ljava/lang/String; = "create table HISTORY(_id integer primary key autoincrement, poi_id integer);"

.field private static final SQL_CREATE_TABLE_SEARCH_QUERY:Ljava/lang/String; = "create table SEARCH_QUERY(_id integer primary key autoincrement, query text not null);"

.field public static final TABLE_BOOKMARK:Ljava/lang/String; = "BOOKMARK"

.field public static final TABLE_HISTORY:Ljava/lang/String; = "HISTORY"

.field public static final TABLE_POI:Ljava/lang/String; = "POIS"

.field public static final TABLE_SEARCH_QUERY:Ljava/lang/String; = "SEARCH_QUERY"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const-string v0, "explorer.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 99
    return-void
.end method

.method public static cursorToPOIs(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "coolumnPOIId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v6, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    if-eqz p0, :cond_1

    .line 124
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 125
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 126
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_0

    .line 128
    new-instance v5, Lcom/itim/explorer/io/model/POI;

    invoke-direct {v5}, Lcom/itim/explorer/io/model/POI;-><init>()V

    .line 129
    .local v5, "poi":Lcom/itim/explorer/io/model/POI;
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setId(I)V

    .line 130
    const-string v9, "address"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setAddress(Ljava/lang/String;)V

    .line 132
    const-string v9, "ads_category"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setAds_category(I)V

    .line 134
    const-string v9, "ads_category_name"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setAds_category_name(Ljava/lang/String;)V

    .line 136
    const-string v9, "building"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setBuilding(Ljava/lang/String;)V

    .line 138
    const-string v9, "city_borders"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setCity_borders(Ljava/lang/String;)V

    .line 140
    const-string v9, "click_url"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setClick_url(Ljava/lang/String;)V

    .line 142
    const-string v9, "description"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setDescription(Ljava/lang/String;)V

    .line 144
    const-string v9, "email"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setEmail(Ljava/lang/String;)V

    .line 146
    const-string v9, "fe_category"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setFe_category(I)V

    .line 148
    const-string v9, "fe_category_name_en"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setFe_category_name_en(Ljava/lang/String;)V

    .line 150
    const-string v9, "fe_category_name_vn"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setFe_category_name_vn(Ljava/lang/String;)V

    .line 152
    const-string v9, "featured_status"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setFeatured_status(I)V

    .line 154
    const-string v9, "floor"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setFloor(Ljava/lang/String;)V

    .line 156
    const-string v9, "frame_start"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setFrame_start(I)V

    .line 158
    const-string v9, "gps_long"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    .line 160
    .local v3, "gpsLong":D
    const-string v9, "gps_lat"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    .line 162
    .local v1, "gpsLat":D
    new-instance v9, Lcom/itim/explorer/io/model/GPS;

    invoke-direct {v9, v1, v2, v3, v4}, Lcom/itim/explorer/io/model/GPS;-><init>(DD)V

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setGps(Lcom/itim/explorer/io/model/GPS;)V

    .line 163
    const-string v9, "group_id"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setGroup_id(I)V

    .line 165
    const-string v9, "hash"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setHash(Ljava/lang/String;)V

    .line 167
    const-string v9, "img"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setImg(Ljava/lang/String;)V

    .line 169
    const-string v9, "phone"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setPhone(Ljava/lang/String;)V

    .line 171
    const-string v9, "promote_text"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setPromote_text(Ljava/lang/String;)V

    .line 173
    const-string v9, "rank"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setRank(I)V

    .line 175
    const-string v9, "rating"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getFloat(I)F

    move-result v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setRating(F)V

    .line 177
    const-string v9, "region_id"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setRegion_id(F)V

    .line 179
    const-string v9, "region_names_full"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, "reF":Ljava/lang/String;
    const-string v9, "region_names_short"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 183
    .local v8, "res":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/itim/explorer/io/model/RegionName;

    const/4 v10, 0x0

    new-instance v11, Lcom/itim/explorer/io/model/RegionName;

    invoke-direct {v11, v7, v8}, Lcom/itim/explorer/io/model/RegionName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v9, v10

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setRegion_names([Lcom/itim/explorer/io/model/RegionName;)V

    .line 185
    const-string v9, "room"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setRoom(Ljava/lang/String;)V

    .line 187
    const-string v9, "scene_id"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setScene_id(I)V

    .line 189
    const-string v9, "score"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/itim/explorer/io/model/POI;->setScore(D)V

    .line 191
    const-string v9, "title"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setTitle(Ljava/lang/String;)V

    .line 193
    const-string v9, "url"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/itim/explorer/io/model/POI;->setUrl(Ljava/lang/String;)V

    .line 195
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 198
    .end local v1    # "gpsLat":D
    .end local v3    # "gpsLong":D
    .end local v5    # "poi":Lcom/itim/explorer/io/model/POI;
    .end local v7    # "reF":Ljava/lang/String;
    .end local v8    # "res":Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 200
    .end local v0    # "count":I
    :cond_1
    return-object v6
.end method

.method public static cursorToQuery(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/SearchQueryHistory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v2, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/SearchQueryHistory;>;"
    if-eqz p0, :cond_1

    .line 254
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 255
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 256
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 258
    new-instance v1, Lcom/itim/explorer/io/SearchQueryHistory;

    invoke-direct {v1}, Lcom/itim/explorer/io/SearchQueryHistory;-><init>()V

    .line 259
    .local v1, "poi":Lcom/itim/explorer/io/SearchQueryHistory;
    const-string v3, "_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itim/explorer/io/SearchQueryHistory;->setId(I)V

    .line 260
    const-string v3, "query"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/itim/explorer/io/SearchQueryHistory;->setQuery(Ljava/lang/String;)V

    .line 263
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 266
    .end local v1    # "poi":Lcom/itim/explorer/io/SearchQueryHistory;
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 268
    .end local v0    # "count":I
    :cond_1
    return-object v2
.end method

.method public static poiToValues(Lcom/itim/explorer/io/model/POI;)Landroid/content/ContentValues;
    .locals 5
    .param p0, "poi"    # Lcom/itim/explorer/io/model/POI;

    .prologue
    const/4 v4, 0x0

    .line 204
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 205
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v1, "address"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v1, "ads_category"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getAds_category()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    const-string v1, "ads_category_name"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getAds_category_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v1, "building"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getBuilding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v1, "city_borders"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getCity_borders()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "click_url"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getClick_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "description"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v1, "email"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "fe_category"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getFe_category()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    const-string v1, "fe_category_name_en"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getFe_category_name_en()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v1, "fe_category_name_vn"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getFe_category_name_vn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v1, "featured_status"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getFeatured_status()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    const-string v1, "floor"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getFloor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "frame_start"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getFrame_start()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    const-string v1, "gps_long"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/GPS;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 221
    const-string v1, "gps_lat"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/GPS;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 222
    const-string v1, "group_id"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getGroup_id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    const-string v1, "hash"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v1, "img"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, "phone"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "promote_text"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getPromote_text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v1, "rank"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getRank()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    const-string v1, "rating"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getRating()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 229
    const-string v1, "region_id"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getRegion_id()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 230
    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getRegion_names()[Lcom/itim/explorer/io/model/RegionName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getRegion_names()[Lcom/itim/explorer/io/model/RegionName;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 231
    const-string v1, "region_names_full"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getRegion_names()[Lcom/itim/explorer/io/model/RegionName;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/RegionName;->getFull_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v1, "region_names_short"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getRegion_names()[Lcom/itim/explorer/io/model/RegionName;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/RegionName;->getShort_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_0
    const-string v1, "room"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getRoom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v1, "score"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getScore()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 238
    const-string v1, "scene_id"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getScene_id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v1, "url"

    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-object v0
.end method

.method public static queryToValues(Lcom/itim/explorer/io/SearchQueryHistory;)Landroid/content/ContentValues;
    .locals 3
    .param p0, "sQueryHistory"    # Lcom/itim/explorer/io/SearchQueryHistory;

    .prologue
    .line 245
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 246
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-virtual {p0}, Lcom/itim/explorer/io/SearchQueryHistory;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    const-string v1, "query"

    invoke-virtual {p0}, Lcom/itim/explorer/io/SearchQueryHistory;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 103
    const-string v0, "create table POIS(_id integer primary key, address text, ads_category integer , ads_category_name text not null, building text, city_borders text not null, click_url text, description text, email text, fe_category integer, fe_category_name_en text not null, fe_category_name_vn text not null, featured_status integer, floor text, frame_start integer, gps_long integer not null, gps_lat integer not null, group_id integer, hash text not null, img text not null, phone text, promote_text text, rank integer, rating real, region_id integer, region_names_full text, region_names_short text, room text, scene_id integer, score real, title text not null, url text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    const-string v0, "create table HISTORY(_id integer primary key autoincrement, poi_id integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    const-string v0, "create table BOOKMARK(_id integer primary key autoincrement, poi_id integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    const-string v0, "create table SEARCH_QUERY(_id integer primary key autoincrement, query text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 114
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 115
    const-string v0, "create table SEARCH_QUERY(_id integer primary key autoincrement, query text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method
