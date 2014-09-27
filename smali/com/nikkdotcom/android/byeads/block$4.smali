.class Lcom/nikkdotcom/android/byeads/block$4;
.super Ljava/lang/Object;
.source "block.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nikkdotcom/android/byeads/block;->displayResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nikkdotcom/android/byeads/block;

.field private final synthetic val$hostname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nikkdotcom/android/byeads/block;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nikkdotcom/android/byeads/block$4;->this$0:Lcom/nikkdotcom/android/byeads/block;

    iput-object p2, p0, Lcom/nikkdotcom/android/byeads/block$4;->val$hostname:Ljava/lang/String;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Touched on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nikkdotcom/android/byeads/block$4;->val$hostname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nikkdotcom/android/byeads/Common;->LogMessage(Ljava/lang/String;)V

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://byeads.nikkdotcom.com/exceptions.php?hostname="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nikkdotcom/android/byeads/block$4;->val$hostname:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/nikkdotcom/android/byeads/block$4;->this$0:Lcom/nikkdotcom/android/byeads/block;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/nikkdotcom/android/byeads/block;->startActivity(Landroid/content/Intent;)V

    .line 324
    iget-object v1, p0, Lcom/nikkdotcom/android/byeads/block$4;->this$0:Lcom/nikkdotcom/android/byeads/block;

    #getter for: Lcom/nikkdotcom/android/byeads/block;->common:Lcom/nikkdotcom/android/byeads/Common;
    invoke-static {v1}, Lcom/nikkdotcom/android/byeads/block;->access$0(Lcom/nikkdotcom/android/byeads/block;)Lcom/nikkdotcom/android/byeads/Common;

    move-result-object v1

    const-string v2, "rowTouch"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Touched on "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nikkdotcom/android/byeads/block$4;->val$hostname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nikkdotcom/android/byeads/Common;->SetStringPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/nikkdotcom/android/byeads/block$4;->this$0:Lcom/nikkdotcom/android/byeads/block;

    iget-object v1, v1, Lcom/nikkdotcom/android/byeads/block;->toastHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nikkdotcom/android/byeads/block$4;->this$0:Lcom/nikkdotcom/android/byeads/block;

    iget-object v2, v2, Lcom/nikkdotcom/android/byeads/block;->toastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 326
    return-void
.end method
