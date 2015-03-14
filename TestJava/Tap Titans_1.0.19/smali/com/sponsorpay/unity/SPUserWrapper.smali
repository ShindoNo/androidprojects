.class public Lcom/sponsorpay/unity/SPUserWrapper;
.super Ljava/lang/Object;
.source "SPUserWrapper.java"


# static fields
.field private static final AGE:Ljava/lang/String; = "age"

.field private static final ANNUAL_HOUSEHOLD_INCOME:Ljava/lang/String; = "annual_household_income"

.field private static final APP_VERSION:Ljava/lang/String; = "app_version"

.field private static final BIRTHDATE:Ljava/lang/String; = "birthdate"

.field private static final CONNECTION:Ljava/lang/String; = "connection"

.field private static final DEVICE:Ljava/lang/String; = "device"

.field private static final EDUCATION:Ljava/lang/String; = "education"

.field private static final ETHNICITY:Ljava/lang/String; = "ethnicity"

.field private static final GENDER:Ljava/lang/String; = "gender"

.field private static final IAP:Ljava/lang/String; = "iap"

.field private static final IAP_AMOUNT:Ljava/lang/String; = "iap_amount"

.field private static final INTERESTS:Ljava/lang/String; = "interests"

.field private static final LAST_SESSION:Ljava/lang/String; = "last_session"

.field private static final MARITAL_STATUS:Ljava/lang/String; = "marital_status"

.field private static final NUMBER_OF_CHILDRENS:Ljava/lang/String; = "children"

.field private static final NUMBER_OF_SESSIONS:Ljava/lang/String; = "number_of_sessions"

.field private static final PS_TIME:Ljava/lang/String; = "ps_time"

.field private static final SEXUAL_ORIENTATION:Ljava/lang/String; = "sexual_orientation"

.field private static final SPLOCATION:Ljava/lang/String; = "splocation"

.field private static final TAG:Ljava/lang/String; = "SPUserWrapper"

.field private static final VALUE:Ljava/lang/String; = "value"

