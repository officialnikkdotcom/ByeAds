.class Lcom/nikkdotcom/android/byeads/Common$6;
.super Ljava/lang/Object;
.source "Common.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/nikkdotcom/android/byeads/Common$6;->this$0:Lcom/nikkdotcom/android/byeads/Common;

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 962
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/Common$6;->this$0:Lcom/nikkdotcom/android/byeads/Common;

    #getter for: Lcom/nikkdotcom/android/byeads/Common;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/nikkdotcom/android/byeads/Common;->access$3(Lcom/nikkdotcom/android/byeads/Common;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://byeads.nikkdotcom.com/phone-register.php"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 963
    return-void
.end method
