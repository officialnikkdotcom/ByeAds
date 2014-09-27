.class Lcom/nikkdotcom/android/byeads/Common$7;
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

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/nikkdotcom/android/byeads/Common;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nikkdotcom/android/byeads/Common$7;->this$0:Lcom/nikkdotcom/android/byeads/Common;

    iput-object p2, p0, Lcom/nikkdotcom/android/byeads/Common$7;->val$v:Landroid/view/View;

    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nikkdotcom/android/byeads/Common$7;)Lcom/nikkdotcom/android/byeads/Common;
    .locals 1
    .parameter

    .prologue
    .line 971
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/Common$7;->this$0:Lcom/nikkdotcom/android/byeads/Common;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 975
    iget-object v3, p0, Lcom/nikkdotcom/android/byeads/Common$7;->val$v:Landroid/view/View;

    const v4, 0x7f060003

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 976
    .local v2, un:Ljava/lang/String;
    iget-object v3, p0, Lcom/nikkdotcom/android/byeads/Common$7;->this$0:Lcom/nikkdotcom/android/byeads/Common;

    const-string v4, "username"

    invoke-virtual {v3, v4, v2}, Lcom/nikkdotcom/android/byeads/Common;->SetStringPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    iget-object v3, p0, Lcom/nikkdotcom/android/byeads/Common$7;->val$v:Landroid/view/View;

    const v4, 0x7f060005

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, pw:Ljava/lang/String;
    iget-object v3, p0, Lcom/nikkdotcom/android/byeads/Common$7;->this$0:Lcom/nikkdotcom/android/byeads/Common;

    const-string v4, "password"

    invoke-virtual {v3, v4, v0}, Lcom/nikkdotcom/android/byeads/Common;->SetStringPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/nikkdotcom/android/byeads/Common$7$1;

    invoke-direct {v3, p0}, Lcom/nikkdotcom/android/byeads/Common$7$1;-><init>(Lcom/nikkdotcom/android/byeads/Common$7;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 990
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 991
    return-void
.end method
