.class public Lcom/google/android/gms/wallet/wobs/CommonWalletObject;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/wobs/CommonWalletObject$1;,
        Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/wobs/CommonWalletObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CK:I

.field ave:Ljava/lang/String;

.field avg:Ljava/lang/String;

.field avh:Ljava/lang/String;

.field avi:Ljava/lang/String;

.field avj:Ljava/lang/String;

.field avk:Ljava/lang/String;

.field avl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/p;",
            ">;"
        }
    .end annotation
.end field

.field avm:Lcom/google/android/gms/wallet/wobs/l;

.field avn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field avo:Ljava/lang/String;

.field avp:Ljava/lang/String;

.field avq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/d;",
            ">;"
        }
    .end annotation
.end field

.field avr:Z

.field avs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/n;",
            ">;"
        }
    .end annotation
.end field

.field avt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/j;",
            ">;"
        }
    .end annotation
.end field

.field avu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/n;",
            ">;"
        }
    .end annotation
.end field

.field fl:Ljava/lang/String;

.field name:Ljava/lang/String;

.field state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/wobs/a;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->CK:I

    invoke-static {}, Lcom/google/android/gms/internal/la;->ie()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->avl:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/la;->ie()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->avn:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/la;->ie()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->avq:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/la;->ie()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->avs:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/la;->ie()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->avt:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/la;->ie()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->avu:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Lcom/google/android/gms/wallet/wobs/l;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "classId"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "issuerName"    # Ljava/lang/String;
    .param p6, "barcodeAlternateText"    # Ljava/lang/String;
    .param p7, "barcodeType"    # Ljava/lang/String;
    .param p8, "barcodeValue"    # Ljava/lang/String;
    .param p9, "barcodeLabel"    # Ljava/lang/String;
    .param p10, "state"    # I
    .param p12, "validTimeInterval"    # Lcom/google/android/gms/wallet/wobs/l;
    .param p14, "infoModuleDataHexFontColor"    # Ljava/lang/String;
    .param p15, "infoModuleDataHexBackgroundColor"    # Ljava/lang/String;
    .param p17, "infoModuleDataShowLastUpdateTime"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/p;",
            ">;",
            "Lcom/google/android/gms/wallet/wobs/l;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/d;",
            ">;Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/n;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/j;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/n;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p11, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/wallet/wobs/p;>;"
    .local p13, "locations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    .local p16, "infoModuleDataLabelValueRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/wallet/wobs/d;>;"
    .local p18, "imageModuleDataMainImageUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/wallet/wobs/n;>;"
    .local p19, "textModulesData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/wallet/wobs/j;>;"
    .local p20, "linksModuleDataUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/wallet/wobs/n;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->CK:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->fl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->avk:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->name:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->ave:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->avg:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->avh:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->avi:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->avj:Ljava/lang/String;

    iput p10, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->state:I

    iput-object p11, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->avl:Ljava/util/ArrayList;

    iput-object p12, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->avm:Lcom/google/android/gms/wallet/wobs/l;

    iput-object p13, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->avn:Ljava/util/ArrayList;

    iput-object p14, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->avo:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->avp:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->avq:Ljava/util/ArrayList;

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->avr:Z

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->avs:Ljava/util/ArrayList;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->avt:Ljava/util/ArrayList;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->avu:Ljava/util/ArrayList;

    return-void
.end method

.method public static rh()Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;
    .locals 3

    new-instance v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;

    new-instance v1, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;-><init>(Lcom/google/android/gms/wallet/wobs/CommonWalletObject;Lcom/google/android/gms/wallet/wobs/CommonWalletObject$1;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->fl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->CK:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/a;->a(Lcom/google/android/gms/wallet/wobs/CommonWalletObject;Landroid/os/Parcel;I)V

    return-void
.end method
