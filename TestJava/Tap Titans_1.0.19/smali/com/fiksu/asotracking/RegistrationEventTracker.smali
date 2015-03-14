.class final Lcom/fiksu/asotracking/RegistrationEventTracker;
.super Lcom/fiksu/asotracking/EventTracker;
.source "RegistrationEventTracker.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/fiksu/asotracking/FiksuTrackingManager$RegistrationEvent;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Lcom/fiksu/asotracking/FiksuTrackingManager$RegistrationEvent;
    .param p3, "username"    # Ljava/lang/String;

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/fiksu/asotracking/FiksuEventType;->REGISTRATION:Lcom/fiksu/asotracking/FiksuEventType;

    invoke-virtual {v1}, Lcom/fiksu/asotracking/FiksuEventType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/fiksu/asotracking/FiksuTrackingManager$RegistrationEvent;->getNameSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fiksu/asotracking/EventTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/fiksu/asotracking/FiksuEventParameter;->USERNAME:Lcom/fiksu/asotracking/FiksuEventParameter;

    invoke-virtual {p0, v0, p3}, Lcom/fiksu/asotracking/RegistrationEventTracker;->addParameter(Lcom/fiksu/asotracking/FiksuEventParameter;Ljava/lang/String;)V

    .line 19
    return-void
.end method
