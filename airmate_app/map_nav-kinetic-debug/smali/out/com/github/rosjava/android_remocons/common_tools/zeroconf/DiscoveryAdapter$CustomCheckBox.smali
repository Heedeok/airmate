.class public Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter$CustomCheckBox;
.super Landroid/widget/LinearLayout;
.source "DiscoveryAdapter.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomCheckBox"
.end annotation


# instance fields
.field private checkbox:Landroid/widget/CheckedTextView;

.field final synthetic this$0:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;


# direct methods
.method public constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;Landroid/content/Context;)V
    .registers 6
    .param p1, "this$0"    # Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .line 45
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter$CustomCheckBox;->this$0:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;

    .line 46
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/github/rosjava/android_remocons/common_tools/R$layout;->zeroconf_master_item:I

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/github/rosjava/android_remocons/common_tools/R$id;->service_detail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter$CustomCheckBox;->checkbox:Landroid/widget/CheckedTextView;

    .line 51
    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter$CustomCheckBox;->addView(Landroid/view/View;)V

    .line 52
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter$CustomCheckBox;->checkbox:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .line 57
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter$CustomCheckBox;->checkbox:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 59
    return-void
.end method

.method public toggle()V
    .registers 2

    .line 68
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter$CustomCheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter$CustomCheckBox;->setChecked(Z)V

    .line 70
    return-void
.end method
