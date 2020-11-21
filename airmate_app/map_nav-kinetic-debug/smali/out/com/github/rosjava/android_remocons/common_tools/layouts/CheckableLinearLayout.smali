.class public Lcom/github/rosjava/android_remocons/common_tools/layouts/CheckableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CheckableLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private checked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/layouts/CheckableLinearLayout;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/rosjava/android_remocons/common_tools/layouts/CheckableLinearLayout;->checked:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/rosjava/android_remocons/common_tools/layouts/CheckableLinearLayout;->checked:Z

    .line 51
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    .line 54
    iget-boolean v0, p0, Lcom/github/rosjava/android_remocons/common_tools/layouts/CheckableLinearLayout;->checked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .line 70
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 71
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/layouts/CheckableLinearLayout;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 72
    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/layouts/CheckableLinearLayout;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/layouts/CheckableLinearLayout;->mergeDrawableStates([I[I)[I

    .line 74
    :cond_11
    return-object v0
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .line 58
    iget-boolean v0, p0, Lcom/github/rosjava/android_remocons/common_tools/layouts/CheckableLinearLayout;->checked:Z

    if-eq v0, p1, :cond_9

    .line 59
    iput-boolean p1, p0, Lcom/github/rosjava/android_remocons/common_tools/layouts/CheckableLinearLayout;->checked:Z

    .line 60
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/layouts/CheckableLinearLayout;->refreshDrawableState()V

    .line 62
    :cond_9
    return-void
.end method

.method public toggle()V
    .registers 2

    .line 66
    iget-boolean v0, p0, Lcom/github/rosjava/android_remocons/common_tools/layouts/CheckableLinearLayout;->checked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_remocons/common_tools/layouts/CheckableLinearLayout;->setChecked(Z)V

    .line 67
    return-void
.end method
