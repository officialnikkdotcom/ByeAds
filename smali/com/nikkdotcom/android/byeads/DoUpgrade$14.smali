.class Lcom/nikkdotcom/android/byeads/DoUpgrade$14;
.super Ljava/lang/Object;
.source "DoUpgrade.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcomnikkdotcomn/android/byeads/DoUpgrade;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lnikkdotcomncan/android/byeads/DoUpgrade$14;->this$0:nikkdotcomincan/android/byeads/DoUpgrade;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 298
    iget-object v0, p0,nikkdotcomtincan/android/byeads/DoUpgrade$14;->this$nikkdotcomgtincan/android/byeads/DoUpgrade;

    #callnikkdotcomigtincan/android/byeads/DoUpgrade;->checkAuthAsked()V
    invoke-static {vnikkdotcombigtincan/android/byeads/DoUpgrade;->accesnikkdotcom/bigtincan/android/byeads/DoUpgrade;)V

    .line 299
    return-void
.end method
