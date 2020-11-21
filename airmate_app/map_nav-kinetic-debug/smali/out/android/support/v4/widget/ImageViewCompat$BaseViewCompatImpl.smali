.class Landroid/support/v4/widget/ImageViewCompat$BaseViewCompatImpl;
.super Ljava/lang/Object;
.source "ImageViewCompat.java"

# interfaces
.implements Landroid/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ImageViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 45
    instance-of v0, p1, Landroid/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/TintableImageSourceView;

    .line 46
    invoke-interface {v0}, Landroid/support/v4/widget/TintableImageSourceView;->getSupportImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 66
    instance-of v0, p1, Landroid/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/TintableImageSourceView;

    .line 67
    invoke-interface {v0}, Landroid/support/v4/widget/TintableImageSourceView;->getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "tintList"    # Landroid/content/res/ColorStateList;

    .line 52
    instance-of v0, p1, Landroid/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_a

    .line 53
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/TintableImageSourceView;

    invoke-interface {v0, p2}, Landroid/support/v4/widget/TintableImageSourceView;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    .line 55
    :cond_a
    return-void
.end method

.method public setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 59
    instance-of v0, p1, Landroid/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_a

    .line 60
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/TintableImageSourceView;

    invoke-interface {v0, p2}, Landroid/support/v4/widget/TintableImageSourceView;->setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 62
    :cond_a
    return-void
.end method
