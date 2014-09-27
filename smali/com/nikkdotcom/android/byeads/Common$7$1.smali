.class Lcom/nikkdotcom/android/byeads/Common$7$1;
.super Ljava/lang/Object;
.source "Common.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nikkdotcom/android/byeads/Common$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nikkdotcom/android/byeads/Common$7;


# direct methods
.method constructor <init>(Lcom/nikkdotcom/android/byeads/Common$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nikkdotcom/android/byeads/Common$7$1;->this$1:Lcom/nikkdotcom/android/byeads/Common$7;

    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 985
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/Common$7$1;->this$1:Lcom/nikkdotcom/android/byeads/Common$7;

    #getter for: Lcom/nikkdotcom/android/byeads/Common$7;->this$0:Lcom/nikkdotcom/android/byeads/Common;
    invoke-static {v0}, Lcom/nikkdotcom/android/byeads/Common$7;->access$0(Lcom/nikkdotcom/android/byeads/Common$7;)Lcom/nikkdotcom/android/byeads/Common;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nikkdotcom/android/byeads/Common;->UpdateServerVer(Z)J

    .line 986
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/Common$7$1;->this$1:Lcom/nikkdotcom/android/byeads/Common$7;

    #getter for: Lcom/nikkdotcom/android/byeads/Common$7;->this$0:Lcom/nikkdotcom/android/byeads/Common;
    invoke-static {v0}, Lcom/nikkdotcom/android/byeads/Common$7;->access$0(Lcom/nikkdotcom/android/byeads/Common$7;)Lcom/nikkdotcom/android/byeads/Common;

    move-result-object v0

    iget-object v0, v0, Lcom/nikkdotcom/android/byeads/Common;->proceedHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 987
    return-void
.end method
