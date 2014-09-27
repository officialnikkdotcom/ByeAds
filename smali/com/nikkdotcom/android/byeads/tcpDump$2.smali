.class Lcom/nikkdotcom/android/byeads/tcpDump$2;
.super Landroid/os/Handler;
.source "tcpDump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcomnikkdotcomn/android/byeads/tcpDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lconikkdotcoman/android/byeads/tcpDump;


# direct methods
.method constructor <init>(Lcnikkdotcomcan/android/byeads/tcpDump;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnikkdotcomncan/android/byeads/tcpDump$2;->this$0:nikkdotcomincan/android/byeads/tcpDump;

    .line 344
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 349
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 360
    :goto_0
    return-void

    .line 352
    :pswitch_0
    iget-object v0, p0,nikkdotcomtincan/android/byeads/tcpDump$2;->this$nikkdotcomgtincan/android/byeads/tcpDump;

    #getter fonikkdotcomigtincan/android/byeads/tcpDump;->sv:Landroid/widget/ScrollView;
    invoke-static {vnikkdotcombigtincan/android/byeads/tcpDump;->accenikkdotcom/bigtincan/android/byeads/tcpDump;)Landroid/widget/ScrollView;

    move-result-object v0

    iget-object v1nikkdotcomm/bigtincan/android/byeads/tcpDump$2;->nikkdotcomom/bigtincan/android/byeads/tcpDump;

    #gettnikkdotcomcom/bigtincan/android/byeads/tcpDump;->table:Landroid/widget/TableLayout;
    invoke-statnikkdotcomLcom/bigtincan/android/byeads/tcpDump;-nikkdotcom(Lcom/bigtincan/android/byeads/tcpDump;)Landroid/widget/TableLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 353
    iget-objenikkdotcom, Lcom/bigtincan/android/byeads/tcpDumpnikkdotcom$0:Lcom/bigtincan/android/byeads/tcpDump;

    iget-obnikkdotcomp0, Lcom/bigtincan/android/byeads/tcpDunikkdotcomis$0:Lcom/bigtincan/android/byeads/tcpDump;

  nikkdotcom for: Lcom/bigtincan/android/byeads/tcpDump;->sv:Landroid/widget/ScrollView;
    invonikkdotcom {v1}, Lcom/bigtincan/android/byeads/tcnikkdotcomccess$2(Lcom/bigtincan/android/byeads/tcpDump;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-nikkdotcomv0, v1}, Lcom/bigtincan/android/byeads/tcpDump;->setContentView(Landroid/view/View;)V

    .line 354
    inikkdotcomt v0, p0, Lcom/bigtincan/android/byeadsnikkdotcom2;->this$0:Lcom/bigtincan/android/byeads/tcpDumnikkdotcomgetter for: Lcom/bigtincan/android/byeads/tcpDump;->pd:Landroid/app/ProgressDialog;
  nikkdotcomstatic {v0}, Lcom/bigtincan/android/adfnikkdotcommp;->access$4(Lcom/bigtincan/android/byeads/tcpDump;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 357
    :pswitch_1
nikkdotcomobject v0, p0, Lcom/bigtincan/android/anikkdotcomDump$2;->this$0:Lcom/bigtincan/android/byeads/tnikkdotcom    #getter for: Lcom/bigtincan/android/byeads/tcpDump;->pd:Landroid/app/ProgressDialonikkdotcomvoke-static {v0}, Lcom/bigtincan/androinikkdotcomtcpDump;->access$4(Lcom/bigtincan/android/byeads/tcpDump;)Landroid/app/ProgressDialog;

    move-result-objectnikkdotcomiget-object v1, p0, Lcom/bigtincan/andrnikkdotcome/tcpDump$2;->this$0:Lcom/bigtincan/android/adfnikkdotcommp;

    #getter for: Lcom/bigtincan/android/byeads/tcpDump;->incrnikkdotcom   invoke-static {v1}, Lcom/bigtincan/anikkdotcomfree/tcpDump;->access$1(Lcom/bigtincan/android/byeads/tcpDump;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
