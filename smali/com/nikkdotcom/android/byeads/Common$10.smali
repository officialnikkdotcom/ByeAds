.class Lcom/nikkdotcom/android/byeads/Common$10;
.super Ljava/lang/Object;
.source "Common.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nikkdotcom/android/byeads/Common;->checkAuth()V
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
    iput-object p1, p0, Lcom/nikkdotcom/android/byeads/Common$10;->this$0:Lcom/nikkdotcom/android/byeads/Common;

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/nikkdotcom/android/byeads/Common$10;->this$0:Lcom/nikkdotcom/android/byeads/Common;

    invoke-virtual {v0}, Lcom/nikkdotcom/android/byeads/Common;->showAuth()V

    .line 1054
    return-void
.end method
