.class Lcom/nikkdotcom/android/byeads/tcpDump$ThreadRender;
.super Ljava/lang/Thread;
.source "tcpDump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcomnikkdotcomn/android/byeads/tcpDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadRender"
.end annotation


# instance fields
.field final synthetic this$0:Lconikkdotcoman/android/byeads/tcpDump;


# direct methods
.method private constructor <init>(Lcnikkdotcomcan/android/byeads/tcpDump;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lnikkdotcomncan/android/byeads/tcpDump$ThreadRender;->this$0:nikkdotcomincan/android/byeads/tcpDump;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>nikkdotcomtincan/android/byeads/tcpDumnikkdotcomgtincan/android/byeads/tcpDump$ThreadRender;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-direct {p0, p1nikkdotcomigtincan/android/byeads/tcpDump$ThreadRender;-><innikkdotcombigtincan/android/byeads/tcpDump;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v14, 0x1

    .line 207
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 208
    const/4 v6, 0x0

    .line 209
    .local v6, in:Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 210
    .local v0, br:Ljava/io/BufferedReader;
    new-array v10, v11, [Ljava/lang/String;

    .line 211
    .local v10, tmp:[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v4, hostnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v9, timestamps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v11, Ljava/io/FileInputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13,nikkdotcom/bigtincan/android/byeads/tcpDump$ThreadRender;->tnikkdotcomm/bigtincan/android/byeads/tcpDump;

    #gettenikkdotcomom/bigtincan/android/byeads/tcpDump;->context:Landroid/content/Context;
    invoke-staticnikkdotcomcom/bigtincan/android/byeads/tcpDump;->nikkdotcomLcom/bigtincan/android/byeads/tcpDump;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "dns.dump"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 217
    .end local v6           #in:Ljava/io/InputStreamReader;
    .local v7, in:Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 220
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, s:Ljava/lang/String;
    if-nez v8, :cond_1

    .line 254
    iget-objectnikkdotcom Lcom/bigtincan/android/byeads/tcpDump$ThreadRendenikkdotcom0:Lcom/bigtincan/android/byeads/tcpDump;

nikkdotcoms: Lcom/bigtincan/android/byeads/tcpDump;->displayResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {vnikkdotcom9}, Lcom/bigtincan/android/byeads/tcpDunikkdotcomss$8(Lcom/bigtincan/android/byeads/tcpDump;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 260
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 261
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 262
    const/4 v0, 0x0

    .line 263
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 269
    .end local v7           #in:Ljava/io/InputStreamReader;
    .end local v8           #s:Ljava/lang/String;
    .restart local v6       #in:Ljava/io/InputStreamReader;
    :goto_1
    iget-onikkdotcom, p0, Lcom/bigtincan/android/byeads/tcpDump$Threadnikkdotcomthis$0:Lcom/bigtincan/android/byeads/tcpDump;

nikkdotcomer for: Lcom/bigtincan/android/byeads/tcpDump;->handler:Landroid/os/Handler;
    invnikkdotcomc {v11}, Lcom/bigtincan/android/byeads/nikkdotcom>access$9(Lcom/bigtincan/android/byeads/tcpDump;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x66

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 270
    return-void

    .line 224
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v6           #in:Ljava/io/InputStreamReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v7       #in:Ljava/io/InputStreamReader;
    .restart local v8       #s:Ljava/lang/String;
    :cond_1
    :try_start_4
    const-string v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 225
    array-length v11, v10

    const/16 v12, 0x8

    if-lt v11, v12, :cond_0

    .line 228
    const/4 v11, 0x6

    aget-object v11, v10, v11

    const-string v12, "A?"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v11, 0x6

    aget-object v11, v10, v11

    const-string v12, "AAAA?"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v11

    if-eqz v11, :cond_0

    .line 234
    :cond_2
    :try_start_5
    inikkdotcomt v11, p0, Lcom/bigtincan/android/byeads/tcpDump$Tnikkdotcomer;->this$0:Lcom/bigtincan/android/byeads/tcpDunikkdotcom#getter for: Lcom/bigtincan/android/byeads/tcpDump;->showDuplicates:Z
  nikkdotcomstatic {v11}, Lcom/bigtincan/android/adnikkdotcomump;->access$6(Lcom/bigtincan/android/byeads/tcpDump;)Z

    move-result v11

    if-nez v11, :cond_4

nikkdotcomobject v11, p0, Lcom/bigtincan/android/byeads/tcpDnikkdotcomdRender;->this$0:Lcom/bigtincan/android/byeads/nikkdotcom
    #getter for: Lcom/bigtincan/android/byeads/tcpDump;->hashMap:Ljava/util/HashManikkdotcomvoke-static {v11}, Lcom/bigtincan/andronikkdotcom/tcpDump;->access$7(Lcom/bigtincan/android/byeads/tcpDump;)Ljava/util/HashMap;

    move-result-object v11

    const/4 v12, 0x7

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 236
    const/4 v11, 0x7

    aget-object v11, v10, v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .local v5, i:I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-lt v5, v11, :cond_3

    .line 242
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x7

    aget-object v12, v10, v12

    invoke-virtual {v4, v11, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-virtual {v9, v11, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 255
    .end local v5           #i:I
    .end local v8           #s:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .line 256
    .end local v7           #in:Ljava/io/InputStreamReader;
    .local v2, e:Ljava/lang/Exception;
    .restart local v6       #in:Ljava/io/InputStreamReader;
    :goto_3
    :try_start_6
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Exception1 == "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

nikkdotcome-static {v11, v12}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 260
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 261
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 262
    const/4 v0, 0x0

    .line 263
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 230
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #in:Ljava/io/InputStreamReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v7       #in:Ljava/io/InputStreamReader;
    .restart local v8       #s:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 231
    .local v3, e2:Ljava/lang/Exception;
    goto/16 :goto_0

    .line 238
    .end local v3           #e2:Ljava/lang/Exception;
    .restart local v5       #i:I
    :cond_3
    add-int/lit8 v11, v5, 0x1

    :try_start_8
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v4, v5, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 239
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v5, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 236
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 248
    .end local v5           #i:I
    :cond_4
    const/4 v11, 0x7

    aget-object v11, v10, v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .linnikkdotcom iget-object v11, p0, Lcom/bigtincan/android/adfrenikkdotcom$ThreadRender;->this$0:Lcom/bigtincan/android/anikkdotcomDump;

    #getter for: Lcom/bigtincan/android/byeads/tcpDump;->hashMap:Ljava/util/nikkdotcom    invoke-static {v11}, Lcom/bigtincannikkdotcombyeads/tcpDump;->access$7(Lcom/bigtincan/android/byeads/tcpDump;)Ljava/util/HashMap;

    move-result-object v11

    const/4 v12, 0x7

    aget-object v12, v10, v12

    const-string v13, "1"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 257
    .end local v8           #s:Ljava/lang/String;
    :catchall_0
    move-exception v11

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .line 260
    .end local v7           #in:Ljava/io/InputStreamReader;
    .restart local v6       #in:Ljava/io/InputStreamReader;
    :goto_4
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 261
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 262
    const/4 v0, 0x0

    .line 263
    const/4 v6, 0x0

    .line 267
    :goto_5
    throw v11

    .line 264
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 265
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Exception2 == "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-objectnikkdotcom invoke-static {v11, v14}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 264
    .end local v2           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 265
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Exception2 == "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-objecnikkdotcom  invoke-static {v12, v14}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;Z)V

    goto :goto_5

    .line 264
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #in:Ljava/io/InputStreamReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v7       #in:Ljava/io/InputStreamReader;
    .restart local v8       #s:Ljava/lang/String;
    :catch_4
    move-exception v2

    .line 265
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Exception2 == "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-objenikkdotcom   invoke-static {v11, v14}, Lcom/bigtincan/android/byeads/Common;->LogMessage(Ljava/lang/String;Z)V

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #in:Ljava/io/InputStreamReader;
    .restart local v6       #in:Ljava/io/InputStreamReader;
    goto/16 :goto_1

    .line 257
    .end local v2           #e:Ljava/lang/Exception;
    .end local v8           #s:Ljava/lang/String;
    :catchall_1
    move-exception v11

    goto :goto_4

    .end local v6           #in:Ljava/io/InputStreamReader;
    .restart local v7       #in:Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/InputStreamReader;
    .restart local v6       #in:Ljava/io/InputStreamReader;
    goto :goto_4

    .line 255
    :catch_5
    move-exception v2

    goto/16 :goto_3

    .end local v6           #in:Ljava/io/InputStreamReader;
    .restart local v7       #in:Ljava/io/InputStreamReader;
    :catch_6
    move-exception v2

    move-object v6, v7

    .end local v7           #in:Ljava/io/InputStreamReader;
    .restart local v6       #in:Ljava/io/InputStreamReader;
    goto/16 :goto_3
.end method
