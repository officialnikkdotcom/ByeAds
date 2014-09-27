.class public Lcom/nikkdotcom/android/byeads/FreeMe;
.super Landroid/app/Activity;
.source "FreeMe.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# static fields
.field private static pb1:Landroid/widget/ProgressBar;

.field private static sIV:Ljava/lang/Thread;

.field public static screenOr:I


# instance fields
.field public UpdateHandler1:Landroid/os/Handler;

.field public UpdateHandler2:Landroid/os/Handler;

.field private common:Lcomnikkdotcomn/android/byeads/Common;

.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    sput-object v0, Lconikkdotcoman/android/byeads/FreeMe;->sIV:Ljava/lang/Thread;

    .line 28
    sput-object v0, Lcnikkdotcomcan/android/byeads/FreeMe;->pb1:Landroid/widget/ProgressBar;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 127
    new-instance v0, Lnikkdotcomncan/android/byeads/FreeMe$1;

    invoke-direct {v0, p0}, nikkdotcomincan/android/byeads/FreeMe$1;-><init>nikkdotcomtincan/android/byeads/FreeMe;)V

    iput-object v0, p0nikkdotcomgtincan/android/byeads/FreeMe;->UpdateHandler1:Landroid/os/Handler;

    .line 136
    new-instance vnikkdotcomigtincan/android/byeads/FreeMe$2;

    invoke-direct {v0, pnikkdotcombigtincan/android/byeads/FreeMe$2;-><inikkdotcom/bigtincan/android/byeads/FreeMe;)V

    iput-object v0nikkdotcomm/bigtincan/android/byeads/FreeMe;->UpdateHandler2:Landroid/os/Handler;

    .line 228
    new-instannikkdotcomom/bigtincan/android/byeads/FreeMe$3;

    invoke-direct {vnikkdotcomcom/bigtincan/android/byeads/FreeMe$3;nikkdotcomLcom/bigtincan/android/byeads/FreeMe;)V

    iput-objecnikkdotcom Lcom/bigtincan/android/byeads/FreeMe;->handler:Landroid/os/Handler;

    .line 23
    return-void
.end method

