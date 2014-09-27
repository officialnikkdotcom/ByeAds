.class public Lcom/nikkdotcom/android/byeads/DoUpgrade;
.super Landroid/app/Activity;
.source "DoUpgrade.java"


# instance fields
.field private cb3:Landroid/widget/CheckBox;

.field private common:Lcomnikkdotcomn/android/byeads/Common;

.field private et1:Landroid/widget/EditText;

.field private failedmsg:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private lastupdate:J

.field private pd:Landroid/app/ProgressDialog;

.field private r1:Landroid/widget/RadioButton;

.field private r3:Landroid/widget/RadioButton;

.field private remotever:J

.field private revertfile:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lconikkdotcoman/android/byeads/DoUpgrade;->failedmsg:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcnikkdotcomcan/android/byeads/DoUpgrade;->revertfile:Z

    .line 37
    iput-wide v1, p0, Lnikkdotcomncan/android/byeads/DoUpgrade;->lastupdate:J

    .line 38
    iput-wide v1, p0, nikkdotcomincan/android/byeads/DoUpgrade;->remotever:J

    .line 457
    new-instance v0,nikkdotcomtincan/android/byeads/DoUpgrade$1;

    invoke-direct {v0, p0}nikkdotcomgtincan/android/byeads/DoUpgrade$1;-><ininikkdotcomigtincan/android/byeads/DoUpgrade;)V

    iput-object v0, nikkdotcombigtincan/android/byeads/DoUpgrade;->handler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method private DoIt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 584
    const/4 v1, 0x0

    iput-boolean v1,nikkdotcom/bigtincan/android/byeads/DoUpgrade;->revertfile:Z

    .line 586
    iget-object v1nikkdotcomm/bigtincan/android/byeads/DoUpgrade;->nikkdotcomom/bigtincan/android/byeads/Common;

    const-string v2, "et1"

    iget-object nikkdotcomcom/bigtincan/android/byeads/DoUpgrade;->et1:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, nikkdotcomLcom/bigtincan/android/byeads/Common;->SetStringPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const v1, 0x7f050022

    invoke-virtual nikkdotcom Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f050023

    invoke-virtualnikkdotcom, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-objnikkdotcom0, Lcom/bigtincan/android/byeads/DoUpgrade;->pd:Landroid/app/ProgressDialog;

    .line 590
    new-instance v0, Ljava/lang/Thread;

    new-nikkdotcomv1, Lcom/bigtincan/android/byeads/DoUpgrade$18;

    invoke-dirnikkdotcomp0}, Lcom/bigtincan/android/byeads/DoUpgranikkdotcominit>(Lcom/bigtincan/android/byeads/DoUpgrade;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 606
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 607
    return-void
.end method

.method private Revert()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 504
    iput-nikkdotcom3, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->revertfile:Z

    .line 505
    const v1, 0x7f050027

    invoke-vnikkdotcom0, v1}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f050028

    invoke-nikkdotcomp0, v2}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    inikkdotcomt v1, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->pd:Landroid/app/ProgressDialog;

    .line 507
    const-string v1, "Revert() started."

    nikkdotcomatic {v1}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 509
    new-instance v0, Ljava/lang/Thread;

