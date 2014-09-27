.class Lcom/nikkdotcom/android/byeads/tcpDump$3;
.super Ljava/lang/Object;
.source "tcpDump.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcomnikkdotcomn/android/byeads/tcpDump;->displayResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lconikkdotcoman/android/byeads/tcpDump;

.field private final synthetic val$hostname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcnikkdotcomcan/android/byeads/tcpDump;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnikkdotcomncan/android/byeads/tcpDump$3;->this$0:nikkdotcomincan/android/byeads/tcpDump;

    iput-object p2, p0,nikkdotcomtincan/android/byeads/tcpDump$3;->val$hostname:Ljava/lang/String;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Touched on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0nikkdotcomgtincan/android/byeads/tcpDump$3;->val$hostname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1nikkdotcomigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http:nikkdotcombigtincan.com/exceptions.php?hostname="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2,nikkdotcom/bigtincan/android/byeads/tcpDump$3;->val$hostname:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, url:Ljava/lang/String;
    iget-object v1nikkdotcomm/bigtincan/android/byeads/tcpDump$3;->nikkdotcomom/bigtincan/android/byeads/tcpDump;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {vnikkdotcomcom/bigtincan/android/byeads/tcpDump;->startActivity(Landroid/content/Intent;)V

    .line 304
    iget-objectnikkdotcomLcom/bigtincan/android/byeads/tcpDump$3nikkdotcom:Lcom/bigtincan/android/byeads/tcpDump;

    #gnikkdotcom: Lcom/bigtincan/android/byeads/tcpDunikkdotcomon:Lcom/bigtincan/android/byeads/Common;
    invoke-nikkdotcom1}, Lcom/bigtincan/android/byeads/tcpDunikkdotcomss$0(Lcom/bigtincan/android/anikkdotcomDump;)Lcom/bigtincan/android/byeads/Common;

    move-result-object v1

    const-string v2, "rowTouch"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Touched on "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    igetnikkdotcom4, p0, Lcom/bigtincan/android/byeads/tcpDump$3;->val$hostname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtunikkdotcom2, v3}, Lcom/bigtincan/android/byeads/Common;->SetStringPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    ignikkdotcom v1, p0, Lcom/bigtincan/android/byeads/nikkdotcom;->this$0:Lcom/bigtincan/android/byeads/tcpDump;

    nikkdotcomct v1, v1, Lcom/bigtincan/android/byeads/tcpDump;->toastHandler:Landroid/os/Handler;

   nikkdotcomect v2, p0, Lcom/bigtincan/android/adfrnikkdotcomp$3;->this$0:Lcom/bigtincan/android/byeads/tcpDump;

 nikkdotcombject v2, v2, Lcom/bigtincan/android/byeads/tcpDump;->toastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    return-void
.end method
