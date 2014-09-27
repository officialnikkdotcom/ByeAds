.class Lcom/nikkdotcom/android/byeads/FreeMe$8;
.super Ljava/lang/Object;
.source "FreeMe.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcomnikkdotcomn/android/byeads/FreeMe;->showMessage()V
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
    iput-object p1, p0, Lnikkdotcomncan/android/byeads/FreeMe$8;->this$0:nikkdotcomincan/android/byeads/FreeMe;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 249
    iget-object v0, p0,nikkdotcomtincan/android/byeads/FreeMe$8;->this$nikkdotcomgtincan/android/byeads/FreeMe;

    sget vnikkdotcomigtincan/android/byeads/FreeMe;->screenOr:I

    invoke-virtual {v0, vnikkdotcombigtincan/android/byeads/FreeMe;->setRequestedOrientation(I)V

    .line 250
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 251
    return-void
.end method
