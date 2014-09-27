.class Lcom/nikkdotcom/android/byeads/FreeMe$6;
.super Ljava/lang/Object;
.source "FreeMe.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcomnikkdotcomn/android/byeads/FreeMe;->CheckVer()V
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
    iput-object p1, p0, Lnikkdotcomncan/android/byeads/FreeMe$6;->this$0:nikkdotcomincan/android/byeads/FreeMe;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 119
    iget-object v0, p0,nikkdotcomtincan/android/byeads/FreeMe$6;->this$nikkdotcomgtincan/android/byeads/FreeMe;

    iget-object v0, vnikkdotcomigtincan/android/byeads/FreeMe;->UpdateHandler2:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 120
    return-void
.end method
