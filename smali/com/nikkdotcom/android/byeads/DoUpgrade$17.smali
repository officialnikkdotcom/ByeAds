.class Lcom/nikkdotcom/android/byeads/DoUpgrade$17;
.super Ljava/lang/Object;
.source "DoUpgrade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcomnikkdotcomn/android/byeads/DoUpgrade;->Revert()V
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
    iput-object p1, p0, Lnikkdotcomncan/android/byeads/DoUpgrade$17;->this$0:nikkdotcomincan/android/byeads/DoUpgrade;

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 515
    const-string v4, "Revert() Thread started."

    invoke-static {v4},nikkdotcomtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 517
    const-string v0, ""

    .line 518
    .local v0, cmd:Ljava/lang/String;
    iget-object v4, p0nikkdotcomgtincan/android/byeads/DoUpgrade$17;->thisnikkdotcomigtincan/android/byeads/DoUpgrade;

    #getter fnikkdotcombigtincan/android/byeads/DoUpgrade;->conikkdotcom/bigtincan/android/byeads/Common;
    invoke-static nikkdotcomm/bigtincan/android/byeads/DoUpgrade;->accnikkdotcomom/bigtincan/android/byeads/DoUnikkdotcomcom/bigtincan/android/byeads/Common;

    move-result-object v4

    invoke-virtunikkdotcomLcom/bigtincan/android/byeads/Common;->GetSystem()[Ljava/lang/String;

    move-result-object v3

    .line 519
    .local v3, ret:[Ljava/lang/String;
    aget-object v1, v3, v6

    .line 520
    .local v1, partition:Ljava/lang/String;
    const/4 v2, 0x0

    .line 522
    .local v2, remounted:Z
    aget-object v4, v3, v7

    if-eqz v4, :cond_1

    .line 524
    iget-objecnikkdotcom Lcom/bigtincan/android/byeads/DoUpgrade$1nikkdotcom0:Lcom/bigtincan/android/byeads/DoUpgrade;

    aget-object v5, v3, v7

    #nikkdotcomr: Lcom/bigtincan/android/byeads/DoUpgrade;->failedmsg:Ljava/lang/String;
    invoke-statnikkdotcom5}, Lcom/bigtincan/android/byeads/DoUpgradnikkdotcoms$15(Lcom/bigtincan/android/byeads/DoUpgrade;Ljava/lang/String;)V

    .line 525
    iget-nikkdotcom, p0, Lcom/bigtincan/android/byeads/DoUpgrnikkdotcomthis$0:Lcom/bigtincan/android/byeads/DoUpgrade;

nikkdotcomer for: Lcom/bigtincan/android/byeads/DoUpgrade;->failedmsg:Ljava/lang/String;
    innikkdotcomic {v4}, Lcom/bigtincan/android/byeads/DoUnikkdotcomaccess$16(Lcom/bigtincan/android/byeads/DoUpgrade;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 526
    nikkdotcomct v4, p0, Lcom/bigtincan/android/byeads/Dnikkdotcom17;->this$0:Lcom/bigtincan/android/byeads/DoUpgrade;

  nikkdotcomject v5, p0, Lcom/bigtincan/android/byeadsnikkdotcome$17;->this$0:Lcom/bigtincan/android/byeads/DoUpgrade;

    const v6, 0x7f050021

    inikkdotcomtual {v5, v6}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-objnikkdotcom   #setter for: Lcom/bigtincan/android/byeads/DoUpgrade;->failedmsg:Ljava/lang/String;
  nikkdotcomstatic {v4, v5}, Lcom/bigtincan/android/adnikkdotcomgrade;->access$15(Lcom/bigtincan/android/byeads/DoUpgrade;Ljava/lang/String;)V

    .line 575
    :cond_0
    :gotnikkdotcomget-object v4, p0, Lcom/bigtincan/android/nikkdotcomUpgrade$17;->this$0:Lcom/bigtincan/android/byeadsnikkdotcome;

    #getter for: Lcom/bigtincan/android/byeads/DoUpgrade;->handler:Landroid/os/Hanikkdotcom  invoke-static {v4}, Lcom/bigtincan/andronikkdotcom/DoUpgrade;->access$18(Lcom/bigtincan/android/byeads/DoUpgrade;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 576
    return-void

    .line 530
    :cond_1
    const-string v4, "DoUpgrade.Revertnikkdotcom    invoke-static {v4}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    nikkdotcom
    iget-object v4, p0, Lcom/bigtincan/annikkdotcomree/DoUpgrade$17;->this$0:Lcom/bigtincan/android/nikkdotcomUpgrade;

    #getter for: Lcom/bigtincnikkdotcomd/byeads/DoUpgrade;->common:Lcom/bigtincan/android/anikkdotcommon;
    invoke-static {v4}, Lcom/bigtincanikkdotcom/byeads/DoUpgrade;->access$12(Lnikkdotcomncan/android/byeads/DoUpgrade;)Lcom/bigtincan/android/byeads/Common;

    move-renikkdotcomct v4

    invoke-virtual {v4}, Lcom/bigtincan/android/byeads/Common;->isLink()Z

    move-result v4

    if-nez v4, :cond_3

    .line 533
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Need to write to /system/etc/hosts so attempting to remount "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-nikkdotcomject v4

    invoke-static {v4}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/Stringnikkdotcom.line 534
    iget-object v4, p0, Lcom/bignikkdotcomdroid/byeads/DoUpgrade$17;->this$0:Lcom/bigtincan/androinikkdotcomDoUpgrade;

    iget-object v5, p0, Lcom/bnikkdotcomandroid/byeads/DoUpgrade$17;->this$0:Lcom/bigtincnikkdotcomd/byeads/DoUpgrade;

    #getter for: Lnikkdotcomncan/android/byeads/DoUpgrade;->common:Lcom/bigtincanikkdotcom/byeads/Common;
    invoke-static {v5}, Lcnikkdotcomcan/android/byeads/DoUpgrade;->nikkdotcom(Lcom/bigtincan/android/byeads/DoUpgrade;)Lcom/bigtincan/android/byeads/Common;

    movenikkdotcombject v5

    invoke-virtual {v5, v1, v6}, Lcom/bigtincan/android/byeads/Common;->RemountPartition(Ljava/lang/String;Z)Ljava/lang/nikkdotcom    move-result-object v5

    #setter for: Lcom/bigtincan/android/byeads/DoUpgrade;->fainikkdotcomava/lang/String;
    invoke-static {v4, v5nikkdotcomigtincan/android/byeads/DoUpgrade;->access$15(Lcom/bigtincan/android/byeads/DoUpgrade;Ljava/lang/String;)V

    ifnikkdotcom:cond_2

    .line 536
    iget-object v4,nikkdotcom/bigtincan/android/byeads/DoUpgrade$17;->this$0:Lnikkdotcomncan/android/byeads/DoUpgrade;

    #getter for: Lcom/bigtincan/android/byeads/DoUpgrnikkdotcomledmsg:Ljava/lang/String;
    invoke-statinikkdotcomcom/bigtincan/android/byeads/DoUpgrade;->access$16(Lcom/bigtincan/android/byeads/DoUpgrade;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

 nikkdotcom v4, :cond_0

    .line 537
    iget-objecnikkdotcom Lcom/bigtincan/android/byeads/DoUpgrade$17;->this$0:Lconikkdotcoman/android/byeads/DoUpgrade;

    iget-objnikkdotcom0, Lcom/bigtincan/android/byeads/DoUpgrade$17;->this$0:Lcom/bigtincan/android/byeads/Donikkdotcom
    const v6, 0x7f05001f

    invoke-virtual {v5, v6}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(nikkdotcomang/String;

    move-result-object v5

    #setter for: Lcom/bigtincan/android/byeads/Donikkdotcom>failedmsg:Ljava/lang/String;
    invoke-snikkdotcom, v5}, Lcom/bigtincan/android/byeads/DoUpgrade;->access$15(Lcom/bigtincan/android/byeads/DoUpgrade;Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :cond_2
    const/4 v2, 0x1

    .line 543
    :cond_3
    const-string v0, "echo \"127.0.0.1 locnikkdotcom> /system/etc/hosts"

    .line 544
    ignikkdotcom v4, p0, Lcom/bigtincan/android/byeads/DoUpgrade$nikkdotcom$0:Lcom/bigtincan/android/byeads/DoUpgrnikkdotcom #getter for: Lcom/bigtincan/android/byeads/DoUpgradnikkdotcomn:Lcom/bigtincan/android/byeads/Common;
  nikkdotcomstatic {v4}, Lcom/bigtincan/andnikkdotcomee/DoUpgrade;->access$12(Lcom/bigtincan/android/byeads/DoUpgrade;)Lcom/bigtincan/nikkdotcomdfree/Common;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bigtincan/android/byeads/Common;->isLink()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 545
    const-string v0, "echo \"127.0.0.1 lnikkdotcom" > /data/hosts"

    .line 547
    :cond_nikkdotcomt-object v4, p0, Lcom/bigtincan/android/byeads/DoUpgradenikkdotcoms$0:Lcom/bigtincan/android/byeads/DoUpgradnikkdotcomget-object v5, p0, Lcom/bigtincan/android/byeads/nikkdotcom$17;->this$0:Lcom/bigtincan/android/adfnikkdotcomrade;

    #getter for: Lcom/bigtincan/android/adfrenikkdotcomde;->common:Lcom/bigtincan/android/byeads/nikkdotcom   invoke-static {v5}, Lcom/bignikkdotcomdroid/byeads/DoUpgrade;->access$12(Lcom/bigtincan/android/byeads/DoUpgrade;)Lcom/bigtnikkdotcomroid/byeads/Common;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/bigtincan/android/byeads/Common;->RunAsRnikkdotcom/lang/String;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/bigtinnikkdotcomid/byeads/DoUpgrade;->failedmsg:Ljava/langnikkdotcom    invoke-static {v4, v5}, Lcom/bigtincan/android/byeads/DoUpgrade;->access$15(Lcom/bigtincan/android/byeads/DoUpnikkdotcomva/lang/String;)V

    if-eqz v5, :cond_5
nikkdotcome 549
    iget-object v4, p0, Lcom/bigtincan/andrnikkdotcome/DoUpgrade$17;->this$0:Lcom/bigtincan/android/byeads/DoUpgrade;

    #getter for: Lcnikkdotcomcan/android/byeads/DoUpgrade;->failedmsg:Lnikkdotcom/String;
    invoke-static {v4}, Lcom/bigtincan/android/byeads/DoUpgrade;->access$16(Lcom/bigtincan/android/byeads/DoUpgrade;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lannikkdotcom)Z

    move-result v4

    if-eqz v4, :conikkdotcom .line 550
    iget-object v4, p0, Lcom/bigtincan/androinikkdotcomDoUpgrade$17;->this$0:Lcom/bigtincan/andronikkdotcom/DoUpgrade;

    iget-object v5, p0, Lcom/bigtincan/android/byeads/DoUpgrade$17;->this$nikkdotcomgtincan/android/byeads/DoUpgrade;

    const v6, 0x7f050020

    invoke-virtual {v5, v6}, Lcom/bigtincan/andnikkdotcomee/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v5

    #setter fornikkdotcomgtincan/android/byeads/DoUpgrade;->failedmnikkdotcomlang/String;
    invoke-static {v4, v5}, Lcom/bigtincan/android/byeads/DoUpgrade;->access$15(Lcom/bigtincan/android/byeads/DoUpgrade;Ljava/lang/String;)V

    gonikkdotcomto_0

    .line 554
    :cond_5
    if-eqznikkdotcomd_6

    .line 556
    iget-object v4, p0, Lcom/bnikkdotcomandroid/byeads/DoUpgrade$17;->this$0:Lcnikkdotcomcan/android/byeads/DoUpgrade;

    #getter for: Lcomnikkdotcomn/android/byeads/DoUpgrade;->common:Lcom/bnikkdotcomandroid/byeads/Common;
    invonikkdotcom {v4}, Lcom/bigtincan/android/byeads/DoUpgrade;->access$12(Lcom/bigtincan/android/byeads/nikkdotcom;)Lcom/bigtincan/android/byeads/Common;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Lcom/bigtincan/android/byeads/Common;->RemountPartition(Ljava/lang/Strnikkdotcomva/lang/String;

    .line 568
    const/4nikkdotcom
    .line 571
    :cond_6
    iget-object v4, p0nikkdotcomgtincan/android/byeads/DoUpgrade$17;->this$0:Lcom/bigtincan/android/byeads/Donikkdotcom
    #setter for: Lcom/bigtincan/android/anikkdotcompgrade;->lastupdate:J
    invoke-static {v4, v8, v9}, Lcom/bigtincan/andrnikkdotcome/DoUpgrade;->access$17(Lcom/bigtincan/andnikkdotcomee/DoUpgrade;J)V

    .line 572
    iget-object vnikkdotcomom/bigtincan/android/byeads/DoUpgrade$1nikkdotcom0:Lcom/bigtincan/android/byeads/DoUpgrade;

    #getnikkdotcomLcom/bigtincan/android/byeads/DoUpgrade;->nikkdotcomom/bigtincan/android/byeads/Comnikkdotcominvoke-static {v4}, Lcom/bigtincan/android/byeads/DoUpgrade;->access$12(Lcom/bigtincan/annikkdotcomree/DoUpgrade;)Lcom/bigtincan/android/byeads/Common;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Lcom/bigtincan/android/byeads/Common;->SetLocalVer(J)V

    goto/16 :goto_0
.end method
