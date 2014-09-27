.class public Lcom/nikkdotcom/android/byeads/block;
.super Landroid/app/Activity;
.source "block.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nikkdotcom/android/byeads/block$ThreadRender;
    }
.end annotation


# instance fields
.field private common:Lcom/nikkdotcom/android/byeads/Common;

.field private context:Landroid/content/Context;

.field private fontSize:I

.field private handler:Landroid/os/Handler;

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

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    iput v1, p0, Lcom/nikkdotcom/android/byeads/block;->increment:I

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nikkdotcom/android/byeads/block;->hashMap:Ljava/util/HashMap;

    .line 46
    const/16 v0, 0x19

    iput v0, p0, Lcom/nikkdotcom/android/byeads/block;->fontSize:I

    .line 47
    iput-boolean v1, p0, Lcom/nikkdotcom/android/byeads/block;->showDuplicates:Z

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nikkdotcom/android/byeads/block;->toastHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/nikkdotcom/android/byeads/block$1;

    invoke-direct {v0, p0}, Lcom/nikkdotcom/android/byeads/block$1;-><init>(Lcom/nikkdotcom/android/byeads/block;)V

    iput-object v0, p0, Lcom/nikkdotcom/android/byeads/block;->toastRunnable:Ljava/lang/Runnable;

    .line 335
    new-instance v0, Lcom/nikkdotcom/android/byeads/block$2;

    invoke-direct {v0, p0}, Lcom/nikkdotcom/android/byeads/block$2;-><init>(Lcom/nikkdotcom/android/byeads/block;)V

    iput-object v0, p0, Lcom/nikkdotcom/android/byeads/block;->handler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/nikkdotcom/android/byeads/block;)Lcom/nikkdotcom/android/byeads/Common;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/block;->common:Lcom/nikkdotcom/android/byeads/Common;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nikkdotcom/android/byeads/block;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/nikkdotcom/android/byeads/block;->increment:I

    return v0
.end method

.method static synthetic access$2(Lcom/nikkdotcom/android/byeads/block;)Landroid/widget/ScrollView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/block;->sv:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/nikkdotcom/android/byeads/block;)Landroid/widget/TableLayout;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/block;->table:Landroid/widget/TableLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/nikkdotcom/android/byeads/block;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/block;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/nikkdotcom/android/byeads/block;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/nikkdotcom/android/byeads/block;->showDuplicates:Z

    return v0
.end method

