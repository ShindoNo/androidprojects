.class public Lcom/itim/explorer/io/model/Category;
.super Ljava/lang/Object;
.source "Category.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
    value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.end annotation


# instance fields
.field private additionalProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private en:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "en"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private nameNoSign:Ljava/lang/String;

.field private vi:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "vi"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/io/model/Category;->additionalProperties:Ljava/util/Map;

    return-void
.end method

.method public static getIconResource(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    const v0, 0x7f020102

    .line 89
    packed-switch p0, :pswitch_data_0

    .line 130
    :pswitch_0
    const v0, 0x7f02012a

    :goto_0
    :pswitch_1
    return v0

    .line 91
    :pswitch_2
    const v0, 0x7f020101

    goto :goto_0

    .line 93
    :pswitch_3
    const v0, 0x7f020109

    goto :goto_0

    .line 95
    :pswitch_4
    const v0, 0x7f02010c

    goto :goto_0

    .line 97
    :pswitch_5
    const v0, 0x7f02010d

    goto :goto_0

    .line 99
    :pswitch_6
    const v0, 0x7f02010e

    goto :goto_0

    .line 101
    :pswitch_7
    const v0, 0x7f02010f

    goto :goto_0

    .line 103
    :pswitch_8
    const v0, 0x7f020110

    goto :goto_0

    .line 105
    :pswitch_9
    const v0, 0x7f020111

    goto :goto_0

    .line 107
    :pswitch_a
    const v0, 0x7f020112

    goto :goto_0

    .line 113
    :pswitch_b
    const v0, 0x7f020103

    goto :goto_0

    .line 115
    :pswitch_c
    const v0, 0x7f020104

    goto :goto_0

    .line 117
    :pswitch_d
    const v0, 0x7f020105

    goto :goto_0

    .line 119
    :pswitch_e
    const v0, 0x7f020106

    goto :goto_0

    .line 121
    :pswitch_f
    const v0, 0x7f020107

    goto :goto_0

    .line 123
    :pswitch_10
    const v0, 0x7f020108

    goto :goto_0

    .line 125
    :pswitch_11
    const v0, 0x7f02010a

    goto :goto_0

    .line 127
    :pswitch_12
    const v0, 0x7f02010b

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public static getIconResource(Ljava/lang/String;)I
    .locals 3
    .param p0, "idStr"    # Ljava/lang/String;

    .prologue
    .line 136
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 137
    .local v1, "id":I
    invoke-static {v1}, Lcom/itim/explorer/io/model/Category;->getIconResource(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 139
    .end local v1    # "id":I
    :goto_0
    return v2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getMarkerCirResID(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    const v0, 0x7f020089

    const v1, 0x7f02008e

    .line 144
    packed-switch p0, :pswitch_data_0

    .line 185
    :goto_0
    :pswitch_0
    return v0

    .line 148
    :pswitch_1
    const v0, 0x7f020092

    goto :goto_0

    .line 150
    :pswitch_2
    const v0, 0x7f020093

    goto :goto_0

    .line 152
    :pswitch_3
    const v0, 0x7f020094

    goto :goto_0

    .line 154
    :pswitch_4
    const v0, 0x7f020095

    goto :goto_0

    .line 156
    :pswitch_5
    const v0, 0x7f020096

    goto :goto_0

    .line 158
    :pswitch_6
    const v0, 0x7f020097

    goto :goto_0

    .line 160
    :pswitch_7
    const v0, 0x7f020098

    goto :goto_0

    .line 162
    :pswitch_8
    const v0, 0x7f020099

    goto :goto_0

    .line 164
    :pswitch_9
    const v0, 0x7f02008a

    goto :goto_0

    .line 166
    :pswitch_a
    const v0, 0x7f02008b

    goto :goto_0

    .line 168
    :pswitch_b
    const v0, 0x7f02008c

    goto :goto_0

    .line 170
    :pswitch_c
    const v0, 0x7f02008d

    goto :goto_0

    :pswitch_d
    move v0, v1

    .line 172
    goto :goto_0

    .line 174
    :pswitch_e
    const v0, 0x7f02008f

    goto :goto_0

    .line 176
    :pswitch_f
    const v0, 0x7f020090

    goto :goto_0

    .line 178
    :pswitch_10
    const v0, 0x7f020091

    goto :goto_0

    :pswitch_11
    move v0, v1

    .line 180
    goto :goto_0

    :pswitch_12
    move v0, v1

    .line 182
    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public static getMarkerResID(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 190
    packed-switch p0, :pswitch_data_0

    .line 231
    :pswitch_0
    const v0, 0x7f02013e

    :goto_0
    return v0

    .line 192
    :pswitch_1
    const v0, 0x7f02014b

    goto :goto_0

    .line 194
    :pswitch_2
    const v0, 0x7f020154

    goto :goto_0

    .line 196
    :pswitch_3
    const v0, 0x7f020157

    goto :goto_0

    .line 198
    :pswitch_4
    const v0, 0x7f020158

    goto :goto_0

    .line 200
    :pswitch_5
    const v0, 0x7f020159

    goto :goto_0

    .line 202
    :pswitch_6
    const v0, 0x7f02015a

    goto :goto_0

    .line 204
    :pswitch_7
    const v0, 0x7f02015b

    goto :goto_0

    .line 206
    :pswitch_8
    const v0, 0x7f02015c

    goto :goto_0

    .line 208
    :pswitch_9
    const v0, 0x7f02015d

    goto :goto_0

    .line 210
    :pswitch_a
    const v0, 0x7f02014c

    goto :goto_0

    .line 212
    :pswitch_b
    const v0, 0x7f02014d

    goto :goto_0

    .line 214
    :pswitch_c
    const v0, 0x7f02014e

    goto :goto_0

    .line 216
    :pswitch_d
    const v0, 0x7f02014f

    goto :goto_0

    .line 218
    :pswitch_e
    const v0, 0x7f020150

    goto :goto_0

    .line 220
    :pswitch_f
    const v0, 0x7f020151

    goto :goto_0

    .line 222
    :pswitch_10
    const v0, 0x7f020152

    goto :goto_0

    .line 224
    :pswitch_11
    const v0, 0x7f020153

    goto :goto_0

    .line 226
    :pswitch_12
    const v0, 0x7f020155

    goto :goto_0

    .line 228
    :pswitch_13
    const v0, 0x7f020156

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public getAdditionalProperties()Ljava/util/Map;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonAnyGetter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/itim/explorer/io/model/Category;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getEn()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "en"
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/itim/explorer/io/model/Category;->en:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 32
    iget v0, p0, Lcom/itim/explorer/io/model/Category;->id:I

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "locale":Ljava/lang/String;
    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/itim/explorer/io/model/Category;->getVi()Ljava/lang/String;

    move-result-object v1

    .line 84
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/itim/explorer/io/model/Category;->getEn()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNameNoSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/itim/explorer/io/model/Category;->nameNoSign:Ljava/lang/String;

    return-object v0
.end method

.method public getVi()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "vi"
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/itim/explorer/io/model/Category;->vi:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperties(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonAnySetter;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/itim/explorer/io/model/Category;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public setEn(Ljava/lang/String;)V
    .locals 0
    .param p1, "en"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "en"
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lcom/itim/explorer/io/model/Category;->en:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 37
    iput p1, p0, Lcom/itim/explorer/io/model/Category;->id:I

    .line 38
    return-void
.end method

.method public setNameNoSign(Ljava/lang/String;)V
    .locals 0
    .param p1, "nameNoSign"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/itim/explorer/io/model/Category;->nameNoSign:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setVi(Ljava/lang/String;)V
    .locals 0
    .param p1, "vi"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "vi"
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/itim/explorer/io/model/Category;->vi:Ljava/lang/String;

    .line 58
    return-void
.end method
