.class Lcom/nikkdotcom/android/byeads/Common$8;
.super Ljava/lang/Object;
.source "Common.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nikkdotcom/android/byeads/Common;->showAuth()V
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
    iput-object p1, p0, Lcom/nikkdotcom/android/byeads/Common$8;->this$0:Lcom/nikkdotcom/android/byeads/Common;

    .line 994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 998
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/Common$8;->this$0:Lcom/nikkdotcom/android/byeads/Common;

    iget-object v0, v0, Lcom/nikkdotcom/android/byeads/Common;->cancelHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 999
    return-void
.end method
