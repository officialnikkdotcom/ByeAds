.class Lcom/nikkdotcom/android/byeads/Common;
.super Ljava/lang/Object;
.source "Common.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SdCardPath",
        "HandlerLeak"
    }
.end annotation


# static fields
.field public static final BGServerWaitTime:I = 0x927c0

.field public static final BTCexceptionURL:Ljava/lang/String; = "http://byeads.nikkdotcom.com/exceptions.php?hostname="

.field public static final BTCforumURL:Ljava/lang/String; = "http://byeads.nikkdotcom.com/about.php"

.field public static final FGServerWaitTime:I = 0x3e8

.field public static final StartUpWaitTime:I = 0xea60

.field public static final VCURL:Ljava/lang/String; = "http://byeads.nikkdotcom.com/byeads.vc"

.field public static final apkURL:Ljava/lang/String; = "http://byeads.nikkdotcom.com/byeads.apk"

.field private static final debug_on:Z = false

.field public static final donationURL:Ljava/lang/String; = "http://byeads.nikkdotcom.com/donation.html"

.field public static final downloadURL:Ljava/lang/String; = "http://184.106.70.131/byeads.php"

.field public static final forceAuthQuestion:Z = false

.field public static final forumThreadURL:Ljava/lang/String; = "http://forum.xda-developers.com/showthread.php?t=2252747"

.field public static final registerURL:Ljava/lang/String; = "http://byeads.nikkdotcom.com/phone-register.php"

.field public static final rootURL:Ljava/lang/String; = "http://www.nikkdotcom.com/AndroidDevices.php"

.field public static final updateIntv:J = 0x5265c00L

.field public static final versionURL:Ljava/lang/String; = "http://184.106.70.131/byeads-check.php"


# instance fields
.field private final PREFS_NAME:Ljava/lang/String;

.field private appcode:I

.field private appversion:Ljava/lang/String;

.field private authDialog:Landroid/app/AlertDialog;

.field public cancelHandler:Landroid/os/Handler;

.field private catpath:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field public lastupdated:Ljava/lang/String;

