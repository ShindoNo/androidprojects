.class final Lcom/amazon/identity/auth/device/utils/MAPVersion$1;
.super Ljava/lang/Object;
.source "MAPVersion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/utils/MAPVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amazon/identity/auth/device/utils/MAPVersion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/identity/auth/device/utils/MAPVersion;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 143
    new-instance v0, Lcom/amazon/identity/auth/device/utils/MAPVersion;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/utils/MAPVersion;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/utils/MAPVersion$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/identity/auth/device/utils/MAPVersion;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/amazon/identity/auth/device/utils/MAPVersion;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 148
    new-array v0, p1, [Lcom/amazon/identity/auth/device/utils/MAPVersion;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/utils/MAPVersion$1;->newArray(I)[Lcom/amazon/identity/auth/device/utils/MAPVersion;

    move-result-object v0

    return-object v0
.end method