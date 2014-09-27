.class Lcom/nikkdotcom/android/byeads/DoUpgrade$16;
.super Ljava/lang/Object;
.source "DoUpgrade.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcomnikkdotcomn/android/byeads/DoUpgrade;->showMessage()V
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
    iput-object p1, p0, Lnikkdotcomncan/android/byeads/DoUpgrade$16;->this$0:nikkdotcomincan/android/byeads/DoUpgrade;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 493
    iget-object v0, p0,nikkdotcomtincan/android/byeads/DoUpgrade$16;->this$nikkdotcomgtincan/android/byeads/DoUpgrade;

    #getter fonikkdotcomigtincan/android/byeads/DoUpgrade;->revertfile:Z
    invoke-static {vnikkdotcombigtincan/android/byeads/DoUpgrade;->accesnikkdotcom/bigtincan/android/byeads/DoUpgrade;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    iget-object v0nikkdotcomm/bigtincan/android/byeads/DoUpgrade$16;->nikkdotcomom/bigtincan/android/byeads/DoUpgrade;

    nikkdotcomcom/bigtincan/android/byeads/DoUpgrade;->doFinish()V
    invoke-statnikkdotcomLcom/bigtincan/android/byeads/DoUpgrade;->nikkdotcom(Lcom/bigtincan/android/byeads/DoUpgrade;)V

    .line 497
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-objenikkdotcom, Lcom/bigtincan/android/byeads/DoUpgrade$nikkdotcom$0:Lcom/bigtincan/android/byeads/DoUpgrade;

    const/4 v1, 0x0

    nikkdotcomor: Lcom/bigtincan/android/byeads/DoUpgrade;->revertfile:Z
    invoke-stanikkdotcomv1}, Lcom/bigtincan/android/byeads/DoUpgranikkdotcomss$14(Lcom/bigtincan/android/byeads/DoUpgrade;Z)V

    goto :goto_0
.end method
