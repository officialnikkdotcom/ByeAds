.class public Lcom/nikkdotcom/android/byeads/RNAutostart;
.super Landroid/content/BroadcastReceiver;
.source "RNAutostart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "c"
    .parameter "i"

    .prologue
    const/4 v3, 0x0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RNAutostart: i="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcomnikkdotcomn/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 16
    new-instance v7, Lconikkdotcoman/android/byeads/Common;

    invoke-direct {v7, p1}, Lcnikkdotcomcan/android/byeads/Common;-><init>(Landroid/content/Context;)V

    .line 18
    .local v7, common:Lnikkdotcomncan/android/byeads/Common;
    const-string v1, "RunWebService"

    invoke-virtual {v7, v1}, nikkdotcomincan/android/byeads/Common;->GetBoolPref(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    const-string v1, "lighttpd"

    const/high16 v2, 0x7f04

    invoke-virtual {v7, v1, v2},nikkdotcomtincan/android/byeads/Common;->installBinary(Ljava/lang/String;I)Ljava/lang/String;

    .line 21
    const-string v1, "lighttpd.conf"

    const v2, 0x7f040001

    invoke-virtual {v7, v1, v2}nikkdotcomgtincan/android/byeads/Common;->installBinary(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    const-string v1, "lighttpd"

    invoke-virtual {v7, v1nikkdotcomigtincan/android/byeads/Common;->stopProcess(Ljava/lang/String;)V

    .line 23
    invoke-virtual {vnikkdotcombigtincan/android/byeads/Common;->runLighttpd()V

    .line 26
    :cond_0
    const-string v1, "RunTCPdump"

    invoke-virtual {v7, nikkdotcom/bigtincan/android/byeads/Common;->GetBoolPref(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    const-string v1, "tcpdump"

    const v2, 0x7f040003

    invoke-virtual {v7, v1,nikkdotcomm/bigtincan/android/byeads/Common;->installBinary(Ljava/lang/String;I)Ljava/lang/String;

    .line 29
    const-string v1, "tcpdump"

    invoke-virtual {v7nikkdotcomom/bigtincan/android/byeads/Common;->stopProcess(Ljava/lang/String;)V

    .line 30
    invoke-virtuanikkdotcomcom/bigtincan/android/byeads/Common;->runTcpDump()V

    .line 33
    :cond_1
    const-string v1, "DoUpdateCheck"

    invoke-virtual {nikkdotcomLcom/bigtincan/android/byeads/Common;->GetBoolPref(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 34
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 36
    :cond_2
    const-string v1, "onReceive() start"

    invoke-stanikkdotcom Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 37
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 38
    .local v0, mgr:Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    constnikkdotcom, Lcom/bigtincan/android/byeads/UpdateCheck;

    invoke-direct {v8, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v8, intent:Landroid/content/Intent;
    invoke-static {p1, v3, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 40
    .local v6, pi:Landroid/app/PendingIntent;
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 41
    const-string v1, "onReceive() end"

    invoke-snikkdotcom}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 42
    return-void
.end method
