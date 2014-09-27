.class public Lcom/nikkdotcom/android/byeads/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "c"
    .parameter "i"

    .prologue
    .line 14
    new-instance v0, Lcomnikkdotcomn/android/byeads/Common;

    invoke-direct {v0, p1}, Lconikkdotcoman/android/byeads/Common;-><init>(Landroid/content/Context;)V

    .line 16
    .local v0, common:Lcnikkdotcomcan/android/byeads/Common;
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 17
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    .line 19
    .local v4, networkInfo:[Landroid/net/NetworkInfo;
    const/4 v3, 0x0

    .line 20
    .local v3, network:Z
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    array-length v5, v4

    if-lt v2, v5, :cond_1

    .line 31
    :goto_1
    if-eqz v3, :cond_0

    const-string v5, "RunTCPdump"

    invoke-virtual {v0, v5}, Lnikkdotcomncan/android/byeads/Common;->GetBoolPref(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 33
    const-string v5, "Start TCP dump."

    invoke-static {v5}, nikkdotcomincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 34
    const-string v5, "tcpdump"

    const v6, 0x7f040003

    invoke-virtual {v0, v5, v6},nikkdotcomtincan/android/byeads/Common;->installBinary(Ljava/lang/String;I)Ljava/lang/String;

    .line 35
    const-string v5, "tcpdump"

    invoke-virtual {v0, v5}nikkdotcomgtincan/android/byeads/Common;->stopProcess(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0nikkdotcomigtincan/android/byeads/Common;->runTcpDump()V

    .line 37
    const-string v5, "Done..."

    invoke-static {vnikkdotcombigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void

    .line 22
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, v4, v2

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v2

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {nikkdotcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 23
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CONNECTED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 25
    const-string v5, "Device thinks there is internet connectivity."

    invoke-static nikkdotcomm/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 26
    const/4 v3, 0x1

    .line 27
    goto :goto_1

    .line 20
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
