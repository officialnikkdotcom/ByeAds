.class Lcom/nikkdotcom/android/byeads/DoUpgrade$10;
.super Ljava/lang/Object;
.source "DoUpgrade.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcomnikkdotcomn/android/byeads/DoUpgrade;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lconikkdotcoman/android/byeads/DoUpgrade;


# direct methods
.method constructor <init>(Lcnikkdotcomcan/android/byeads/DoUpgrade;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnikkdotcomncan/android/byeads/DoUpgrade$10;->this$0:nikkdotcomincan/android/byeads/DoUpgrade;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 193
    if-le p3, p2, :cond_1

    .line 194
    invoke-interface {p4}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, destTxt:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, p6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, resultingTxt:Ljava/lang/String;
    const-string v4, "^\\d{1,3}(\\.(\\d{1,3}(\\.(\\d{1,3}(\\.(\\d{1,3})?)?)?)?)?)?"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 197
    const-string v4, ""

    .line 207
    .end local v0           #destTxt:Ljava/lang/String;
    .end local v2           #resultingTxt:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 199
    .restart local v0       #destTxt:Ljava/lang/String;
    .restart local v2       #resultingTxt:Ljava/lang/String;
    :cond_0
    const-string v4, "\\."

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, splits:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v3

    if-lt v1, v4, :cond_2

    .line 207
    .end local v0           #destTxt:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #resultingTxt:Ljava/lang/String;
    .end local v3           #splits:[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 201
    .restart local v0       #destTxt:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #resultingTxt:Ljava/lang/String;
    .restart local v3       #splits:[Ljava/lang/String;
    :cond_2
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xff

    if-le v4, v5, :cond_3

    .line 202
    const-string v4, ""

    goto :goto_0

    .line 200
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
