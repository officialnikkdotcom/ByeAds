.class Lcom/nikkdotcom/android/byeads/AppUpgrade$1;
.super Ljava/lang/Object;
.source "AppUpgrade.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nikkdotcom/android/byeads/AppUpgrade;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nikkdotcom/android/byeads/AppUpgrade;


# direct methods
.method constructor <init>(Lcom/nikkdotcom/android/byeads/AppUpgrade;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nikkdotcom/android/byeads/AppUpgrade$1;->this$0:Lcom/nikkdotcom/android/byeads/AppUpgrade;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/AppUpgrade$1;->this$0:Lcom/nikkdotcom/android/byeads/AppUpgrade;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://nikkdotcom.us/byeads.apk"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/nikkdotcom/android/byeads/AppUpgrade;->startActivity(Landroid/content/Intent;)V

    .line 52
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/AppUpgrade$1;->this$0:Lcom/nikkdotcom/android/byeads/AppUpgrade;

    invoke-virtual {v0}, Lcom/nikkdotcom/android/byeads/AppUpgrade;->finish()V

    .line 53
    return-void
.end method
