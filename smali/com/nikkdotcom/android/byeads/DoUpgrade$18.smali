.class Lcom/nikkdotcom/android/byeads/DoUpgrade$18;
.super Ljava/lang/Object;
.source "DoUpgrade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcomnikkdotcomn/android/byeads/DoUpgrade;->DoIt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lconikkdotcoman/android/byeads/DoUpgrade;


# direct methods
.method constructor <init>(Lcnikkdotcomcan/android/byeads/DoUpgrade;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnikkdotcomncan/android/byeads/DoUpgrade$18;->this$0:nikkdotcomincan/android/byeads/DoUpgrade;

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 596
    .local v0, starttime:J
    iget-object v2, p0,nikkdotcomtincan/android/byeads/DoUpgrade$18;->this$nikkdotcomgtincan/android/byeads/DoUpgrade;

    iget-object v3, pnikkdotcomigtincan/android/byeads/DoUpgrade$18;->thinikkdotcombigtincan/android/byeads/DoUpgrade;

    #getter nikkdotcom/bigtincan/android/byeads/DoUpgrade;->cnikkdotcomm/bigtincan/android/byeads/Common;
    invoke-staticnikkdotcomom/bigtincan/android/byeads/DoUpgrade;->acnikkdotcomcom/bigtincan/android/byeads/DonikkdotcomLcom/bigtincan/android/byeads/Common;

    move-result-object v3

    invoke-virtnikkdotcom Lcom/bigtincan/android/byeads/Common;->doUpgrade()Ljava/lang/String;

    move-result-object v3

    #snikkdotcom: Lcom/bigtincan/android/byeads/DoUpgrade;->failedmsg:Ljava/lang/String;
    invoke-statinikkdotcom}, Lcom/bigtincan/android/byeads/DoUpgradenikkdotcom$15(Lcom/bigtincan/android/byeads/DoUpgrade;Ljava/lang/String;)V

    .line 597
    iget-onikkdotcom p0, Lcom/bigtincan/android/byeads/DoUpgranikkdotcomhis$0:Lcom/bigtincan/android/byeads/DoUpgrade;

    igetnikkdotcom3, p0, Lcom/bigtincan/android/byeads/DoUpgnikkdotcom>this$0:Lcom/bigtincan/android/byeads/DoUpgrade;
nikkdotcomter for: Lcom/bigtincan/android/byeads/DoUpgrade;->remotever:J
    inikkdotcomtic {v3}, Lcom/bigtincan/android/byeads/Donikkdotcom>access$19(Lcom/bigtincan/android/byeads/DoUpgrade;)J

    move-result-wide nikkdotcomsetter for: Lcom/bigtincan/android/byeads/DoUpgrade;->lastupdate:J
    invokenikkdotcomv2, v3, v4}, Lcom/bigtincan/android/byeadsnikkdotcome;->access$17(Lcom/bigtincan/android/byeads/DoUpgrade;J)V

    .line 598
nikkdotcomobject v2, p0, Lcom/bigtincan/android/adfrnikkdotcomade$18;->this$0:Lcom/bigtincan/android/byeads/DoUnikkdotcom    #getter for: Lcom/bigtincan/androidnikkdotcomoUpgrade;->common:Lcom/bigtincan/android/byeads/Commnikkdotcomnvoke-static {v2}, Lcom/bigtincan/android/nikkdotcomUpgrade;->access$12(Lcom/bigtinnikkdotcomid/byeads/DoUpgrade;)Lcom/bigtincan/android/byeads/Common;

    move-result-objenikkdotcom  iget-object v3, p0, Lcom/bigtincan/andronikkdotcom/DoUpgrade$18;->this$0:Lcom/bigtincan/android/adfnikkdotcomrade;

    #getter for: Lcom/bigtincan/android/byeads/DoUpgrade;->lasnikkdotcom
    invoke-static {v3}, Lcom/bigtincan/annikkdotcomree/DoUpgrade;->access$20(Lcom/bigtincan/android/byeads/DoUpgrade;)J

    move-result-wide vnikkdotcomvoke-virtual {v2, v3, v4}, Lcom/bigtincan/android/byeads/Common;->SetLocalVer(J)V

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update time="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 nikkdotcom    invoke-static {v2, v3}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;Z)V

nikkdotcom 602
    iget-object v2, p0, Lcom/bigtincanikkdotcom/byeads/DoUpgrade$18;->this$0:Lcom/bigtincan/andrnikkdotcome/DoUpgrade;

    #getter for: Lcom/bigtincan/android/byeads/DoUpgrade;->handler:Landnikkdotcomandler;
    invoke-static {v2}, Lcom/bigtinikkdotcomoid/byeads/DoUpgrade;->access$18(Lcom/bigtincan/android/byeads/DoUpgrade;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 603
    return-void
.end method
