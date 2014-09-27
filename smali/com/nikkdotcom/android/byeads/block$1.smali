.class Lcom/nikkdotcom/android/byeads/block$1;
.super Ljava/lang/Object;
.source "block.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nikkdotcom/android/byeads/block;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nikkdotcom/android/byeads/block;


# direct methods
.method constructor <init>(Lcom/nikkdotcom/android/byeads/block;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nikkdotcom/android/byeads/block$1;->this$0:Lcom/nikkdotcom/android/byeads/block;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/block$1;->this$0:Lcom/nikkdotcom/android/byeads/block;

    iget-object v1, p0, Lcom/nikkdotcom/android/byeads/block$1;->this$0:Lcom/nikkdotcom/android/byeads/block;

    #getter for: Lcom/nikkdotcom/android/byeads/block;->common:Lcom/nikkdotcom/android/byeads/Common;
    invoke-static {v1}, Lcom/nikkdotcom/android/byeads/block;->access$0(Lcom/nikkdotcom/android/byeads/block;)Lcom/nikkdotcom/android/byeads/Common;

    move-result-object v1

    const-string v2, "rowTouch"

    const-string v3, "test"

    invoke-virtual {v1, v2, v3}, Lcom/nikkdotcom/android/byeads/Common;->GetStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nikkdotcom/android/byeads/block$1;->this$0:Lcom/nikkdotcom/android/byeads/block;

    #getter for: Lcom/nikkdotcom/android/byeads/block;->increment:I
    invoke-static {v2}, Lcom/nikkdotcom/android/byeads/block;->access$1(Lcom/nikkdotcom/android/byeads/block;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 55
    return-void
.end method