.field private static final ZIPCODE:Ljava/lang/String; = "zipcode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private putObject(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 84
    const-string v7, "age"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 85
    const-string v7, "value"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/sponsorpay/user/SPUser;->setAge(Ljava/lang/Integer;)V

    .line 138
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v7, "birthdate"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 87
    const-string v7, "value"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "dateString":Ljava/lang/String;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy/MM/dd"

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 89
    .local v0, "date":Ljava/util/Date;
    invoke-static {v0}, Lcom/sponsorpay/user/SPUser;->setBirthdate(Ljava/util/Date;)V

    goto :goto_0

    .line 90
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateString":Ljava/lang/String;
    :cond_1
    const-string v7, "gender"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 91
    invoke-static {}, Lcom/sponsorpay/user/SPUserGender;->values()[Lcom/sponsorpay/user/SPUserGender;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-static {v7}, Lcom/sponsorpay/user/SPUser;->setGender(Lcom/sponsorpay/user/SPUserGender;)V

    goto :goto_0

    .line 92
    :cond_2
    const-string v7, "sexual_orientation"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 93
    invoke-static {}, Lcom/sponsorpay/user/SPUserSexualOrientation;->values()[Lcom/sponsorpay/user/SPUserSexualOrientation;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-static {v7}, Lcom/sponsorpay/user/SPUser;->setSexualOrientation(Lcom/sponsorpay/user/SPUserSexualOrientation;)V

    goto :goto_0

    .line 94
    :cond_3
    const-string v7, "ethnicity"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 95
    invoke-static {}, Lcom/sponsorpay/user/SPUserEthnicity;->values()[Lcom/sponsorpay/user/SPUserEthnicity;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-static {v7}, Lcom/sponsorpay/user/SPUser;->setEthnicity(Lcom/sponsorpay/user/SPUserEthnicity;)V

    goto :goto_0

    .line 96
    :cond_4
    const-string v7, "splocation"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 97
    const-string v7, "value"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 98
    .local v6, "spLocation":Lorg/json/JSONObject;
    new-instance v5, Landroid/location/Location;

    const-string v7, "manual"

    invoke-direct {v5, v7}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 99
    .local v5, "location":Landroid/location/Location;
    const-string v7, "Lat"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Landroid/location/Location;->setLatitude(D)V

    .line 100
    const-string v7, "Long"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Landroid/location/Location;->setLongitude(D)V

    .line 101
    invoke-static {v5}, Lcom/sponsorpay/user/SPUser;->setLocation(Landroid/location/Location;)V

    goto/16 :goto_0

    .line 102
    .end local v5    # "location":Landroid/location/Location;
    .end local v6    # "spLocation":Lorg/json/JSONObject;
    :cond_5
    const-string v7, "marital_status"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 103
    invoke-static {}, Lcom/sponsorpay/user/SPUserMaritalStatus;->values()[Lcom/sponsorpay/user/SPUserMaritalStatus;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-static {v7}, Lcom/sponsorpay/user/SPUser;->setMaritalStatus(Lcom/sponsorpay/user/SPUserMaritalStatus;)V

    goto/16 :goto_0

    .line 104
    :cond_6
    const-string v7, "children"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 105
    const-string v7, "value"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/sponsorpay/user/SPUser;->setNumberOfChildrens(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 106
    :cond_7
    const-string v7, "annual_household_income"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 107
    const-string v7, "value"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/sponsorpay/user/SPUser;->setAnnualHouseholdIncome(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 108
    :cond_8
    const-string v7, "education"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 109
    invoke-static {}, Lcom/sponsorpay/user/SPUserEducation;->values()[Lcom/sponsorpay/user/SPUserEducation;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-static {v7}, Lcom/sponsorpay/user/SPUser;->setEducation(Lcom/sponsorpay/user/SPUserEducation;)V

    goto/16 :goto_0

    .line 110
    :cond_9
    const-string v7, "zipcode"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 111
    const-string v7, "value"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sponsorpay/user/SPUser;->setZipcode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    :cond_a
    const-string v7, "interests"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 113
    const-string v7, "value"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 114
    .local v4, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v3, v7, [Ljava/lang/String;

    .line 115
    .local v3, "interests":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v3

    if-lt v2, v7, :cond_b

    .line 118
    invoke-static {v3}, Lcom/sponsorpay/user/SPUser;->setInterests([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    :cond_b
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    .end local v2    # "i":I
    .end local v3    # "interests":[Ljava/lang/String;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_c
    const-string v7, "iap"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 120
    const-string v7, "value"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Lcom/sponsorpay/user/SPUser;->setIap(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 121
    :cond_d
    const-string v7, "iap_amount"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 122
    const-string v7, "value"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v7}, Lcom/sponsorpay/user/SPUser;->setIapAmount(Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 123
    :cond_e
    const-string v7, "number_of_sessions"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 124
    const-string v7, "value"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/sponsorpay/user/SPUser;->setNumberOfSessions(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 125
    :cond_f
    const-string v7, "ps_time"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 126
    const-string v7, "value"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Lcom/sponsorpay/user/SPUser;->setPsTime(Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 127
    :cond_10
    const-string v7, "last_session"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 128
    const-string v7, "value"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Lcom/sponsorpay/user/SPUser;->setLastSession(Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 129
    :cond_11
    const-string v7, "connection"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 130
    invoke-static {}, Lcom/sponsorpay/user/SPUserConnection;->values()[Lcom/sponsorpay/user/SPUserConnection;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-static {v7}, Lcom/sponsorpay/user/SPUser;->setConnection(Lcom/sponsorpay/user/SPUserConnection;)V

    goto/16 :goto_0

    .line 131
    :cond_12
    const-string v7, "device"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 132
    const-string v7, "value"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sponsorpay/user/SPUser;->setDevice(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_13
    const-string v7, "app_version"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 134
    const-string v7, "value"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sponsorpay/user/SPUser;->setAppVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    :cond_14
    const-string v7, "value"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/sponsorpay/user/SPUser;->addCustomValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 37
    invoke-static {p1}, Lcom/sponsorpay/user/SPUser;->getCustomValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 38
    .local v7, "value":Ljava/lang/Object;
    const-string v8, "splocation"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 39
    invoke-static {}, Lcom/sponsorpay/user/SPUser;->getLocation()Landroid/location/Location;

    move-result-object v7

    .line 43
    .end local v7    # "value":Ljava/lang/Object;
    :cond_0
    if-eqz v7, :cond_2

    move v8, v10

    :goto_0
    :try_start_0
    invoke-static {v8}, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;->getBaseJSONResponse(Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 44
    .local v5, "response":Lorg/json/JSONObject;
    const-string v8, "key"

    invoke-virtual {v5, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    instance-of v8, v7, Ljava/lang/Enum;

    if-eqz v8, :cond_3

    .line 46
    check-cast v7, Ljava/lang/Enum;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 62
    :cond_1
    :goto_1
    const-string v8, "value"

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 66
    .end local v5    # "response":Lorg/json/JSONObject;
    :goto_2
    return-object v8

    :cond_2
    move v8, v9

    .line 43
    goto :goto_0

    .line 47
    .restart local v5    # "response":Lorg/json/JSONObject;
    :cond_3
    instance-of v8, v7, Landroid/location/Location;

    if-eqz v8, :cond_4

    .line 48
    move-object v0, v7

    check-cast v0, Landroid/location/Location;

    move-object v4, v0

    .line 49
    .local v4, "loc":Landroid/location/Location;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "Long"

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    invoke-virtual {v3, v8, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 51
    const-string v8, "Lat"

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v3, v8, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 52
    move-object v7, v3

    .line 53
    .local v7, "value":Lorg/json/JSONObject;
    goto :goto_1

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "loc":Landroid/location/Location;
    .end local v7    # "value":Lorg/json/JSONObject;
    :cond_4
    instance-of v8, v7, Ljava/util/Date;

    if-eqz v8, :cond_5

    .line 54
    const-string v8, "%tY/%tm/%td"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const/4 v12, 0x1

    aput-object v7, v11, v12

    const/4 v12, 0x2

    aput-object v7, v11, v12

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, "value":Ljava/lang/String;
    goto :goto_1

    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    instance-of v8, v7, [Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 56
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 57
    .local v2, "jsonArray":Lorg/json/JSONArray;
    check-cast v7, [Ljava/lang/String;

    array-length v11, v7

    move v8, v9

    :goto_3
    if-lt v8, v11, :cond_6

    .line 60
    move-object v7, v2

    .local v7, "value":Lorg/json/JSONArray;
    goto :goto_1

    .line 57
    .end local v7    # "value":Lorg/json/JSONArray;
    :cond_6
    aget-object v6, v7, v8

    .line 58
    .local v6, "string":Ljava/lang/String;
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 64
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "response":Lorg/json/JSONObject;
    .end local v6    # "string":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Lorg/json/JSONException;
    const-string v8, "SPUserWrapper"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v8, "{\"success\":false,\"error\":\"%s\",\"key\":\"%s\"}"

    new-array v11, v13, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    aput-object p1, v11, v10

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2
.end method

.method public put(Ljava/lang/String;)V
    .locals 5
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 72
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "key"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/sponsorpay/unity/SPUserWrapper;->putObject(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "key":Ljava/lang/String;
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "SPUserWrapper"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 78
    .local v0, "e":Ljava/text/ParseException;
    const-string v3, "SPUserWrapper"

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
