.class public Lcom/itim/explorer/ui/ReportProblemDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ReportProblemDialog.java"


# static fields
.field public static final ARG_POI_ID:Ljava/lang/String; = "arg_poi_id"

.field private static final PROBLEM_CHANGED:I = 0x4

.field private static final PROBLEM_CLOSED:I = 0x3

.field private static final PROBLEM_DUPLICATED:I = 0x2

.field private static final PROBLEM_MISSPELLED:I = 0x6

.field private static final PROBLEM_NOT_EXIST:I = 0x1

.field private static final PROBLEM_OTHER:I = 0x5


# instance fields
.field private etReportMessage:Landroid/widget/EditText;

.field mListener:Lcom/itim/explorer/interfaces/POIDetailActivityListener;

.field private message:Ljava/lang/String;

.field private rgReport:Landroid/widget/RadioGroup;

.field private selectedProblem:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/ui/ReportProblemDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReportProblemDialog;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog;->etReportMessage:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/ReportProblemDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReportProblemDialog;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/itim/explorer/ui/ReportProblemDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReportProblemDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/itim/explorer/ui/ReportProblemDialog;->message:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/itim/explorer/ui/ReportProblemDialog;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReportProblemDialog;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog;->rgReport:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/itim/explorer/ui/ReportProblemDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReportProblemDialog;

    .prologue
    .line 22
    iget v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog;->selectedProblem:I

    return v0
.end method

.method static synthetic access$302(Lcom/itim/explorer/ui/ReportProblemDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReportProblemDialog;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/itim/explorer/ui/ReportProblemDialog;->selectedProblem:I

    return p1
.end method

.method static synthetic access$400(Lcom/itim/explorer/ui/ReportProblemDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReportProblemDialog;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog;->view:Landroid/view/View;

    return-object v0
.end method

.method private onRadioGroupChange()Landroid/widget/RadioGroup$OnCheckedChangeListener;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/itim/explorer/ui/ReportProblemDialog$2;

    invoke-direct {v0, p0}, Lcom/itim/explorer/ui/ReportProblemDialog$2;-><init>(Lcom/itim/explorer/ui/ReportProblemDialog;)V

    return-object v0
.end method

.method private onSendReport()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/itim/explorer/ui/ReportProblemDialog$1;

    invoke-direct {v0, p0}, Lcom/itim/explorer/ui/ReportProblemDialog$1;-><init>(Lcom/itim/explorer/ui/ReportProblemDialog;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog;->etReportMessage:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog;->etReportMessage:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 62
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/itim/explorer/ui/ReportProblemDialog;->setStyle(II)V

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    const v1, 0x7f040039

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/itim/explorer/ui/ReportProblemDialog;->view:Landroid/view/View;

    .line 48
    iget-object v1, p0, Lcom/itim/explorer/ui/ReportProblemDialog;->view:Landroid/view/View;

    const v2, 0x7f0b00d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 49
    .local v0, "btnReport":Landroid/widget/Button;
    iget-object v1, p0, Lcom/itim/explorer/ui/ReportProblemDialog;->view:Landroid/view/View;

    const v2, 0x7f0b00cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/itim/explorer/ui/ReportProblemDialog;->rgReport:Landroid/widget/RadioGroup;

    .line 50
    iget-object v1, p0, Lcom/itim/explorer/ui/ReportProblemDialog;->view:Landroid/view/View;

    const v2, 0x7f0b00d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/itim/explorer/ui/ReportProblemDialog;->etReportMessage:Landroid/widget/EditText;

    .line 51
    invoke-direct {p0}, Lcom/itim/explorer/ui/ReportProblemDialog;->onSendReport()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v1, p0, Lcom/itim/explorer/ui/ReportProblemDialog;->rgReport:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Lcom/itim/explorer/ui/ReportProblemDialog;->onRadioGroupChange()Landroid/widget/RadioGroup$OnCheckedChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 53
    iget-object v1, p0, Lcom/itim/explorer/ui/ReportProblemDialog;->view:Landroid/view/View;

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog;->mListener:Lcom/itim/explorer/interfaces/POIDetailActivityListener;

    invoke-interface {v0}, Lcom/itim/explorer/interfaces/POIDetailActivityListener;->onDismissDialogReport()V

    .line 139
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 140
    return-void
.end method

.method public setListener(Lcom/itim/explorer/interfaces/POIDetailActivityListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/itim/explorer/interfaces/POIDetailActivityListener;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/itim/explorer/ui/ReportProblemDialog;->mListener:Lcom/itim/explorer/interfaces/POIDetailActivityListener;

    .line 144
    return-void
.end method