.method static synthetic access$6(Lcom/nikkdotcom/android/byeads/block;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/block;->hashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$7(Lcom/nikkdotcom/android/byeads/block;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-direct {p0, p1, p2}, Lcom/nikkdotcom/android/byeads/block;->displayResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$8(Lcom/nikkdotcom/android/byeads/block;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 335
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/block;->handler:Landroid/os/Handler;

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

    .line 267
    const/4 v3, 0x0

    .line 269
    .local v3, label:Landroid/widget/TextView;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_0

    .line 332
    iget-object v4, p0, Lcom/nikkdotcom/android/byeads/block;->handler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 333
    return-void

    .line 271
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

    move-result-object v4

    invoke-static {v4}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 272
    new-instance v4, Landroid/widget/TableRow;

    iget-object v5, p0, Lcom/nikkdotcom/android/byeads/block;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nikkdotcom/android/byeads/block;->row:Landroid/widget/TableRow;

    .line 273
    iget-object v4, p0, Lcom/nikkdotcom/android/byeads/block;->row:Landroid/widget/TableRow;

    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v5, v6, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    new-instance v3, Landroid/widget/TextView;

    .end local v3           #label:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/nikkdotcom/android/byeads/block;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 275
    .restart local v3       #label:Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 279
    iget v4, p0, Lcom/nikkdotcom/android/byeads/block;->fontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 280
    iget-object v4, p0, Lcom/nikkdotcom/android/byeads/block;->row:Landroid/widget/TableRow;

    invoke-virtual {v4, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 282
    const/4 v0, -0x1

    .line 283
    .local v0, bg:I
    iget v4, p0, Lcom/nikkdotcom/android/byeads/block;->increment:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/nikkdotcom/android/byeads/block;->increment:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    .line 284
    const v0, -0x333334

    .line 286
    :cond_1
    iget-object v4, p0, Lcom/nikkdotcom/android/byeads/block;->row:Landroid/widget/TableRow;

    invoke-virtual {v4, v0}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 287
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 288
    .local v1, hostname:Ljava/lang/String;
    iget-object v4, p0, Lcom/nikkdotcom/android/byeads/block;->row:Landroid/widget/TableRow;

    new-instance v5, Lcom/nikkdotcom/android/byeads/block$3;

    invoke-direct {v5, p0, v1}, Lcom/nikkdotcom/android/byeads/block$3;-><init>(Lcom/nikkdotcom/android/byeads/block;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v4, p0, Lcom/nikkdotcom/android/byeads/block;->table:Landroid/widget/TableLayout;

    iget-object v5, p0, Lcom/nikkdotcom/android/byeads/block;->row:Landroid/widget/TableRow;

    invoke-virtual {v4, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 303
    new-instance v4, Landroid/widget/TableRow;

    iget-object v5, p0, Lcom/nikkdotcom/android/byeads/block;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nikkdotcom/android/byeads/block;->row:Landroid/widget/TableRow;

    .line 304
    iget-object v4, p0, Lcom/nikkdotcom/android/byeads/block;->row:Landroid/widget/TableRow;

    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v5, v6, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    new-instance v3, Landroid/widget/TextView;

    .end local v3           #label:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/nikkdotcom/android/byeads/block;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 307
    .restart local v3       #label:Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 311
    iget v4, p0, Lcom/nikkdotcom/android/byeads/block;->fontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 313
    iget-object v4, p0, Lcom/nikkdotcom/android/byeads/block;->row:Landroid/widget/TableRow;

    invoke-virtual {v4, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 314
    iget-object v4, p0, Lcom/nikkdotcom/android/byeads/block;->row:Landroid/widget/TableRow;

    invoke-virtual {v4, v0}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 316
    iget-object v4, p0, Lcom/nikkdotcom/android/byeads/block;->row:Landroid/widget/TableRow;

    new-instance v5, Lcom/nikkdotcom/android/byeads/block$4;

    invoke-direct {v5, p0, v1}, Lcom/nikkdotcom/android/byeads/block$4;-><init>(Lcom/nikkdotcom/android/byeads/block;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v4, p0, Lcom/nikkdotcom/android/byeads/block;->table:Landroid/widget/TableLayout;

    iget-object v5, p0, Lcom/nikkdotcom/android/byeads/block;->row:Landroid/widget/TableRow;

    invoke-virtual {v4, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 269
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0
.end method

.method private refreshList()V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/block;->finish()V

    .line 164
    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/block;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/block;->startActivity(Landroid/content/Intent;)V

    .line 165
    return-void
.end method

.method private showDuplicates()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 169
    iget-object v1, p0, Lcom/nikkdotcom/android/byeads/block;->common:Lcom/nikkdotcom/android/byeads/Common;

    const-string v2, "showDuplicates"

    invoke-virtual {v1, v2, v0}, Lcom/nikkdotcom/android/byeads/Common;->GetBoolPref(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/nikkdotcom/android/byeads/block;->showDuplicates:Z

    .line 170
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/block;->common:Lcom/nikkdotcom/android/byeads/Common;

    const-string v1, "showDuplicates"

    iget-boolean v2, p0, Lcom/nikkdotcom/android/byeads/block;->showDuplicates:Z

    invoke-virtual {v0, v1, v2}, Lcom/nikkdotcom/android/byeads/Common;->SetBoolPref(Ljava/lang/String;Z)V

    .line 171
    invoke-direct {p0}, Lcom/nikkdotcom/android/byeads/block;->refreshList()V

    .line 172
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private switchLists()V
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/block;->finish()V

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nikkdotcom/android/byeads/tcpDump;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/block;->startActivity(Landroid/content/Intent;)V

    .line 159
    return-void
.end method

.method private wipeBlock()V
    .locals 5

    .prologue
    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rm "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/lighttpd/logs/access.log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, cmd:Ljava/lang/String;
    const-string v2, ""

    .line 179
    .local v2, failedmsg:Ljava/lang/String;
    new-instance v1, Lcom/nikkdotcom/android/byeads/Common;

    invoke-direct {v1, p0}, Lcom/nikkdotcom/android/byeads/Common;-><init>(Landroid/content/Context;)V

    .line 180
    .local v1, common:Lcom/nikkdotcom/android/byeads/Common;
    invoke-virtual {v1, v0}, Lcom/nikkdotcom/android/byeads/Common;->RunAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 182
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/nikkdotcom/android/byeads/block;->context:Landroid/content/Context;

    const v4, 0x7f05004d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failedmsg == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 196
    :cond_1
    :goto_0
    return-void

    .line 186
    :cond_2
    iget-object v3, p0, Lcom/nikkdotcom/android/byeads/block;->table:Landroid/widget/TableLayout;

    invoke-virtual {v3}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 188
    const-string v3, "RunWebService"

    invoke-virtual {v1, v3}, Lcom/nikkdotcom/android/byeads/Common;->GetBoolPref(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    const-string v3, "lighttpd"

    invoke-virtual {v1, v3}, Lcom/nikkdotcom/android/byeads/Common;->stopProcess(Ljava/lang/String;)V

    .line 191
    const-string v3, "lighttpd"

    const/high16 v4, 0x7f04

    invoke-virtual {v1, v3, v4}, Lcom/nikkdotcom/android/byeads/Common;->installBinary(Ljava/lang/String;I)Ljava/lang/String;

    .line 192
    const-string v3, "lighttpd.conf"

    const v4, 0x7f040001

    invoke-virtual {v1, v3, v4}, Lcom/nikkdotcom/android/byeads/Common;->installBinary(Ljava/lang/String;I)Ljava/lang/String;

    .line 193
    invoke-virtual {v1}, Lcom/nikkdotcom/android/byeads/Common;->runLighttpd()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    const/4 v3, -0x1

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/block;->getRequestedOrientation()I

    move-result v1

    sput v1, Lcom/nikkdotcom/android/byeads/FreeMe;->screenOr:I

    .line 68
    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/block;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 69
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nikkdotcom/android/byeads/block;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    iput-object p0, p0, Lcom/nikkdotcom/android/byeads/block;->context:Landroid/content/Context;

    .line 90
    new-instance v1, Lcom/nikkdotcom/android/byeads/Common;

    iget-object v2, p0, Lcom/nikkdotcom/android/byeads/block;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/nikkdotcom/android/byeads/Common;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nikkdotcom/android/byeads/block;->common:Lcom/nikkdotcom/android/byeads/Common;

    .line 92
    iget-object v1, p0, Lcom/nikkdotcom/android/byeads/block;->common:Lcom/nikkdotcom/android/byeads/Common;

    const-string v2, "showDuplicates"

    invoke-virtual {v1, v2, v5}, Lcom/nikkdotcom/android/byeads/Common;->GetBoolPref(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nikkdotcom/android/byeads/block;->showDuplicates:Z

    .line 94
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/nikkdotcom/android/byeads/block;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nikkdotcom/android/byeads/block;->pd:Landroid/app/ProgressDialog;

    .line 95
    iget-object v1, p0, Lcom/nikkdotcom/android/byeads/block;->pd:Landroid/app/ProgressDialog;

    const-string v2, "Calculating"

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lcom/nikkdotcom/android/byeads/block;->pd:Landroid/app/ProgressDialog;

    const-string v2, "Working...."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lcom/nikkdotcom/android/byeads/block;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 98
    iget-object v1, p0, Lcom/nikkdotcom/android/byeads/block;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 100
    new-instance v1, Landroid/widget/TableLayout;

    iget-object v2, p0, Lcom/nikkdotcom/android/byeads/block;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nikkdotcom/android/byeads/block;->table:Landroid/widget/TableLayout;

    .line 101
    iget-object v1, p0, Lcom/nikkdotcom/android/byeads/block;->table:Landroid/widget/TableLayout;

    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v1, p0, Lcom/nikkdotcom/android/byeads/block;->table:Landroid/widget/TableLayout;

    invoke-virtual {v1, v3}, Landroid/widget/TableLayout;->setBackgroundColor(I)V

    .line 104
    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/nikkdotcom/android/byeads/block;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nikkdotcom/android/byeads/block;->sv:Landroid/widget/ScrollView;

    .line 105
    iget-object v1, p0, Lcom/nikkdotcom/android/byeads/block;->sv:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v1, p0, Lcom/nikkdotcom/android/byeads/block;->sv:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 108
    new-instance v0, Lcom/nikkdotcom/android/byeads/block$ThreadRender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nikkdotcom/android/byeads/block$ThreadRender;-><init>(Lcom/nikkdotcom/android/byeads/block;Lcom/nikkdotcom/android/byeads/block$ThreadRender;)V

    .line 109
    .local v0, thread:Lcom/nikkdotcom/android/byeads/block$ThreadRender;
    invoke-virtual {v0}, Lcom/nikkdotcom/android/byeads/block$ThreadRender;->start()V

    .line 110
    return-void

    .line 71
    .end local v0           #thread:Lcom/nikkdotcom/android/byeads/block$ThreadRender;
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/nikkdotcom/android/byeads/block;->setRequestedOrientation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 117
    const v0, 0x7f05001a

    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/block;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 118
    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/block;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 119
    const v0, 0x7f05001c

    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/block;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 120
    const v0, 0x7f05004c

    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/block;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 122
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/block;->common:Lcom/nikkdotcom/android/byeads/Common;

    const-string v1, "showDuplicates"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nikkdotcom/android/byeads/Common;->GetBoolPref(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const v0, 0x7f05004f

    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/block;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 127
    :goto_0
    const v0, 0x7f050051

    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/block;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 128
    const v0, 0x7f050041

    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/block;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 130
    const/4 v0, 0x1

    return v0

    .line 125
    :cond_0
    const v0, 0x7f050050

    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/block;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f05001a

    invoke-virtual {p0, v1}, Lcom/nikkdotcom/android/byeads/block;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://byeads.nikkdotcom.com/donation.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/block;->startActivity(Landroid/content/Intent;)V

    .line 152
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f05001b

    invoke-virtual {p0, v1}, Lcom/nikkdotcom/android/byeads/block;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://forum.xda-developers.com/showthread.php?t=2252747"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/block;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f05001c

    invoke-virtual {p0, v1}, Lcom/nikkdotcom/android/byeads/block;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://byeads.nikkdotcom.com/about.php"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/block;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 141
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f05004c

    invoke-virtual {p0, v1}, Lcom/nikkdotcom/android/byeads/block;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    invoke-direct {p0}, Lcom/nikkdotcom/android/byeads/block;->wipeBlock()V

    goto :goto_0

    .line 143
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f05004f

    invoke-virtual {p0, v1}, Lcom/nikkdotcom/android/byeads/block;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    invoke-direct {p0}, Lcom/nikkdotcom/android/byeads/block;->showDuplicates()V

    goto :goto_0

    .line 145
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f050050

    invoke-virtual {p0, v1}, Lcom/nikkdotcom/android/byeads/block;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 146
    invoke-direct {p0}, Lcom/nikkdotcom/android/byeads/block;->showDuplicates()V

    goto/16 :goto_0

    .line 147
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f050051

    invoke-virtual {p0, v1}, Lcom/nikkdotcom/android/byeads/block;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 148
    invoke-direct {p0}, Lcom/nikkdotcom/android/byeads/block;->refreshList()V

    goto/16 :goto_0

    .line 149
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f050041

    invoke-virtual {p0, v1}, Lcom/nikkdotcom/android/byeads/block;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/nikkdotcom/android/byeads/block;->switchLists()V

    goto/16 :goto_0
.end method
