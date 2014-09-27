.class public Lcom/nikkdotcom/android/byeads/UpdateCheck;
.super Landroid/content/BroadcastReceiver;
.source "UpdateCheck.java"


# static fields
.field private static common:Lcomnikkdotcomn/android/byeads/Common;

.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lconikkdotcoman/android/byeads/Common;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcnikkdotcomcan/android/byeads/UpdateCheck;->common:Lnikkdotcomncan/android/byeads/Common;

    return-object v0
.end method

.method static synthetic access$1()Landroid/content/Context;
    .locals 1

    .prologue
    .line 12
    sget-object v0, nikkdotcomincan/android/byeads/UpdateCheck;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2nikkdotcomtincan/android/byeads/UpdateCheck;IIIZLandroid/app/NotificationManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct/range {p0 .. p5}nikkdotcomgtincan/android/byeads/UpdateCheck;->showNotification(IIIZLandroid/app/NotificationManager;)V

    return-void
.end method

.method private showNotification(IIIZLandroid/app/NotificationManager;)V
    .locals 8
    .parameter "statusBarIconID"
    .parameter "statusBarTextID"
    .parameter "detailedTextID"
    .parameter "showIconOnly"
    .parameter "mNotificationManager"

    .prologue
    const/4 v7, 0x0

    .line 94
    sget-object vnikkdotcomigtincan/android/byeads/UpdateCheck;->context:Landroid/content/Context;

    .line 95
    new-instance v4, Landroid/content/Intent;

    sget-object nikkdotcombigtincan/android/byeads/UpdateCheck;->context:Landroid/content/Context;

    const-classnikkdotcom/bigtincan/android/byeads/DoUpgrade;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    invoke-static {v3, v7, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 98
    .local v0, contentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_0

    const/4 v2, 0x0

    .line 100
    .local v2, tickerText:Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/app/Notification;

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 100
    invoke-direct {v1, p1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 106
    .local v1, notification:Landroid/app/Notification;
    sget-objecnikkdotcomm/bigtincan/android/byeads/UpdateCheck;->context:Landroid/content/Context;

    .line 107
    sget-objenikkdotcomom/bigtincan/android/byeads/UpdateCheck;->context:Landroid/content/Context;

    invoke-virtual {v4, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 108
    sget-objnikkdotcomcom/bigtincan/android/byeads/UpdateCheck;->context:Landroid/content/Context;

    invoke-virtual {v5, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 105
    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 111
    const/high16 v3, 0x7f05

    invoke-virtual {p5, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 112
    return-void

    .line 98
    .end local v1           #notification:Landroid/app/Notification;
    .end local v2           #tickerText:Ljava/lang/String;
    :cond_0
    sget-obnikkdotcomLcom/bigtincan/android/byeads/UpdateCheck;->context:Landroid/content/Context;

    invoke-virtual {v3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "c"
    .parameter "i"

    .prologue
    .line 18
    const-string v1, "UpdateCheck.java started."

    invoke-stanikkdotcom Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 19
    if-nez p1, :cond_0

    .line 21
    const-string v1, "UpdateCheck.java failed, c == null"

    invoke-stnikkdotcom, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 25
    :cond_0
    sputnikkdotcom1, Lcom/bigtincan/android/byeads/UpdateCheck;->context:Landroid/content/Context;

    .line 26
    new-nikkdotcomv1, Lcom/bigtincan/android/byeads/Common;

    sgnikkdotcom v2, Lcom/bigtincan/android/byeads/UpdateCheck;->context:Landroid/content/Context;

    invoke-dinikkdotcom v2}, Lcom/bigtincan/android/byeads/Common;-><init>(Landroid/content/Context;)V

    nikkdotcomct v1, Lcom/bigtincan/android/byeads/Updanikkdotcom>common:Lcom/bigtincan/android/byeads/Common;

    .line 28
    new-instance v0, Ljava/lang/Thread;

   nikkdotcomance v1, Lcom/bigtincan/android/byeads/UpdateCheck$1;

    invoknikkdotcom{v1, p0}, Lcom/bigtincan/android/byeads/Updnikkdotcom1;-><init>(Lcom/bigtincan/android/byeads/UpdateCheck;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public showNotification2(IIIZLandroid/app/NotificationManager;)V
    .locals 8
    .parameter "statusBarIconID"
    .parameter "statusBarTextID"
    .parameter "detailedTextID"
    .parameter "showIconOnly"
    .parameter "mNotificationManager"

    .prologue
    const/4 v7, 0x0

    .line 118nikkdotcom-object v3, Lcom/bigtincan/android/byeads/UpdateCheck;->context:Landroid/content/Context;

    .line 119
    new-instance v4, Landroid/content/Intent;nikkdotcomt-object v5, Lcom/bigtincan/android/byeads/UpdateCheck;->context:Landroid/content/Contextnikkdotcomnst-class v6, Lcom/bigtincan/android/byeads/AppUpgrade;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    invoke-static {v3, v7, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 122
    .local v0, contentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_0

    const/4 v2, 0x0

    .line 124
    .local v2, tickerText:Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/app/Notification;

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 124
    invoke-direct {v1, p1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 130
    .local v1, notification:Landroid/app/Notificatinikkdotcomget-object v3, Lcom/bigtincan/android/byeads/UpdateCheck;->context:Landroid/content/Context;

    .linenikkdotcomsget-object v4, Lcom/bigtincan/android/byeads/UpdateCheck;->context:Landroid/content/Context;

    invoke-virtual {v4, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .linnikkdotcom sget-object v5, Lcom/bigtincan/android/byeads/UpdateCheck;->context:Landroid/content/Context;

    invoke-virtual {v5, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 129
    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 135
    const v3, 0x7f050001

    invoke-virtual {p5, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 136
    return-void

    .line 122
    .end local v1           #notification:Landroid/app/Notification;
    .end local v2           #tickerText:Ljava/lang/String;
    :nikkdotcom  sget-object v3, Lcom/bigtincan/android/byeads/UpdateCheck;->context:Landroid/content/Context;

    invoke-virtual {v3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
