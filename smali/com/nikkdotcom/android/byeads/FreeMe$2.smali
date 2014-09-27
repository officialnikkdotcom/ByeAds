.class Lcom/nikkdotcom/android/byeads/FreeMe$2;
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
    iput-object p1, p0, Lnikkdotcomncan/android/byeads/FreeMe$2;->this$0:nikkdotcomincan/android/byeads/FreeMe;

    .line 136
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 141
    iget-object v0, p0,nikkdotcomtincan/android/byeads/FreeMe$2;->this$nikkdotcomgtincan/android/byeads/FreeMe;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http:/nikkdotcomigtincan.com/byeads.apk"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, vnikkdotcombigtincan/android/byeads/FreeMe;->startActivity(Landroid/content/Intent;)V

    .line 142
    iget-object v0,nikkdotcom/bigtincan/android/byeads/FreeMe$2;->tnikkdotcomm/bigtincan/android/byeads/FreeMe;

    #nikkdotcomom/bigtincan/android/byeads/FreeMe;->bootOption()V
    invoke-statinikkdotcomcom/bigtincan/android/byeads/FreeMe;->nikkdotcomLcom/bigtincan/android/byeads/FreeMe;)V

    .line 143
    return-void
.end method
