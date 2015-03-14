.class public final Lcom/fiksu/asotracking/InstallTracking;
.super Landroid/content/BroadcastReceiver;
.source "InstallTracking.java"


# static fields
.field private static final FIKSU_RECEIVER:Ljava/lang/String; = "com.fiksu.asotracking.InstallTracking"

.field private static final INTENT_NAME:Ljava/lang/String; = "com.android.vending.INSTALL_REFERRER"

.field private static final MAX_BLOCK_MS:J = 0xbb8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static checkForFiksuReceiver(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 169
    invoke-static {p0}, Lcom/fiksu/asotracking/InstallTracking;->readReceiversFromManifest(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 171
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 172
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 173
    const-string v2, "FiksuTracking"

    const-string v3, "THE FIKSU INSTALL TRACKING CODE ISN\'T INSTALLED CORRECTLY!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v0, "No receivers declared for com.android.vending.INSTALL_REFERRER Intent in AndroidManifest.xml; first and only receiver must be com.fiksu.asotracking.InstallTracking"

    .line 176
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "FiksuTracking"

    const-string v3, "No receivers declared for com.android.vending.INSTALL_REFERRER Intent in AndroidManifest.xml; first and only receiver must be com.fiksu.asotracking.InstallTracking"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v2, Lcom/fiksu/asotracking/FiksuIntegrationError;

    const-string v3, "No receivers declared for com.android.vending.INSTALL_REFERRER Intent in AndroidManifest.xml; first and only receiver must be com.fiksu.asotracking.InstallTracking"

    invoke-direct {v2, v3}, Lcom/fiksu/asotracking/FiksuIntegrationError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "com.fiksu.asotracking.InstallTracking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    const-string v2, "FiksuTracking"

    const-string v3, "THE FIKSU INSTALL TRACKING CODE ISN\'T INSTALLED CORRECTLY!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected first receiver \""

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 184
    const-string v3, " Intent in AndroidManifest.xml; first and only receiver must be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.fiksu.asotracking.InstallTracking"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .restart local v0    # "msg":Ljava/lang/String;
    const-string v2, "FiksuTracking"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v2, Lcom/fiksu/asotracking/FiksuIntegrationError;

    invoke-direct {v2, v0}, Lcom/fiksu/asotracking/FiksuIntegrationError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 191
    const-string v2, "FiksuTracking"

    const-string v3, "THE FIKSU INSTALL TRACKING CODE ISN\'T INSTALLED CORRECTLY!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v0, "Multiple receivers declared for com.android.vending.INSTALL_REFERRER Intent in AndroidManifest.xml; first and only receiver must be com.fiksu.asotracking.InstallTracking"

    .line 194
    .restart local v0    # "msg":Ljava/lang/String;
    const-string v2, "FiksuTracking"

    const-string v3, "Multiple receivers declared for com.android.vending.INSTALL_REFERRER Intent in AndroidManifest.xml; first and only receiver must be com.fiksu.asotracking.InstallTracking"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v2, Lcom/fiksu/asotracking/FiksuIntegrationError;

    const-string v3, "Multiple receivers declared for com.android.vending.INSTALL_REFERRER Intent in AndroidManifest.xml; first and only receiver must be com.fiksu.asotracking.InstallTracking"

    invoke-direct {v2, v3}, Lcom/fiksu/asotracking/FiksuIntegrationError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private forwardToOtherReceivers(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    invoke-static {p1}, Lcom/fiksu/asotracking/InstallTracking;->readTargetsFromMetaData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 81
    .local v2, "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "badlyBehaved":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 94
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 101
    return-void

    .line 83
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 84
    .local v4, "value":Ljava/lang/String;
    const-string v5, "com.fiksu.asotracking.InstallTracking"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 87
    :cond_2
    const-string v5, "getjar."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    const/4 v5, 0x0

    invoke-interface {v0, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 90
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 94
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    .local v1, "className":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v1}, Lcom/fiksu/asotracking/InstallTracking;->forwardToReceiver(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 98
    .end local v1    # "className":Ljava/lang/String;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    .restart local v1    # "className":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v1}, Lcom/fiksu/asotracking/InstallTracking;->forwardToReceiver(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private forwardToReceiver(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "receiverClassName"    # Ljava/lang/String;

    .prologue
    .line 68
    :try_start_0
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/BroadcastReceiver;

    .line 69
    .local v2, "receiver":Landroid/content/BroadcastReceiver;
    invoke-virtual {v2, p1, p2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 70
    const-string v3, "FiksuTracking"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Forwarded to: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    .end local v2    # "receiver":Landroid/content/BroadcastReceiver;
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "missing":Ljava/lang/ClassNotFoundException;
    const-string v3, "FiksuTracking"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Forward failed, couldn\'t load class: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    .end local v1    # "missing":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 74
    .local v0, "error":Ljava/lang/Exception;
    const-string v3, "FiksuTracking"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Forwarding to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static readReceiversFromManifest(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 147
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.vending.INSTALL_REFERRER"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v2, "installReferrerIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 151
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v5, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 165
    .end local v2    # "installReferrerIntent":Landroid/content/Intent;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_1
    return-object v5

    .line 152
    .restart local v2    # "installReferrerIntent":Landroid/content/Intent;
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 153
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_0

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 157
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "installReferrerIntent":Landroid/content/Intent;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 162
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v5, 0x0

    .restart local v5    # "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method private static readTargetsFromMetaData(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v6, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 107
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v5, :cond_1

    .line 108
    const-string v7, "FiksuTracking"

    const-string v8, "Couldn\'t get PackageManager."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    :goto_0
    return-object v6

    .line 113
    :cond_1
    :try_start_0
    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/fiksu/asotracking/InstallTracking;

    invoke-direct {v7, p0, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    const/16 v8, 0x80

    .line 113
    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 115
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_2

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    if-nez v7, :cond_3

    .line 116
    :cond_2
    const-string v7, "FiksuTracking"

    const-string v8, "No forwarding metadata."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v4

    .line 137
    .local v4, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "FiksuTracking"

    const-string v8, "Couldn\'t get info for receivers."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    .end local v4    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_3
    :try_start_1
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 122
    .local v3, "metaData":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 125
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    .local v1, "key":Ljava/lang/String;
    const-string v8, "forward."

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 129
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 130
    :cond_5
    const-string v8, "FiksuTracking"

    const-string v9, "Couldn\'t parse receiver from metadata."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 133
    :cond_6
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private uploadConversionEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    :try_start_0
    const-string v2, "referrer"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "referrer":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 56
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    :goto_0
    new-instance v2, Lcom/fiksu/asotracking/ConversionEventTracker;

    invoke-direct {v2, p1, v1}, Lcom/fiksu/asotracking/ConversionEventTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v3, v4}, Lcom/fiksu/asotracking/ConversionEventTracker;->uploadEventSynchronously(J)V

    .line 64
    .end local v1    # "referrer":Ljava/lang/String;
    :goto_1
    return-void

    .line 58
    .restart local v1    # "referrer":Ljava/lang/String;
    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v1    # "referrer":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FiksuTracking"

    const-string v3, "Unhandled exception processing intent."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/fiksu/asotracking/InstallTracking;->uploadConversionEvent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/fiksu/asotracking/InstallTracking;->forwardToOtherReceivers(Landroid/content/Context;Landroid/content/Intent;)V

    .line 50
    return-void
.end method
