.class Lcom/nikkdotcom/android/byeads/block$ThreadRender;
.super Ljava/lang/Thread;
.source "block.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nikkdotcom/android/byeads/block;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadRender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nikkdotcom/android/byeads/block;


# direct methods
.method private constructor <init>(Lcom/nikkdotcom/android/byeads/block;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/nikkdotcom/android/byeads/block$ThreadRender;->this$0:Lcom/nikkdotcom/android/byeads/block;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nikkdotcom/android/byeads/block;Lcom/nikkdotcom/android/byeads/block$ThreadRender;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/nikkdotcom/android/byeads/block$ThreadRender;-><init>(Lcom/nikkdotcom/android/byeads/block;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 202
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 203
    const/4 v7, 0x0

    .line 204
    .local v7, in:Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    .line 205
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v12, 0x0

    new-array v11, v12, [Ljava/lang/String;

    .line 206
    .local v11, tmp:[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v5, hostnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v10, timestamps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v12, Ljava/io/FileInputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/lighttpd/logs/access.log"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 212
    .end local v7           #in:Ljava/io/InputStreamReader;
    .local v8, in:Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 215
    .end local v1           #br:Ljava/io/BufferedReader;
    .local v2, br:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, s:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 245
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nikkdotcom/android/byeads/block$ThreadRender;->this$0:Lcom/nikkdotcom/android/byeads/block;

    #calls: Lcom/nikkdotcom/android/byeads/block;->displayResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v12, v5, v10}, Lcom/nikkdotcom/android/byeads/block;->access$7(Lcom/nikkdotcom/android/byeads/block;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 252
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 253
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 254
    const/4 v1, 0x0

    .line 255
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 261
    .end local v8           #in:Ljava/io/InputStreamReader;
    .end local v9           #s:Ljava/lang/String;
    .restart local v7       #in:Ljava/io/InputStreamReader;
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nikkdotcom/android/byeads/block$ThreadRender;->this$0:Lcom/nikkdotcom/android/byeads/block;

    #getter for: Lcom/nikkdotcom/android/byeads/block;->handler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/nikkdotcom/android/byeads/block;->access$8(Lcom/nikkdotcom/android/byeads/block;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x66

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 262
    return-void

    .line 219
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v7           #in:Ljava/io/InputStreamReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v8       #in:Ljava/io/InputStreamReader;
    .restart local v9       #s:Ljava/lang/String;
    :cond_1
    :try_start_4
    const-string v12, " "

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 220
    array-length v12, v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v13, 0x5

    if-lt v12, v13, :cond_0

    .line 226
    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nikkdotcom/android/byeads/block$ThreadRender;->this$0:Lcom/nikkdotcom/android/byeads/block;

    #getter for: Lcom/nikkdotcom/android/byeads/block;->showDuplicates:Z
    invoke-static {v12}, Lcom/nikkdotcom/android/byeads/block;->access$5(Lcom/nikkdotcom/android/byeads/block;)Z

    move-result v12

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nikkdotcom/android/byeads/block$ThreadRender;->this$0:Lcom/nikkdotcom/android/byeads/block;

    #getter for: Lcom/nikkdotcom/android/byeads/block;->hashMap:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/nikkdotcom/android/byeads/block;->access$6(Lcom/nikkdotcom/android/byeads/block;)Ljava/util/HashMap;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 228
    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .local v6, i:I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-lt v6, v12, :cond_2

    .line 234
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-virtual {v5, v12, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    new-instance v13, Ljava/lang/StringBuilder;

    const/4 v14, 0x3

    aget-object v14, v11, v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x4

    aget-object v14, v11, v14

    const/4 v15, 0x0

    const/16 v16, 0x4

    aget-object v16, v11, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 247
    .end local v6           #i:I
    .end local v9           #s:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .line 248
    .end local v8           #in:Ljava/io/InputStreamReader;
    .local v3, e:Ljava/lang/Exception;
    .restart local v7       #in:Ljava/io/InputStreamReader;
    :goto_3
    :try_start_6
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Exception1 == "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 252
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 253
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 254
    const/4 v1, 0x0

    .line 255
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 222
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #in:Ljava/io/InputStreamReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v8       #in:Ljava/io/InputStreamReader;
    .restart local v9       #s:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 223
    .local v4, e2:Ljava/lang/Exception;
    goto/16 :goto_0

    .line 230
    .end local v4           #e2:Ljava/lang/Exception;
    .restart local v6       #i:I
    :cond_2
    add-int/lit8 v12, v6, 0x1

    :try_start_8
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v5, v6, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 231
    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v6, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 228
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 239
    .end local v6           #i:I
    :cond_3
    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v12, Ljava/lang/StringBuilder;

    const/4 v13, 0x3

    aget-object v13, v11, v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x4

    aget-object v13, v11, v13

    const/4 v14, 0x0

    const/4 v15, 0x4

    aget-object v15, v11, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nikkdotcom/android/byeads/block$ThreadRender;->this$0:Lcom/nikkdotcom/android/byeads/block;

    #getter for: Lcom/nikkdotcom/android/byeads/block;->hashMap:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/nikkdotcom/android/byeads/block;->access$6(Lcom/nikkdotcom/android/byeads/block;)Ljava/util/HashMap;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v11, v13

    const-string v14, "1"

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 249
    .end local v9           #s:Ljava/lang/String;
    :catchall_0
    move-exception v12

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .line 252
    .end local v8           #in:Ljava/io/InputStreamReader;
    .restart local v7       #in:Ljava/io/InputStreamReader;
    :goto_4
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 253
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 254
    const/4 v1, 0x0

    .line 255
    const/4 v7, 0x0

    .line 259
    :goto_5
    throw v12

    .line 256
    .restart local v3       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 257
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Exception2 == "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 256
    .end local v3           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 257
    .restart local v3       #e:Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Exception2 == "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;Z)V

    goto :goto_5

    .line 256
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #in:Ljava/io/InputStreamReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v8       #in:Ljava/io/InputStreamReader;
    .restart local v9       #s:Ljava/lang/String;
    :catch_4
    move-exception v3

    .line 257
    .restart local v3       #e:Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Exception2 == "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;Z)V

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #in:Ljava/io/InputStreamReader;
    .restart local v7       #in:Ljava/io/InputStreamReader;
    goto/16 :goto_1

    .line 249
    .end local v3           #e:Ljava/lang/Exception;
    .end local v9           #s:Ljava/lang/String;
    :catchall_1
    move-exception v12

    goto :goto_4

    .end local v7           #in:Ljava/io/InputStreamReader;
    .restart local v8       #in:Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v12

    move-object v7, v8

    .end local v8           #in:Ljava/io/InputStreamReader;
    .restart local v7       #in:Ljava/io/InputStreamReader;
    goto :goto_4

    .line 247
    :catch_5
    move-exception v3

    goto/16 :goto_3

    .end local v7           #in:Ljava/io/InputStreamReader;
    .restart local v8       #in:Ljava/io/InputStreamReader;
    :catch_6
    move-exception v3

    move-object v7, v8

    .end local v8           #in:Ljava/io/InputStreamReader;
    .restart local v7       #in:Ljava/io/InputStreamReader;
    goto/16 :goto_3
.end method
