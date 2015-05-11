.class Lcom/itim/explorer/ui/AddPOIActivity$5;
.super Ljava/lang/Object;
.source "AddPOIActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/AddPOIActivity;->filterLetterDigitSymbol([C)[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/AddPOIActivity;

.field final synthetic val$allowed:[C


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/AddPOIActivity;[C)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/itim/explorer/ui/AddPOIActivity$5;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    iput-object p2, p0, Lcom/itim/explorer/ui/AddPOIActivity$5;->val$allowed:[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 280
    const/4 v8, 0x1

    .line 282
    .local v8, "keepOriginal":Z
    new-instance v9, Ljava/lang/StringBuilder;

    sub-int v0, p3, p2

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 283
    .local v9, "sb":Ljava/lang/StringBuilder;
    move v7, p2

    .local v7, "i":I
    :goto_0
    if-ge v7, p3, :cond_2

    .line 284
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 285
    .local v6, "c":C
    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity$5;->val$allowed:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 286
    :cond_0
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 288
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 290
    .end local v6    # "c":C
    :cond_2
    if-eqz v8, :cond_3

    .line 291
    const/4 v4, 0x0

    .line 298
    :goto_2
    return-object v4

    .line 293
    :cond_3
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_4

    .line 294
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v4, "sp":Landroid/text/SpannableString;
    move-object v0, p1

    .line 295
    check-cast v0, Landroid/text/Spanned;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v1, p2

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    goto :goto_2

    .end local v4    # "sp":Landroid/text/SpannableString;
    :cond_4
    move-object v4, v9

    .line 298
    goto :goto_2
.end method
