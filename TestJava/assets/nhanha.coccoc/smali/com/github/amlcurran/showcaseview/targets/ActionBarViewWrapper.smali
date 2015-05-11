.class Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;
.super Ljava/lang/Object;
.source "ActionBarViewWrapper.java"


# instance fields
.field private mAbsActionBarViewClass:Ljava/lang/Class;

.field private mActionBarView:Landroid/view/ViewParent;

.field private mActionBarViewClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/view/ViewParent;)V
    .locals 5
    .param p1, "actionBarView"    # Landroid/view/ViewParent;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActionBarView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "previousP":Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "throwP":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActionBarView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 25
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find ActionBarView for Activity, instead found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 29
    .end local v0    # "previousP":Ljava/lang/String;
    .end local v1    # "throwP":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mActionBarView:Landroid/view/ViewParent;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mActionBarViewClass:Ljava/lang/Class;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mAbsActionBarViewClass:Ljava/lang/Class;

    .line 32
    return-void
.end method


# virtual methods
.method public getActionItem(I)Landroid/view/View;
    .locals 15
    .param p1, "actionItemId"    # I

    .prologue
    .line 87
    :try_start_0
    iget-object v13, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mAbsActionBarViewClass:Ljava/lang/Class;

    const-string v14, "mActionMenuPresenter"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 88
    .local v2, "actionMenuPresenterField":Ljava/lang/reflect/Field;
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 89
    iget-object v13, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mActionBarView:Landroid/view/ViewParent;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 91
    .local v1, "actionMenuPresenter":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "mMenuView"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 92
    .local v11, "menuViewField":Ljava/lang/reflect/Field;
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 93
    invoke-virtual {v11, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 96
    .local v10, "menuView":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.actionbarsherlock"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 99
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "mChildren"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 108
    .local v8, "mChField":Ljava/lang/reflect/Field;
    :goto_0
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 109
    invoke-virtual {v8, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    move-object v0, v13

    check-cast v0, [Ljava/lang/Object;

    move-object v9, v0

    .line 110
    .local v9, "mChs":[Ljava/lang/Object;
    move-object v3, v9

    .local v3, "arr$":[Ljava/lang/Object;
    array-length v6, v3

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v7, v3, v5

    .line 111
    .local v7, "mCh":Ljava/lang/Object;
    if-eqz v7, :cond_2

    .line 112
    move-object v0, v7

    check-cast v0, Landroid/view/View;

    move-object v12, v0

    .line 113
    .local v12, "v":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v13

    move/from16 v0, p1

    if-ne v13, v0, :cond_2

    .line 123
    .end local v1    # "actionMenuPresenter":Ljava/lang/Object;
    .end local v2    # "actionMenuPresenterField":Ljava/lang/reflect/Field;
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "mCh":Ljava/lang/Object;
    .end local v8    # "mChField":Ljava/lang/reflect/Field;
    .end local v9    # "mChs":[Ljava/lang/Object;
    .end local v10    # "menuView":Ljava/lang/Object;
    .end local v11    # "menuViewField":Ljava/lang/reflect/Field;
    .end local v12    # "v":Landroid/view/View;
    :goto_2
    return-object v12

    .line 101
    .restart local v1    # "actionMenuPresenter":Ljava/lang/Object;
    .restart local v2    # "actionMenuPresenterField":Ljava/lang/reflect/Field;
    .restart local v10    # "menuView":Ljava/lang/Object;
    .restart local v11    # "menuViewField":Ljava/lang/reflect/Field;
    :cond_0
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.support.v7"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 102
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "mChildren"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .restart local v8    # "mChField":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 105
    .end local v8    # "mChField":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "mChildren"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .restart local v8    # "mChField":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 110
    .restart local v3    # "arr$":[Ljava/lang/Object;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "mCh":Ljava/lang/Object;
    .restart local v9    # "mChs":[Ljava/lang/Object;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 118
    .end local v1    # "actionMenuPresenter":Ljava/lang/Object;
    .end local v2    # "actionMenuPresenterField":Ljava/lang/reflect/Field;
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "mCh":Ljava/lang/Object;
    .end local v8    # "mChField":Ljava/lang/reflect/Field;
    .end local v9    # "mChs":[Ljava/lang/Object;
    .end local v10    # "menuView":Ljava/lang/Object;
    .end local v11    # "menuViewField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v4

    .line 119
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 123
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :cond_3
    :goto_3
    const/4 v12, 0x0

    goto :goto_2

    .line 120
    :catch_1
    move-exception v4

    .line 121
    .local v4, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_3
.end method

.method public getOverflowView()Landroid/view/View;
    .locals 6

    .prologue
    .line 71
    :try_start_0
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mAbsActionBarViewClass:Ljava/lang/Class;

    const-string v5, "mActionMenuPresenter"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 72
    .local v1, "actionMenuPresenterField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 73
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mActionBarView:Landroid/view/ViewParent;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, "actionMenuPresenter":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mOverflowButton"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 75
    .local v3, "overflowButtonField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    .end local v0    # "actionMenuPresenter":Ljava/lang/Object;
    .end local v1    # "actionMenuPresenterField":Ljava/lang/reflect/Field;
    .end local v3    # "overflowButtonField":Ljava/lang/reflect/Field;
    :goto_0
    return-object v4

    .line 77
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 82
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 79
    :catch_1
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1
.end method

.method public getSpinnerView()Landroid/view/View;
    .locals 4

    .prologue
    .line 39
    :try_start_0
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mActionBarViewClass:Ljava/lang/Class;

    const-string v3, "mSpinner"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 40
    .local v1, "spinnerField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 41
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mActionBarView:Landroid/view/ViewParent;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    .end local v1    # "spinnerField":Ljava/lang/reflect/Field;
    :goto_0
    return-object v2

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "TAG"

    const-string v3, "Failed to find actionbar spinner"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 44
    :catch_1
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "TAG"

    const-string v3, "Failed to access actionbar spinner"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getTitleView()Landroid/view/View;
    .locals 4

    .prologue
    .line 55
    :try_start_0
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mActionBarViewClass:Ljava/lang/Class;

    const-string v3, "mTitleView"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 56
    .local v1, "mTitleViewField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mActionBarView:Landroid/view/ViewParent;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    .end local v1    # "mTitleViewField":Ljava/lang/reflect/Field;
    :goto_0
    return-object v2

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "TAG"

    const-string v3, "Failed to find actionbar title"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 60
    :catch_1
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "TAG"

    const-string v3, "Failed to access actionbar title"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
