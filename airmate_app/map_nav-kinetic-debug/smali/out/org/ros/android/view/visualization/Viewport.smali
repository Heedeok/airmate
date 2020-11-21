.class public Lorg/ros/android/view/visualization/Viewport;
.super Ljava/lang/Object;
.source "Viewport.java"


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lorg/ros/android/view/visualization/Viewport;->width:I

    .line 31
    iput p2, p0, Lorg/ros/android/view/visualization/Viewport;->height:I

    .line 32
    return-void
.end method


# virtual methods
.method public apply(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 11
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 35
    iget v0, p0, Lorg/ros/android/view/visualization/Viewport;->width:I

    iget v1, p0, Lorg/ros/android/view/visualization/Viewport;->height:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 37
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 38
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 42
    iget v0, p0, Lorg/ros/android/view/visualization/Viewport;->width:I

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v0, v1

    iget v0, p0, Lorg/ros/android/view/visualization/Viewport;->width:I

    int-to-float v0, v0

    div-float v4, v0, v1

    iget v0, p0, Lorg/ros/android/view/visualization/Viewport;->height:I

    neg-int v0, v0

    int-to-float v0, v0

    div-float v5, v0, v1

    iget v0, p0, Lorg/ros/android/view/visualization/Viewport;->height:I

    int-to-float v0, v0

    div-float v6, v0, v1

    const v7, -0x39e3c000    # -10000.0f

    const v8, 0x461c4000    # 10000.0f

    move-object v2, p1

    invoke-interface/range {v2 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 43
    return-void
.end method

.method public getHeight()I
    .registers 2

    .line 50
    iget v0, p0, Lorg/ros/android/view/visualization/Viewport;->height:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 46
    iget v0, p0, Lorg/ros/android/view/visualization/Viewport;->width:I

    return v0
.end method
