.class public Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "HistoryFragmentAdapter.java"

# interfaces
.implements Lcom/itim/explorer/interfaces/IFragmentHistoryNew;


# static fields
.field public static final KEY_TAB_BEST:I = 0x2

.field public static final KEY_TAB_HISTORY:I = 0x1

.field private static final TAB:[I


# instance fields
.field private mCount:I

.field private mFmHistory:Lcom/itim/explorer/ui/HistorySearchQueryFragment;

.field private mFmPOI:Lcom/itim/explorer/ui/POIListFragment;

.field private mPageTitle:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;->TAB:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "pageTitle"    # [Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 19
    sget-object v0, Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;->TAB:[I

    array-length v0, v0

    iput v0, p0, Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;->mCount:I

    .line 26
    iput-object p2, p0, Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;->mPageTitle:[Ljava/lang/String;

    .line 27
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/itim/explorer/ui/POIListFragment;->newInstance(I)Lcom/itim/explorer/ui/POIListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;->mFmPOI:Lcom/itim/explorer/ui/POIListFragment;

    .line 28
    new-instance v0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    invoke-direct {v0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;->mFmHistory:Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    .line 29
    return-void
.end method


# virtual methods
.method public deleteAllItems(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    packed-switch p1, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;->mFmPOI:Lcom/itim/explorer/ui/POIListFragment;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/POIListFragment;->deleteAllItems()V

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;->mFmHistory:Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->deleteAllItems()V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;->mCount:I

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 33
    packed-switch p1, :pswitch_data_0

    .line 40
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/itim/explorer/ui/POIListFragment;->newInstance(I)Lcom/itim/explorer/ui/POIListFragment;

    move-result-object v0

    :goto_0
    return-object v0

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;->mFmPOI:Lcom/itim/explorer/ui/POIListFragment;

    goto :goto_0

    .line 37
    :pswitch_1
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;->mFmHistory:Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemCount(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 57
    packed-switch p1, :pswitch_data_0

    .line 63
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;->mFmPOI:Lcom/itim/explorer/ui/POIListFragment;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/POIListFragment;->getItemCount()I

    move-result v0

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;->mFmHistory:Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->getItemCount()I

    move-result v0

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;->mPageTitle:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
