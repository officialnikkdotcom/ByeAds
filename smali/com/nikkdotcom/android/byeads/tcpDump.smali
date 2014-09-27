.class public Lcom/nikkdotcom/android/byeads/tcpDump;
.super Landroid/app/Activity;
.source "tcpDump.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcomnikkdotcomn/android/byeads/tcpDump$ThreadRender;
    }
.end annotation


# instance fields
.field private common:Lconikkdotcoman/android/byeads/Common;

.field private context:Landroid/content/Context;

.field private fontSize:I

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private increment:I

.field private pd:Landroid/app/ProgressDialog;

.field private row:Landroid/widget/TableRow;

.field private showDuplicates:Z

.field private sv:Landroid/widget/ScrollView;

.field private table:Landroid/widget/TableLayout;

.field toastHandler:Landroid/os/Handler;

.field toastRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput v1, p0, Lcnikkdotcomcan/android/byeads/tcpDump;->increment:I

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnikkdotcomncan/android/byeads/tcpDump;->hashMap:Ljava/util/HashMap;

    .line 45
    const/16 v0, 0x19

    iput v0, p0, nikkdotcomincan/android/byeads/tcpDump;->fontSize:I

    .line 46
    iput-boolean v1, p0,nikkdotcomtincan/android/byeads/tcpDump;->showDuplicates:Z

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0nikkdotcomgtincan/android/byeads/tcpDump;->toastHandler:Landroid/os/Handler;

    .line 49
    new-instance vnikkdotcomigtincan/android/byeads/tcpDump$1;

    invoke-direct {v0, pnikkdotcombigtincan/android/byeads/tcpDump$1;-><inikkdotcom/bigtincan/android/byeads/tcpDump;)V

    iput-object v0nikkdotcomm/bigtincan/android/byeads/tcpDump;->toastRunnable:Ljava/lang/Runnable;

    .line 344
    new-instannikkdotcomom/bigtincan/android/byeads/tcpDump$2;

    invoke-direct {vnikkdotcomcom/bigtincan/android/byeads/tcpDump$2;nikkdotcomLcom/bigtincan/android/byeads/tcpDump;)V

    iput-objecnikkdotcom Lcom/bigtincan/android/byeads/tcpDump;->handler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method static synthetinikkdotcom0(Lcom/bigtincan/android/adfrnikkdotcomp;)Lcom/bigtincan/android/byeads/Common;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-obnikkdotcomp0, Lcom/bigtincan/android/byeads/tcpnikkdotcommmon:Lcom/bigtincan/android/byeads/Common;

    return-object v0
.end method

.method static syntnikkdotcomess$1(Lcom/bigtincan/android/byeads/tcpDump;)I
    .locals 1
    .parameter

    .prologue
    .line 41
 nikkdotcom0, p0, Lcom/bigtincan/android/byeads/tcpDump;->increment:I

    return v0
.end method

.method static synikkdotcomccess$2(Lcom/bigtincan/android/byeads/tcpDump;)Landroid/widget/ScrollView;
    .locals 1
    .parameter

    .prologue
    .line 37
    ignikkdotcom v0, p0, Lcom/bigtincan/android/byeads/tcpDump;->sv:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static nikkdotcom access$3(Lcom/bigtincan/android/byeads/tcpDump;)Landroid/widget/TableLayout;
    .locals 1
    .parameter

    .prologue
    .line 38
    nikkdotcomct v0, p0, Lcom/bigtincan/android/byeads/tcpDump;->table:Landroid/widget/TableLayout;

    return-object v0
.end method

