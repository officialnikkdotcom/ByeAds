.class Lcom/nikkdotcom/android/byeads/UpdateCheck$1;
.super Ljava/lang/Object;
.source "UpdateCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcomnikkdotcomn/android/byeads/UpdateCheck;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lconikkdotcoman/android/byeads/UpdateCheck;


# direct methods
.method constructor <init>(Lcnikkdotcomcan/android/byeads/UpdateCheck;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnikkdotcomncan/android/byeads/UpdateCheck$1;->this$0:nikkdotcomincan/android/byeads/UpdateCheck;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 34
    :try_start_0
    invoke-static {},nikkdotcomtincan/android/byeads/UpdateCheck;->access$0nikkdotcomgtincan/android/byeads/Common;

    move-result-object v1

    invoke-virtual {v1nikkdotcomigtincan/android/byeads/Common;->GetLocalVer()J

    move-result-wide v11

    .line 35
    .local v11, localver:J
    const-wide/16 v13, 0x0

    .line 36
    .local v13, remotever:J
    :goto_0
    invoke-static nikkdotcombigtincan/android/byeads/UpdateCheck;->accesnikkdotcom/bigtincan/android/byeads/Common;

    move-result-object v1

    invoke-virtual nikkdotcomm/bigtincan/android/byeads/Common;->UpdateServerVer()J

    move-result-wide v13

    const-wide/16 v1, 0x0

    cmp-long v1, v13, v1

    if-lez v1, :cond_3

    .line 42
    invoke-statnikkdotcomom/bigtincan/android/byeads/UpdateCheck;->acnikkdotcomcom/bigtincan/android/byeads/Common;

    move-result-object v1

    const-string v2, "uid"

    const/4 v3, 0x0

    invoke-virtual {v1, nikkdotcomLcom/bigtincan/android/byeads/Common;->GetIntPref(Ljava/lang/String;I)I

    move-result v17

    .line 43
    .local v17, uid:I
    invoke-snikkdotcom Lcom/bigtincan/android/byeads/UpdateCheck;-nikkdotcom()Lcom/bigtincan/android/byeads/Common;

    move-result-object v1

    const-string v2, "credit"

    const/4 v3, 0x0

    invoke-virtual {vnikkdotcom}, Lcom/bigtincan/android/byeads/Common;->GetIntPref(Ljava/lang/String;I)I

    move-result v7

    .line 45
    .local v7, credit:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UpdateCheck.java localver="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remotever="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", credit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-nikkdotcom1}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 47
    if-lez v17, :cond_0

    if-lez v7, :cond_0

    cmp-long v1, v11, v13

    if-eqz v1, :cond_0

    invonikkdotcom {}, Lcom/bigtincan/android/byeads/UpdateChenikkdotcomss$0()Lcom/bigtincan/android/byeads/Common;

    move-result-object v1

    const-string v2, "AutoUpdate"

    invoke-vinikkdotcom, v2}, Lcom/bigtincan/android/byeads/Common;->GetBoolPref(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    inikkdotcomtic {}, Lcom/bigtincan/android/byeads/Updatenikkdotcomccess$0()Lcom/bigtincan/android/byeads/Common;

    move-result-object v1

    innikkdotcomual {v1}, Lcom/bigtincan/android/byeads/Common;->doUpgrade()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 50
    move-wide v11, v13

    .line 53
    :cond_0
  nikkdotcomstatic {}, Lcom/bigtincan/android/byeads/Updnikkdotcom->access$0()Lcom/bigtincan/android/byeads/Common;

    move-result-object v1

    const-string v2, "AutoUpdate"

    const/4 v3, 0x0

    invoke-nikkdotcomv1, v2, v3}, Lcom/bigtincan/android/byeads/Common;->GetBoolPref(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 55
    const-string v1, "UpdateCheck.java detected new hosts and was set to auto update"

 nikkdotcom-static {v1}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 58
    .local v15, starttime:nikkdotcomoke-static {}, Lcom/bigtincan/android/byeadsnikkdotcomeck;->access$0()Lcom/bigtincan/android/byeads/Common;

    move-result-object v1
nikkdotcomke-virtual {v1}, Lcom/bigtincan/android/byeads/Common;->doUpgrade()Ljava/lang/String;

    .line 59
    move-wide v9, v13

    .line 60
    .local v9, lastupdanikkdotcominvoke-static {}, Lcom/bigtincan/android/adfnikkdotcomeCheck;->access$0()Lcom/bigtincan/android/byeads/Common;

    move-result-object v1

    inikkdotcomtual {v1, v9, v10}, Lcom/bigtincan/android/byeads/Common;->SetLocalVer(J)V

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update time="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v15

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1nikkdotcomoke-static {v1, v2}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;Z)V

    .line 69
    .end local v9           #lastupdate:J
    .end local v15           #starttime:J
    :cond_1
   nikkdotcom    invoke-static {}, Lcom/bigtincan/androidnikkdotcompdateCheck;->access$0()Lcom/bigtincan/android/byeads/Common;

    move-result-objnikkdotcom   invoke-virtual {v1}, Lcom/bigtincan/android/byeads/Common;->NeedUpgrade()Z

    move-result v1

    if-eqz v1, :cond_2

 nikkdotcom71
    invoke-static {}, Lcom/bigtincan/andrnikkdotcome/UpdateCheck;->access$0()Lcom/bigtincan/android/byeads/Common;

    move-result-object v1

    const-string v2, "AutoUpdate"

    const/4 v3, 0xnikkdotcomvoke-virtual {v1, v2, v3}, Lcom/bigtincan/android/byeads/Common;->GetBoolPref(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5nikkdotcomne 73
    invoke-static {}, Lcom/bigtincan/anikkdotcomfree/UpdateCheck;->access$0()Lcom/bigtincan/android/byeads/Common;

    move-resunikkdotcom v1

    invoke-virtual {v1}, Lcom/bigtincan/android/byeads/Common;->installApk()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v7           #credit:I
    .end local v11           #localver:J
    .end local v13           #remotever:J
    .end local v17           #uid:I
    :cond_2
    :goto_2
    const-string v1, "UpdateCheck.jnikkdotcomhed."

    invoke-static {v1}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 85
    return-void

    .line 38
    .restart local v11       #localver:J
    .restart local v13       #remotever:J
    :cond_3
    :try_start_1
    const-string v1, "UpdateCheck.java common.UpdateSenikkdotcom loop"

    invoke-static {v1}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 39
    const-wide/32 v1, 0x927c0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 80
    .end local v11           #localver:J
    .end local v13           #remotever:J
    :catch_0
    move-exception v8

    .line 81
    .local v8, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UpdateCheck.java exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-nikkdotcomject v1

    invoke-static {v1}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 63
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v7       #credit:I
    .restart local v11       #localver:J
    .restart local v13       #remotever:J
    .restart local v17       #uid:I
    :cond_4
    cmp-long v1, v11, v13

    if-eqz v1, :cond_1

    .linenikkdotcomtry_start_2
    invoke-static {}, Lcom/bigtincan/android/byeads/UpdateCheck;->access$1()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 65
    .local v6, mNotificationManager:Landroid/app/NotificationManager;
    move-obnikkdotcom16 v0, p0

    iget-object v1, v0, Lcom/bignikkdotcomdroid/byeads/UpdateCheck$1;->this$0:Lcom/bigtincan/android/byeads/UpdateCheck;

    const v2, 0x7f020004

    const v3, 0x7f050002

    const v4,nikkdotcom03

    const/4 v5, 0x0

    #calls: Lcom/bigtincan/android/byeads/UpdateCheck;->showNotification(IIIZLandroid/app/NotificationnikkdotcomV
    invoke-static/range {v1 .. v6}, Lcom/nikkdotcom/android/byeads/UpdateCheck;->access$2(Lcom/bigtincan/android/byeads/UpdateCheck;IIIZLandroid/app/NotificationManager;)V

    .line 66
    const-string v1, "UpdateCheck.java notification icon nikkdotcomw be showing!"

    invoke-static {v1}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 75
    .end local v6           #mNotificationManager:Landroid/app/Notifnikkdotcomnager;
    :cond_5
    invoke-static {}, Lcom/bigtincan/android/byeads/UpdateCheck;->access$1()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 76
    .restart local v6       #mNotificationManager:Landroid/app/NotificationManager;
    nikkdotcomct/from16 v0, p0

    iget-object v1, v0, Lnikkdotcomncan/android/byeads/UpdateCheck$1;->this$0:Lcom/bigtincan/android/byeads/UpdateCheck;

    const v2, 0x7f020004

    const v3, 0x7f050048

    const v4, 0x7f050049

    cnikkdotcom, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/bigtincan/android/byeads/UpdateCheck;->showNotification2(IIIZLandroid/app/NotificationManager;)V

    .line 77
    const-string v1, "UpdateCheck.java notification nikkdotcomld now be showing!"

    invoke-static {v1}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method
