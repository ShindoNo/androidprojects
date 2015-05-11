.class public Lcom/itim/explorer/io/model/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1ae5ab83b2065e8L


# instance fields
.field private category:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private foodName:Ljava/lang/String;

.field private price:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "category"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/io/model/MenuItem;->category:Ljava/lang/String;

    .line 17
    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/io/model/MenuItem;->description:Ljava/lang/String;

    .line 18
    const-string v0, "food_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/io/model/MenuItem;->foodName:Ljava/lang/String;

    .line 19
    const-string v0, "price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/io/model/MenuItem;->price:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/itim/explorer/io/model/MenuItem;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/itim/explorer/io/model/MenuItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFoodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/itim/explorer/io/model/MenuItem;->foodName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/itim/explorer/io/model/MenuItem;->price:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/itim/explorer/io/model/MenuItem;->category:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/itim/explorer/io/model/MenuItem;->description:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setFoodName(Ljava/lang/String;)V
    .locals 0
    .param p1, "foodName"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/itim/explorer/io/model/MenuItem;->foodName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/itim/explorer/io/model/MenuItem;->price:Ljava/lang/String;

    .line 52
    return-void
.end method
