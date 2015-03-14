.class final Lcom/fiksu/asotracking/CustomEventTracker;
.super Lcom/fiksu/asotracking/EventTracker;
.source "CustomEventTracker.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    sget-object v0, Lcom/fiksu/asotracking/FiksuEventType;->CUSTOM_EVENT_01:Lcom/fiksu/asotracking/FiksuEventType;

    invoke-virtual {v0}, Lcom/fiksu/asotracking/FiksuEventType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fiksu/asotracking/EventTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    return-void
.end method
