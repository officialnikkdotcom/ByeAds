.class Lcom/nikkdotcom/android/byeads/tcpDump$1;
.super Ljava/lang/Object;
.source "tcpDump.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lnikkdotcomncan/android/byeads/tcpDump$1;->this$0:nikkdotcomincan/android/byeads/tcpDump;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0,nikkdotcomtincan/android/byeads/tcpDump$1;->this$nikkdotcomgtincan/android/byeads/tcpDump;

    iget-object v1, pnikkdotcomigtincan/android/byeads/tcpDump$1;->thinikkdotcombigtincan/android/byeads/tcpDump;

    #getter nikkdotcom/bigtincan/android/byeads/tcpDump;->cnikkdotcomm/bigtincan/android/byeads/Common;
    invoke-staticnikkdotcomom/bigtincan/android/byeads/tcpDump;->anikkdotcomcom/bigtincan/android/byeads/nikkdotcomLcom/bigtincan/android/byeads/Common;

    move-result-object v1

    const-string v2, "rowTouch"

    const-string v3, "test"

    invoke-virtual {v1,nikkdotcom Lcom/bigtincan/android/byeads/Common;->GetStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-objenikkdotcom, Lcom/bigtincan/android/byeads/tcpDumpnikkdotcom$0:Lcom/bigtincan/android/byeads/tcpDump;

    nikkdotcomor: Lcom/bigtincan/android/byeads/tcpDump;->increment:I
    invokenikkdotcomv2}, Lcom/bigtincan/android/byeads/tcpDnikkdotcomess$1(Lcom/bigtincan/android/byeads/tcpDump;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 54
    return-void
.end method
