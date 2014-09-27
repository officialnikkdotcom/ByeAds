.class public Lcom/nikkdotcom/android/byeads/AppUpgrade;
.super Landroid/app/Activity;
.source "AppUpgrade.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/AppUpgrade;->getRequestedOrientation()I

    move-result v2

    sput v2, Lcom/nikkdotcom/android/byeads/FreeMe;->screenOr:I

    .line 27
    invoke-virtual {p0}, Lcom/nikkdotcom/android/byeads/AppUpgrade;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 28
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nikkdotcom/android/byeads/AppUpgrade;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/nikkdotcom/android/byeads/AppUpgrade;->setContentView(I)V

    .line 40
    :try_start_1
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/nikkdotcom/android/byeads/AppUpgrade;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 41
    .local v1, nm:Landroid/app/NotificationManager;
    const v2, 0x7f050001

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    .end local v1           #nm:Landroid/app/NotificationManager;
    :goto_1
    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/nikkdotcom/android/byeads/AppUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 46
    .local v0, button:Landroid/widget/Button;
    new-instance v2, Lcom/nikkdotcom/android/byeads/AppUpgrade$1;

    invoke-direct {v2, p0}, Lcom/nikkdotcom/android/byeads/AppUpgrade$1;-><init>(Lcom/nikkdotcom/android/byeads/AppUpgrade;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void

    .line 30
    .end local v0           #button:Landroid/widget/Button;
    :cond_0
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/nikkdotcom/android/byeads/AppUpgrade;->setRequestedOrientation(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v2

    goto :goto_0

    .line 42
    :catch_1
    move-exception v2

    goto :goto_1
.end method
