.class Lcom/nikkdotcom/android/byeads/block$2;
.super Landroid/os/Handler;
.source "block.java"


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
    iput-object p1, p0, Lcom/nikkdotcom/android/byeads/block$2;->this$0:Lcom/nikkdotcom/android/byeads/block;

    .line 335
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 340
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 351
    :goto_0
    return-void

    .line 343
    :pswitch_0
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/block$2;->this$0:Lcom/nikkdotcom/android/byeads/block;

    #getter for: Lcom/nikkdotcom/android/byeads/block;->sv:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/nikkdotcom/android/byeads/block;->access$2(Lcom/nikkdotcom/android/byeads/block;)Landroid/widget/ScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/nikkdotcom/android/byeads/block$2;->this$0:Lcom/nikkdotcom/android/byeads/block;

    #getter for: Lcom/nikkdotcom/android/byeads/block;->table:Landroid/widget/TableLayout;
    invoke-static {v1}, Lcom/nikkdotcom/android/byeads/block;->access$3(Lcom/nikkdotcom/android/byeads/block;)Landroid/widget/TableLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 344
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/block$2;->this$0:Lcom/nikkdotcom/android/byeads/block;

    iget-object v1, p0, Lcom/nikkdotcom/android/byeads/block$2;->this$0:Lcom/nikkdotcom/android/byeads/block;

    #getter for: Lcom/nikkdotcom/android/byeads/block;->sv:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/nikkdotcom/android/byeads/block;->access$2(Lcom/nikkdotcom/android/byeads/block;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nikkdotcom/android/byeads/block;->setContentView(Landroid/view/View;)V

    .line 345
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/block$2;->this$0:Lcom/nikkdotcom/android/byeads/block;

    #getter for: Lcom/nikkdotcom/android/byeads/block;->pd:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/nikkdotcom/android/byeads/block;->access$4(Lcom/nikkdotcom/android/byeads/block;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 348
    :pswitch_1
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/block$2;->this$0:Lcom/nikkdotcom/android/byeads/block;

    #getter for: Lcom/nikkdotcom/android/byeads/block;->pd:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/nikkdotcom/android/byeads/block;->access$4(Lcom/nikkdotcom/android/byeads/block;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/nikkdotcom/android/byeads/block$2;->this$0:Lcom/nikkdotcom/android/byeads/block;

    #getter for: Lcom/nikkdotcom/android/byeads/block;->increment:I
    invoke-static {v1}, Lcom/nikkdotcom/android/byeads/block;->access$1(Lcom/nikkdotcom/android/byeads/block;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
