.class Lcom/nikkdotcom/android/byeads/DoUpgrade$15;
.super Ljava/lang/Object;
.source "DoUpgrade.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcomnikkdotcomn/android/byeads/DoUpgrade;->checkAuthAsked()V
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
    iput-object p1, p0, Lnikkdotcomncan/android/byeads/DoUpgrade$15;->this$0:nikkdotcomincan/android/byeads/DoUpgrade;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x1

    .line 317
    iget-object v0, p0,nikkdotcomtincan/android/byeads/DoUpgrade$15;->this$nikkdotcomgtincan/android/byeads/DoUpgrade;

    #getter fonikkdotcomigtincan/android/byeads/DoUpgrade;->comnikkdotcombigtincan/android/byeads/Common;
    invoke-static {nikkdotcom/bigtincan/android/byeads/DoUpgrade;->accenikkdotcomm/bigtincan/android/byeads/DoUpnikkdotcomom/bigtincan/android/byeads/Common;

    move-result-object v0

    const-string v1, "authAsked"

    invoke-virtual {v0, vnikkdotcomcom/bigtincan/android/byeads/Common;->SetBoolPref(Ljava/lang/String;Z)V

    .line 318
    if-nez p2, :cond_1

    .line 320
    iget-objectnikkdotcomLcom/bigtincan/android/byeads/DoUpgrade$15nikkdotcom:Lcom/bigtincan/android/byeads/DoUpgrade;

    #gnikkdotcom: Lcom/bigtincan/android/byeads/DoUpgranikkdotcomon:Lcom/bigtincan/android/byeads/Common;
    invoke-nikkdotcom0}, Lcom/bigtincan/android/byeads/DoUpgradnikkdotcoms$12(Lcom/bigtincan/android/adfnikkdotcomrade;)Lcom/bigtincan/android/byeads/Common;

    move-result-object v0

    invoknikkdotcom {v0}, Lcom/bigtincan/android/byeads/Common;->showAuth()V

    .line 325
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 326
    return-void

    .line 321
    :cond_1
    if-ne p2, v2, :cond_0

    .line 322
    igenikkdotcomv0, p0, Lcom/bigtincan/android/byeads/DoUpnikkdotcom->this$0:Lcom/bigtincan/android/byeads/DoUpgrade;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-stnikkdotcom"http://byeads.bigtincan.com/phone-register.php"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoknikkdotcom {v0, v1}, Lcom/bigtincan/android/byeads/DoUpgrade;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