.field private final possiblePartitions:[Ljava/lang/String;

.field public proceedHandler:Landroid/os/Handler;

.field public rows:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "c"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v2, "byeadsPrefs"

    iput-object v2, p0, Lcom/nikkdotcom/android/byeads/Common;->PREFS_NAME:Ljava/lang/String;

    .line 44
    const-string v2, "0.0.0"

    iput-object v2, p0, Lcom/nikkdotcom/android/byeads/Common;->appversion:Ljava/lang/String;

    .line 45
    iput v4, p0, Lcom/nikkdotcom/android/byeads/Common;->appcode:I

    .line 48
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, " /system "

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, " /dev/mtdblock1 "

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/nikkdotcom/android/byeads/Common;->possiblePartitions:[Ljava/lang/String;

    .line 51
    iput-object v5, p0, Lcom/nikkdotcom/android/byeads/Common;->lastupdated:Ljava/lang/String;

    .line 52
    iput-object v5, p0, Lcom/nikkdotcom/android/byeads/Common;->rows:Ljava/lang/String;

    .line 76
    const-string v2, "/system/bin/cat"

    iput-object v2, p0, Lcom/nikkdotcom/android/byeads/Common;->catpath:Ljava/lang/String;

    .line 1015
    new-instance v2, Lcom/nikkdotcom/android/byeads/Common$1;

    invoke-direct {v2, p0}, Lcom/nikkdotcom/android/byeads/Common$1;-><init>(Lcom/nikkdotcom/android/byeads/Common;)V

    iput-object v2, p0, Lcom/nikkdotcom/android/byeads/Common;->cancelHandler:Landroid/os/Handler;

    .line 1025
    new-instance v2, Lcom/nikkdotcom/android/byeads/Common$2;

    invoke-direct {v2, p0}, Lcom/nikkdotcom/android/byeads/Common$2;-><init>(Lcom/nikkdotcom/android/byeads/Common;)V

    iput-object v2, p0, Lcom/nikkdotcom/android/byeads/Common;->proceedHandler:Landroid/os/Handler;

    .line 80
    iput-object p1, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 83
    .local v0, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 86
    .local v1, version:Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v2, "com.nikkdotcom.android.byeads"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 87
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/nikkdotcom/android/byeads/Common;->appversion:Ljava/lang/String;

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appversion="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nikkdotcom/android/byeads/Common;->appversion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 89
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, p0, Lcom/nikkdotcom/android/byeads/Common;->appcode:I

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appcode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/nikkdotcom/android/byeads/Common;->appcode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    const-string v2, "Common() is loaded."

    invoke-static {v2}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 94
    return-void

    .line 91
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static LogMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;Z)V

    .line 139
    return-void
.end method

.method public static LogMessage(Ljava/lang/String;Z)V
    .locals 4
    .parameter "value"
    .parameter "showAnyway"

    .prologue
    .line 151
    if-eqz p1, :cond_0

    .line 152
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byeads: ts="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", message=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method

.method private SaveDataToFile(Ljava/lang/String;Ljava/util/zip/GZIPInputStream;)V
    .locals 8
    .parameter "filename"
    .parameter "zin"

    .prologue
    .line 898
    const/4 v4, 0x0

    .line 902
    .local v4, f:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v6, "create empty hosts file on phone"

    invoke-static {v6}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 903
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 905
    .end local v4           #f:Ljava/io/FileOutputStream;
    .local v5, f:Ljava/io/FileOutputStream;
    const/16 v0, 0x1000

    .line 906
    .local v0, BUFFER:I
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Create buffer of "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 907
    const/16 v6, 0x2000

    new-array v1, v6, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 908
    .local v1, buffer:[B
    const/4 v2, 0x0

    .line 912
    .local v2, count:I
    :try_start_2
    const-string v6, "Start zin loop"

    invoke-static {v6}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 913
    :goto_0
    const/4 v6, 0x0

    invoke-virtual {p2, v1, v6, v0}, Ljava/util/zip/GZIPInputStream;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_2

    .line 922
    :goto_1
    const-string v6, "zin loop all done!"

    invoke-static {v6}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 925
    if-eqz v5, :cond_0

    .line 927
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 928
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 934
    :cond_0
    :goto_2
    if-eqz p2, :cond_6

    .line 936
    :try_start_4
    invoke-virtual {p2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 937
    const/4 p2, 0x0

    move-object v4, v5

    .line 941
    .end local v0           #BUFFER:I
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v4       #f:Ljava/io/FileOutputStream;
    :cond_1
    :goto_3
    return-void

    .line 915
    .end local v4           #f:Ljava/io/FileOutputStream;
    .restart local v0       #BUFFER:I
    .restart local v1       #buffer:[B
    .restart local v2       #count:I
    .restart local v5       #f:Ljava/io/FileOutputStream;
    :cond_2
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Read "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 916
    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 918
    :catch_0
    move-exception v6

    goto :goto_1

    .line 919
    .end local v0           #BUFFER:I
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v4       #f:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 920
    .local v3, e:Ljava/lang/Exception;
    :goto_4
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SaveDataToFile() Exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 922
    const-string v6, "zin loop all done!"

    invoke-static {v6}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 925
    if-eqz v4, :cond_3

    .line 927
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 928
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 934
    :cond_3
    :goto_5
    if-eqz p2, :cond_1

    .line 936
    :try_start_8
    invoke-virtual {p2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 937
    const/4 p2, 0x0

    goto :goto_3

    .line 921
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 922
    :goto_6
    const-string v7, "zin loop all done!"

    invoke-static {v7}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 925
    if-eqz v4, :cond_4

    .line 927
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 928
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 934
    :cond_4
    :goto_7
    if-eqz p2, :cond_5

    .line 936
    :try_start_a
    invoke-virtual {p2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 937
    const/4 p2, 0x0

    .line 940
    :cond_5
    :goto_8
    throw v6

    .line 939
    .end local v4           #f:Ljava/io/FileOutputStream;
    .restart local v0       #BUFFER:I
    .restart local v1       #buffer:[B
    .restart local v2       #count:I
    .restart local v5       #f:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v4       #f:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0           #BUFFER:I
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .restart local v3       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v6

    goto :goto_3

    .end local v3           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v7

    goto :goto_8

    .line 930
    .end local v4           #f:Ljava/io/FileOutputStream;
    .restart local v0       #BUFFER:I
    .restart local v1       #buffer:[B
    .restart local v2       #count:I
    .restart local v5       #f:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v6

    goto :goto_2

    .end local v0           #BUFFER:I
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v4       #f:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v7

    goto :goto_7

    .line 921
    .end local v4           #f:Ljava/io/FileOutputStream;
    .restart local v0       #BUFFER:I
    .restart local v5       #f:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v4       #f:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 930
    .end local v0           #BUFFER:I
    .restart local v3       #e:Ljava/lang/Exception;
    :catch_7
    move-exception v6

    goto :goto_5

    .line 919
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #f:Ljava/io/FileOutputStream;
    .restart local v0       #BUFFER:I
    .restart local v5       #f:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v4       #f:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v4           #f:Ljava/io/FileOutputStream;
    .restart local v1       #buffer:[B
    .restart local v2       #count:I
    .restart local v5       #f:Ljava/io/FileOutputStream;
    :cond_6
    move-object v4, v5

    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v4       #f:Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method static synthetic access$0(Lcom/nikkdotcom/android/byeads/Common;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/Common;->authDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nikkdotcom/android/byeads/Common;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/nikkdotcom/android/byeads/Common;->authDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/nikkdotcom/android/byeads/Common;)V
    .locals 0
    .parameter

    .prologue
    .line 1037
    invoke-direct {p0}, Lcom/nikkdotcom/android/byeads/Common;->checkAuth()V

    return-void
.end method

.method static synthetic access$3(Lcom/nikkdotcom/android/byeads/Common;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    return-object v0
.end method

.method private checkAuth()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const v5, 0x7f020004

    .line 1039
    const-string v3, "username"

    invoke-virtual {p0, v3, v4}, Lcom/nikkdotcom/android/byeads/Common;->GetStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1040
    .local v2, username:Ljava/lang/String;
    const-string v3, "password"

    invoke-virtual {p0, v3, v4}, Lcom/nikkdotcom/android/byeads/Common;->GetStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, password:Ljava/lang/String;
    const-string v3, "uid"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/nikkdotcom/android/byeads/Common;->GetIntPref(Ljava/lang/String;I)I

    move-result v1

    .line 1043
    .local v1, uid:I
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-gtz v1, :cond_1

    .line 1045
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1046
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1047
    const-string v4, "Problem"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1048
    const-string v4, "There was a problem with the credentials you supplied. Please check them before trying again."

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1049
    const-string v4, "Ok"

    new-instance v5, Lcom/nikkdotcom/android/byeads/Common$10;

    invoke-direct {v5, p0}, Lcom/nikkdotcom/android/byeads/Common$10;-><init>(Lcom/nikkdotcom/android/byeads/Common;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1056
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1072
    :goto_0
    return-void

    .line 1061
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1062
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1063
    const-string v4, "Success"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1064
    const-string v4, "Your login was successful."

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1065
    const-string v4, "Ok"

    new-instance v5, Lcom/nikkdotcom/android/byeads/Common$11;

    invoke-direct {v5, p0}, Lcom/nikkdotcom/android/byeads/Common$11;-><init>(Lcom/nikkdotcom/android/byeads/Common;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1071
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private handleCheck(Ljava/lang/String;J)J
    .locals 7
    .parameter "s"
    .parameter "remotever"

    .prologue
    .line 529
    const/4 v2, 0x0

    .line 533
    .local v2, json:Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 537
    .end local v2           #json:Lorg/json/JSONObject;
    .local v3, json:Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "timestamp"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 538
    invoke-virtual {p0, p2, p3}, Lcom/nikkdotcom/android/byeads/Common;->SetServerVer(J)V

    .line 539
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Timestamp: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "timestamp"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 544
    :goto_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UID: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "uid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 545
    const-string v4, "uid"

    const-string v5, "uid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/nikkdotcom/android/byeads/Common;->SetIntPref(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 550
    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Credit: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "credit"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 551
    const-string v4, "credit"

    const-string v5, "credit"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/nikkdotcom/android/byeads/Common;->SetIntPref(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 556
    :goto_2
    :try_start_4
    const-string v4, "errorMsg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, errorMsg:Ljava/lang/String;
    const-string v4, "null"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 558
    :cond_0
    const/4 v1, 0x0

    .line 559
    :cond_1
    const-string v4, "errorMsg"

    invoke-virtual {p0, v4, v1}, Lcom/nikkdotcom/android/byeads/Common;->SetStringPref(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 564
    .end local v1           #errorMsg:Ljava/lang/String;
    :goto_3
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fatalError: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "fatalError"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 565
    const-string v4, "fatalError"

    const-string v5, "fatalError"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/nikkdotcom/android/byeads/Common;->SetIntPref(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v2, v3

    .line 571
    .end local v3           #json:Lorg/json/JSONObject;
    .restart local v2       #json:Lorg/json/JSONObject;
    :goto_4
    return-wide p2

    .line 566
    .end local v2           #json:Lorg/json/JSONObject;
    .restart local v3       #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 567
    .end local v3           #json:Lorg/json/JSONObject;
    .restart local v2       #json:Lorg/json/JSONObject;
    goto :goto_4

    :catch_1
    move-exception v0

    .line 568
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleCheck() Error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    goto :goto_4

    .line 560
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #json:Lorg/json/JSONObject;
    .restart local v3       #json:Lorg/json/JSONObject;
    :catch_2
    move-exception v4

    goto :goto_3

    .line 552
    :catch_3
    move-exception v4

    goto :goto_2

    .line 546
    :catch_4
    move-exception v4

    goto/16 :goto_1

    .line 540
    :catch_5
    move-exception v4

    goto/16 :goto_0
.end method

.method public static time()J
    .locals 4

    .prologue
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public DeleteSymLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "partition"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 614
    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/Common;->isLink()Z

    move-result v1

    if-nez v1, :cond_0

    .line 615
    const-string v1, "Can\'t remove non-existant link."

    .line 622
    :goto_0
    return-object v1

    .line 617
    :cond_0
    invoke-virtual {p0, p1, v4}, Lcom/nikkdotcom/android/byeads/Common;->RemountPartition(Ljava/lang/String;Z)Ljava/lang/String;

    .line 618
    const-string v1, "rm /system/etc/hosts"

    invoke-virtual {p0, v1, v4}, Lcom/nikkdotcom/android/byeads/Common;->RunAsRoot(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, ret:[Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lcom/nikkdotcom/android/byeads/Common;->RemountPartition(Ljava/lang/String;Z)Ljava/lang/String;

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DeleteSymLink(0): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DeleteSymLink(1): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 622
    aget-object v1, v0, v3

    goto :goto_0
.end method

.method public DownloadHostNames(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .parameter "filename"
    .parameter "IP"

    .prologue
    .line 788
    const-string v18, "Common.DownloadHostNames()"

    invoke-static/range {v18 .. v18}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 790
    const/4 v15, 0x0

    .line 791
    .local v15, useHTTPS:Z
    const-string v18, "http://184.106.70.131/byeads.php"

    if-eqz v18, :cond_0

    .line 792
    const-string v18, "http://184.106.70.131/byeads.php"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 793
    const-string v18, "http://184.106.70.131/byeads.php"

    const/16 v19, 0x0

    const/16 v20, 0x5

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const-string v19, "https"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 794
    const/4 v15, 0x1

    .line 796
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f050010

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 797
    .local v11, ret:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "IP="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "&appCode="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nikkdotcom/android/byeads/Common;->appcode:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 799
    .local v3, body:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Sending body="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 803
    :try_start_0
    const-string v18, "username"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/nikkdotcom/android/byeads/Common;->GetStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 804
    .local v16, username:Ljava/lang/String;
    const-string v18, "password"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/nikkdotcom/android/byeads/Common;->GetStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 806
    .local v10, password:Ljava/lang/String;
    if-eqz v16, :cond_1

    .line 807
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "&username="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 809
    :cond_1
    if-eqz v10, :cond_2

    .line 810
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "&password="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-static {v10, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 817
    .end local v10           #password:Ljava/lang/String;
    .end local v16           #username:Ljava/lang/String;
    :cond_2
    :goto_0
    :try_start_1
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Generate URL: http://184.106.70.131/byeads.php\nbody: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 818
    new-instance v14, Ljava/net/URL;

    const-string v18, "http://184.106.70.131/byeads.php"

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 820
    .local v14, u:Ljava/net/URL;
    const-string v18, "Connect"

    invoke-static/range {v18 .. v18}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 821
    if-nez v15, :cond_3

    .line 823
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 824
    .local v4, c:Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/nikkdotcom/android/byeads/Common;->SetCommonConnectionSettings(Ljava/net/HttpURLConnection;I)Ljava/net/HttpURLConnection;

    .line 826
    const-string v18, "Send Body"

    invoke-static/range {v18 .. v18}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 827
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 829
    .local v9, outStream:Ljava/io/DataOutputStream;
    const-string v18, "Connect"

    invoke-static/range {v18 .. v18}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 830
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 832
    invoke-virtual {v9, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 833
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 834
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 835
    const/4 v9, 0x0

    .line 839
    :try_start_2
    new-instance v17, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 840
    .local v17, zin:Ljava/util/zip/GZIPInputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/nikkdotcom/android/byeads/Common;->SaveDataToFile(Ljava/lang/String;Ljava/util/zip/GZIPInputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_3

    .line 884
    .end local v4           #c:Ljava/net/HttpURLConnection;
    .end local v17           #zin:Ljava/util/zip/GZIPInputStream;
    :goto_1
    const/4 v11, 0x0

    .end local v9           #outStream:Ljava/io/DataOutputStream;
    .end local v14           #u:Ljava/net/URL;
    :goto_2
    move-object v12, v11

    .line 893
    .end local v11           #ret:Ljava/lang/String;
    .local v12, ret:Ljava/lang/String;
    :goto_3
    return-object v12

    .line 811
    .end local v12           #ret:Ljava/lang/String;
    .restart local v11       #ret:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 812
    .local v5, e:Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Common.DownloadHostNames() Exception: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 841
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v4       #c:Ljava/net/HttpURLConnection;
    .restart local v9       #outStream:Ljava/io/DataOutputStream;
    .restart local v14       #u:Ljava/net/URL;
    :catch_1
    move-exception v6

    .line 842
    .local v6, e1:Ljava/lang/Exception;
    :try_start_3
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Common.DownloadHostNames() HTTP Exception e1: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;Z)V

    .line 843
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    .line 844
    .end local v11           #ret:Ljava/lang/String;
    .restart local v12       #ret:Ljava/lang/String;
    goto :goto_3

    .line 849
    .end local v4           #c:Ljava/net/HttpURLConnection;
    .end local v6           #e1:Ljava/lang/Exception;
    .end local v9           #outStream:Ljava/io/DataOutputStream;
    .end local v12           #ret:Ljava/lang/String;
    .restart local v11       #ret:Ljava/lang/String;
    :cond_3
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    .line 850
    .local v4, c:Ljavax/net/ssl/HttpsURLConnection;
    const-string v18, "Stop SSL from verifying"

    invoke-static/range {v18 .. v18}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 851
    new-instance v18, Lcom/nikkdotcom/android/byeads/Common$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nikkdotcom/android/byeads/Common$5;-><init>(Lcom/nikkdotcom/android/byeads/Common;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 859
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/nikkdotcom/android/byeads/Common;->SetCommonConnectionSettings(Ljavax/net/ssl/HttpsURLConnection;I)Ljavax/net/ssl/HttpsURLConnection;

    .line 861
    const-string v18, "Send Body"

    invoke-static/range {v18 .. v18}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 862
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 864
    .restart local v9       #outStream:Ljava/io/DataOutputStream;
    const-string v18, "Connect"

    invoke-static/range {v18 .. v18}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 865
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 867
    invoke-virtual {v9, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 868
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 869
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 870
    const/4 v9, 0x0

    .line 874
    :try_start_4
    new-instance v18, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/nikkdotcom/android/byeads/Common;->SaveDataToFile(Ljava/lang/String;Ljava/util/zip/GZIPInputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 875
    :catch_2
    move-exception v7

    .line 876
    .local v7, e2:Ljava/lang/Exception;
    :try_start_5
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Common.DownloadHostNames() HTTPS Exception e2: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;Z)V

    .line 877
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v11

    move-object v12, v11

    .line 878
    .end local v11           #ret:Ljava/lang/String;
    .restart local v12       #ret:Ljava/lang/String;
    goto/16 :goto_3

    .line 885
    .end local v4           #c:Ljavax/net/ssl/HttpsURLConnection;
    .end local v7           #e2:Ljava/lang/Exception;
    .end local v9           #outStream:Ljava/io/DataOutputStream;
    .end local v12           #ret:Ljava/lang/String;
    .end local v14           #u:Ljava/net/URL;
    .restart local v11       #ret:Ljava/lang/String;
    :catch_3
    move-exception v13

    .line 886
    .local v13, se:Ljava/net/SocketException;
    const-string v18, "Can\'t connect to server to grab updates, check your internet connection and try again."

    invoke-static/range {v18 .. v18}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 887
    const-string v11, "Can\'t connect to server to grab updates, check your internet connection and try again."

    goto/16 :goto_2

    .line 888
    .end local v13           #se:Ljava/net/SocketException;
    :catch_4
    move-exception v8

    .line 889
    .local v8, e3:Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Common.DownloadHostNames() HTTPS Exception e3: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;Z)V

    .line 890
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2
.end method

.method public GetAppVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/Common;->appversion:Ljava/lang/String;

    return-object v0
.end method

.method public GetBoolPref(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nikkdotcom/android/byeads/Common;->GetBoolPref(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public GetBoolPref(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "name"
    .parameter "defval"

    .prologue
    .line 255
    const-string v1, "0"

    .line 256
    .local v1, value:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 257
    const-string v1, "1"

    .line 259
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/nikkdotcom/android/byeads/Common;->GetStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, val:Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    const/4 v2, 0x1

    .line 262
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public GetIntPref(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nikkdotcom/android/byeads/Common;->GetIntPref(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public GetIntPref(Ljava/lang/String;I)I
    .locals 2
    .parameter "name"
    .parameter "defval"

    .prologue
    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/nikkdotcom/android/byeads/Common;->GetStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, val:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 236
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method public GetLocalVer()J
    .locals 2

    .prologue
    .line 267
    const-string v0, "LastUpdate"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/nikkdotcom/android/byeads/Common;->GetStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetLongPref(Ljava/lang/String;)J
    .locals 2
    .parameter "name"

    .prologue
    .line 210
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/nikkdotcom/android/byeads/Common;->GetLongPref(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetLongPref(Ljava/lang/String;J)J
    .locals 2
    .parameter "name"
    .parameter "defval"

    .prologue
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/nikkdotcom/android/byeads/Common;->GetStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, val:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 218
    .end local p2
    :goto_0
    return-wide p2

    .restart local p2
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method public GetServerVer()J
    .locals 2

    .prologue
    .line 272
    const-string v0, "RemoteVersion"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/nikkdotcom/android/byeads/Common;->GetStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "name"
    .parameter "defval"

    .prologue
    .line 184
    iget-object v4, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    const-string v5, "byeadsPrefs"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 185
    .local v2, settings:Landroid/content/SharedPreferences;
    move-object v3, p2

    .line 189
    .local v3, value:Ljava/lang/String;
    :try_start_0
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "byeads: \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    move-object p2, v3

    .line 200
    .end local p2
    :goto_0
    return-object p2

    .line 190
    .restart local p2
    :catch_0
    move-exception v0

    .line 191
    .local v0, cce:Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1, p2}, Lcom/nikkdotcom/android/byeads/Common;->SetStringPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/nikkdotcom/android/byeads/Common;->GetStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 193
    .end local v0           #cce:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 194
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GetStringPref("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Err: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public GetSystem()[Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 742
    const-string v5, "Has I got r00t?"

    invoke-static {v5}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 743
    const-string v5, "mount"

    invoke-virtual {p0, v5, v8}, Lcom/nikkdotcom/android/byeads/Common;->RunAsRoot(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    .line 744
    .local v3, value:[Ljava/lang/String;
    aget-object v5, v3, v9

    if-eqz v5, :cond_0

    .line 746
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Returned value[0]=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v3, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;Z)V

    .line 747
    aput-object v10, v3, v8

    .line 783
    :goto_0
    return-object v3

    .line 751
    :cond_0
    const-string v5, "\n"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    aget-object v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 752
    .local v4, x:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 753
    .local v0, foundPartition:Ljava/lang/String;
    aput-object v10, v3, v8

    .line 754
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v4

    if-lt v1, v5, :cond_1

    .line 781
    const-string v5, "Unable to locate a partition to remount to write the hosts file to."

    aput-object v5, v3, v9

    .line 782
    aput-object v10, v3, v8

    goto :goto_0

    .line 756
    :cond_1
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    iget-object v5, p0, Lcom/nikkdotcom/android/byeads/Common;->possiblePartitions:[Ljava/lang/String;

    array-length v5, v5

    if-lt v2, v5, :cond_2

    .line 765
    :goto_3
    if-nez v0, :cond_4

    .line 754
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 758
    :cond_2
    aget-object v5, v4, v1

    iget-object v6, p0, Lcom/nikkdotcom/android/byeads/Common;->possiblePartitions:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    .line 760
    iget-object v5, p0, Lcom/nikkdotcom/android/byeads/Common;->possiblePartitions:[Ljava/lang/String;

    aget-object v0, v5, v2

    .line 761
    goto :goto_3

    .line 756
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 768
    :cond_4
    aget-object v5, v4, v1

    aput-object v5, v3, v8

    .line 769
    aget-object v5, v3, v8

    aget-object v6, v3, v8

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    .line 770
    aget-object v5, v3, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_5

    .line 772
    aput-object v10, v3, v8

    goto :goto_4

    .line 776
    :cond_5
    aput-object v10, v3, v9

    .line 777
    aget-object v5, v3, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    goto :goto_0
.end method

.method public GotRoot()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 157
    const-string v3, "Has I got r00t?"

    invoke-static {v3}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 160
    const-string v3, "ls"

    invoke-virtual {p0, v3, v2}, Lcom/nikkdotcom/android/byeads/Common;->RunAsRoot(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, value:[Ljava/lang/String;
    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "byeads is not able to get root access on this device, err: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 164
    const-string v3, "errorMsg"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "byeads is not able to get root access on this device, err: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/nikkdotcom/android/byeads/Common;->SetStringPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_0
    return v1

    .line 168
    :cond_0
    const-string v1, "byeads is able to get root access on this device."

    invoke-static {v1}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    move v1, v2

    .line 169
    goto :goto_0
.end method

.method public MakeSymLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "partition"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 600
    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/Common;->isLink()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    const-string v1, "Link already exists, won\'t continue."

    .line 609
    :goto_0
    return-object v1

    .line 603
    :cond_0
    invoke-virtual {p0, p1, v4}, Lcom/nikkdotcom/android/byeads/Common;->RemountPartition(Ljava/lang/String;Z)Ljava/lang/String;

    .line 604
    const-string v1, "rm /system/etc/hosts"

    invoke-virtual {p0, v1}, Lcom/nikkdotcom/android/byeads/Common;->RunAsRoot(Ljava/lang/String;)Ljava/lang/String;

    .line 605
    const-string v1, "ln -s /data/hosts /system/etc/hosts"

    invoke-virtual {p0, v1, v4}, Lcom/nikkdotcom/android/byeads/Common;->RunAsRoot(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, ret:[Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lcom/nikkdotcom/android/byeads/Common;->RemountPartition(Ljava/lang/String;Z)Ljava/lang/String;

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MakeSymLink(0): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MakeSymLink(1): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 609
    aget-object v1, v0, v3

    goto :goto_0
.end method

.method public NeedUpgrade()Z
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 364
    iget v10, p0, Lcom/nikkdotcom/android/byeads/Common;->appcode:I

    int-to-long v4, v10

    .line 366
    .local v4, remotever:J
    const/4 v7, 0x0

    .line 367
    .local v7, useHTTPS:Z
    const-string v10, "http://byeads.nikkdotcom.com/byeads.vc"

    if-eqz v10, :cond_0

    .line 368
    const-string v10, "http://byeads.nikkdotcom.com/byeads.vc"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v11, :cond_0

    .line 369
    const-string v10, "http://184.106.70.131/byeads-check.php"

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "https"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 370
    const/4 v7, 0x1

    .line 374
    :cond_0
    :try_start_0
    const-string v10, "Generate URL"

    invoke-static {v10}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 375
    new-instance v6, Ljava/net/URL;

    const-string v10, "http://byeads.nikkdotcom.com/byeads.vc"

    invoke-direct {v6, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 376
    .local v6, u:Ljava/net/URL;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "URL="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;Z)V

    .line 378
    const-string v10, "Connect"

    invoke-static {v10}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 379
    if-nez v7, :cond_2

    .line 381
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 382
    .local v1, c:Ljava/net/HttpURLConnection;
    invoke-virtual {p0, v1}, Lcom/nikkdotcom/android/byeads/Common;->SetCommonConnectionSettings(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    .line 384
    const-string v10, "Connect"

    invoke-static {v10}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 387
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 388
    .local v3, in:Ljava/io/InputStream;
    const/16 v10, 0x2000

    new-array v0, v10, [B

    .line 389
    .local v0, buffer:[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_1

    .line 390
    new-instance v10, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-direct {v10, v0, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 392
    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 394
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    const/4 v3, 0x0

    .line 428
    .end local v0           #buffer:[B
    .end local v1           #c:Ljava/net/HttpURLConnection;
    .end local v3           #in:Ljava/io/InputStream;
    .end local v6           #u:Ljava/net/URL;
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "remotever=="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", appcode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/nikkdotcom/android/byeads/Common;->appcode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;Z)V

    .line 430
    iget v10, p0, Lcom/nikkdotcom/android/byeads/Common;->appcode:I

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-lez v10, :cond_4

    :goto_1
    return v8

    .line 398
    .restart local v6       #u:Ljava/net/URL;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 399
    .local v1, c:Ljavax/net/ssl/HttpsURLConnection;
    const-string v10, "Stop SSL from verifying"

    invoke-static {v10}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 400
    new-instance v10, Lcom/nikkdotcom/android/byeads/Common$3;

    invoke-direct {v10, p0}, Lcom/nikkdotcom/android/byeads/Common$3;-><init>(Lcom/nikkdotcom/android/byeads/Common;)V

    invoke-virtual {v1, v10}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 408
    invoke-virtual {p0, v1}, Lcom/nikkdotcom/android/byeads/Common;->SetCommonConnectionSettings(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/HttpsURLConnection;

    .line 410
    const-string v10, "Connect"

    invoke-static {v10}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 413
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 414
    .restart local v3       #in:Ljava/io/InputStream;
    const/16 v10, 0x2000

    new-array v0, v10, [B

    .line 415
    .restart local v0       #buffer:[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_3

    .line 416
    new-instance v10, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-direct {v10, v0, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 418
    :cond_3
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 420
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 421
    const/4 v3, 0x0

    .line 422
    goto :goto_0

    .line 424
    .end local v0           #buffer:[B
    .end local v1           #c:Ljavax/net/ssl/HttpsURLConnection;
    .end local v3           #in:Ljava/io/InputStream;
    .end local v6           #u:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 425
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "Bombed out on line Common:292"

    invoke-static {v10}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    move v8, v9

    .line 430
    goto :goto_1
.end method

.method public RemountPartition(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .parameter "partition"
    .parameter "readwrite"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mount -o remount,rw "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, cmd:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mount -o remount,ro "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    :cond_0
    invoke-virtual {p0, v0, v5}, Lcom/nikkdotcom/android/byeads/Common;->RunAsRoot(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, ret:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RemountPartition(0): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RemountPartition(1): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 634
    aget-object v2, v1, v4

    return-object v2
.end method

.method public RunAsRoot(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "command"

    .prologue
    const/4 v1, 0x0

    .line 639
    invoke-virtual {p0, p1, v1}, Lcom/nikkdotcom/android/byeads/Common;->RunAsRoot(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public RunAsRoot(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 17
    .parameter "command"
    .parameter "returnOutput"

    .prologue
    .line 644
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Common.RunAsRoot("

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 645
    const/4 v14, 0x2

    new-array v4, v14, [Ljava/lang/String;

    .line 646
    .local v4, failedmsg:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 647
    .local v10, process:Ljava/lang/Process;
    const/4 v8, 0x0

    .line 648
    .local v8, os:Ljava/io/DataOutputStream;
    const/4 v11, 0x0

    .line 649
    .local v11, reader:Ljava/io/BufferedReader;
    const/4 v13, 0x0

    .line 651
    .local v13, suOutput:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "cmd="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 655
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    const-string v15, "su"

    invoke-virtual {v14, v15}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v10

    .line 656
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-virtual {v10}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 657
    .end local v8           #os:Ljava/io/DataOutputStream;
    .local v9, os:Ljava/io/DataOutputStream;
    if-eqz p2, :cond_0

    .line 659
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 660
    .local v5, is:Ljava/io/InputStream;
    if-eqz v5, :cond_0

    .line 662
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 663
    .local v6, isr:Ljava/io/InputStreamReader;
    if-eqz v6, :cond_0

    .line 664
    new-instance v12, Ljava/io/BufferedReader;

    invoke-direct {v12, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v11           #reader:Ljava/io/BufferedReader;
    .local v12, reader:Ljava/io/BufferedReader;
    move-object v11, v12

    .line 668
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #isr:Ljava/io/InputStreamReader;
    .end local v12           #reader:Ljava/io/BufferedReader;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 669
    const-string v14, "exit\n"

    invoke-virtual {v9, v14}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 672
    if-eqz p2, :cond_2

    .line 674
    const/4 v14, 0x1

    const-string v15, ""

    aput-object v15, v4, v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 677
    :try_start_2
    const-string v7, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 680
    .local v7, line:Ljava/lang/String;
    if-eqz v11, :cond_9

    .line 682
    :goto_0
    :try_start_3
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v7

    if-nez v7, :cond_7

    .line 698
    :goto_1
    if-eqz v11, :cond_1

    .line 699
    :try_start_4
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 700
    :cond_1
    const/4 v11, 0x0

    .line 704
    .end local v7           #line:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {v10}, Ljava/lang/Process;->waitFor()I

    .line 706
    invoke-virtual {v10}, Ljava/lang/Process;->exitValue()I

    move-result v3

    .line 707
    .local v3, exitValue:I
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Common.RunAsRoot() exitValue="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 709
    if-nez v3, :cond_3

    .line 710
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-object v15, v4, v14

    .line 712
    :cond_3
    if-eqz p2, :cond_4

    .line 713
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "SU output="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 721
    :cond_4
    if-eqz v9, :cond_5

    .line 722
    :try_start_5
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 723
    :cond_5
    const/4 v8, 0x0

    .line 724
    .end local v9           #os:Ljava/io/DataOutputStream;
    .restart local v8       #os:Ljava/io/DataOutputStream;
    if-eqz v10, :cond_6

    .line 725
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 726
    :cond_6
    const/4 v10, 0x0

    .line 732
    .end local v3           #exitValue:I
    :goto_3
    const/4 v14, 0x0

    aget-object v14, v4, v14

    if-nez v14, :cond_f

    .line 733
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "cmd="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " -- successfully executed."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 737
    :goto_4
    return-object v4

    .line 684
    .end local v8           #os:Ljava/io/DataOutputStream;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v9       #os:Ljava/io/DataOutputStream;
    :cond_7
    const/4 v14, 0x1

    :try_start_7
    aget-object v15, v4, v14

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 688
    :catch_0
    move-exception v2

    .line 689
    .local v2, e2:Ljava/lang/Exception;
    const/4 v14, 0x0

    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v14

    .line 690
    const/4 v14, 0x1

    const/4 v15, 0x0

    aput-object v15, v4, v14

    .line 691
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Exception while reading from SU err: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    .line 693
    .end local v2           #e2:Ljava/lang/Exception;
    .end local v7           #line:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 694
    .local v1, e:Ljava/lang/Exception;
    const/4 v14, 0x0

    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v14

    .line 695
    const/4 v14, 0x1

    const/4 v15, 0x0

    aput-object v15, v4, v14

    .line 696
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Exception while reading from SU err: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 698
    if-eqz v11, :cond_8

    .line 699
    :try_start_a
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 700
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 687
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v7       #line:Ljava/lang/String;
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 697
    .end local v7           #line:Ljava/lang/String;
    :catchall_0
    move-exception v14

    .line 698
    if-eqz v11, :cond_a

    .line 699
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 700
    :cond_a
    const/4 v11, 0x0

    .line 701
    throw v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 714
    :catch_2
    move-exception v1

    move-object v8, v9

    .line 715
    .end local v9           #os:Ljava/io/DataOutputStream;
    .restart local v1       #e:Ljava/lang/Exception;
    .restart local v8       #os:Ljava/io/DataOutputStream;
    :goto_5
    const/4 v14, 0x0

    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v14

    .line 716
    const/4 v14, 0x1

    const/4 v15, 0x0

    aput-object v15, v4, v14

    .line 717
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Common.RunAsRoot() Exception err: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 721
    if-eqz v8, :cond_b

    .line 722
    :try_start_c
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 723
    :cond_b
    const/4 v8, 0x0

    .line 724
    if-eqz v10, :cond_c

    .line 725
    invoke-virtual {v10}, Ljava/lang/Process;->destroy()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 726
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 727
    :catch_3
    move-exception v1

    .line 728
    const/4 v14, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v14

    goto/16 :goto_3

    .line 718
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v14

    .line 721
    :goto_6
    if-eqz v8, :cond_d

    .line 722
    :try_start_d
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 723
    :cond_d
    const/4 v8, 0x0

    .line 724
    if-eqz v10, :cond_e

    .line 725
    invoke-virtual {v10}, Ljava/lang/Process;->destroy()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 726
    :cond_e
    const/4 v10, 0x0

    .line 730
    :goto_7
    throw v14

    .line 727
    :catch_4
    move-exception v1

    .line 728
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v15, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v15

    goto :goto_7

    .line 727
    .end local v1           #e:Ljava/lang/Exception;
    .end local v8           #os:Ljava/io/DataOutputStream;
    .restart local v3       #exitValue:I
    .restart local v9       #os:Ljava/io/DataOutputStream;
    :catch_5
    move-exception v1

    move-object v8, v9

    .line 728
    .end local v9           #os:Ljava/io/DataOutputStream;
    .restart local v1       #e:Ljava/lang/Exception;
    .restart local v8       #os:Ljava/io/DataOutputStream;
    :goto_8
    const/4 v14, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v14

    goto/16 :goto_3

    .line 735
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #exitValue:I
    :cond_f
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "cmd="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " -- failed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v4, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 727
    .restart local v3       #exitValue:I
    :catch_6
    move-exception v1

    goto :goto_8

    .line 718
    .end local v3           #exitValue:I
    .end local v8           #os:Ljava/io/DataOutputStream;
    .restart local v9       #os:Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v14

    move-object v8, v9

    .end local v9           #os:Ljava/io/DataOutputStream;
    .restart local v8       #os:Ljava/io/DataOutputStream;
    goto :goto_6

    .line 714
    :catch_7
    move-exception v1

    goto/16 :goto_5
.end method

.method public SetBoolPref(Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 241
    const-string v0, "0"

    .line 242
    .local v0, val:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 243
    const-string v0, "1"

    .line 245
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/nikkdotcom/android/byeads/Common;->SetStringPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public SetCommonConnectionSettings(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 1
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nikkdotcom/android/byeads/Common;->SetCommonConnectionSettings(Ljava/net/HttpURLConnection;I)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public SetCommonConnectionSettings(Ljava/net/HttpURLConnection;I)Ljava/net/HttpURLConnection;
    .locals 3
    .parameter "c"
    .parameter "bodyLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v2, 0xea60

    const/4 v1, 0x1

    .line 306
    const-string v0, "Add Headers to Request"

    invoke-static {v0}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 308
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 309
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 311
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 312
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 314
    const-string v0, "Connection"

    const-string v1, "Close"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v0, "User-Agent"

    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/Common;->userAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    if-lez p2, :cond_0

    .line 319
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 320
    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v0, "Content-Length"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :goto_0
    return-object p1

    .line 323
    :cond_0
    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public SetCommonConnectionSettings(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 1
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nikkdotcom/android/byeads/Common;->SetCommonConnectionSettings(Ljavax/net/ssl/HttpsURLConnection;I)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public SetCommonConnectionSettings(Ljavax/net/ssl/HttpsURLConnection;I)Ljavax/net/ssl/HttpsURLConnection;
    .locals 2
    .parameter "c"
    .parameter "bodyLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 335
    const-string v0, "Add Headers to Request"

    invoke-static {v0}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 337
    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 338
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 340
    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 341
    const v0, 0x1d4c0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 343
    const-string v0, "Connection"

    const-string v1, "Close"

    invoke-virtual {p1, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v0, "User-Agent"

    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/Common;->userAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    if-lez p2, :cond_0

    .line 348
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 349
    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p1, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v0, "Content-Length"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :goto_0
    return-object p1

    .line 352
    :cond_0
    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public SetIntPref(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nikkdotcom/android/byeads/Common;->SetStringPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public SetLocalVer(J)V
    .locals 2
    .parameter "v"

    .prologue
    .line 282
    const-string v0, "Common.SetLocalVer()"

    invoke-static {v0}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 283
    const-string v0, "LastUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nikkdotcom/android/byeads/Common;->SetStringPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public SetLongPref(Ljava/lang/String;J)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nikkdotcom/android/byeads/Common;->SetStringPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public SetServerVer(J)V
    .locals 6
    .parameter "v"

    .prologue
    .line 288
    const-string v0, "Common.SetServerVer()"

    invoke-static {v0}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 289
    const-string v0, "RemoteVersion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nikkdotcom/android/byeads/Common;->SetStringPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v0, "ServerCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nikkdotcom/android/byeads/Common;->SetStringPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public SetStringPref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 174
    iget-object v2, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    const-string v3, "byeadsPrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 175
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 176
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "byeads: Updating \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public UpdateServerVer()J
    .locals 2

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/Common;->UpdateServerVer(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public UpdateServerVer(Z)J
    .locals 20
    .parameter "force"

    .prologue
    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/nikkdotcom/android/byeads/Common;->GetServerVer()J

    move-result-wide v6

    .line 437
    .local v6, remotever:J
    const-string v14, "Common.UpdateServerVer()"

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 438
    if-nez p1, :cond_0

    const-string v14, "ServerCheck"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/nikkdotcom/android/byeads/Common;->GetIntPref(Ljava/lang/String;I)I

    move-result v14

    int-to-long v14, v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/32 v18, 0x36ee80

    div-long v16, v16, v18

    cmp-long v14, v14, v16

    if-nez v14, :cond_0

    move-wide v8, v6

    .line 524
    .end local v6           #remotever:J
    .local v8, remotever:J
    :goto_0
    return-wide v8

    .line 441
    .end local v8           #remotever:J
    .restart local v6       #remotever:J
    :cond_0
    const-string v14, "username"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/nikkdotcom/android/byeads/Common;->GetStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 442
    .local v13, username:Ljava/lang/String;
    const-string v14, "password"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/nikkdotcom/android/byeads/Common;->GetStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 444
    .local v5, password:Ljava/lang/String;
    const-string v10, "http://184.106.70.131/byeads-check.php"

    .line 446
    .local v10, tmpURL:Ljava/lang/String;
    if-eqz v13, :cond_1

    if-eqz v5, :cond_1

    .line 447
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "?username="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&password="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 449
    :cond_1
    const/4 v12, 0x0

    .line 450
    .local v12, useHTTPS:Z
    const-string v14, "http://184.106.70.131/byeads-check.php"

    if-eqz v14, :cond_2

    .line 451
    const-string v14, "http://184.106.70.131/byeads-check.php"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x5

    if-le v14, v15, :cond_2

    .line 452
    const-string v14, "http://184.106.70.131/byeads-check.php"

    const/4 v15, 0x0

    const/16 v16, 0x5

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string v15, "https"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 453
    const/4 v12, 0x1

    .line 457
    :cond_2
    :try_start_0
    const-string v14, "Generate URL"

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 458
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 459
    .local v11, u:Ljava/net/URL;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "URL="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 461
    const-string v14, "Connect"

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 462
    if-nez v12, :cond_4

    .line 464
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 465
    .local v2, c:Ljava/net/HttpURLConnection;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nikkdotcom/android/byeads/Common;->SetCommonConnectionSettings(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    .line 467
    const-string v14, "Connect"

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 470
    const-string v14, "Connect + 2"

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 473
    .local v4, in:Ljava/io/InputStream;
    const-string v14, "Connect + 4"

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 474
    const/16 v14, 0x2000

    new-array v1, v14, [B

    .line 476
    .local v1, buffer:[B
    const-string v14, "Connect + 6"

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_3

    .line 478
    new-instance v14, Ljava/lang/String;

    const-string v15, "UTF-8"

    invoke-direct {v14, v1, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6, v7}, Lcom/nikkdotcom/android/byeads/Common;->handleCheck(Ljava/lang/String;J)J

    move-result-wide v6

    .line 480
    :cond_3
    const-string v14, "Connect + 8"

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 483
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 484
    const/4 v4, 0x0

    .end local v1           #buffer:[B
    .end local v2           #c:Ljava/net/HttpURLConnection;
    .end local v4           #in:Ljava/io/InputStream;
    .end local v11           #u:Ljava/net/URL;
    :goto_1
    move-wide v8, v6

    .line 524
    .end local v6           #remotever:J
    .restart local v8       #remotever:J
    goto/16 :goto_0

    .line 487
    .end local v8           #remotever:J
    .restart local v6       #remotever:J
    .restart local v11       #u:Ljava/net/URL;
    :cond_4
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 488
    .local v2, c:Ljavax/net/ssl/HttpsURLConnection;
    const-string v14, "Stop SSL from verifying"

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 489
    new-instance v14, Lcom/nikkdotcom/android/byeads/Common$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/nikkdotcom/android/byeads/Common$4;-><init>(Lcom/nikkdotcom/android/byeads/Common;)V

    invoke-virtual {v2, v14}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 497
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nikkdotcom/android/byeads/Common;->SetCommonConnectionSettings(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/HttpsURLConnection;

    .line 499
    const-string v14, "Connect"

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 502
    const-string v14, "Connect + 2"

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 505
    .restart local v4       #in:Ljava/io/InputStream;
    const-string v14, "Connect + 4"

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 506
    const/16 v14, 0x2000

    new-array v1, v14, [B

    .line 508
    .restart local v1       #buffer:[B
    const-string v14, "Connect + 6"

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_5

    .line 510
    new-instance v14, Ljava/lang/String;

    const-string v15, "UTF-8"

    invoke-direct {v14, v1, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6, v7}, Lcom/nikkdotcom/android/byeads/Common;->handleCheck(Ljava/lang/String;J)J

    move-result-wide v6

    .line 512
    :cond_5
    const-string v14, "Connect + 8"

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 515
    const-string v14, "Connect + 10"

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    const/4 v4, 0x0

    .line 518
    goto :goto_1

    .line 520
    .end local v1           #buffer:[B
    .end local v2           #c:Ljavax/net/ssl/HttpsURLConnection;
    .end local v4           #in:Ljava/io/InputStream;
    .end local v11           #u:Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 521
    .local v3, e:Ljava/lang/Exception;
    const-string v14, "Bombed out on line Common:293"

    invoke-static {v14}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public doUpgrade()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1076
    const-string v0, ""

    .line 1077
    .local v0, cmd:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/Common;->GetSystem()[Ljava/lang/String;

    move-result-object v7

    .line 1078
    .local v7, ret:[Ljava/lang/String;
    aget-object v4, v7, v11

    .line 1079
    .local v4, partition:Ljava/lang/String;
    aget-object v3, v7, v10

    .line 1080
    .local v3, failedmsg:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1081
    .local v5, remounted:Z
    const-string v6, "127.0.0.1"

    .line 1083
    .local v6, replaceIP:Ljava/lang/String;
    const-string v8, "rGroup"

    invoke-virtual {p0, v8}, Lcom/nikkdotcom/android/byeads/Common;->GetIntPref(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 1084
    const-string v8, "et1"

    const-string v9, "127.0.0.1"

    invoke-virtual {p0, v8, v9}, Lcom/nikkdotcom/android/byeads/Common;->GetStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1086
    :cond_0
    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/Common;->isLink()Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "SymLink"

    invoke-virtual {p0, v8}, Lcom/nikkdotcom/android/byeads/Common;->GetBoolPref(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "MakeSymLink"

    invoke-virtual {p0, v8}, Lcom/nikkdotcom/android/byeads/Common;->GetBoolPref(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1088
    const-string v3, "You wanted to use a SymLink, but the SymLink doesn\'t exist and you elected not to have it automatically created."

    .line 1089
    invoke-static {v3}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    move-object v8, v3

    .line 1200
    :goto_0
    return-object v8

    .line 1093
    :cond_1
    if-eqz v3, :cond_3

    .line 1095
    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1096
    iget-object v8, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    const v9, 0x7f050021

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    move-object v8, v3

    .line 1097
    goto :goto_0

    .line 1100
    :cond_3
    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/Common;->isLink()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/Common;->requireLink()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1102
    const-string v8, "Isn\'t a link but requires symlink"

    invoke-static {v8}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p0, v4}, Lcom/nikkdotcom/android/byeads/Common;->MakeSymLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1105
    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1106
    const-string v3, "Failed to create SymLink, you may need to create this manually."

    :cond_4
    move-object v8, v3

    .line 1107
    goto :goto_0

    .line 1111
    :cond_5
    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/Common;->isLink()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/Common;->requireLink()Z

    move-result v8

    if-nez v8, :cond_8

    .line 1113
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Need to write to /system/etc/hosts so attempting to remount "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rw"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p0, v4, v11}, Lcom/nikkdotcom/android/byeads/Common;->RemountPartition(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1116
    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1117
    iget-object v8, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    const v9, 0x7f05001f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_6
    move-object v8, v3

    .line 1118
    goto :goto_0

    .line 1120
    :cond_7
    const/4 v5, 0x1

    .line 1123
    :cond_8
    const-string v8, "/data/data/com.nikkdotcom.android.byeads/hosts.txt"

    invoke-virtual {p0, v8, v6}, Lcom/nikkdotcom/android/byeads/Common;->DownloadHostNames(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1125
    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1126
    iget-object v8, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    const v9, 0x7f050024

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_9
    move-object v8, v3

    .line 1127
    goto/16 :goto_0

    .line 1130
    :cond_a
    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/Common;->isLink()Z

    move-result v8

    if-nez v8, :cond_c

    .line 1132
    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/Common;->findCatPath()Z

    .line 1133
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/nikkdotcom/android/byeads/Common;->catpath:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " /data/data/com.nikkdotcom.android.byeads/hosts.txt > /system/etc/hosts"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1138
    :goto_1
    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/Common;->RunAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1140
    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1141
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    const v10, 0x7f050025

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_b
    move-object v8, v3

    .line 1142
    goto/16 :goto_0

    .line 1135
    :cond_c
    const-string v0, "mv /data/data/com.nikkdotcom.android.byeads/hosts.txt /data/hosts"

    goto :goto_1

    .line 1145
    :cond_d
    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/Common;->isLink()Z

    move-result v8

    if-nez v8, :cond_e

    .line 1149
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v8, "/data/data/com.nikkdotcom.android.byeads/hosts.txt"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1150
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1151
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    .end local v2           #f:Ljava/io/File;
    :cond_e
    :goto_2
    const-string v0, "chown 0:0 /system/etc/hosts"

    .line 1158
    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/Common;->isLink()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1159
    const-string v0, "chown 0:0 /data/hosts"

    .line 1161
    :cond_f
    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/Common;->RunAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 1163
    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1164
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    const v10, 0x7f050034

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_10
    move-object v8, v3

    .line 1165
    goto/16 :goto_0

    .line 1152
    :catch_0
    move-exception v1

    .line 1153
    .local v1, e2:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Couldn\'t remove temporary file: Exception "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 1168
    .end local v1           #e2:Ljava/lang/Exception;
    :cond_11
    const-string v0, "chmod 0644 /system/etc/hosts"

    .line 1169
    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/Common;->isLink()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1170
    const-string v0, "chmod 0644 /data/hosts"

    .line 1172
    :cond_12
    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/Common;->RunAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 1174
    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1175
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    const v10, 0x7f050033

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_13
    move-object v8, v3

    .line 1176
    goto/16 :goto_0

    .line 1179
    :cond_14
    new-instance v2, Ljava/io/File;

    const-string v8, "/system/bin/chcon"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1180
    .restart local v2       #f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1181
    const-string v8, "chcon u:object_r:system_file:s0 /data/hosts"

    invoke-virtual {p0, v8}, Lcom/nikkdotcom/android/byeads/Common;->RunAsRoot(Ljava/lang/String;)Ljava/lang/String;

    .line 1183
    :cond_15
    if-eqz v5, :cond_16

    .line 1185
    invoke-virtual {p0, v4, v10}, Lcom/nikkdotcom/android/byeads/Common;->RemountPartition(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1197
    const/4 v5, 0x0

    .line 1200
    :cond_16
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public findCatPath()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 108
    const/16 v5, 0xd

    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "/system/bin/cat"

    aput-object v5, v2, v4

    .line 109
    const-string v5, "/system/sbin/cat"

    aput-object v5, v2, v3

    const/4 v5, 0x2

    .line 110
    const-string v6, "/system/xbin/cat"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 111
    const-string v6, "/data/busybox/cat"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    .line 112
    const-string v6, "/system/xbin/bb/cat"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    .line 113
    const-string v6, "/sbin/cat"

    aput-object v6, v2, v5

    const/4 v5, 0x6

    .line 114
    const-string v6, "/data/local/cat"

    aput-object v6, v2, v5

    const/4 v5, 0x7

    .line 115
    const-string v6, "/data/local/bin/cat"

    aput-object v6, v2, v5

    const/16 v5, 0x8

    .line 116
    const-string v6, "/data/local/sbin/cat"

    aput-object v6, v2, v5

    const/16 v5, 0x9

    .line 117
    const-string v6, "/data/local/xbin/cat"

    aput-object v6, v2, v5

    const/16 v5, 0xa

    .line 118
    const-string v6, "/system/sd/cat"

    aput-object v6, v2, v5

    const/16 v5, 0xb

    .line 119
    const-string v6, "/system/sd/bin/cat"

    aput-object v6, v2, v5

    const/16 v5, 0xc

    .line 120
    const-string v6, "/system/sd/xbin/cat"

    aput-object v6, v2, v5

    .line 122
    .local v2, paths:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 123
    .local v0, f:Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v2

    if-lt v1, v5, :cond_0

    move v3, v4

    .line 133
    :goto_1
    return v3

    .line 125
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #f:Ljava/io/File;
    aget-object v5, v2, v1

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 128
    aget-object v4, v2, v1

    iput-object v4, p0, Lcom/nikkdotcom/android/byeads/Common;->catpath:Ljava/lang/String;

    goto :goto_1

    .line 123
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCatPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/Common;->catpath:Ljava/lang/String;

    return-object v0
.end method

.method public installApk()V
    .locals 2

    .prologue
    .line 1205
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nikkdotcom/android/byeads/Common$12;

    invoke-direct {v1, p0}, Lcom/nikkdotcom/android/byeads/Common$12;-><init>(Lcom/nikkdotcom/android/byeads/Common;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1252
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1253
    return-void
.end method

.method public installBinary(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "fn"
    .parameter "id"

    .prologue
    .line 1257
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nikkdotcom/android/byeads/Common;->installBinary(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public installBinary(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 10
    .parameter "fn"
    .parameter "id"
    .parameter "force"

    .prologue
    .line 1262
    const-string v1, ""

    .line 1263
    .local v1, cmd:Ljava/lang/String;
    const-string v2, ""

    .line 1267
    .local v2, failedmsg:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "File exists? "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 1268
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1269
    .local v3, file:Ljava/io/File;
    if-nez p3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 1270
    const-string v7, ""

    .line 1291
    .end local v3           #file:Ljava/io/File;
    :goto_0
    return-object v7

    .line 1272
    .restart local v3       #file:Ljava/io/File;
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 1273
    .local v4, is:Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1274
    .local v6, os:Ljava/io/FileOutputStream;
    const/16 v7, 0x1000

    new-array v0, v7, [B

    .line 1276
    .local v0, buffer:[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, len:I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_2

    .line 1278
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 1279
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1281
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "chmod 0755 "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1282
    invoke-virtual {p0, v1}, Lcom/nikkdotcom/android/byeads/Common;->RunAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1284
    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1285
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    const v9, 0x7f050033

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v7, v2

    .line 1286
    goto :goto_0

    .line 1277
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1288
    .end local v0           #buffer:[B
    .end local v3           #file:Ljava/io/File;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #len:I
    .end local v6           #os:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v7

    .line 1291
    :cond_3
    const-string v7, ""

    goto :goto_0
.end method

.method public isLink()Z
    .locals 5

    .prologue
    .line 584
    const/4 v2, 0x0

    .line 588
    .local v2, ret:Z
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/system/etc/hosts"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 589
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/hosts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 590
    const/4 v2, 0x1

    .line 595
    .end local v1           #f:Ljava/io/File;
    :cond_0
    :goto_0
    return v2

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isLink() Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requireLink()Z
    .locals 1

    .prologue
    .line 576
    const-string v0, "SymLink"

    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/Common;->GetBoolPref(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MakeSymLink"

    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/Common;->GetBoolPref(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    const/4 v0, 0x1

    .line 579
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runLighttpd()V
    .locals 4

    .prologue
    .line 1309
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "lighttpd"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1310
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1311
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/lighttpd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "www"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1313
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/lighttpd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "logs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1316
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lighttpd -f "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1317
    iget-object v3, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lighttpd.conf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1316
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1318
    .local v0, cmd:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/Common;->RunAsRoot(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1320
    .end local v0           #cmd:Ljava/lang/String;
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return-void

    .line 1319
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public runMongoose()V
    .locals 3

    .prologue
    .line 1298
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mongoose -r "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1299
    iget-object v2, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -p 127.0.0.1:80,127.0.0.1:443 > /dev/null 2>&1 &"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1298
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1300
    .local v0, cmd:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/Common;->RunAsRoot(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1303
    .end local v0           #cmd:Ljava/lang/String;
    :goto_0
    return-void

    .line 1301
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public runTcpDump()V
    .locals 3

    .prologue
    .line 1347
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tcpdump "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1348
    const-string v2, "udp port 53 >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dns.dump 2>&1 &"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1347
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1349
    .local v0, cmd:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/Common;->RunAsRoot(Ljava/lang/String;)Ljava/lang/String;

    .line 1351
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dns.dump"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1352
    invoke-virtual {p0, v0}, Lcom/nikkdotcom/android/byeads/Common;->RunAsRoot(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    .end local v0           #cmd:Ljava/lang/String;
    :goto_0
    return-void

    .line 1353
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setCatPath(Ljava/lang/String;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/nikkdotcom/android/byeads/Common;->catpath:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public showAuth()V
    .locals 9

    .prologue
    const v8, 0x7f060003

    const v7, 0x7f050036

    const/4 v6, 0x0

    .line 945
    iget-object v5, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 946
    .local v0, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f030001

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 948
    .local v4, v:Landroid/view/View;
    const-string v5, "username"

    invoke-virtual {p0, v5, v6}, Lcom/nikkdotcom/android/byeads/Common;->GetStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 949
    .local v3, username:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 950
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 952
    :cond_0
    const-string v5, "password"

    invoke-virtual {p0, v5, v6}, Lcom/nikkdotcom/android/byeads/Common;->GetStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 953
    .local v1, password:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 954
    const v5, 0x7f060005

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 956
    :cond_1
    const v5, 0x7f060006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 958
    .local v2, reg:Landroid/widget/Button;
    new-instance v5, Lcom/nikkdotcom/android/byeads/Common$6;

    invoke-direct {v5, p0}, Lcom/nikkdotcom/android/byeads/Common$6;-><init>(Lcom/nikkdotcom/android/byeads/Common;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 966
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 967
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 968
    const v6, 0x7f020004

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 969
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 971
    new-instance v6, Lcom/nikkdotcom/android/byeads/Common$7;

    invoke-direct {v6, p0, v4}, Lcom/nikkdotcom/android/byeads/Common$7;-><init>(Lcom/nikkdotcom/android/byeads/Common;Landroid/view/View;)V

    .line 970
    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 993
    const v6, 0x7f050035

    .line 994
    new-instance v7, Lcom/nikkdotcom/android/byeads/Common$8;

    invoke-direct {v7, p0}, Lcom/nikkdotcom/android/byeads/Common$8;-><init>(Lcom/nikkdotcom/android/byeads/Common;)V

    .line 993
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1001
    new-instance v6, Lcom/nikkdotcom/android/byeads/Common$9;

    invoke-direct {v6, p0}, Lcom/nikkdotcom/android/byeads/Common$9;-><init>(Lcom/nikkdotcom/android/byeads/Common;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1008
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 966
    iput-object v5, p0, Lcom/nikkdotcom/android/byeads/Common;->authDialog:Landroid/app/AlertDialog;

    .line 1011
    iget-object v5, p0, Lcom/nikkdotcom/android/byeads/Common;->authDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1012
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1013
    return-void
.end method

.method public stopProcess(Ljava/lang/String;)V
    .locals 8
    .parameter "file"

    .prologue
    .line 1326
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, cmd:Ljava/lang/String;
    const-string v5, "ps"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/nikkdotcom/android/byeads/Common;->RunAsRoot(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v2

    .line 1329
    .local v2, value:[Ljava/lang/String;
    const-string v5, "\n"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 1330
    .local v3, x:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-lt v1, v5, :cond_0

    .line 1341
    .end local v0           #cmd:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #value:[Ljava/lang/String;
    .end local v3           #x:[Ljava/lang/String;
    :goto_1
    return-void

    .line 1332
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #value:[Ljava/lang/String;
    .restart local v3       #x:[Ljava/lang/String;
    :cond_0
    aget-object v5, v3, v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1334
    aget-object v5, v3, v1

    const-string v6, "\\s+"

    const-string v7, " "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 1335
    const-string v5, " "

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 1336
    .local v4, y:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "kill -9 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/nikkdotcom/android/byeads/Common;->RunAsRoot(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    .end local v4           #y:[Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1339
    .end local v0           #cmd:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #value:[Ljava/lang/String;
    .end local v3           #x:[Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public userAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 295
    const-string v0, "Common.userAgent()"

    invoke-static {v0}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[\'byeads Android\',\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nikkdotcom/android/byeads/Common;->appversion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/Common;->GetLocalVer()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/Common;->GetServerVer()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
