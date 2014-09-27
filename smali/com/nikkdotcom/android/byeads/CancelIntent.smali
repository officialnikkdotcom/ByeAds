.class public Lcom/nikkdotcom/android/byeads/CancelIntent;
.super Landroid/app/Activity;
.source "CancelIntent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/nikkdotcom/android/byeads/CancelIntent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 16
    .local v0, mNotificationManager:Landroid/app/NotificationManager;
    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 17
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nikkdotcom/android/byeads/FreeMe;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/nikkdotcom/android/byeads/CancelIntent;->startActivity(Landroid/content/Intent;)V

    .line 18
    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/CancelIntent;->finish()V

    .line 19
    return-void
.end method
