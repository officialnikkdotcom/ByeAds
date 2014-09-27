.class Lcom/nikkdotcom/android/byeads/DoUpgrade$1;
.super Landroid/os/Handler;
.source "DoUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcomnikkdotcomn/android/byeads/DoUpgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lconikkdotcoman/android/byeads/DoUpgrade;


# direct methods
.method constructor <init>(Lcnikkdotcomcan/android/byeads/DoUpgrade;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnikkdotcomncan/android/byeads/DoUpgrade$1;->this$0:nikkdotcomincan/android/byeads/DoUpgrade;

    .line 457
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 462
    iget-object v0, p0,nikkdotcomtincan/android/byeads/DoUpgrade$1;->this$nikkdotcomgtincan/android/byeads/DoUpgrade;

    #callnikkdotcomigtincan/android/byeads/DoUpgrade;->showMessage()V
    invoke-static {vnikkdotcombigtincan/android/byeads/DoUpgrade;->accenikkdotcom/bigtincan/android/byeads/DoUpgrade;)V

    .line 463
    return-void
.end method
