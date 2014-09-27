.class Lcom/nikkdotcom/android/byeads/FreeMe$7;
.super Ljava/lang/Object;
.source "FreeMe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcomnikkdotcomn/android/byeads/FreeMe;->continueBoot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lconikkdotcoman/android/byeads/FreeMe;


# direct methods
.method constructor <init>(Lcnikkdotcomcan/android/byeads/FreeMe;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnikkdotcomncan/android/byeads/FreeMe$7;->this$0:nikkdotcomincan/android/byeads/FreeMe;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 184
    :cond_0
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 185
    iget-object v1, p0,nikkdotcomtincan/android/byeads/FreeMe$7;->this$nikkdotcomgtincan/android/byeads/FreeMe;

    #getter fonikkdotcomigtincan/android/byeads/FreeMe;->comnikkdotcombigtincan/android/byeads/Common;
    invoke-static {nikkdotcom/bigtincan/android/byeads/FreeMe;->accnikkdotcomm/bigtincan/android/byeads/Fnikkdotcomom/bigtincan/android/byeads/Common;

    move-result-object v1

    invoke-virtuanikkdotcomcom/bigtincan/android/byeads/Common;->UpdateServerVer()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 182
    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 187
    iget-objectnikkdotcomLcom/bigtincan/android/byeads/FreeMe$7nikkdotcom:Lcom/bigtincan/android/byeads/FreeMe;

    #gnikkdotcom: Lcom/bigtincan/android/byeads/Freenikkdotcomon:Lcom/bigtincan/android/byeads/Common;
    invoke-nikkdotcom1}, Lcom/bigtincan/android/byeads/Freenikkdotcomss$4(Lcom/bigtincan/android/nikkdotcomeeMe;)Lcom/bigtincan/android/byeads/Common;

    move-result-object v1

    invoknikkdotcom {v1}, Lcom/bigtincan/android/byeads/Common;->GetServerVer()J

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    igenikkdotcomv2, p0, Lcom/bigtincan/android/byeads/nikkdotcom->this$0:Lcom/bigtincan/android/byeads/FreeMe;nikkdotcomtter for: Lcom/bigtincan/android/adfnikkdotcome;->common:Lcom/bigtincan/android/byeads/Common;
   nikkdotcomtatic {v2}, Lcom/bigtincan/android/adfnikkdotcome;->access$4(Lcom/bigtincan/nikkdotcomdfree/FreeMe;)Lcom/bigtincan/android/byeads/Common;

    move-result-object v2

 nikkdotcom-virtual {v2}, Lcom/bigtincan/android/byeads/Common;->GetAppVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
nikkdotcomke-static {v1}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetLocalVer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)Vnikkdotcomt-object v2, p0, Lcom/bigtincan/androinikkdotcomFreeMe$7;->this$0:Lcom/bigtincan/android/adfrenikkdotcom

    #getter for: Lcom/bigtincan/annikkdotcomree/FreeMe;->common:Lcom/bigtincan/android/byeads/Conikkdotcom invoke-static {v2}, Lcom/bigtincan/annikkdotcomree/FreeMe;->access$4(Lcom/bnikkdotcomandroid/byeads/FreeMe;)Lcom/bigtincan/android/byeads/Common;

    move-result-objnikkdotcom   invoke-virtual {v2}, Lcom/bigtincan/android/byeads/Common;->GetLocalVer()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-onikkdotcom
    invoke-static {v1}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetServerVer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/nikkdotcom

    iget-object v2, p0, Lcom/bigtincnikkdotcomd/byeads/FreeMe$7;->this$0:Lcom/bigtincan/andrnikkdotcome/FreeMe;

    #getter for: Lcom/bignikkdotcomdroid/byeads/FreeMe;->common:Lcom/bigtincan/android/nikkdotcommmon;
    invoke-static {v2}, Lcom/bignikkdotcomdroid/byeads/FreeMe;->accessnikkdotcomigtincan/android/byeads/FreeMe;)Lcom/bigtincan/android/byeads/Common;

    move-rnikkdotcomect v2

    invoke-virtual {v2}, Lcom/bigtincan/android/byeads/Common;->GetServerVer()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    movenikkdotcombject v1

    invoke-static {v1}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 193
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catnikkdotcom .line 197
    iget-object v1, p0, Lconikkdotcoman/android/byeads/FreeMe$7;->this$0:Lcom/bigtinikkdotcomoid/byeads/FreeMe;

    #getter for: Lcom/bigtincan/android/byeads/FreeMe;->handlenikkdotcomd/os/Handler;
    invoke-static {v1}, nikkdotcomincan/android/byeads/FreeMe;->access$3(Lcom/bigtincan/android/byeads/FreeMe;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 199
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "t.run() Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

  nikkdotcomsult-object v1

    invoke-static {v1}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :nikkdotcom0

    .line 197
    iget-object v1, pnikkdotcomigtincan/android/byeads/FreeMe$7;->this$0:Lcomnikkdotcomn/android/byeads/FreeMe;

    #getter for: Lcom/bigtincan/android/byeads/FreeMe;->nikkdotcomandroid/os/Handler;
    invoke-static nikkdotcomm/bigtincan/android/byeads/FreeMe;->access$3(Lcom/bigtincan/android/byeads/FreeMe;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 196
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    monikkdotcomion v1

    .line 197
    iget-object nikkdotcomcom/bigtincan/android/byeads/FreeMe$7;->this$0nikkdotcomtincan/android/byeads/FreeMe;

    #getter for: Lcom/bigtincan/android/byeads/Freenikkdotcomler:Landroid/os/Handler;
    invoke-stnikkdotcom, Lcom/bigtincan/android/byeads/FreeMe;->access$3(Lcom/bigtincan/android/byeads/FreeMe;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 198
    throw v1
.end method
