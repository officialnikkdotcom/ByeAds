.class Lcom/nikkdotcom/android/byeads/FreeMe$3;
.super Landroid/os/Handler;
.source "FreeMe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcomnikkdotcomn/android/byeads/FreeMe;
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
    iput-object p1, p0, Lnikkdotcomncan/android/byeads/FreeMe$3;->this$0:nikkdotcomincan/android/byeads/FreeMe;

    .line 228
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 233
    iget-object v0, p0,nikkdotcomtincan/android/byeads/FreeMe$3;->this$nikkdotcomgtincan/android/byeads/FreeMe;

    #callnikkdotcomigtincan/android/byeads/FreeMe;->showMessage()V
    invoke-static {vnikkdotcombigtincan/android/byeads/FreeMe;->accenikkdotcom/bigtincan/android/byeads/FreeMe;)V

    .line 234
    return-void
.end method
