.class Lcom/itim/explorer/ui/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/MainActivity;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/MainActivity;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/itim/explorer/ui/MainActivity$3;->this$0:Lcom/itim/explorer/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity$3;->this$0:Lcom/itim/explorer/ui/MainActivity;

    # getter for: Lcom/itim/explorer/ui/MainActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/itim/explorer/ui/MainActivity;->access$000(Lcom/itim/explorer/ui/MainActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity$3;->this$0:Lcom/itim/explorer/ui/MainActivity;

    # getter for: Lcom/itim/explorer/ui/MainActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/itim/explorer/ui/MainActivity;->access$000(Lcom/itim/explorer/ui/MainActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 201
    :cond_0
    return-void
.end method