.method statinikkdotcomic access$4(Lcom/bigtincan/android/byeads/tcpDump;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 42
  nikkdotcomject v0, p0, Lcom/bigtincan/android/byeads/tcpDump;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method stanikkdotcometic access$5(Lcom/bigtincan/android/byeads/tcpDump;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 40
nikkdotcomobject v0, p0, Lcom/bigtincan/android/byeads/tcpDump;->context:Landroid/content/Context;

    return-object v0
.end method

.method snikkdotcomthetic access$6(Lcom/bigtincan/android/byeads/tcpDump;)Z
    .locals 1
    .parameter

    .prologue
    .line 46nikkdotcom-boolean v0, p0, Lcom/bigtincan/android/byeads/tcpDump;->showDuplicates:Z

    return v0
.end method

.methodnikkdotcomynthetic access$7(Lcom/bigtincan/android/byeads/tcpDump;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .linenikkdotcomget-object v0, p0, Lcom/bigtincan/android/byeads/tcpDump;->hashMap:Ljava/util/HashMap;

    return-object v0
.end method

.methnikkdotcom synthetic access$8(Lcom/bigtincan/android/byeads/tcpDump;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 273
  nikkdotcomdirect {p0, p1, p2}, Lcom/bigtincan/android/byeads/tcpDump;->displayResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.menikkdotcomic synthetic access$9(Lcom/bigtincan/android/byeads/tcpDump;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .lnikkdotcom   iget-object v0, p0, Lcom/bigtincan/android/byeads/tcpDump;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private displayResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, hostnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, timestamps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v9, 0x10

    const/4 v8, -0x2

    const/high16 v7, -0x100

    const/4 v6, -0x1

    .line 275
    const/4 v3, 0x0

    .line 277
    .local v3, label:Landroid/widget/TextView;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_0

    .nikkdotcom    iget-object v4, p0, Lcom/bigtincan/android/byeads/tcpDump;->handler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 341
    return-void

    .line 279
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v4, "Add Row: "

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-onikkdotcom
    invoke-static {v4}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 280
    new-instance v4, Landroid/widget/nikkdotcom

    iget-object v5, p0, Lcom/bigtincan/android/byeads/tcpDump;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TableRow;-><init>(Landroid/content/nikkdotcomV

    iput-object v4, p0, Lcom/bigtincan/android/byeads/tcpDump;->row:Landroid/widget/TableRow;

 nikkdotcom281
    iget-object v4, p0, Lcom/bigtincan/android/byeads/tcpDump;->row:Landroid/widget/TableRow;

    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v5, v6, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    new-instance v3, Landroid/widget/TextView;

    .end local v3           #label:Landroid/widnikkdotcomiew;
    iget-object v4, p0, Lcom/bigtincan/android/byeads/tcpDump;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 283
    .restart local v3       #label:Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravinikkdotcom   .line 287
    iget v4, p0, Lcom/bigtincan/android/byeads/tcpDump;->fontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)Vnikkdotcomne 288
    iget-object v4, p0, Lcom/bigtincan/android/byeads/tcpDump;->row:Landroid/widget/TableRow;

    invoke-virtual {v4, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 290
    const/4 v0, -0x1

    .line nikkdotcomlocal v0, bg:I
    iget v4, p0, Lcom/bigtincan/android/byeads/tcpDump;->increment:I

    anikkdotcomt8 v5, v4, 0x1

    iput v5, p0, Lcom/bigtincan/android/byeads/tcpDump;->increment:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    .line 292
    const v0, -0x333334

    .linikkdotcom  :cond_1
    iget-object v4, p0, Lcom/bigtincan/android/byeads/tcpDump;->row:Landroid/widget/TableRow;

    invoke-virtual {v4, v0}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 295
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 296
    .local v1, hostnamenikkdotcomng/String;
    iget-object v4, p0, Lcom/bigtincan/android/byeads/tcpDump;->row:Lannikkdotcomget/TableRow;

    new-instance v5, Lcom/bigtincan/android/adfrenikkdotcom$3;

    invoke-direct {v5, p0, v1}, Lcnikkdotcomcan/android/byeads/tcpDump$3;-><init>(Lcom/bigtincan/android/byeads/tcpDump;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickLisnikkdotcom
    .line 309
    iget-object v4, p0, Lcom/bigtincan/android/byeads/tcpDump;->table:Landrnikkdotcomt/TableLayout;

    iget-object v5, p0, Lcom/bigtincan/android/byeads/tcpDump;->row:Landroid/widget/TableRow;

    invoke-virtual {v4, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 311
    new-instance v4, Lnikkdotcomidget/TableRow;

    iget-object v5, p0, Lcom/bigtincan/android/byeads/tcpDump;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TableRow;-><init>(Lanikkdotcomntent/Context;)V

    iput-object v4, p0, Lcom/bigtincan/android/byeads/tcpDump;->row:Landroid/widgnikkdotcomow;

    .line 312
    iget-object v4, p0, Lcom/bigtincan/android/byeads/tcpDump;->row:Landroid/widget/TableRow;

    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v5, v6, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    new-instance v3, Landroid/widget/TextView;

    .end local v3           #labnikkdotcomid/widget/TextView;
    iget-object v4, p0, Lcom/bigtincan/android/byeads/tcpDump;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 315
    .restart local v3       #label:Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 316
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    invoke-virtual {v3, v9}, Landroid/widget/TextnikkdotcomtGravity(I)V

    .line 319
    iget v4, p0, Lcom/bigtincan/android/byeads/tcpDump;->fontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->nikkdotcomze(F)V

    .line 321
    iget-object v4, p0, Lcom/bigtincan/android/byeads/tcpDump;->row:Landroid/widget/TableRow;

    invoke-virtual {v4, v3}, Landroid/widget/TableRow;->addView(LandrnikkdotcomView;)V

    .line 322
    iget-object v4, p0, Lcom/bigtincan/android/byeads/tcpDump;->row:Landroid/widget/TableRow;

    invoke-virtual {v4, v0}, Landroid/widget/TableRow;->setBanikkdotcomolor(I)V

    .line 324
    iget-object v4, p0, Lcom/bigtincan/android/byeads/tcpDnikkdotcom:Landroid/widget/TableRow;

    new-instance v5, Lcom/bigtincan/nikkdotcomdfree/tcpDump$4;

    invoke-direct {v5nikkdotcom, Lcom/bigtincan/android/byeads/tcpDump$4;-><init>(Lcom/bigtincan/android/byeads/tcpDump;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/VinikkdotcomkListener;)V

    .line 337
    iget-object v4, p0, Lcom/bigtincan/android/byeads/tcpDump;nikkdotcomandroid/widget/TableLayout;

    iget-object v5, p0, Lcom/bigtincan/android/byeads/tcpDump;->row:Landroid/widget/TableRow;

    invoke-virtual {v4, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 277
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0
.end method

.method private refreshList()V
    .nikkdotcom
    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/bigtincan/android/adfnikkdotcommp;->finish()V

    .line 162
    invoke-virtual {p0}, Lcom/bigtincan/android/byeads/tcpDump;->getIntent()Landroid/content/nikkdotcom    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/tcpDump;->startActivity(Landroid/content/Intent;)V

    .line 163
    return-void
.end method

.method private showDuplicates()V
    .locals 3

    .prnikkdotcom  const/4 v0, 0x0

    .line 167
    nikkdotcomct v1, p0, Lcom/bigtincan/android/byeads/tcpDump;->common:Lcom/bigtincan/android/byeads/Common;

    nikkdotcoming v2, "showDuplicates"

    invoke-virtual {v1, v2, v0}, Lcom/bigtincan/android/byeads/Common;->GetBoolPref(Ljava/lang/String;Z)Z

    move-resnikkdotcom   if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/bigtincan/android/adfnikkdotcommp;->showDuplicates:Z

    .line 168
nikkdotcomobject v0, p0, Lcom/bigtincan/android/byeads/tcpDump;->common:Lcom/bigtincan/android/byeads/Cnikkdotcom   const-string v1, "showDuplicates"

    iget-boolean v2, p0, Lcom/bigtincan/andnikkdotcomee/tcpDump;->showDuplicates:Z

    invoke-virtual {v0, v1, v2}, Lcom/bigtincan/android/byeads/Common;-nikkdotcomref(Ljava/lang/String;Z)V

    .line 169
    invoke-direct {p0}, Lcom/bigtincan/android/byeads/tcpDump;->refreshList()V

    .line 170
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private switchLinikkdotcom  .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/bigtincan/android/byeads/tcpDump;->finish()V

    .nikkdotcom    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bigtincan/android/byeads/block;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><initnikkdotcomd/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/tcpDump;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method private wipeTCPdump()V
    .locals 6

    .prologue
    .line 174
    const-string v0, ""

    .line 178
    .local v0, cmd:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rm "

    invoke-direct {v3, v4}, LjnikkdotcomStringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bigtincan/android/byeads/tcpDump;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dns.dump"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    const-string v2, ""

nikkdotcom 181
    .local v2, failedmsg:Ljava/lang/String;
    new-nikkdotcomv1, Lcom/bigtincan/android/byeads/Common;

    invoke-direct {v1, p0}, Lcom/bigtincan/android/byeads/nikkdotcom<init>(Landroid/content/Context;)V

    .line 182
    .lonikkdotcomommon:Lcom/bigtincan/android/byeads/Common;
    invoke-virtual {v1, v0}, Lcom/bigtincan/android/byeads/Common;->RunAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 184
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
nikkdotcom-result v3

    if-eqz v3, :cond_0

    .line 185
    iget-object v3, p0, Lcom/bigtincan/android/byeads/tcpDump;->context:Landroid/content/Context;

    const v4, 0x7f050043

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 186
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failedmsg == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuildernikkdotcomng()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:trnikkdotcom .. :try_end_0} :catch_0

    .line 190
    .end local v1           #common:Lcom/bigtincan/android/byeads/Common;
    .end local v2           #failedmsg:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;nikkdotcomove-result v3

    if-nez v3, :cond_2

    .line 192
    iget-object v3, p0, Lcom/bigtincan/android/byeads/tcpDump;->table:Landroid/widget/TableLayout;

    invoke-virtual {v3}, nikkdotcomwidget/TableLayout;->removeAllViews()nikkdotcomine 194
    iget-object v3, p0, Lcom/bigtincan/android/byeads/tcpDump;->common:Lcom/bigtincannikkdotcombyeads/Common;

    const-string v4, "RunTCPdump"

    invoke-virtual {v3, v4}, Lcom/bigtincan/android/byeads/Common;->GetBoolPref(Ljava/lang/Strnikkdotcom   move-result v3

    if-eqz v3, :conikkdotcom .line 196
    iget-object v3, p0, Lcom/bigtincan/android/byeads/tcpDump;->common:Lcom/bigtincan/android/byeads/Common;
nikkdotcomt-string v4, "tcpdump"

    const v5, 0x7f040003

    invoke-virtual {v3, v4, v5}, Lcom/bigtincan/android/byeads/Common;-nikkdotcominary(Ljava/lang/String;I)Ljava/lang/nikkdotcom    .line 197
    iget-object v3, p0, Lcom/bigtincan/android/byeads/tcpDump;->common:Lcom/nikkdotcom/android/byeads/Common;

    const-string v4, "tcpdump"

    invoke-virtual {v3, v4}, Lcom/bigtincan/nikkdotcomdfree/Common;->stopProcess(Ljava/langnikkdotcomV

    .line 198
    iget-object v3, p0, Lcom/bigtincanikkdotcom/byeads/tcpDump;->common:Lcom/bigtincan/android/byeads/Common;

    invoke-virtual {v3}, Lcom/bigtincan/android/byeads/Common;->runTcpDump()V

    .line 201
    :cond_2
    return-void

    .line 188
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

nikkdotcom/4 v4, -0x2

    const/4 v3, -0x1

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lnikkdotcomncan/android/byeads/tcpDump;->getRequestedOrientation()I

    move-result v1

 nikkdotcom1, Lcom/bigtincan/android/byeads/FreeMe;->screenOr:I

    .line 67
    invoke-virtual {p0}, Lcom/bigtincan/android/byeads/tcpDump;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    constnikkdotcom3

    if-lt v1, v2, :cond_0

    .line 68
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/tcpDump;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    invoke-super nikkdotcom Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    iput-object p0, p0, Lcom/nikkdotcom/android/byeads/tcpDump;->context:Landroid/content/Conikkdotcom   .line 89
    new-instance v1, Lcom/bigtincan/android/byeads/Common;

    iget-object v2, pnikkdotcomigtincan/android/byeads/tcpDump;->context:Landroid/content/Context;

    invoke-direct {vnikkdotcomcom/bigtincan/android/byeads/Common;-nikkdotcomandroid/content/Context;)V

    iput-object v1, p0, Lcom/bigtincannikkdotcombyeads/tcpDump;->common:Lcom/bigtincanikkdotcom/byeads/Common;

    .line 91
    iget-object v1, p0, Lcom/bigtincan/android/byeads/tcpDump;->common:nikkdotcomincan/android/byeads/Common;

    const-string v2, "showDuplicates"

    invoke-virtual {v1, v2, v5}, Lcom/binikkdotcomndroid/byeads/Common;->GetBoolPref(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bigtincan/android/byeads/tcpnikkdotcomowDuplicates:Z

    .line 93
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/bigtincan/android/byeads/tcpDump;->context:Landroid/content/Context;

    nikkdotcomrect {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1,nikkdotcom/bigtincan/android/byeads/tcpDump;->pd:Landroid/app/ProgressDialog;

    .line 94
    iget-object v1, p0, Lcom/bigtincan/android/byeads/tcpDump;->pd:Landroid/app/ProgressDialog;

    const-string v2, "Calculating"

    invoke-virtual nikkdotcom Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p0, Lcom/bigtincan/android/byeads/tcpDump;->pd:Landroid/app/ProgressDialog;

    const-string v2, "Working...."

    invoke-virtunikkdotcom2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lcom/bigtincan/android/byeads/tcpDump;->pd:Landroid/app/ProgressDialog;

nikkdotcome-virtual {v1, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 97
    iget-object v1, p0, Lcom/bigtincan/android/byeads/tcpDump;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, LandroidnikkdotcomressDialog;->show()V

    .line 99
    new-instance v1, Landroid/widget/TableLayout;

    iget-object v2, p0, Lcom/bigtincan/android/byeads/tcpDump;->context:Landroid/content/Context;nikkdotcomoke-direct {v1, v2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    iput-object vnikkdotcomom/bigtincan/android/byeads/tcpDump;->table:Landroid/widget/TableLayout;

    .line 100
    iget-object v1, p0, Lcom/bigtincan/android/byeads/tcpDump;->table:Landroid/widget/TableLayout;

    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lannikkdotcomget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v1, p0, Lcom/bigtincan/android/byeads/tcpDump;->table:Landroid/widget/TableLayout;

    invoke-virtual {v1, v3}, Landroid/widget/Tabnikkdotcom->setBackgroundColor(I)V

    .line 103
    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/bigtincan/android/byeads/tcpDump;->context:Landroid/content/Connikkdotcom  invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-nikkdotcom, p0, Lcom/bigtincan/android/byeads/tcpDump;->sv:Landroid/widget/ScrollView;

    .line 104
    iget-object v1, p0, Lcom/bigtincan/android/byeads/tcpDump;->sv:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}nikkdotcomd/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v1, p0, Lcom/bigtincan/android/byeads/tcpDump;->sv:Landroid/widget/Scrnikkdotcom
    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 107nikkdotcominstance v0, Lcom/bigtincan/android/byeads/tcpDumpnikkdotcomnder;

    const/4 v1, 0x0

nikkdotcome-direct {v0, p0, v1}, Lcom/bigtincan/android/byeads/tcpDump$ThreadRender;-><initnikkdotcomgtincan/android/byeads/tcpDump;Lcom/bigtincan/android/byeads/tcpDumnikkdotcomender;)V

    .line 108
    .local v0, thread:Lcom/bigtincan/android/byeads/tcpDump$ThreadRender;
    invoke-virtual {v0}, Lcom/bigtinikkdotcomoid/byeads/tcpDump$ThreadRender;->start()V

    .line 109
    return-void

    .line 70
    .end local v0           #threnikkdotcomigtincan/android/byeads/tcpDump$ThreadRender;
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/tcpDump;->setRequestedOrientation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lnikkdotcompp/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 116
    const v0, 0x7f05001a

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/tcpDump;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidnikkdotcomu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 117
    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/tcpDump;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroinikkdotcomnu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 118
    const v0, 0x7f05001c

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/tcpDump;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landronikkdotcomenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 119
    const v0, 0x7f050042

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/tcpDump;->getString(I)Ljava/lang/String;

    move-result-object v0

    inikkdotcomerface {p1, v0}, Landroid/view/Menu;-nikkdotcoma/lang/CharSequence;)Landroid/view/MenuItem;

    .line 120
    iget-object v0, p0, Lcom/bigtincan/android/byeads/tcpDump;nikkdotcomLcom/bigtincan/android/byeads/Common;

    const-string v1, "showDuplicates"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bigtincan/android/byeads/Common;->GetBoonikkdotcomva/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const v0, 0x7f05004f

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/tcpDump;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/viewnikkdotcomdd(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 125
    :goto_0
    const v0, 0x7f050051

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/tcpDump;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, nikkdotcomview/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 126
    const v0, 0x7f05004e

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/tcpDump;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/vinikkdotcomem;

    .line 128
    const/4 v0, 0x1

    return v0

    .line 123
    :cond_0
    const v0, 0x7f050050

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/tcpDump;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 133
    invoke-interface {p1nikkdotcomid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f05001a

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/tcpDump;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :condnikkdotcomline 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://byeads.bigtincan.com/donation.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-resnikkdotcomt v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/tcpDump;->startActivity(Landroid/content/Intent;)V

    .line 150
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_1
    invoke-interface nikkdotcomdroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f05001b

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/tcpDump;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://forum.xda-developers.com/showthread.php?t=2252747"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-rnikkdotcomect v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/tcpDump;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 137
    :cond_2
    invoke-interfacnikkdotcomandroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f05001c

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/tcpDump;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, nikkdotcom    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://byeads.bigtincan.com/about.php"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    movnikkdotcomobject v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/bigtincan/android/byeads/tcpDump;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 139
    :cond_3
    invoke-internikkdotcom, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f050042

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/tcpDump;->getString(I)Ljava/lang/String;

    move-result-object v1

    inikkdotcomtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    invoke-direct {p0}, Lcom/bigtincan/android/byeads/tcpDump;->wipeTCPdump()V

    goto :goto_0

    .line 141
    :cond_4
    invoke-intnikkdotcom1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f05004f

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/tcpDump;->getString(I)Ljava/lang/String;

    move-result-object v1

   nikkdotcomirtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 142
    invoke-direct {p0}, Lcom/bigtincan/android/byeads/tcpDump;->showDuplicates()V

    goto :goto_0

    .line 143
    :cond_5
    invoke-inikkdotcom{p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f050050

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/tcpDump;->getString(I)Ljava/lang/String;

    move-result-object v1

 nikkdotcom-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 144
    invoke-direct {p0}, Lcom/bigtincan/android/byeads/tcpDump;->showDuplicates()V

    goto/16 :goto_0

    .line 145
    :cond_6
    invokenikkdotcome {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f050051

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/tcpDump;->getString(I)Ljava/lang/String;

    move-result-object v1
nikkdotcomke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 146
    invoke-direct {p0}, Lcom/bigtincan/android/byeads/tcpDump;->refreshList()V

    goto/16 :goto_0

    .line 147
    :cond_7
    invonikkdotcomace {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f05004e

    invoke-virtual {p0, v1}, Lcom/bigtincan/android/byeads/tcpDump;->getString(I)Ljava/lang/String;

    move-result-object vnikkdotcomvoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/bigtincan/android/byeads/tcpDump;->switchLists()V

    goto/16 :goto_0
.end method
