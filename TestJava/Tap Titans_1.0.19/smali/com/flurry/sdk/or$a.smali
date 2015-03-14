.class final Lcom/flurry/sdk/or$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/or;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/flurry/sdk/ou$a;

.field public final b:Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/flurry/sdk/or$a;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/or$a;Lcom/flurry/sdk/ou$a;Lcom/flurry/sdk/jh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/or$a;",
            "Lcom/flurry/sdk/ou$a;",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/flurry/sdk/or$a;->c:Lcom/flurry/sdk/or$a;

    .line 89
    iput-object p2, p0, Lcom/flurry/sdk/or$a;->a:Lcom/flurry/sdk/ou$a;

    .line 90
    iput-object p3, p0, Lcom/flurry/sdk/or$a;->b:Lcom/flurry/sdk/jh;

    .line 91
    return-void
.end method