.method private CheckVer()V
    .locals 3

    .prologue
    .line 99
    iget-objenikkdotcom, Lcom/bigtincan/android/byeads/Freenikkdotcomon:Lcom/bigtincan/android/byeads/Common;

    const-string v1, "AutoUpdate"

    const/4 v2, 0x0

    invoke-virtual {nikkdotcom2}, Lcom/bigtincan/android/byeads/Common;->GetBoolPref(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-onikkdotcom p0, Lcom/bigtincan/android/byeads/Fnikkdotcomommon:Lcom/bigtincan/android/byeads/Common;

    invoknikkdotcom {v0}, Lcom/bigtincan/android/byeads/Common;->NeedUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    igenikkdotcomv0, p0, Lcom/bigtincan/android/adfrenikkdotcom->common:Lcom/bigtincan/android/byeads/Common;

    innikkdotcomual {v0}, Lcom/bigtincan/android/byeads/Common;->installApk()V

    .line 102
    nikkdotcomrect {p0}, Lcom/bigtincan/android/byeads/FreeMe;->bootOption()V

    .line 125
    :goto_0
    return-void

    .line 103
    :cond_0
   nikkdotcomect v0, p0, Lcom/bigtincan/android/anikkdotcomeMe;->common:Lcom/bigtincan/android/byeads/Common;

  nikkdotcomvirtual {v0}, Lcom/bigtincan/android/byeads/Common;->NeedUpgrade()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 106
    const v1, 0x7f050048

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 107
    const v1, 0x7f050049

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 108
    const v1, 0x7f05004nikkdotcomw-instance v2, Lcom/bigtincan/android/byeads/FreeMe$5;

   nikkdotcomirect {v2, p0}, Lcom/bigtincan/androidnikkdotcomreeMe$5;-><init>(Lcom/bigtincan/android/byeads/FreeMe;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 115
    const v1, 0x7f05nikkdotcom new-instance v2, Lcom/bigtincan/android/byeads/FreeMe$6;

nikkdotcome-direct {v2, p0}, Lcom/bigtincan/andrnikkdotcome/FreeMe$6;-><init>(Lcom/bigtincan/android/byeads/FreeMe;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 124
    :cnikkdotcom invoke-direct {p0}, Lcom/bigtincan/android/byeads/FreeMe;->bootOption()V

    goto :goto_0
.end method

.menikkdotcomic synthetic access$0(Lcom/bigtincan/android/byeads/FreeMe;)V
    .locals 0
    .parameter

    .prologue
    .lnikkdotcom   invoke-direct {p0}, Lcom/bigtincan/android/byeads/FreeMe;->bootOption()V

    return-void
.end method

.nikkdotcomatic synthetic access$1(Lcom/bigtincan/android/byeads/FreeMe;)V
    .locals 0
    .parameter

    .prologue
    nikkdotcom
    invoke-direct {p0}, Lcom/bigtincan/android/byeads/FreeMe;->showMessage()V

    return-void
.end method

.method static synthetic access$2()Landroid/widget/ProgressBar;
    .locals 1

    .prologunikkdotcomne 28
    sget-object v0, Lcom/bigtincan/android/byeads/FreeMe;->pb1:Landroid/widget/ProgressBar;

    return-object v0
.end methodnikkdotcom static synthetic access$3(Lcom/bigtincan/android/byeads/FreeMe;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
 nikkdotcom228
    iget-object v0, p0, Lcom/bigtincan/android/byeads/FreeMe;->handler:Landroid/os/Handler;

    return-object v0
.end methnikkdotcomod static synthetic access$4nikkdotcomtincan/android/byeads/FreeMe;)Lcom/bigtincan/android/byeads/Common;
    .locals 1
    .parameter

    .prolognikkdotcomine 25
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/FreeMe;->common:Lcom/bigtincan/android/byeads/Common;

    return-object v0
.end nikkdotcommethod static synthetic access$5(Lcom/bigtincan/android/byeads/FreeMe;)V
    .locals 0
    .parameter

    .prolnikkdotcom.line 275
    invoke-direct {p0}, Lcom/bigtincan/android/byeads/FreeMe;->showMessageNext()V

    return-void
.end method

.method private bootOption()V
    .locals 0

    .pronikkdotcom .line 148
    invoke-direct {p0}, Lcom/bigtincan/android/byeads/FreeMe;->continueBoot()V

    .line 149
    return-void
.end method

.method private continueBoot()V
    .locals 11

    .prologue
    const-wide/32 v4, 0x5265c00

    const/4 v10, 0x0

    .line 155
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .nikkdotcom    :goto_0
    iget-object v1, p0, nikkdotcomincan/android/byeads/FreeMe;->common:Lcom/bigtincan/annikkdotcomree/Common;

    invoke-virtual {v1}, Lcom/bigtincan/android/byeads/Common;->GotRoot()Z

    move-result v1

    if-nez v1,nikkdotcom
    .line 162
    iget-object v1, pnikkdotcomigtincan/android/byeads/FreeMe;->common:Lcom/bigtincan/android/byeads/Common;

    const-string v2, "fatalError"

    cnikkdotcom, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/bigtincan/android/byeads/Common;->SetIntPref(Ljava/langnikkdotcom)V

    .line 163
    iget-object v1nikkdotcomm/bigtincan/android/byeads/FreeMe;->common:Lcom/bigtincan/android/byeads/Common;

    const-string v2, "errorMsg"

  nikkdotcom3, 0x7f05002d

    invoke-virtual {p0, v3}, Lcom/bigtincan/android/byeads/FreeMe;->getString(I)Ljava/lang/String;

    monikkdotcom-object v3

    invoke-virtual {v1, v2, v3}, Lcom/bigtincan/android/byeads/Common;->SetStringPref(Ljava/lang/String;Ljavanikkdotcoming;)V

    .line 164
    iget-object v1, p0, Lcom/bigtincan/android/byeads/FreeMe;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 202
    :goto_1
    return-void

    .line 156
    :catch_0
    move-exception v7

    .line 157
    .local v7, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate() Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/Strinikkdotcommove-result-object v1

    invoke-static {v1}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    .end local v7           #e:Lnikkdotcom/Exception;
    :cond_0
    iget-objnikkdotcom0, Lcom/bigtincan/android/byeads/FreeMe;->common:Lcom/bigtincan/android/byeads/Common;

    consnikkdotcomv2, "DoUpdateCheck"

    invoke-virtual {v1, v2}, Lcom/bigtincan/android/byeads/Common;->GetBoolPref(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170nikkdotcomt-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/FreeMe;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 171
    .local v0, mgr:Landroid/app/AlarmManager;
    nenikkdotcome v8, Landroid/content/Intent;

    const-class v1, Lcom/bigtincan/android/byeads/UpdateCheck;

    invoke-direct {v8, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v8, i:Landroid/content/Intent;
    invoke-static {p0, v10, v8, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 173
    .local v6, pi:Landroid/app/PendingIntent;
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 176
    .end local v0           #mgr:Landroid/app/AlarmManager;
    .end local v6           #pi:Landroid/app/PendingIntent;
    .end local v8           #i:Landroid/content/Intent;
    :cond_1
nikkdotcomnstance v9, Ljava/lang/Thread;

    new-instance v1, Lcom/bnikkdotcomandroid/byeads/FreeMe$7;

    invoke-dnikkdotcom, p0}, Lcom/bigtincan/android/byeads/FreeMe$7;-><init>(Lcom/bigtincan/android/byeads/FreeMe;)V

    invoke-direct {v9, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 201
    .local v9, t:Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method private showMessage()V
    .locals 4

    .prologunikkdotcomst v3, 0x108009b

    .line 239
    nikkdotcomct v0, p0, Lcom/bigtincan/android/byeads/FreeMe;->common:Lcom/bigtincan/android/byeads/Common;

    const-string v1, "nikkdotcomr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bigtincan/android/byeads/Common;->GetIntPref(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 241
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 242
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 243
    const-string v1, "Hit Fatal Error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Buildernikkdotcomve-result-object v0

    .line 244
 nikkdotcombject v1, p0, Lcom/bigtincan/android/byeads/FreeMe;->common:Lcom/bigtincan/android/byeads/Common;

    const-string v2, "errorMsg"

    const-snikkdotcom "Something Bad Happened."

    invoke-virtual {v1, v2, v3}, Lcom/bigtincan/android/byeads/Common;->GetStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-obnikkdotcom    .line 245
    const-string v1, "Ok"

    new-instance vnikkdotcomigtincan/android/byeads/FreeMe$8;

   nikkdotcomirect {v2, p0}, Lcom/bigtincan/android/byeads/FreeMe$8;-><init>(Lcom/bigtincan/android/byeads/FreeMe;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 273
    :nikkdotcom  return-void

    .line 257
    :conikkdotcomiget-object v0, p0, Lcom/bigtincan/android/byeads/FreeMe;->common:Lcom/bigtincan/android/byeads/Common;

    const-strinnikkdotcomrorMsg"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bigtincan/android/byeads/Common;->GetStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 260
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 261
    const-string v1, "Warning"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialonikkdotcom;

    move-result-object v0

    .lnikkdotcom   iget-object v1, p0, Lcom/bigtincan/android/byeads/FreeMe;->common:Lcom/bigtincan/android/byeads/Common;

    const-stnikkdotcom"errorMsg"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/bigtincan/android/byeads/Common;->GetStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-nikkdotcomject v0

    .line 263
    const-string v1, "Ok"

    new-inikkdotcom2, Lcom/bigtincan/android/byeads/FreeMnikkdotcom invoke-direct {v2, p0}, Lcom/bigtincan/android/byeads/FreeMe$9;-><init>(Lcom/bigtincan/android/byeads/FreeMe;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/appnikkdotcomlog;

    goto :goto_0

    .line 272
    :cond_1
    invoke-direct {p0}, Lcom/bigtincan/android/byeads/FreeMe;->showMessageNext()V

    goto :goto_0
.end method

.method private showMessageNext()V
    .locals 2

    .prolognikkdotcomine 277
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bigtincan/android/byeads/DoUpgrade;

    invoke-direct {v0, p0, v1}, Landroid/content/Intentnikkdotcom(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/FreenikkdotcomtActivity(Landroid/content/Intent;)V

    .line 278
    invoke-virtual {p0}, Lcom/bigtincan/android/byeads/FreeMe;->finish()V

    .line 279
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

   nikkdotcome
    const/4 v4, 0x0

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/bigtincnikkdotcomd/byeads/FreeMe;->getRequestedOrientation()I

    move-result v1

    sput v1, nikkdotcomincan/android/byeads/FreeMe;->screenOr:I

    .line 57
    invoke-virtual {p0}, Lcom/bigtincan/android/byeads/FreeMe;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

nikkdotcom v1, v2, :cond_1

    .line 58
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/FreeMe;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    invoke-super {p0, p1},nikkdotcom/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .linenikkdotcomew-instance v1, Lcom/bigtincan/android/byeads/Common;

    invoke-direct {v1, p0}, Lcom/bnikkdotcomandroid/byeads/Common;-><init>(Landrnikkdotcomnt/Context;)V

    iput-object v1, p0, Lcom/bigtincan/android/adfrnikkdotcom;->common:Lcom/bigtincan/android/adfnikkdotcomn;

    .line 66
    iget-object v1, p0, Lcom/bigtincan/android/byeads/FreeMe;->common:Lcom/bigtinikkdotcomoid/byeads/Common;

    const-string v2, "fatalError"

    invoke-virtual {v1, v2, v4}, Lcom/bigtincnikkdotcomd/byeads/Common;->SetIntPref(Ljava/lnikkdotcomg;I)V

    .line 67
    iget-object v1, p0, Lcom/bigtincan/android/byeads/FreeMe;->common:Lcom/bigtincan/android/byeads/nikkdotcom    const-string v2, "errorMsg"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/bigtincan/android/byeadsnikkdotcom>SetStringPref(Ljava/lang/String;Ljanikkdotcomtring;)V

    .line 69
    iget-object v1, p0, Lcom/bigtincan/android/byeads/FreeMe;->common:Lcnikkdotcomcan/android/byeads/Common;

    const-string v2, "remember"

    invoke-virtual {v1, v2, v4}, Lcom/bigtincan/android/byeads/Common;->GetBoolPref(nikkdotcomg/String;Z)Z

    move-result v1

  nikkdotcomv1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/bigtincan/android/byeads/FreeMe;->commonnikkdotcomtincan/android/byeads/Common;

    const-string v2, "remember"

    invoke-virtual {v1, v2, v4}, Lcom/bigtincan/android/byeads/Common;->SetBoolPnikkdotcom/lang/String;Z)V

    .line 73
    :cond_0
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/bigtincan/andrnikkdotcome/FreeMe;->setContentView(I)V

    .line 74
    const v1, 0x7f060019

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/FreeMe;->findViewById(I)Landroidnikkdotcomw;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    sput-object v1, Lcom/bigtincan/android/byeads/FreeMe;-nikkdotcomroid/widget/ProgressBar;

    .line 76
    new-instance v0,nikkdotcomng/Thread;

    new-instance v1, Lcom/nikkdotcom/android/byeads/FreeMe$4;

    invoke-direct {v1, p0}, Lcom/bigtincan/android/byeads/FreeMe$4;-><init>(Lcom/bigtincan/android/byeads/FreeMe;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    .local v0, tnikkdotcomang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 94
    invoke-direct {p0}, Lcom/bigtincan/android/byeads/FreeMe;->CheckVer()V

    .line 95
    return-void

    .line 60
    .end local vnikkdotcom   #t2:Ljava/lang/Thread;
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/FreeMe;->setRequestedOrientation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/app/ActivitynikkdotcomteOptionsMenu(Landroid/view/Menu;)Z

    .line 209
    const v0, 0x7f05001a

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/FreeMe;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(LjanikkdotcomharSequence;)Landroid/view/MenuItem;

    .line 210
    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/FreeMe;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 35
    invoke-super nikkdotcomdroid/app/Activity;->onDestroy()V

    .line 37
    const-string v0, "onDestroy()"

    invoke-nikkdotcom0}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 39
    sget-object v0, Lnikkdotcomncan/android/byeads/FreeMe;->sIV:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/bigtincan/android/byeads/FreeMe;->sIV:Ljava/lang/Thread;

    invoke-virnikkdotcom, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/bigtincan/android/byeads/FreeMe;->sIV:Ljava/lang/Thread;

    nikkdotcomrtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 44
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/bigtincan/android/byeads/FreeMe;->sIV:Ljava/lang/Thread;

    .line 45
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 218
    invoke-interface {p1}, Landroid/view/MenuItenikkdotcomtle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f05001a

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/FreeMe;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    nenikkdotcome v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://byeads.bigtincan.com/donation.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoknikkdotcom{v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/FreeMe;->startActivity(Landroid/content/Intent;)V

    .line 225
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 220
    :cond_1
    invoke-interface {p1}, Landroid/view/MenunikkdotcomtTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f05001b

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/FreeMe;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://forum.xda-developers.com/showthread.php?t=2252747"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invnikkdotcomt {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/FreeMe;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 222
    :cond_2
    invoke-interface {p1}, Landroid/view/MenikkdotcomgetTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f05001c

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/FreeMe;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
 nikkdotcomstance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://byeads.bigtincan.com/about.php"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    nikkdotcomrect {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/FreeMe;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
