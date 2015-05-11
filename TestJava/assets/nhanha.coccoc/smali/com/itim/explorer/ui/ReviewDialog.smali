.class public Lcom/itim/explorer/ui/ReviewDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ReviewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cbPostToFacebook:Landroid/widget/CheckBox;

.field private isEdidCommentFilled:Z

.field private isRatingBarFilled:Z

.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnRate:Landroid/widget/Button;

.field private mEdtComment:Landroid/widget/EditText;

.field private mListener:Lcom/itim/explorer/interfaces/POIDetailActivityListener;

.field private mRbReview:Landroid/widget/RatingBar;

.field private rate:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/itim/explorer/ui/ReviewDialog;->rate:F

    .line 41
    iput-boolean v1, p0, Lcom/itim/explorer/ui/ReviewDialog;->isRatingBarFilled:Z

    iput-boolean v1, p0, Lcom/itim/explorer/ui/ReviewDialog;->isEdidCommentFilled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/ui/ReviewDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReviewDialog;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/itim/explorer/ui/ReviewDialog;->isRatingBarFilled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/itim/explorer/ui/ReviewDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReviewDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/itim/explorer/ui/ReviewDialog;->isRatingBarFilled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/ReviewDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReviewDialog;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/itim/explorer/ui/ReviewDialog;->isEdidCommentFilled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/itim/explorer/ui/ReviewDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReviewDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/itim/explorer/ui/ReviewDialog;->isEdidCommentFilled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/itim/explorer/ui/ReviewDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReviewDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewDialog;->mBtnRate:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/itim/explorer/ui/ReviewDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReviewDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewDialog;->mEdtComment:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Type"

    const-string v2, "Review"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "Event"

    const-string v2, "Cancel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "Dialog"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 180
    iget-object v1, p0, Lcom/itim/explorer/ui/ReviewDialog;->mListener:Lcom/itim/explorer/interfaces/POIDetailActivityListener;

    invoke-interface {v1}, Lcom/itim/explorer/interfaces/POIDetailActivityListener;->onCancelReview()V

    .line 181
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 182
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 127
    :pswitch_0
    const-string v1, "Type"

    const-string v2, "Review"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "Button"

    const-string v2, "Post"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v1, "Rating"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/itim/explorer/ui/ReviewDialog;->mRbReview:Landroid/widget/RatingBar;

    invoke-virtual {v3}, Landroid/widget/RatingBar;->getRating()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v1, "Comment length"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/itim/explorer/ui/ReviewDialog;->mEdtComment:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v1, "Posting to FaceBook"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/itim/explorer/ui/ReviewDialog;->cbPostToFacebook:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "Dialog"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 134
    iget-object v1, p0, Lcom/itim/explorer/ui/ReviewDialog;->mRbReview:Landroid/widget/RatingBar;

    invoke-virtual {v1}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/itim/explorer/ui/ReviewDialog;->mListener:Lcom/itim/explorer/interfaces/POIDetailActivityListener;

    iget-object v2, p0, Lcom/itim/explorer/ui/ReviewDialog;->mRbReview:Landroid/widget/RatingBar;

    invoke-virtual {v2}, Landroid/widget/RatingBar;->getRating()F

    move-result v2

    iget-object v3, p0, Lcom/itim/explorer/ui/ReviewDialog;->mEdtComment:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/itim/explorer/ui/ReviewDialog;->cbPostToFacebook:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/itim/explorer/interfaces/POIDetailActivityListener;->onReview(FLjava/lang/String;Z)V

    .line 137
    invoke-virtual {p0}, Lcom/itim/explorer/ui/ReviewDialog;->dismiss()V

    goto/16 :goto_0

    .line 141
    :cond_0
    const-string v1, "Rating"

    const-string v2, "rating<=0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 145
    :pswitch_1
    const-string v1, "Type"

    const-string v2, "Review"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v1, "Button"

    const-string v2, "Cancel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v1, "Dialog"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 148
    iget-object v1, p0, Lcom/itim/explorer/ui/ReviewDialog;->mListener:Lcom/itim/explorer/interfaces/POIDetailActivityListener;

    invoke-interface {v1}, Lcom/itim/explorer/interfaces/POIDetailActivityListener;->onCancelReview()V

    .line 149
    invoke-virtual {p0}, Lcom/itim/explorer/ui/ReviewDialog;->dismiss()V

    goto/16 :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00d7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/itim/explorer/ui/ReviewDialog;->setStyle(II)V

    .line 47
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 52
    const v2, 0x7f04003a

    invoke-virtual {p1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/itim/explorer/ui/ReviewDialog;->setCancelable(Z)V

    .line 55
    const v2, 0x7f0b00d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    iput-object v2, p0, Lcom/itim/explorer/ui/ReviewDialog;->mRbReview:Landroid/widget/RatingBar;

    .line 56
    iget-object v2, p0, Lcom/itim/explorer/ui/ReviewDialog;->mRbReview:Landroid/widget/RatingBar;

    iget v5, p0, Lcom/itim/explorer/ui/ReviewDialog;->rate:F

    invoke-virtual {v2, v5}, Landroid/widget/RatingBar;->setRating(F)V

    .line 57
    iget-object v2, p0, Lcom/itim/explorer/ui/ReviewDialog;->mRbReview:Landroid/widget/RatingBar;

    invoke-virtual {v2}, Landroid/widget/RatingBar;->getRating()F

    move-result v2

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/itim/explorer/ui/ReviewDialog;->isRatingBarFilled:Z

    .line 58
    iget-object v2, p0, Lcom/itim/explorer/ui/ReviewDialog;->mRbReview:Landroid/widget/RatingBar;

    new-instance v3, Lcom/itim/explorer/ui/ReviewDialog$1;

    invoke-direct {v3, p0}, Lcom/itim/explorer/ui/ReviewDialog$1;-><init>(Lcom/itim/explorer/ui/ReviewDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 73
    const v2, 0x7f0b00d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/itim/explorer/ui/ReviewDialog;->mEdtComment:Landroid/widget/EditText;

    .line 75
    invoke-virtual {p0}, Lcom/itim/explorer/ui/ReviewDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 76
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/itim/explorer/ui/ReviewDialog;->mEdtComment:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 79
    const v2, 0x7f0b00d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/itim/explorer/ui/ReviewDialog;->cbPostToFacebook:Landroid/widget/CheckBox;

    .line 81
    const v2, 0x7f0b00d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/itim/explorer/ui/ReviewDialog;->mBtnCancel:Landroid/widget/Button;

    .line 82
    iget-object v2, p0, Lcom/itim/explorer/ui/ReviewDialog;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v2, 0x7f0b00d7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/itim/explorer/ui/ReviewDialog;->mBtnRate:Landroid/widget/Button;

    .line 84
    iget-object v2, p0, Lcom/itim/explorer/ui/ReviewDialog;->mBtnRate:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 85
    iget-object v2, p0, Lcom/itim/explorer/ui/ReviewDialog;->mBtnRate:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v2, p0, Lcom/itim/explorer/ui/ReviewDialog;->mEdtComment:Landroid/widget/EditText;

    new-instance v3, Lcom/itim/explorer/ui/ReviewDialog$2;

    invoke-direct {v3, p0}, Lcom/itim/explorer/ui/ReviewDialog$2;-><init>(Lcom/itim/explorer/ui/ReviewDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 99
    iget-object v2, p0, Lcom/itim/explorer/ui/ReviewDialog;->mEdtComment:Landroid/widget/EditText;

    new-instance v3, Lcom/itim/explorer/ui/ReviewDialog$3;

    invoke-direct {v3, p0}, Lcom/itim/explorer/ui/ReviewDialog$3;-><init>(Lcom/itim/explorer/ui/ReviewDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 118
    return-object v1

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    move v2, v4

    .line 57
    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 160
    return-void
.end method

.method public setListener(Lcom/itim/explorer/interfaces/POIDetailActivityListener;)V
    .locals 0
    .param p1, "mapListener"    # Lcom/itim/explorer/interfaces/POIDetailActivityListener;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/itim/explorer/ui/ReviewDialog;->mListener:Lcom/itim/explorer/interfaces/POIDetailActivityListener;

    .line 164
    return-void
.end method

.method public setRate(F)V
    .locals 0
    .param p1, "rate"    # F

    .prologue
    .line 167
    iput p1, p0, Lcom/itim/explorer/ui/ReviewDialog;->rate:F

    .line 172
    return-void
.end method