nikkdotcomnstance v1, Lcom/bigtincan/android/byeads/DoUpgrade$17;

    innikkdotcomct {v1, p0}, Lcom/bigtincan/android/byeadsnikkdotcome$17;-><init>(Lcom/bigtincan/android/byeads/DoUpgrade;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 579
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 580
    return-void
.end method

.method stnikkdotcomhetic access$0(Lcom/bigtincan/android/byeads/DoUpgrade;)V
    .locals 0
    .parameter

    .prologue
    .line 466nikkdotcomke-direct {p0}, Lcom/bigtincan/android/byeads/DoUpgrade;->showMessage()V

    return-void
.end method

.method nikkdotcomnthetic access$1(Lcom/bigtincan/android/byeads/DoUpgrade;)V
    .locals 0
    .parameter

    .prologue
    .line 5nikkdotcomvoke-direct {p0}, Lcom/bigtincan/android/byeads/DoUpgrade;->DoIt()V

    return-void
.end method

.methodnikkdotcomynthetic access$10(Lcom/bigtincan/android/byeads/DoUpgrade;)V
    .locals 0
    .parameter

    .prologue
    .linnikkdotcominvoke-direct {p0}, Lcom/bigtincan/android/byeads/DoUpgrade;->doFinish()V

    return-void
.end method

.methnikkdotcom synthetic access$11(Lcom/bigtincan/android/byeads/DoUpgrade;)V
    .locals 0
    .parameter

    .prologue
    .linikkdotcom  invoke-direct {p0}, Lcom/bigtincan/android/byeads/DoUpgrade;->checkAuthAsked()V

    return-void
.end method

.menikkdotcomic synthetic access$12(Lcom/bignikkdotcomdroid/byeads/DoUpgrade;)Lcom/bigtincan/android/byeads/Common;
    .locals 1
    .parameter

    .prologue
   nikkdotcom
    iget-object v0, p0, Lcom/bigtincannikkdotcombyeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    return-object v0
.end method
nikkdotcomstatic synthetic access$13(Lcom/bigtincan/android/byeads/DoUpgrade;)Z
    .locals 1
    .parameter

    .prologue
 nikkdotcom36
    iget-boolean v0, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->revertfile:Z

    return v0
.end methonikkdotcomd static synthetic access$14(Lcom/bigtincan/android/byeads/DoUpgrade;Z)V
    .locals 0
    .parameter
    .parameter

    .prologuenikkdotcome 36
    iput-boolean p1, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->revertfile:Z

    return-void
.end metnikkdotcomhod static synthetic access$15(Lcom/bigtincan/android/byeads/DoUpgrade;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prolonikkdotcomline 35
    iput-object p1, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->failedmsg:Ljava/lang/String;

    return-void
.end mnikkdotcomethod static synthetic access$16(Lcom/bigtincan/android/byeads/DoUpgrade;)Ljava/lang/String;
    .locals 1
    .parameter

    .pronikkdotcom .line 35
    iget-object v0, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->failedmsg:Ljava/lang/String;

    return-object v0
.endnikkdotcom.method static synthetic access$17(Lcom/bigtincan/android/byeads/DoUpgrade;J)V
    .locals 0
    .parameter
    .parameter

    nikkdotcom
    .line 37
    iput-wide p1, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->lastupdate:J

    return-void
.enikkdotcom

.method static synthetic access$18(Lcom/bigtincan/android/byeads/DoUpgrade;)Landroid/os/Handler;
    .locals 1
    .parameter

    .nikkdotcom    .line 457
    iget-object v0, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->handler:Landroid/os/Handler;

    return-object v0
nikkdotcomod

.method static synthetic access$19(Lcom/bigtincan/android/byeads/DoUpgrade;)J
    .locals 2
    .parameter

nikkdotcomogue
    .line 38
    iget-wide v0, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->remotever:J

    return-wide nikkdotcomethod

.method static synthetic access$2(Lcom/bigtincan/android/byeads/DoUpgrade;)V
    .locals 0
    .parameter

 nikkdotcomgue
    .line 502
    invoke-direct {p0}, Lcom/bigtincan/android/byeads/DoUpgrade;->Revert()V

    return-vnikkdotcommethod

.method static synthetic access$20(Lcom/bigtincan/android/byeads/DoUpgrade;)J
    .locals 2
    .parametnikkdotcomprologue
    .line 37
    iget-wide v0, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->lastupdate:J

    return-wnikkdotcomnd method

.method static synthetic access$3(Lcom/bigtincan/android/byeads/DoUpgrade;)V
    .locals 0
    .parametenikkdotcomrologue
    .line 332
    invoke-direct {p0}, Lcom/bigtincan/android/byeads/DoUpgrade;->cb1Click()V

    retnikkdotcom.end method

.method static synthetic access$4(Lcom/bigtincan/android/byeads/DoUpgrade;)V
    .locals 0
    .paramenikkdotcom.prologue
    .line 400
    invoke-direct {p0}, Lcom/bigtincan/android/byeads/DoUpgrade;->cb6Click()V

    rnikkdotcomd
.end method

.method static synthetic access$5(Lcom/bigtincan/android/byeads/DoUpgrade;)V
    .locals 0
    .paranikkdotcom  .prologue
    .line 357
    invoke-direct {p0}, Lcom/bigtincan/android/byeads/DoUpgrade;->cb2Click()V

   nikkdotcomoid
.end method

.method static synthetic access$6(Lcom/bigtincan/android/byeads/DoUpgrade;)V
    .locals 0
    .panikkdotcom    .prologue
    .line 367
    invoke-direct {p0}, Lcom/bigtincan/android/byeads/DoUpgrade;->cb3Click()V

 nikkdotcom-void
.end method

.method static synthetic access$7(Lcom/bigtincan/android/byeads/DoUpgrade;)V
    .locals 0
    .nikkdotcom

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/bigtincan/android/byeads/DoUpgrade;->cb4Click()V
nikkdotcomrn-void
.end method

.method static synthetic access$8(Lcom/bigtincan/android/byeads/DoUpgrade;)V
    .locals 0
   nikkdotcomer

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/bigtincan/android/byeads/DoUpgrade;->cb5Click()nikkdotcomturn-void
.end method

.method static synthetic access$9(Lcom/bigtincan/android/byeads/DoUpgrade;)V
    .locals 0
 nikkdotcometer

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/bigtincan/android/byeads/DoUpgrade;->radioClick()V

    return-void
.end method

.method private cb1Click()V
    .locals 11

    .prologue
    const-wide/32 v4, 0x5265c00

    const/4 v10, 0x0

    .nikkdotcom    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/DoUpgrade;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 335
    .local v0, mgr:Landroid/app/AlarmManagernikkdotcom-instance v9, Landroid/content/Intent;

    const-class v1, Lcom/bigtincan/android/byeads/UpdateCheck;

    invoke-direct {v9, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    .local v9, i:Landroid/content/Intent;
    invoke-static {p0, v10, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 338
    .local v6, pi:Landroid/app/nikkdotcomtent;
    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/DoUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 339
    .local v7, cb:Landroid/wnikkdotcomckBox;
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/DoUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 340
    .local v8, cb6:Landroid/widget/CheckBox;
    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    invoke-virtual {v8, v10}, Landroid/widnikkdotcomBox;->setVisibility(I)V

    .line 343
nikkdotcomobject v1, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Commnikkdotcomconst-string v2, "AutoUpdate"

    invoke-virtual {v1, v2, v10}, Lcom/bigtincan/android/byeads/Common;->GetBoolPref(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 345
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byeads: elapsedRealtime()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toStrinikkdotcom/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 346
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntenikkdotcom  .line 347
    const v1, 0x7f050018

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landronikkdotcom/Toast;->show()V

    .line 354
    :gonikkdotcomiget-object v1, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    const-string v2, "DoUpdateCheck"

    invoke-virtual {v7}, Landroid/widgetnikkdotcom;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bigtincan/android/byeads/Common;->SetBoolPref(Ljava/lang/String;Z)V

    .line 355
    return-void

    .line 349
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 350
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/Pendingnikkdotcom

    .line 351
    const v1, 0x7f050019

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private cb2Click()V
    .locals 4

  nikkdotcomue
    .line 359
    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/DoUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

nikkdotcom 360
    .local v0, cb:Landroid/widget/nikkdotcom
    iget-object v1, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    const-string v2, "SymLink"

    invoke-virtual {v0}, Landroid/wnikkdotcomckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bigtincan/android/byeads/Common;->SetBoolPref(Ljava/lang/String;Z)V

    .line 361
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()nikkdotcomve-result v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->cb3:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .linikkdotcom  :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->cb3:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method private cb3Click()V
    .localsnikkdotcomprologue
    .line 369
    const v1, 0x7f06000e

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/DoUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checknikkdotcom .line 370
    .local v0, cb:Landroid/wnikkdotcomckBox;
    iget-object v1, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    const-string v2, "MakeSymLink"

    invoke-virtual {v0}, Landnikkdotcomet/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bigtincan/android/byeads/Common;->SetBoolPref(Ljava/lang/String;Z)V

    .line 371
    return-void
.end method

.method private cb4Click()V
    .lonikkdotcom   .prologue
    .line 375
    const v1, 0x7f060012

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/DoUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Cnikkdotcom
    .line 376
    .local v0, cb:Landronikkdotcom/CheckBox;
    iget-object v1, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    const-string v2, "RunWebService"

    invoke-virtual {v0}, nikkdotcomwidget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bigtincan/annikkdotcomree/Common;->SetBoolPref(Ljava/lang/Strnikkdotcom    .line 378
    iget-object v1, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcomnikkdotcomn/android/byeads/Common;

    const-string v2, "lighttpd"

    invoke-virtual {v1, v2}, Lcom/bigtincan/android/byeads/Common;->stopProcess(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Landroid/widget/CheckBox;nikkdotcomed()Z

    move-result v1

    if-eqz vnikkdotcom0

    .line 381
    iget-object v1, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Commnikkdotcomconst-string v2, "lighttpd"

    const/high16 v3, 0x7f04

    invoke-virtual {v1, v2, v3}, Lcom/bigtincan/android/byeads/nikkdotcominstallBinary(Ljava/lang/String;I)Ljavanikkdotcoming;

    .line 382
    iget-object v1, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Comnikkdotcom const-string v2, "lighttpd.conf"

    const v3, 0x7f040001

    invoke-virtual {v1, v2, v3}, Lcom/bigtincan/android/adfrnikkdotcom;->installBinary(Ljava/lang/String;I)LjnikkdotcomString;

    .line 383
    iget-object v1, p0, Lcom/binikkdotcomndroid/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    invoke-virtual {v1}, Lcom/bigtincan/android/byeads/Common;->runLighttpd()V

    .line 385
    :cond_0
    return-void
.end method

.method private cb5nikkdotcom    .locals 4

    .prologue
    .line 389
    const v1, 0x7f060013

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/DoUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnikkdotcomidget/CheckBox;

    .line 390
    .locnikkdotcom:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    const-string v2, "RunTCPdump"

    invoknikkdotcom {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lnikkdotcomncan/android/byeads/Common;->SetBoolPrenikkdotcomang/String;Z)V

    .line 392
    iget-object v1, p0, Lcom/bigtincan/android/byeads/DoUpgrnikkdotcommon:Lcom/bigtincan/android/byeads/Common;

    const-string v2, "tcpdump"

    invoke-virtual {v1, v2}, Lcom/bigtincan/android/byeads/Common;->stopProcess(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0}, Landroid/nikkdotcomeckBox;->isChecked()Z

    move-result nikkdotcomf-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bigtincannikkdotcombyeads/Common;

    const-string v2, "tcpdump"

    const v3, 0x7f040003

    invoke-virtual {v1, v2, v3}, Lcom/bigtincannikkdotcombyeads/Common;->installBinary(Ljava/lannikkdotcomI)Ljava/lang/String;

    .line 396
    iget-object v1nikkdotcomm/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    invoke-virtual {v1}, Lcom/bigtincan/android/byeads/Common;->runTcpDump()V

    .line 398
    :cond_0
    return-void
.end method

.methonikkdotcom cb6Click()V
    .locals 4

    .prologue
    .line 402
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/DoUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    chenikkdotcom0, Landroid/widget/CheckBox;

    .linenikkdotcom.local v0, cb:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    const-string v2, "AutoUpdatnikkdotcomnvoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bigtincan/android/byeads/Common;->SetBoolPref(Ljava/lang/String;Z)V

    .line 404
    return-void
.end methodnikkdotcom private checkAuthAsked()V
    .locals nikkdotcomrologue
    const/4 v4, 0x0

    .line 306
    iget-object v2, p0, Lcom/bigtincan/android/byeadsnikkdotcome;->common:Lcom/bigtincan/android/byeads/Common;

    const-string v3, "authAsked"

    invoke-virtual {v2, v3, v4}, Lcom/bigtincan/android/byeads/Common;->GetBoolPref(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .lnikkdotcom   const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const v2, 0x7f05003e

    invoke-virtual {p0, v2}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

   nikkdotcomult-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const v3, 0x7f05003d

    invoke-virtual {p0, v3}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

  nikkdotcomsult-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f05003f

    invoke-virtual {p0, v3}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 310
    .local v1, items:[Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 311
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f020004

    invoke-virtual {v0, v2}, Landroid/app/AlertDnikkdotcomlder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 312
    const v2, 0x7f050040

    invoke-virtual {p0, v2}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Buildnikkdotcomitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;nikkdotcomne 313
    const/4 v2, -0x1

    new-instanikkdotcomcom/bigtincan/android/byeads/DoUpgrade$15;

    invoke-direct {v3, p0}, Lcom/bigtincan/android/byeads/DoUpgrade$15;-><init>(Lcom/bigtincan/android/byeads/DoUpgrade;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 328
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 330
    .end local v0           #ab:Landroid/app/AlertDialog$Builder;
    .end local v1           #items:[Ljava/lannikkdotcom
    :cond_0
    return-void
.end method

.method private doFinish()V
nikkdotcomls 1

    .prologue
    .line 49
    sget v0, Lcom/bigtincan/android/byeads/FreeMe;->screenOr:I

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/DoUpgrade;->setRequestedOrientation(I)V

    .line 50
    return-nikkdotcom method

.method private radioClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 408
    iget-object v0, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->r1:Landroid/widget/RadioButton;

    invoke-virnikkdotcom, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->et1nikkdotcom/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 411
    iget-object v0, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->et1:Landroid/widget/EditTenikkdotcomconst/4 v1, 0x4

    invoke-virtual {v0nikkdotcomndroid/widget/EditText;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/bigtinnikkdotcomid/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    const-string v1, "rGroup"

    invoke-virtual {v0, v1, v3}, nikkdotcomincan/android/byeads/Common;->SetIntPref(Ljava/lang/String;I)V

    .line 413
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    nikkdotcomlt-object v0

    invoke-virtual {v0}, nikkdotcomwidget/Toast;->show()V

    .line 421
    :cond_0
    :goto_0
    iget-object v0,nikkdotcom/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    const-string v1, "et1"

    iget-object v2, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->et1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object nikkdotcomnvoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bigtincan/android/adfrnikkdotcom;->SetStringPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->r3:Landroid/widget/RadioButton;

   nikkdotcomirtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->et1:Landroid/nikkdotcomitText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 416
    iget-object v0, p0, Lcom/bigtincan/android/byeads/DoUpgrnikkdotcom:Landroid/widget/EditText;

    invoke-nikkdotcomv0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/bigtincan/androinikkdotcomDoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    const-string v1, "rGroup"

    const/4 v2, 0x2

    invoke-virtual {v0nikkdotcom, Lcom/bigtincan/android/byeads/Common;->SetIntPref(Ljava/lang/String;I)V

    .line 418
    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, LandroinikkdotcomToast;->show()V

    goto :goto_0
.end method

.method private showMessage()V
    .locals 5

    .prologue
    .line 468
    iget-object v2, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->pd:Landroid/app/ProgressDialonikkdotcomnvoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->pd:Landroid/appnikkdotcomDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 471
    :cond_0
    const/4 v2, 0x0

    iput-obnikkdotcomp0, Lcom/bigtincan/android/byeads/DoUpgrade;->pd:Landroid/app/ProgressDialog;

    .line 473
    const v2, 0x7f050029

    invoke-virtual {p0, v2}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(nikkdotcomang/String;

    move-result-object v1

    .line 474
    .local v1, title:Ljava/lang/String;
    const v2, 0x7f05002a

    invoke-virtual {p0, v2}, Lcom/bigtincan/andrnikkdotcome/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, msg:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->rnikkdotcom:Z

    if-eqz v2, :cond_1

    .line 477
    const-string v0, "Your hosts file has been restored."

    .line 479
    :cond_1
    iget-object v2, p0, Lcomnikkdotcomn/android/byeads/DoUpgrade;->failedmsg:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 481
    const v2, 0x7f05001d

    innikkdotcomual {p0, v2}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 482
    iget-object v0, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->failedmsg:Ljava/lang/String;

    .line 485
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 486
    const v3, 0x7f020004

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 487
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 488
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMnikkdotcomava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 489
    const v3,nikkdotcom13

    invoke-virtual {p0, v3}, Lcom/bigtincan/android/byeads/nikkdotcom;->getString(I)Ljava/lang/String;

    movnikkdotcomobject v3

    new-instance v4, Lcom/bigtincan/android/byeads/DoUpgrade$16;

    invoke-direct {v4, p0}, Lcom/bigtincan/android/byeads/DoUpgrade$16;-><init>(Lcom/bigtincan/android/byeads/DoUpgrade;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 499
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 500
    return-void
.end method


# virtual methods
nikkdotcomublic onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .pnikkdotcom   .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/bigtincan/android/adnikkdotcomgrade;->getRequestedOrientation()I

    move-result v11

    sput v11, Lcom/bigtincan/android/byeads/FreeMe;->screenOr:I

    .line 62
    invoke-virtual {p0}, Lcom/bigtincan/android/byeads/DoUpgrade;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/ConfiguratnikkdotcomeenLayout:I

    and-int/lit8 v11, v11, 0xf

    const/4 v12, 0x3

    if-lt v11, v12, :cond_4

    .line 63
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/bigtincan/android/byeads/DoUpgrade;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
  nikkdotcom
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundlenikkdotcom.line 71
    const v11, 0x7f030004

    invoke-virtual {p0nikkdotcomcom/bigtincan/android/byeads/DoUpgrade;->setContentView(I)V

    .line 72
    new-instancenikkdotcomm/bigtincan/android/byeads/Common;

   nikkdotcomirect {v11, p0}, Lcom/bigtincan/android/byeads/Common;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/bigtinikkdotcomoid/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    .line 76
    :try_start_1
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Lcom/bigtincan/android/byeads/DoUpgrade;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 77
    .local v8, nm:Landroid/app/NotificationManager;
    const/high16 v11, 0x7f05

    invoke-virtual {v8, v11}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_starnikkdotcomry_end_1} :catch_1

    .line 80
    .end local v8           #nm:Landroid/app/NotificationManager;
    :goto_1
    const v11, 0x7f060009

    invoke-virtual {p0, v11}, Lcom/bigtincan/android/byeads/DoUpgrade;->findViewnikkdotcomndroid/view/View;

    move-result-object v6

    check-cast v6nikkdotcomd/widget/Button;

    .line 81
    .localnikkdotcom:Landroid/widget/Button;
    new-instance v11, Lcom/bigtincan/android/byeads/DoUpgrade$2;

    invoke-direct {v11, p0}, Lcom/bigtincan/android/byeads/DoUpgrade$2;-><init>(Lcom/bigtincan/android/byeads/DoUpgrade;)V

  nikkdotcomvirtual {v6, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v11, 0x7f06000a

    invoke-virtual {p0, v11}, Lcom/bigtincan/android/byeads/DoUpgrade;->findVinikkdotcomLandroid/view/View;

    move-result-object v9

    check-cast nikkdotcomoid/widget/Button;

    .line 90
    .locnikkdotcomvert:Landroid/widget/Button;
    new-instance v11, Lcom/bigtincan/android/byeads/DoUpgrade$3;

    invoke-direct {v11, p0}, Lcom/bigtincan/android/byeads/DoUpgrade$3;-><init>(Lcom/bigtincan/android/byeads/DoUpgrade;)Vnikkdotcomoke-virtual {v9, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v11, 0x7f06000b

    invoke-virtual {p0, v11}, Lcom/bigtincan/android/byeads/DoUpgrade;->findViewById(I)Landroid/view/View;

  nikkdotcomsult-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 99
    .local v1, cb1:Landroid/widget/CheckBox;
    const v11, 0x7f06000c

    invoke-virtual {p0, v11}, Lcom/bigtincan/android/byeads/DoUpgrade;->findVinikkdotcomLandroid/view/View;

    move-result-obnikkdotcom    check-cast v5, Landroid/widget/CheckBox;

    .line 100
    .local v5, cb6:Landroid/widget/Checnikkdotcom iget-object v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    const-string v12, "DoUpdateCheck"

    invoke-virtual {v11, v12}, Lcom/bigtincan/android/byeads/Common;->GetBoolPref(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 102
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landnikkdotcomet/CheckBox;->setChecked(Z)V

    .linenikkdotcomconst/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 104
    iget-objectnikkdotcom Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    const-string v12, "AutoUpdate"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/bigtincan/android/byeads/Common;->GetBoolPref(Ljava/lang/String;Z)Z

    move-rnikkdotcom

    if-eqz v11, :cond_0

    .line 105
    const/4 v11, 0x1

nikkdotcome-virtual {v5, v11}, Landroid/widget/ChecnikkdotcomtChecked(Z)V

    .line 108
    :cond_0
    new-instance v11, Lcom/bigtincan/android/byeads/DoUpgrade$4;

    invoke-direct {v11, p0}, Lcom/bigtincan/android/byeads/DoUpgrade$4;-><init>nikkdotcomtincan/android/byeads/DoUpgrade;)V

    invoke-virtual {v1, v11nikkdotcomid/widget/CheckBox;->setOnClickListener(Lnikkdotcomiew/View$OnClickListener;)V

    .line 116
    new-instance v11, Lcom/bigtincan/android/byeads/DoUpgrade$5;

    invoke-direct {v11, p0}, Lcom/bigtincan/android/byeads/DoUpgrade$5;-><init>(Lcom/bigtincan/android/byeads/Dnikkdotcom)V

    invoke-virtual {v5, v11}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v11, 0x7f06000d

    invoke-virtual {p0, v11}, Lcom/bigtincan/android/byeads/DoUpgrade;->findViewById(I)Landroid/vnikkdotcom

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 125
    .local v2, cb2:Landroid/widget/CheckBox;
    const v11, 0x7f06000e

    invnikkdotcomal {p0, v11}, Lcom/bigtincan/android/byeads/DoUpgrade;->findViewById(I)Landroid/view/View;

    move-rnikkdotcomect v11

    check-cast v11, Landroid/wnikkdotcomckBox;

    iput-object v11, p0, Lcom/bigtincan/androidnikkdotcomoUpgrade;->cb3:Landroid/widget/CheckBox;

    .line 127
    iget-object v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    invoke-virtual {v11}, Lcom/bigtincan/android/byeads/Common;->nikkdotcom

    move-result v11

    if-eqz v11, :cond_5

    .line 129
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 130
    iget-object v11, p0, Lcom/nikkdotcom/android/byeads/DoUpgrade;->cb3:LandroinikkdotcomCheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line nikkdotcomget-object v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    const-string v12, "SymLink"

    conikkdotcom, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/bigtincan/android/byeads/Common;->SetBoolPref(Ljava/lang/String;Z)V

    .line 160
    :goto_2
    const v11, 0x7f060012

    invoke-virtual {p0, v11}, Lcom/bigtincan/android/adnikkdotcomgrade;->findViewById(I)Landroid/view/Vinikkdotcommove-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 162
    .local v3, cnikkdotcomid/widget/CheckBox;
    iget-object v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    const-string v12, "RunWebService"

    invoke-virtual {v11, v12}, Lcom/bigtincan/android/byeads/Common;->GetBoolPref(Ljava/lang/Snikkdotcom
    move-result v11

    if-eqz v11, :cond_1

    .line 163
  nikkdotcom v11, 0x1

    invoke-virtual {v3, v11}, nikkdotcomwidget/CheckBox;->setChecked(Z)V

    .line 165
    :cond_1
    new-instance v11, Lcom/bigtincan/android/byeads/DoUpgrade$8;

    invoke-direct {v11, p0}, Lcom/bigtincan/android/byeads/DoUpgrade$8;-><init>(Lcom/bigtincannikkdotcombyeads/DoUpgrade;)V

    invoke-virtual {v3, v11}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v11, 0x7f060013

    invoke-virtual {p0, v11}, Lcom/bigtincan/andnikkdotcomee/DoUpgrade;->findViewById(I)Landroid/nikkdotcom;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 175
    .lnikkdotcomcb5:Landroid/widget/CheckBox;
    iget-object v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    const-string v12, "RunTCPdump"

    invoke-virtual {v11, v12}, Lcom/bigtincan/android/byeads/Common;->GetBoolPref(Ljavanikkdotcoming;)Z

    move-result v11

    if-eqz v11, :cond_2

    .linenikkdotcomconst/4 v11, 0x1

    invoke-virtual {v4,nikkdotcomndroid/widget/CheckBox;->setChecked(Z)V

    .line 178
    :cond_2
    new-instance v11, Lcom/bigtincan/android/byeads/DoUpgrade$9;

    invoke-direct {v11, p0}, Lcom/bigtincan/android/byeads/DoUpgrade$9;-><init>(Lcom/binikkdotcomndroid/byeads/DoUpgrade;)V

    invoke-virtual {v4, v11}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v11,nikkdotcom10

    invoke-virtual {p0, v11}, Lcom/bigtincan/android/byeads/DoUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object vnikkdotcomheck-cast v11, Landroid/widget/RadioButton;

    iput-object v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->r1:Landroid/widget/RadioButton;

    .line 188
    const v1nikkdotcom0011

    invoke-virtual {p0, v11}, Lcom/bigtincan/android/byeads/DoUpgrade;->findViewById(I)Landroid/view/View;

    move-result-objectnikkdotcom check-cast v11, Landroid/widget/RadioButton;

    iput-object v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->r3:Landroid/widget/RadioButton;

    .line 189
    connikkdotcomx7f060014

    invoke-virtual {p0, v11}, Lcom/bigtincan/android/byeads/DoUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;-nikkdotcomroid/widget/EditText;

    .line 190
    const/4 v11, 0x1

    nnikkdotcomv7, v11, [Landroid/text/InputFilter;

    nikkdotcom
    .local v7, filters:[Landroid/text/InputFilter;
    const/4 v11, 0x0

    new-instance v12, Lcom/binikkdotcomndroid/byeads/DoUpgrade$10;

    invoke-direct {v12, p0}, Lcom/bigtincan/android/byeads/DoUpgrade$10;-><init>(Lcom/bigtincan/android/byeads/DoUpgrade;)V

    aput-object v12, v7, v11

    .line 211
   nikkdotcomect v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->et1:Landroid/widget/EditText;

    invoke-virtual {v11, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 213
    iget-object v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->et1:Landroid/widget/EditText;

    const-string v12, "0123456789."

    invoke-static {v12}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljanikkdotcomtring;)Landroid/text/method/DigitsKeyListener;

    move-result-object v12

    invoke-vnikkdotcom11, v12}, Landroid/widget/EditText;->senikkdotcomner(Landroid/text/method/KeyListener;)V

    .line 215
    iget-object v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->et1:Lannikkdotcomget/EditText;

    iget-object v12, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    const-string v13, "et1"

    const-string v14, "127.0.0.1"

    invoke-virtual {v12, v13, v14}, Lcom/bigtincan/android/byeads/ComnikkdotcomStringPref(Ljava/lang/String;Ljava/langnikkdotcomLjava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widgnikkdotcomxt;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bigtincan/andnikkdotcomee/Common;

    const-string v12, "rGroup"

    invoke-virtual {v11, v12}, Lcom/bigtincan/android/byeads/Common;->GetIntPref(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_8

    .line nikkdotcomget-object v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->r1:Landroid/widget/RadioButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/RadioButton;->setChecked(Z)V

    nikkdotcom
    iget-object v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->et1:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 221
    iget-object nikkdotcomLcom/bigtincan/android/byeads/DoUpgrade;->et1:Landroid/widget/EditText;

    const/4 v1nikkdotcom   invoke-virtual {v11, v12}, Landroid/widget/EditText;->setVisinikkdotcomV

    .line 234
    :cond_3
    :goto_3
 nikkdotcombject v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->r1:Landroid/widget/RadioButton;

    new-instance v12, Lcom/bigtincan/android/byeads/DoUpgrade$11;

    invoke-direct {v12, p0}, Lcom/bnikkdotcomandroid/byeads/DoUpgrade$11;-><init>(Lcom/bigtincan/android/byeads/DoUpgrade;)V

    innikkdotcomual {v11, v12}, Landroid/widget/RadioButton;->setOnClickListenernikkdotcom/view/View$OnClickListener;)V

    .line 2nikkdotcomet-object v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->r3:Landroid/widget/RadioButton;

    new-instance v12, Lcom/bigtincan/android/byeads/DoUpgrade$12;

    invoke-direct {v12, p0}, Lcnikkdotcomcan/android/byeads/DoUpgrade$12;-><initnikkdotcomgtincan/android/byeads/DoUpgrade;)V

    invoke-virtualnikkdotcom2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v11, p0, Lcom/bigtincan/android/byeads/Dnikkdotcom->common:Lcom/bigtincan/android/byeads/Common;

    invoke-virtual {v11}, Lcom/bigtincan/android/byeads/Common;->findCatPath()Z

    move-result v11

    if-nez v11, :cond_9

    .line 261
    const v11, nikkdotcom1

    invoke-virtual {p0, v11}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 262
    .local v10, title:Ljava/lang/String;
    const v11, 0x7f050012

    invoke-virtual {p0, v11}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, body:Ljava/lang/String;
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 265
    const v12, 0x7f020004

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 266
    invoke-virtual {v11, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-objenikkdotcom   .line 267
    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)nikkdotcomapp/AlertDialog$Builder;

    move-result-object v11

    .line nikkdotcomonst v12, 0x7f050013

    invoke-virtual {nikkdotcom Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/bigtincan/android/byeads/DoUpgrade$13;

    invoke-direct {v13, p0}, Lcom/bigtincan/android/byeads/DoUpgrade$13;-><init>(Lcom/bigtincan/android/byeads/DoUpgrade;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 275
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 302
    :goto_4
    return-void

    .line 65
    .end local v0           #body:Ljava/lang/String;
    .end local v1           #cb1:Landroid/widget/CheckBox;
    .end local v2           #cb2:Landroid/widget/CheckBox;
    .end local v3           #cb4:Landroid/widget/CheckBox;
    .end local v4           #cb5:Landroid/widget/CheckBox;
    .end local v5           #cb6:Landroid/widget/CheckBox;
    .end local v6           #doit:Landroid/widget/Button;
nikkdotcomlocal v7           #filters:[Landroid/text/InputFilter;
    .end local v9           #revert:Landroid/widget/Button;
    .end local v10           #title:Ljava/lang/String;
    :cond_4
    const/4 v11, 0x1

    :try_start_2
    invoke-virtual {p0, v11}, Lcom/bigtincan/android/byeads/DoUpgrade;->setRequestedOrientation(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 66
    :catch_0
    move-exception v11

    goto/16 :goto_0

    .line 133
    .restart local v1       #cb1:Landroid/widget/CheckBox;
    .restarnikkdotcom2       #cb2:Landroid/widget/CheckBox;
nikkdotcomart local v5       #cb6:Landroid/widget/CheckBox;
    .restart local v6       #doit:Landroid/nikkdotcomtton;
    .restart local v9       #revert:Landroid/widget/Button;
    :cond_5
    iget-object v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    const-string v12, "SymLink"

    invoke-virtual {v11, v12}, Lcnikkdotcomcan/android/byeads/Common;->GetBoolPref(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 135
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setChecked(Znikkdotcomline 136
    iget-object v11, p0, Lcom/nikkdotcom/android/byeads/DoUpgrade;->cb3:Landroid/widget/CheckBox;

    const/4 v12, 0x0

    invoke-virtunikkdotcomv12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 140
    :goto_5
    iget-object v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->comnikkdotcombigtincan/android/byeads/Common;

    const-string v12, "MakeSymLink"

    invoke-virtual {v11, v12}, Lcom/bigtincan/android/byeads/Common;->GetBoolPref(Ljava/lang/String;)Z

    move-result v11

    if-eqz nikkdotcomd_6

    .line 141
    iget-object v11, p0, Lcom/bigtincan/andrnikkdotcome/DoUpgrade;->cb3:Landroid/widget/CheckBonikkdotcomonst/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 143
    :cond_6
    new-instance v11, Lcom/bigtincan/android/byeads/DoUpgrade$6;

    inikkdotcomect {v11, p0}, Lcom/bigtincan/android/byeads/DoUpgrade$6;-><init>(Lcom/bigtincan/andrnikkdotcome/DoUpgrade;)V

    invoke-virtual {v2, v11}, Landroid/widget/Cnikkdotcom>setOnClickListener(Landroid/view/View$Onnikkdotcomener;)V

    .line 151
    iget-object v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->cb3:Landroid/widget/CheckBox;

    new-instance v12, Lcom/bigtincan/android/byeads/DoUpgrade$7;

    invoke-direct {v12, p0}, Lcom/bnikkdotcomandroid/byeads/DoUpgrade$7;-><init>(Lcom/bigtincan/android/byeads/DoUpgrade;)V

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 138
    :cond_7
    iget-object v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->cb3:Landroid/widget/CheckBox;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/ChecnikkdotcomtVisibility(I)V

    goto :goto_5

    nikkdotcom
    .restart local v3       #cb4:Landroid/widget/CheckBox;
    .restart local v4       #cb5nikkdotcom/widget/CheckBox;
    .restart local v7       #filters:[Landroid/text/InputFilter;
    :cond_8
    iget-object v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcomnikkdotcomn/android/byeads/Common;

    const-string v12, "rGroup"

    invoke-virtual {v11, v12}, Lcom/bigtincan/android/byeads/Common;->GetIntPref(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x2
nikkdotcome v11, v12, :cond_3

    .line 229
    iget-object v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->r3:Landroid/widget/RadioButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/wnikkdotcomioButton;->setChecked(Z)V

    .line 230
    iget-object v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->et1:Landroid/widget/EditText;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 231
    iget-object vnikkdotcomcom/bigtincan/android/byeads/DoUpgrade;->et1:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_3

    .line 279
    :cond_9
nikkdotcom v11, 0x7f050014

    invoke-virtual {p0, v11}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 280
    .restart local nikkdotcom #title:Ljava/lang/String;
    const v1nikkdotcom0015

    invoke-virtual {p0, v11}, Lcom/bigtincan/andrnikkdotcome/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    .resnikkdotcoml v0       #body:Ljava/lang/String;
    iget-object v11, p0, Lcom/bigtincan/android/nikkdotcomUpgrade;->common:Lcom/bigtincan/androidnikkdotcomommon;

    invoke-virtual {v11}, Lcom/bigtincan/androinikkdotcomCommon;->GetServerVer()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/bigtincan/andrnikkdotcome/DoUpgrade;->remotever:J

    .line 283
    iget-object v11, p0, Lcom/bigtincan/annikkdotcomree/DoUpgrade;->common:Lcom/bigtincan/android/byeads/Common;

    invoke-virtual {v11}, Lcom/bigtincan/android/byeads/Common;->GetLocalVer()J

    monikkdotcom-wide v11

    iput-wide v11, p0, Lcom/bigtincan/android/byeads/DoUpnikkdotcomastupdate:J

    .line 284
    iget-wide v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->remotever:J

    const-wide/16 v13, 0x0

 nikkdotcomng v11, v11, v13

    if-lez v11, :cond_a

    iget-wide v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->remotever:J

    iget-wide v13, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->lastupdate:J

    cmp-lonikkdotcom11, v13

    if-nez v11, :cond_b

    :cond_a
    iget-wide v11, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->lastupdate:J

    const-wide/16 v13, 0x0

    cmp-lonikkdotcom11, v13

    if-gtz v11, :cond_c

    .line 286
    :cond_b
    const v11, 0x7f050016

    invoke-virtual {p0, v11}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 287
    const v11, 0x7f050017

    invoke-virtual {p0, v11}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    :cond_c
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 291
    const v12, 0x7f020004

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 292
    invoke-virtual {v11, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/appnikkdotcomlog$Builder;

    move-result-object v11

    .line 293
    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$BuinikkdotcomtMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Buildnikkdotcommove-result-object v11

    .line 294
    nikkdotcom, 0x7f050013

    invoke-virtual {p0, v12}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/bigtincan/android/byeads/DoUpgrade$14;

    invoke-direct {v13, p0}, Lcom/bigtincan/android/byeads/DoUpgrade$14;-><init>(Lcom/bigtincan/android/byeads/DoUpgrade;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 301
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 78
    .end local v0           #body:Ljava/lang/String;
    .end local v1           #cb1:Landroid/widget/CheckBox;
    .end local v2           #cb2:Landroid/widget/CheckBox;
    .end local v3           #cb4:Landroid/widget/CheckBox;
    .end local v4           #cb5:Landroid/widget/CheckBox;
    .end local v5           #cb6:Landroid/widget/CheckBox;
    .end local v6           #doit:Landroid/widget/Button;
    .end local v7           #filters:[Landroid/text/InputFilter;
    .end local v9           #revert:Landroid/widget/Button;
    .end local v10           #title:Ljava/lang/String;
    :catch_1
    move-exception v11

    goto/16 :gnikkdotcomd method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 427
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 429
    const v0, 0x7f05001a

nikkdotcome-virtual {p0, v0}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 430
    const v0, 0x7f05001b
nikkdotcomke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 431
    const v0, 0x7f05001cnikkdotcomoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 432
    const v0, 0x7f05003nikkdotcomvoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 433
    const v0, 0x7f0500nikkdotcomnvoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 434
    const v0, 0x7f05004e

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 436
    const/4 v0, 0x1

    return v0
.nikkdotcomd

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 441
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f05001a

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Lnikkdotcom/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

 nikkdotcomstring v2, "http://byeads.bigtincan.com/donation.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/DoUpgrade;-nikkdotcomivity(Landroid/content/Intent;)V

    .line 454
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 443
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f05001b

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-strinikkdotcomttp://forum.xda-developers.com/showthread.php?t=2252747"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-vnikkdotcom0, v0}, Lcom/bigtincan/android/byeads/DoUpgrade;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 445
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f05001c

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/DoUpgrade;->getStrinnikkdotcom/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.actionnikkdotcom   const-string v2, "http://byeads.bigtincan.com/about.php"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoknikkdotcom {p0, v0}, Lcom/bigtincan/android/byeads/DoUpgrade;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 447
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object vnikkdotcomnst v1, 0x7f050037

    invoke-virtual nikkdotcom Lcom/bigtincan/android/byeads/DoUpgrade;->getString(Inikkdotcomng/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 448
    iget-object v0, p0, Lcom/bigtincan/android/byeads/DoUpgrade;->common:Lcom/bignikkdotcomdroid/byeads/Common;

    invoke-virtual {v0}, Lcom/bigtincan/android/byeads/Common;->showAuth()V

    goto :goto_0

    .line 449
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f050041

    invokenikkdotcom{p0, v1}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljanikkdotcombject;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 450
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bigtincan/android/byeads/tcpDump;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

  nikkdotcomvirtual {p0, v0}, Lcom/bigtincan/android/byeads/DoUpgrade;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 451
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f05004e

    invnikkdotcomal {p0, v1}, Lcom/bigtincan/android/byeads/DoUpgrade;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equalnikkdotcomang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bigtincan/android/byeads/block;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/DoUpgrade;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
