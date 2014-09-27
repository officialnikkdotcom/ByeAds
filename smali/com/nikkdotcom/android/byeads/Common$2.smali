.class Lcom/nikkdotcom/android/byeads/Common$2;
.super Landroid/os/Handler;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nikkdotcom/android/byeads/Common;
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
    iput-object p1, p0, Lcom/nikkdotcom/android/byeads/Common$2;->this$0:Lcom/nikkdotcom/android/byeads/Common;

    .line 1025
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/Common$2;->this$0:Lcom/nikkdotcom/android/byeads/Common;

    #getter for: Lcom/nikkdotcom/android/byeads/Common;->authDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/nikkdotcom/android/byeads/Common;->access$0(Lcom/nikkdotcom/android/byeads/Common;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1031
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/Common$2;->this$0:Lcom/nikkdotcom/android/byeads/Common;

    const/4 v1, 0x0

    #setter for: Lcom/nikkdotcom/android/byeads/Common;->authDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/nikkdotcom/android/byeads/Common;->access$1(Lcom/nikkdotcom/android/byeads/Common;Landroid/app/AlertDialog;)V

    .line 1033
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/Common$2;->this$0:Lcom/nikkdotcom/android/byeads/Common;

    #calls: Lcom/nikkdotcom/android/byeads/Common;->checkAuth()V
    invoke-static {v0}, Lcom/nikkdotcom/android/byeads/Common;->access$2(Lcom/nikkdotcom/android/byeads/Common;)V

    .line 1034
    return-void
.end method
