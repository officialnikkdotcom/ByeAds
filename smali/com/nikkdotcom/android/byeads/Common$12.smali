.class Lcom/nikkdotcom/android/byeads/Common$12;
.super Ljava/lang/Object;
.source "Common.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nikkdotcom/android/byeads/Common;->installApk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nikkdotcom/android/byeads/Common;


# direct methods
.method constructor <init>(Lcom/nikkdotcom/android/byeads/Common;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nikkdotcom/android/byeads/Common$12;->this$0:Lcom/nikkdotcom/android/byeads/Common;

    .line 1205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 1211
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/nikkdotcom/android/byeads/Common$12;->this$0:Lcom/nikkdotcom/android/byeads/Common;

    #getter for: Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;
    invoke-static {v10}, Lcom/nikkdotcom/android/byeads/Common;->access$3(Lcom/nikkdotcom/android/byeads/Common;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "byeads.apk"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1212
    .local v5, filename:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "filename="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 1213
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1214
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1215
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1217
    :cond_0
    new-instance v7, Ljava/net/URL;

    const-string v9, "http://byeads.nikkdotcom.com/byeads.apk"

    invoke-direct {v7, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1218
    .local v7, url:Ljava/net/URL;
    const-string v9, "apkURL=http://byeads.nikkdotcom.com/byeads.apk"

    invoke-static {v9}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    .line 1220
    .local v8, urlConnection:Ljava/net/HttpURLConnection;
    const-string v9, "GET"

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1221
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1222
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 1224
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1225
    .local v4, fileOutput:Ljava/io/FileOutputStream;
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 1227
    .local v6, inputStream:Ljava/io/InputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 1228
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 1230
    .local v1, bufferLength:I
    const-string v9, "Starting download..."

    invoke-static {v9}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 1232
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_1

    .line 1235
    const-string v9, "Download finished..."

    invoke-static {v9}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1237
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 1238
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1240
    const-string v9, "Starting install..."

    invoke-static {v9}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 1241
    iget-object v9, p0, Lcom/nikkdotcom/android/byeads/Common$12;->this$0:Lcom/nikkdotcom/android/byeads/Common;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "pm install -r "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/nikkdotcom/android/byeads/Common;->RunAsRoot(Ljava/lang/String;)Ljava/lang/String;

    .line 1243
    const-string v9, "Install finished..."

    invoke-static {v9}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 1244
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1249
    .end local v0           #buffer:[B
    .end local v1           #bufferLength:I
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fileOutput:Ljava/io/FileOutputStream;
    .end local v5           #filename:Ljava/lang/String;
    .end local v6           #inputStream:Ljava/io/InputStream;
    .end local v7           #url:Ljava/net/URL;
    .end local v8           #urlConnection:Ljava/net/HttpURLConnection;
    :goto_1
    return-void

    .line 1233
    .restart local v0       #buffer:[B
    .restart local v1       #bufferLength:I
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #fileOutput:Ljava/io/FileOutputStream;
    .restart local v5       #filename:Ljava/lang/String;
    .restart local v6       #inputStream:Ljava/io/InputStream;
    .restart local v7       #url:Ljava/net/URL;
    .restart local v8       #urlConnection:Ljava/net/HttpURLConnection;
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1245
    .end local v0           #buffer:[B
    .end local v1           #bufferLength:I
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fileOutput:Ljava/io/FileOutputStream;
    .end local v5           #filename:Ljava/lang/String;
    .end local v6           #inputStream:Ljava/io/InputStream;
    .end local v7           #url:Ljava/net/URL;
    .end local v8           #urlConnection:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v2

    .line 1246
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1247
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Exception: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    goto :goto_1
.end method
