.class Lcom/nikkdotcom/android/byeads/FreeMe$4;
.super Ljava/lang/Object;
.source "FreeMe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcomnikkdotcomn/android/byeads/FreeMe;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lnikkdotcomncan/android/byeads/FreeMe$4;->this$0:nikkdotcomincan/android/byeads/FreeMe;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 82
    :try_start_0
    invoke-static {},nikkdotcomtincan/android/byeads/FreeMe;->access$2()Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    add-int/lit16 v0, v1, 0x3e8

    .line 83
    .local v0, progress:I
    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 86
    :cond_0
    invoke-static {}nikkdotcomgtincan/android/byeads/FreeMe;->access$2()Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 87
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0           #progress:I
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v1

    goto :goto_0
.end method
