.class public Lorg/ros/android/view/visualization/Color;
.super Ljava/lang/Object;
.source "Color.java"


# instance fields
.field private alpha:F

.field private blue:F

.field private green:F

.field private red:F


# direct methods
.method public constructor <init>(FFFF)V
    .registers 10
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    cmpg-float v4, v3, p1

    if-gtz v4, :cond_12

    cmpg-float v4, p1, v2

    if-gtz v4, :cond_12

    const/4 v4, 0x1

    goto :goto_13

    :cond_12
    const/4 v4, 0x0

    :goto_13
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 49
    cmpg-float v4, v3, p2

    if-gtz v4, :cond_20

    cmpg-float v4, p2, v2

    if-gtz v4, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    :goto_21
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 50
    cmpg-float v4, v3, p3

    if-gtz v4, :cond_2e

    cmpg-float v4, p3, v2

    if-gtz v4, :cond_2e

    const/4 v4, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v4, 0x0

    :goto_2f
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 51
    cmpg-float v3, v3, p4

    if-gtz v3, :cond_3b

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 52
    iput p1, p0, Lorg/ros/android/view/visualization/Color;->red:F

    .line 53
    iput p2, p0, Lorg/ros/android/view/visualization/Color;->green:F

    .line 54
    iput p3, p0, Lorg/ros/android/view/visualization/Color;->blue:F

    .line 55
    iput p4, p0, Lorg/ros/android/view/visualization/Color;->alpha:F

    .line 56
    return-void
.end method

.method public static copyOf(Lorg/ros/android/view/visualization/Color;)Lorg/ros/android/view/visualization/Color;
    .registers 6
    .param p0, "color"    # Lorg/ros/android/view/visualization/Color;

    .line 36
    new-instance v0, Lorg/ros/android/view/visualization/Color;

    iget v1, p0, Lorg/ros/android/view/visualization/Color;->red:F

    iget v2, p0, Lorg/ros/android/view/visualization/Color;->green:F

    iget v3, p0, Lorg/ros/android/view/visualization/Color;->blue:F

    iget v4, p0, Lorg/ros/android/view/visualization/Color;->alpha:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/ros/android/view/visualization/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static fromHexAndAlpha(Ljava/lang/String;F)Lorg/ros/android/view/visualization/Color;
    .registers 7
    .param p0, "hex"    # Ljava/lang/String;
    .param p1, "alpha"    # F

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 41
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v1, v3

    .line 42
    .local v1, "red":F
    const/4 v4, 0x4

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 43
    .local v0, "green":F
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 44
    .local v2, "blue":F
    new-instance v3, Lorg/ros/android/view/visualization/Color;

    invoke-direct {v3, v1, v0, v2, p1}, Lorg/ros/android/view/visualization/Color;-><init>(FFFF)V

    return-object v3
.end method


# virtual methods
.method public apply(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 59
    iget v0, p0, Lorg/ros/android/view/visualization/Color;->red:F

    iget v1, p0, Lorg/ros/android/view/visualization/Color;->green:F

    iget v2, p0, Lorg/ros/android/view/visualization/Color;->blue:F

    iget v3, p0, Lorg/ros/android/view/visualization/Color;->alpha:F

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 60
    return-void
.end method

.method public getAlpha()F
    .registers 2

    .line 87
    iget v0, p0, Lorg/ros/android/view/visualization/Color;->alpha:F

    return v0
.end method

.method public getBlue()F
    .registers 2

    .line 79
    iget v0, p0, Lorg/ros/android/view/visualization/Color;->blue:F

    return v0
.end method

.method public getGreen()F
    .registers 2

    .line 71
    iget v0, p0, Lorg/ros/android/view/visualization/Color;->green:F

    return v0
.end method

.method public getRed()F
    .registers 2

    .line 63
    iget v0, p0, Lorg/ros/android/view/visualization/Color;->red:F

    return v0
.end method

.method public setAlpha(F)V
    .registers 2
    .param p1, "alpha"    # F

    .line 91
    iput p1, p0, Lorg/ros/android/view/visualization/Color;->alpha:F

    .line 92
    return-void
.end method

.method public setBlue(F)V
    .registers 2
    .param p1, "blue"    # F

    .line 83
    iput p1, p0, Lorg/ros/android/view/visualization/Color;->blue:F

    .line 84
    return-void
.end method

.method public setGreen(F)V
    .registers 2
    .param p1, "green"    # F

    .line 75
    iput p1, p0, Lorg/ros/android/view/visualization/Color;->green:F

    .line 76
    return-void
.end method

.method public setRed(F)V
    .registers 2
    .param p1, "red"    # F

    .line 67
    iput p1, p0, Lorg/ros/android/view/visualization/Color;->red:F

    .line 68
    return-void
.end method
